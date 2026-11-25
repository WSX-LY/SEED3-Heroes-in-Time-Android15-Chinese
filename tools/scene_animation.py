"""Decode native sprite assembly/animation tables for offline validation."""
from pathlib import Path
import struct,zlib

def bundle_blob(path,index=0):
 b=Path(path).read_bytes();n=struct.unpack_from('<I',b)[0];assert 0<=index<n
 off,size=struct.unpack_from('<II',b,4+index*8);chunk=b[4+n*8+off:4+n*8+off+size];raw=zlib.decompress(chunk[4:]);assert len(raw)==struct.unpack_from('<I',chunk)[0];return raw

def decode_sprite(raw):
 nf=struct.unpack_from('<H',raw)[0];pos=2;frames=[]
 for i in range(nf):
  count=raw[pos];pos+=1;parts=[]
  for j in range(count):
   q=raw[pos:pos+14];assert len(q)==14
   parts.append({'bank':q[0],'slice':q[1],'x':struct.unpack_from('<h',q,2)[0],'y':struct.unpack_from('<h',q,4)[0],'style':q[6],'style_param':q[7],'rgb':list(q[8:11]),'spread':q[11],'transform':q[12],'extra':q[13]});pos+=14
  frames.append(parts)
 nc=raw[pos];pos+=1;colliders=[]
 for i in range(nc):colliders.append(struct.unpack_from('<Bhhhh',raw,pos));pos+=9
 na=struct.unpack_from('<H',raw,pos)[0];pos+=2;animations=[]
 for i in range(na):
  nd,ns=struct.unpack_from('<Bh',raw,pos);pos+=3
  assert ns>0 and 0<nd<=16
  events=[struct.unpack_from('<hBB',raw,pos+j*4) for j in range(ns)];pos+=ns*4
  dirs=[list(struct.unpack_from('<'+str(ns)+'h',raw,pos+j*ns*2)) for j in range(nd)];pos+=ns*nd*2
  assert all(0<=v<nf for d in dirs for v in d)
  animations.append({'events':events,'directions':dirs})
 assert pos==len(raw),(pos,len(raw))
 return {'frames':frames,'colliders':colliders,'animations':animations}

if __name__=='__main__':
 import argparse,json
 p=argparse.ArgumentParser();p.add_argument('source',type=Path);p.add_argument('output',type=Path);p.add_argument('--index',type=int,default=0);a=p.parse_args();s=decode_sprite(bundle_blob(a.source,a.index));a.output.write_text(json.dumps(s,indent=2)+'\n',encoding='utf8');print(len(s['frames']),'frames',len(s['animations']),'animations',len(s['colliders']),'colliders')
