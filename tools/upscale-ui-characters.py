"""Upscale floating UI character illustrations 4x, not scene sprites."""
from pathlib import Path
import argparse,json,subprocess,shutil
from PIL import Image
p=argparse.ArgumentParser();p.add_argument('--project',type=Path,default=Path(__file__).resolve().parents[1]);p.add_argument('--work',type=Path,required=True);a=p.parse_args()
names=['barena','betina','caesar','charles','edward','kenko','king','michael','nechayeff','pella','topsink','portrait']
root=a.project/'decoded/res';exe=a.work/'realesrgan/realesrgan-ncnn-vulkan.exe';outdir=root/'drawable-640dpi-v4';outdir.mkdir(exist_ok=True);manifest=[]
for name in names:
 for suffix in ['', '_mouth']:
  src=root/'drawable-mdpi-v4'/(name+suffix+'.png')
  if not src.exists():continue
  inp=a.work/('ui-character-input-'+src.name);out=a.work/('ui-character-output-'+src.name)
  with Image.open(src) as im: size=im.size; im.convert('RGBA').save(inp)
  subprocess.run([str(exe),'-i',str(inp),'-o',str(out),'-s','4','-n','realesr-animevideov3','-m',str(exe.parent/'models'),'-t','128','-j','1:1:1'],check=True)
  with Image.open(out) as im: assert im.size==(size[0]*4,size[1]*4)
  dst=outdir/src.name;shutil.copy2(out,dst);manifest.append({'source':src.relative_to(a.project).as_posix(),'output':dst.relative_to(a.project).as_posix(),'scale':4,'algorithm':'Real-ESRGAN realesr-animevideov3','original_size':size});print(src.name,'done',flush=True)
(a.project/'tools/hd-ui-characters-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf8');print('Validated',len(manifest),'floating character assets',flush=True)
