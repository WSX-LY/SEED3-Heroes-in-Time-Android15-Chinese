from pathlib import Path
import struct,zlib,shutil
p=Path('decoded/assets/eng_txt/ENG_GAMEMENU.ctx')
raw=zlib.decompress(p.read_bytes()[4:])
n=struct.unpack_from('<H',raw)[0]
base=2+4*n
entries=[]
for i in range(n):
    offset,length=struct.unpack_from('<HH',raw,2+4*i)
    entries.append(raw[base+offset:base+offset+length])
changes={69:'是否保存游戏？',72:'游戏已保存。',84:'现在无法保存。',272:'是否保存并返回主菜单？'}
assert entries[72].decode('utf-16le')=='Game saved.'
for i,s in changes.items(): entries[i]=s.encode('utf-16le')
table=bytearray(raw[:2])
payload=bytearray()
for entry in entries:
    table.extend(struct.pack('<HH',len(payload),len(entry)))
    payload.extend(entry)
result=table+payload
p.write_bytes(struct.pack('<I',len(result))+zlib.compress(result))
shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
