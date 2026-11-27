"""Generate deterministic source-level tasks; validate isolated agent submissions."""
from pathlib import Path
import argparse, json, hashlib
from PIL import Image
ROOT=Path(__file__).resolve().parents[1]
BASE=ROOT/'static-assets'
def read(p): return json.loads(p.read_text(encoding='utf-8'))
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def inside(base, rel):
 p=(base/rel).resolve()
 if not p.is_relative_to(base.resolve()): raise ValueError('path escapes submission: '+rel)
 return p
p=argparse.ArgumentParser();sub=p.add_subparsers(dest='command',required=True)
sub.add_parser('index')
v=sub.add_parser('validate');v.add_argument('submission',type=Path)
a=p.parse_args();m=read(BASE/'mapping.json');entries={e['id']:e for e in m['entries']}
if a.command=='index':
 groups={}
 for e in m['entries']: groups.setdefault(e['source'],[]).append(e['id'])
 tasks=[]
 for source, ids in sorted(groups.items()):
  task='asset-'+hashlib.sha256(source.encode()).hexdigest()[:12]
  tasks.append(dict(task_id=task,source=source,ids=ids,status='unclaimed',owner=None,category='needs_visual_classification',scale=None,algorithm=None))
 out=BASE/'tasks.json'
 if out.exists(): raise SystemExit('tasks.json exists; refusing to reset claims')
 out.write_text(json.dumps(dict(schema=1,tasks=tasks),ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print('tasks:',len(tasks))
else:
 folder=a.submission.resolve();errors=[];seen=set()
 try:
  s=read(folder/'submission.json')
  tasks={t['task_id']:t for t in read(BASE/'tasks.json')['tasks']}
  task=tasks[s['task_id']]
  for field in ('author','tool','tool_version','category','review_notes'):
   if not s.get(field): errors.append('missing '+field)
  for item in s['entries']:
   key=item['id'];e=entries[key]
   if key in seen: errors.append('duplicate '+key)
   seen.add(key)
   if key not in task['ids']: errors.append('outside assigned task '+key)
   if item['source_sha256']!=e['source_sha256']: errors.append('source hash mismatch '+key)
   if sha(ROOT/'decoded'/e['source'])!=e['source_sha256']: errors.append('current source changed '+key)
   scale=item['scale']
   if scale not in (2,4): errors.append('invalid scale '+key);continue
   if s['category'] not in ('background','character','ui','icon','effect','text','other'): errors.append('invalid category')
   if scale!=(4 if s['category'] in ('background','character') else 2): errors.append('category/scale mismatch '+key)
   path=inside(folder,item['file'])
   with Image.open(path) as im:
    if im.format!='PNG': errors.append('output must be PNG '+key)
    if list(im.size)!=[x*scale for x in e['size']]: errors.append('wrong dimensions '+key)
    if im.mode!='RGBA': errors.append('output must be RGBA '+key)
    original=BASE/e['original']
    with Image.open(original) as orig:
     alpha=orig.convert('RGBA').getchannel('A')
     if alpha.getextrema()[0]<255 and im.convert('RGBA').getchannel('A').getextrema()[0]==255: errors.append('transparency lost '+key)
  missing=set(task['ids'])-seen
  if missing: errors.append(str(len(missing))+' task entries missing; submit all palettes together')
 except Exception as exc: errors.append(str(exc))
 print(json.dumps(dict(ok=not errors,checked=len(seen),errors=errors,manual_review_required=True),ensure_ascii=False,indent=2))
 raise SystemExit(bool(errors))
