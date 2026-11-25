"""Read SEED3's zlib-compressed indexed CBM images and CMB image bundles.
Read-only extraction; not a replacement encoder or an in-engine HD renderer.
"""
from pathlib import Path
from dataclasses import dataclass
import struct,zlib,argparse,json
from PIL import Image
@dataclass
class IndexedImage:
 width:int
 height:int
 bpp:int
 palettes:list
 indices:bytes
 slices:list
 raw:bytes
 def rgba(self,palette=0):
  colors=self.palettes[palette]; data=bytearray()
  for i in self.indices:
   v=colors[i]; data.extend(((v>>16)&255,(v>>8)&255,v&255,0 if v==0xff00ff else 255))
  return Image.frombytes('RGBA',(self.width,self.height),bytes(data))
def unpack_image(blob):
 raw=zlib.decompress(blob[4:]);assert len(raw)==struct.unpack_from('<I',blob)[0]
 w,h,bpp,ncolors,npal,nslices=struct.unpack_from('<6I',raw)
 ncolors=ncolors or (1<<bpp)
 assert bpp in (4,8) and 0<w<=4096 and 0<h<=4096
 palettes=[struct.unpack_from('<'+str(ncolors)+'I',raw,24+i*ncolors*4) for i in range(npal)]
 start=24+ncolors*npal*4;stride=((w*bpp+31)//32)*4;end=start+stride*h
 assert len(raw)==end+nslices*4,(w,h,bpp,len(raw),end,nslices)
 indices=[]
 for y in range(h):
  row=raw[start+y*stride:start+(y+1)*stride]
  for x in range(w):indices.append(row[x] if bpp==8 else ((row[x//2]>>(4 if x%2==0 else 0))&15))
 assert max(indices)<ncolors
 slices=[tuple(raw[end+i*4:end+i*4+4]) for i in range(nslices)]
 assert all(x+sw<=w and y+sh<=h for x,y,sw,sh in slices)
 return IndexedImage(w,h,bpp,palettes,bytes(indices),slices,raw)
def bundle_images(path):
 b=Path(path).read_bytes()
 if Path(path).suffix=='.cbm':return [unpack_image(b)]
 n=struct.unpack_from('<I',b)[0];base=4+n*8;out=[]
 for i in range(n):
  off,size=struct.unpack_from('<II',b,4+i*8);out.append(unpack_image(b[base+off:base+off+size]))
 return out
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('source',type=Path);p.add_argument('output',type=Path);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True);manifest=[]
 for i,img in enumerate(bundle_images(a.source)):
  for pal in range(len(img.palettes)):
   name=f'{a.source.stem}-{i:03d}-p{pal}.png';img.rgba(pal).save(a.output/name)
   manifest.append({'file':name,'size':[img.width,img.height],'bpp':img.bpp,'palette':pal,'slices':img.slices})
 (a.output/(a.source.stem+'-manifest.json')).write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf8');print('Extracted',len(manifest),'images')
