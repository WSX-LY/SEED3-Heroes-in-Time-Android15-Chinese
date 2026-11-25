"""Generate 2x Android UI variants; retain original resources and scene assets."""
from pathlib import Path
import argparse, json, shutil, subprocess
from PIL import Image
p=argparse.ArgumentParser()
p.add_argument('--project',type=Path,default=Path(__file__).resolve().parents[1])
p.add_argument('--work',type=Path,required=True,help='Node workspace with @kayahr/xbrz and pngjs installed')
a=p.parse_args(); root=a.project/'decoded/res'; a.work.mkdir(parents=True,exist_ok=True)
# Story busts and scene/map artwork are outside this UI pass.
exclude={'barena','betina','caesar','charles','edward','kenko','king','michael','nechayeff','pella','topsink','portrait','chapter','colosseum','screen_shot','warpgate','facebook','openfeint','game_help','main_menu_bg'}
jobs=[]; manifest=[]
for folder,density in [('drawable-mdpi-v4',320),('drawable-hdpi-v4',480)]:
 for src in sorted((root/folder).iterdir()):
  if src.suffix.lower() not in {'.png','.jpg'} or src.name.endswith('.9.png'):continue
  if folder=='drawable-hdpi-v4' and src.stem not in {'banner_close','iap_bg'}:continue
  if src.stem in exclude or src.stem.endswith('_mouth') or (src.stem.startswith('area') and src.stem[4:].isdigit()):continue
  dst=root/f'drawable-{density}dpi-v4'/(src.stem+'.png')
  normalized=a.work/'ui-input'/src.name
  normalized=normalized.with_suffix('.png'); normalized.parent.mkdir(exist_ok=True)
  with Image.open(src) as im:
   size=im.size; im.convert('RGBA').save(normalized)
  jobs.append({'input':str(normalized.resolve()),'output':str(dst.resolve())})
  manifest.append({'source':src.relative_to(a.project).as_posix(),'output':dst.relative_to(a.project).as_posix(),'scale':2,'algorithm':'xBRZ','original_size':size})
jobfile=a.work/'ui-jobs.json';jobfile.write_text(json.dumps(jobs),encoding='utf8')
shutil.copy2(a.project/'tools/scale-xbrz.mjs',a.work/'scale-xbrz.mjs')
subprocess.run(['node',str(a.work/'scale-xbrz.mjs'),str(jobfile)],check=True)
for entry in manifest:
 with Image.open(a.project/entry['output']) as im:
  assert im.size==tuple(n*2 for n in entry['original_size']),entry
  assert im.mode=='RGBA',entry
(a.project/'tools/hd-ui-manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
print('Validated',len(manifest),'UI assets')
