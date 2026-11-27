// Experimental scene-output scaler. Game state and source resources are untouched.
// xBRZ is GPL-3.0 by Zenju; see vendor headers and COPYING.
#include "vendor/xbrz.h"
typedef unsigned int uintptr_t;
extern "C" {
void* malloc(size_t); void free(void*); void* memcpy(void*,const void*,size_t); int memcmp(const void*,const void*,size_t);
void* dlopen(const char*,int); void* dlsym(void*,const char*); int mprotect(void*,size_t,int); int getpagesize();
int __android_log_print(int,const char*,const char*,...);
struct Timespec { long sec,nsec; }; int clock_gettime(int,Timespec*);
int __cxa_atexit(void(*)(void*),void*,void*) {return 0;}
void* __dso_handle = 0;
}
extern "C" void __aeabi_memcpy(void*d,const void*s,size_t n){memcpy(d,s,n);}
extern "C" void __aeabi_memcpy4(void*d,const void*s,size_t n){memcpy(d,s,n);}
extern "C" void __aeabi_memclr8(void*d,size_t n){volatile unsigned char*p=(volatile unsigned char*)d;while(n--)*p++=0;}
extern "C" int pthread_create(unsigned long*,const void*,void*(*)(void*),void*);
extern "C" int pthread_join(unsigned long,void**);
struct ScaleJob {const uint32_t*src;uint32_t*dst;int first,last;};
static void* scale_rows(void* p){ScaleJob*j=(ScaleJob*)p;xbrz::scale(4,j->src,j->dst,512,256,xbrz::ColorFormat::RGB,xbrz::ScalerCfg(),j->first,j->last);return nullptr;}
static void parallel_scale(const uint32_t*src,uint32_t*dst){
 static bool warm=false,checked=false,parallel_ok=true;
 if(!warm||!parallel_ok){xbrz::scale(4,src,dst,512,256,xbrz::ColorFormat::RGB);warm=true;return;}
 ScaleJob jobs[4];unsigned long threads[3];bool launched[3];
 for(int i=0;i<4;i++)jobs[i]={src,dst,i*64,(i+1)*64};
 for(int i=0;i<3;i++){launched[i]=pthread_create(&threads[i],nullptr,scale_rows,&jobs[i])==0;if(!launched[i])scale_rows(&jobs[i]);}
 scale_rows(&jobs[3]);for(int i=0;i<3;i++)if(launched[i])pthread_join(threads[i],nullptr);
 if(!checked){uint32_t*ref=(uint32_t*)malloc(2048*1024*4);if(ref){xbrz::scale(4,src,ref,512,256,xbrz::ColorFormat::RGB);parallel_ok=memcmp(ref,dst,2048*1024*4)==0;if(!parallel_ok)memcpy(dst,ref,2048*1024*4);free(ref);checked=true;__android_log_print(4,"Seed3HD","parallel serial pixel equivalence=%d",parallel_ok?1:0);}}
}
using Upload=void(*)(unsigned,int,int,int,int,int,unsigned,unsigned,const void*);
static Upload real_upload;
static uint32_t* input; static uint32_t* output; static uint16_t* previous;
static volatile bool enabled=true; static bool cached=false;
static int calls, filtered, filter_ms, upload_ms;
static int millis(){Timespec t;clock_gettime(1,&t);return (int)(t.sec*1000+t.nsec/1000000);}
static void upload(unsigned target,int level,int internal,int w,int h,int border,unsigned format,unsigned type,const void* pixels){
 if(!enabled||!pixels||w!=512||h!=256||format!=0x1907||type!=0x8363){real_upload(target,level,internal,w,h,border,format,type,pixels);return;}
 if(!input){
  input=(uint32_t*)malloc(512*256*4);output=(uint32_t*)malloc(2048*1024*4);previous=(uint16_t*)malloc(512*256*2);
  if(!input||!output||!previous){enabled=false;__android_log_print(6,"Seed3HD","allocation failed; using original output");real_upload(target,level,internal,w,h,border,format,type,pixels);return;}
  __android_log_print(4,"Seed3HD","scene output enabled: 512x256 RGB565 -> 2048x1024 RGBA, xBRZ 4x; logical canvas unchanged");
 }
 int begin=millis();
 if(!cached||memcmp(previous,pixels,512*256*2)){
  const uint16_t* src=(const uint16_t*)pixels;
  for(int i=0;i<512*256;i++){
   unsigned v=src[i],r=v>>11,g=(v>>5)&63,b=v&31;r=(r<<3)|(r>>2);g=(g<<2)|(g>>4);b=(b<<3)|(b>>2);input[i]=(r<<16)|(g<<8)|b;
  }
  parallel_scale(input,output);
  for(int i=0;i<2048*1024;i++){unsigned v=output[i];output[i]=0xff000000|((v&255)<<16)|(v&0xff00)|((v>>16)&255);}
  memcpy(previous,pixels,512*256*2);cached=true;filtered++;filter_ms+=millis()-begin;
 }
 int send=millis();real_upload(target,level,0x1908,2048,1024,border,0x1908,0x1401,output);upload_ms+=millis()-send;
 calls++;
 if(calls==1||calls%120==0)__android_log_print(4,"Seed3HD","frames=%d filtered=%d avg_filter_ms=%d avg_upload_ms=%d",calls,filtered,filter_ms/(filtered?filtered:1),upload_ms/calls);
}
extern "C" int JNI_OnLoad(void*,void*){
 // Black/flat frames can skip all color-distance work. Explicitly construct
 // the shared RGB lookup table before installing the hook or creating workers.
 volatile bool warm_distance=xbrz::equalColorTest(0x00ff0000U,0x0000ff00U,xbrz::ColorFormat::RGB,1.0,30.0);
 (void)warm_distance;
 __android_log_print(4,"Seed3HD","RGB lookup initialized before worker startup");

 void* lib=dlopen("libndk_kingdoms.so",2);void* draw=lib?dlsym(lib,"drawScreenTex"):nullptr;
 if(!draw){__android_log_print(6,"Seed3HD","original renderer unavailable; scaler inactive");return 0x10006;}
 uintptr_t base=(uintptr_t)draw-0x145e1;void** slot=(void**)(base+0xb2664);
 real_upload=(Upload)dlsym(lib,"glTexImage2D");
 if(!real_upload||*slot!=(void*)real_upload){__android_log_print(6,"Seed3HD","renderer import mismatch; scaler inactive");return 0x10006;}
 int page=getpagesize();uintptr_t aligned=(uintptr_t)slot&~((uintptr_t)page-1);
 if(mprotect((void*)aligned,page,3)!=0){__android_log_print(6,"Seed3HD","renderer import protection failed; scaler inactive");return 0x10006;}
 *slot=(void*)&upload;
 // This old library has no PT_GNU_RELRO; its GOT shares writable data.
 // Preserve RW protection so unrelated original globals remain writable.
 __android_log_print(4,"Seed3HD","renderer import installed; page=%d",page);return 0x10006;
}
extern "C" void Java_ch_kingdoms_ndk_SceneHdBridge_setEnabled(void*,void*,unsigned char value){enabled=value!=0;__android_log_print(4,"Seed3HD","enabled=%d",enabled?1:0);}

