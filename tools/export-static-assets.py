"""Export original static images with stable replacement IDs; never use HD inputs."""
from pathlib import Path
import argparse, json, hashlib, shutil
from scene_assets import bundle_images

p = argparse.ArgumentParser()
p.add_argument('--source', type=Path, default=Path('decoded'))
p.add_argument('--output', type=Path, default=Path('static-assets'))
a = p.parse_args()
a.output.mkdir(parents=True, exist_ok=True)
records = []
errors = []
for src in sorted(a.source.rglob('*')):
    if not src.is_file(): continue
    rel = src.relative_to(a.source).as_posix()
    native = rel.startswith('assets/') and src.suffix.lower() in ('.cbm', '.cmb')
    android = rel.startswith('res/drawable') and src.suffix.lower() in ('.png', '.jpg', '.jpeg', '.webp') and not any(x in src.parent.name for x in ('320dpi', '480dpi', '640dpi'))
    if not (native or android): continue
    digest = hashlib.sha256(src.read_bytes()).hexdigest()
    try:
        if native:
            for i, img in enumerate(bundle_images(src)):
                for pal in range(len(img.palettes)):
                    key = f'{rel}/image-{i:04d}/palette-{pal:03d}'
                    out = Path('originals') / (key + '.png')
                    (a.output/out).parent.mkdir(parents=True, exist_ok=True)
                    img.rgba(pal).save(a.output/out)
                    records.append(dict(id=key, source=rel, source_sha256=digest, image_index=i, palette=pal, size=[img.width,img.height], slices=img.slices, original=out.as_posix(), replacement=None))
        else:
            from PIL import Image
            out = Path('originals') / rel
            (a.output/out).parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(src, a.output/out)
            with Image.open(src) as im: size = list(im.size)
            records.append(dict(id=rel, source=rel, source_sha256=digest, size=size, original=out.as_posix(), replacement=None))
    except Exception as e:
        errors.append(dict(source=rel,error=str(e)))
manifest = dict(schema=1, coordinates='original pixels', entries=records, errors=errors)
(a.output/'mapping.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(dict(entries=len(records),native_images=len(set((r['source'],r.get('image_index')) for r in records if 'image_index' in r)),errors=errors),ensure_ascii=False))
if errors: raise SystemExit(1)
