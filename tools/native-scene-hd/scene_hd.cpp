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
  xbrz::scale(4,input,output,512,256,xbrz::ColorFormat::RGB);
  for(int i=0;i<2048*1024;i++){unsigned v=output[i];output[i]=0xff000000|((v&255)<<16)|(v&0xff00)|((v>>16)&255);}
  memcpy(previous,pixels,512*256*2);cached=true;filtered++;filter_ms+=millis()-begin;
 }
 int send=millis();real_upload(target,level,0x1908,2048,1024,border,0x1908,0x1401,output);upload_ms+=millis()-send;
 calls++;
 if(calls==1||calls%120==0)__android_log_print(4,"Seed3HD","frames=%d filtered=%d avg_filter_ms=%d avg_upload_ms=%d",calls,filtered,filter_ms/(filtered?filtered:1),upload_ms/calls);
}
extern "C" int JNI_OnLoad(void*,void*){
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