static volatile unsigned logic_interval_ms=50;
extern "C" void Java_ch_kingdoms_ndk_SceneHdBridge_setLogicHz(void*,void*,int hz){if(hz>=10&&hz<=60){logic_interval_ms=1000U/(unsigned)hz;__android_log_print(4,"Seed3Timing","candidate logic interval=%u ms",logic_interval_ms);}}
// User accepted 20 Hz gameplay cadence. Interstitial presents still reuse
// the scene until side-effect-free positional rendering is isolated.
extern "C" void Java_ch_kingdoms_ndk_SceneHdBridge_nativeTick(void* env,void* cls){
 using Callback=void(*)(void*,void*); using Draw=void(*)();using Buffer=void*(*)(int);
 static Callback callback;static Draw draw;static Buffer buffer;
 static unsigned last,next,window;static int updates,presents,dropped;
 if(!callback){void*lib=dlopen("libndk_kingdoms.so",2);callback=(Callback)dlsym(lib,"Java_ch_kingdoms_ndk_NdkGraphicManager_timercallback");draw=(Draw)dlsym(lib,"CH_GrpFlushLcd");buffer=(Buffer)dlsym(lib,"MC_GRP_GET_FRAME_BUFFER_POINTER");}
 if(!callback||!draw||!buffer)return;
 Timespec t;clock_gettime(1,&t);unsigned now=(unsigned)t.sec*1000U+(unsigned)t.nsec/1000000U;
 bool reset=!last||now-last>250;last=now;
 if(reset)next=now;
 if((int)(now-next)>=0){callback(env,cls);updates++;next+=logic_interval_ms;
  // Never run a burst of catch-up updates after stalls or resume.
  if((int)(now-next)>=(int)logic_interval_ms){next=now+logic_interval_ms;dropped++;}
 }else draw();
 presents++;
 if(!window)window=now;
 if(now-window>=2000){__android_log_print(4,"Seed3Timing","window_ms=%u logic=%d presents=%d stalls=%d candidate_logic_interval_ms=%u repeated_scene_between_updates=1",now-window,updates,presents,dropped,(unsigned)logic_interval_ms);window=now;updates=presents=dropped=0;}
}
