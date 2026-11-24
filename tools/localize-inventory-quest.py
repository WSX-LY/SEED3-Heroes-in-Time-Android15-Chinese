from pathlib import Path
import re,struct,zlib,shutil
root=Path('decoded/smali')
for name in ['ch/android/api/ui/ChItemButton.smali','ch/android/api/ui/ChImageTextView.smali']:
 p=root/name; s=p.read_text(); s,n=re.subn(r'invoke-virtual \{([^}]+)\}, Lch/android/api/ui/ChTextView;->setTextSize\(F\)V',r'invoke-static {\1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V',s); assert n; p.write_text(s); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=Path('decoded/assets/eng_dat/ENG_QUESTDAT.dat'); b=p.read_bytes(); count=struct.unpack_from('<I',b)[0]; base=4+count*8; records=[]
for i in range(count):
 off,size=struct.unpack_from('<II',b,4+8*i); records.append(b[base+off:base+off+size])
d=zlib.decompress(records[0][4:])
for old,new in [('Go to the briefing room in the barracks and choose your class.','前往兵营的简报室，选择你的职业。'),('Choose class','选择职业')]:
 a=old.encode('utf-16le'); c=new.encode('utf-16le'); at=d.index(a); assert d[at-1]==len(old); d=d[:at-1]+bytes([len(new)])+c+d[at+len(a):]
records[0]=struct.pack('<I',len(d))+zlib.compress(d)
header=bytearray(struct.pack('<I',count)); payload=bytearray()
for r in records: header.extend(struct.pack('<II',len(payload),len(r))); payload.extend(r)
p.write_bytes(header+payload); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
print('Fixed inventory text units and translated first quest.')
