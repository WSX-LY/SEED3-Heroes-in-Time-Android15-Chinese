from pathlib import Path
import json,subprocess,shutil
root=Path('C:/Users/Administrator/Desktop/SEED3重制/decoded/res')
work=Path('C:/Users/Administrator/seed3-upscale')
xnames={'logo_ch','logo_lemon','logo_rank','title_kingdoms','main_menu_bg','touchme','newgame_txt','newgame_txt_down','continue_txt','continue_txt_down','option_txt','option_txt_down','help_txt','help_txt_down'}
ainames={'icon','title_back','title_left_ch','title_right_ch'}
jobs=[]; ai=[]
for p in root.rglob('*.png'):
 if p.parent.name not in {'drawable-hdpi-v4','drawable-mdpi-v4'}: continue
 if p.stem not in xnames|ainames: continue
 density=480 if p.parent.name=='drawable-hdpi-v4' else 320
 out=root/f'drawable-{density}dpi-v4'/p.name
 if p.stem in xnames:jobs.append({'input':str(p),'output':str(out)})
 else:ai.append((p,out))
(work/'xbrz-jobs.json').write_text(json.dumps(jobs),encoding='utf8')
subprocess.run(['node',str(work/'scale-xbrz.mjs'),str(work/'xbrz-jobs.json')],check=True)
exe=work/'realesrgan/realesrgan-ncnn-vulkan.exe'
for p,out in ai:
 out.parent.mkdir(exist_ok=True)
 # Keep Unicode paths away from the native CLI.
 inp=work/('input-'+p.name);dst=work/('output-'+p.name);shutil.copy2(p,inp)
 subprocess.run([str(exe),'-i',str(inp),'-o',str(dst),'-s','2','-n','realesr-animevideov3','-m',str(exe.parent/'models'),'-t','128','-j','1:1:1'],check=True)
 shutil.copy2(dst,out); print(p.name,'Real-ESRGAN done',flush=True)
from PIL import Image
for job in jobs+[{'input':str(p),'output':str(o)} for p,o in ai]:
 a=Image.open(job['input']);b=Image.open(job['output']);assert b.size==(a.width*2,a.height*2)
 print(Path(job['output']).name,a.size,'->',b.size,b.mode,flush=True)
(work/'upscale-manifest.json').write_text(json.dumps({'xbrz':jobs,'realesrgan':[{'input':str(p),'output':str(o)} for p,o in ai]},indent=2),encoding='utf8')
