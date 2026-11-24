from pathlib import Path
from elftools.elf.elffile import ELFFile
p=Path('decoded/lib/armeabi/libndk_kingdoms.so')
with p.open('rb') as f:
 e=ELFFile(f)
 off=next(0x1286e-s['p_vaddr']+s['p_offset'] for s in e.iter_segments() if s['p_vaddr']<=0x1286e<s['p_vaddr']+s['p_filesz'])
b=bytearray(p.read_bytes()); assert b[off:off+2]==bytes.fromhex('b226'); b[off:off+2]=bytes.fromhex('b026'); p.write_bytes(b)
print('NewShortArray -> NewByteArray at',hex(off))
