from pathlib import Path
import subprocess,sys,json,hashlib
root=Path(__file__).resolve().parent;project=root.parents[1];work=Path(sys.argv[1]);work.mkdir(parents=True,exist_ok=True)
expected_native_sha='cedcfda2db0848dee8599cd3c00317b4ce23dae9e0acf922c118d2303ba01471'
assert hashlib.sha256((project/'decoded/lib/armeabi/libndk_kingdoms.so').read_bytes()).hexdigest()==expected_native_sha, 'Native renderer changed; re-audit hook offsets before rebuilding'
cc=[sys.executable,'-m','ziglang','cc','-target','arm-linux-androideabi','-mcpu=cortex_a53']
cpp=[sys.executable,'-m','ziglang','c++','-target','arm-linux-androideabi','-mcpu=cortex_a53']
stubs={'libc.so':['malloc','free','memcpy','memmove','memset','memcmp','abort','mprotect','getpagesize','clock_gettime','pthread_create','pthread_join'],'libdl.so':['dlopen','dlsym'],'liblog.so':['__android_log_print'],'libm.so':['sqrt']}
for lib,names in stubs.items():
 src=work/(lib+'.c');src.write_text('\n'.join('void '+n+'(void){}' for n in names),encoding='utf8')
 subprocess.run(cc+['-shared','-nostdlib','-fPIC','-fno-builtin','-Wl,-soname,'+lib,'-o',str(work/lib),str(src)],check=True)
common=['-std=c++17','-mfpu=neon-vfpv4','-mfloat-abi=softfp','-O3','-fPIC','-fno-exceptions','-fno-rtti','-fno-threadsafe-statics','-fno-stack-protector','-fno-builtin','-nostdinc++','-I',str(root/'ministd')]
for source,name in [(root/'vendor/xbrz.cpp','xbrz.o'),(root/'scene_hd.cpp','scene_hd.o')]:subprocess.run(cpp+common+['-c',str(source),'-o',str(work/name)],check=True)
out=work/'libseed3_scene_hd.so'
subprocess.run(cc+['-shared','-nostdlib','-Wl,-soname,libseed3_scene_hd.so','-Wl,-z,max-page-size=16384','-Wl,--no-as-needed','-Wl,--no-undefined','-Wl,--version-script='+str(root/'exports.map'),'-o',str(out),str(work/'scene_hd.o'),str(work/'xbrz.o'),str(work/'libc.so'),str(work/'libdl.so'),str(work/'liblog.so'),str(work/'libm.so')],check=True)
print(out)
