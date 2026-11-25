from pathlib import Path
import re,shutil,struct,zlib
root=Path('decoded/smali')
for p in (root/'ch/kingdoms/android/ui').glob('BrandShopUi*.smali'):
 s=p.read_text(); pattern=r'invoke-static \{([^}]+)\}, Landroid/widget/Toast;->makeText\(Landroid/content/Context;Ljava/lang/CharSequence;I\)Landroid/widget/Toast;\s+move-result-object (\w+)\s+invoke-virtual \{\2\}, Landroid/widget/Toast;->show\(\)V'
 def change(m):
  message=m[1].split(',')[1].strip()
  return 'invoke-static {'+message+'}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V'
 s,n=re.subn(pattern,change,s)
 if n:p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p);print(p.name,n)
p=root/'ch/android/api/ui/ChPaidContentView.smali';s=p.read_text();a='    invoke-virtual {v11, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V';assert a in s;s=s.replace(a,a+'''\n    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I
    move-result v13
    int-to-float v13, v13
    invoke-static {v11, v13}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V
''');p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=Path('decoded/assets/eng_txt/ENG_GAMEMENU.ctx');d=zlib.decompress(p.read_bytes()[4:]);n=struct.unpack_from('<H',d)[0];base=2+4*n;entries=[]
for i in range(n):
 off,size=struct.unpack_from('<HH',d,2+4*i);entries.append(d[base+off:base+off+size])
for i,t in {205:'已完成本地领取。',283:'已在本地解锁。',297:'已在本地解锁。',278:'可通过八座主要城镇的传送门快速移动。解锁记录保存在本机。',275:'解锁后可继续游玩后续章节，解锁记录保存在本机。'}.items():entries[i]=t.encode('utf-16le')
h=bytearray(struct.pack('<H',n));b=bytearray()
for e in entries:h.extend(struct.pack('<HH',len(b),len(e)));b.extend(e)
d=h+b;p.write_bytes(struct.pack('<I',len(d))+zlib.compress(d));shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
