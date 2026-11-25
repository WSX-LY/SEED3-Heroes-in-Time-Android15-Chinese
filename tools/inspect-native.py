"""Disassemble named ARM/Thumb exports and annotate imported/internal calls."""
import argparse,re,struct
from elftools.elf.elffile import ELFFile
from capstone import Cs,CS_ARCH_ARM,CS_MODE_THUMB,CS_MODE_ARM
p=argparse.ArgumentParser();p.add_argument('names',nargs='+');p.add_argument('--library',default='decoded/lib/armeabi/libndk_kingdoms.so');a=p.parse_args()
with open(a.library,'rb') as f:
 e=ELFFile(f);symsec=e.get_section_by_name('.dynsym');syms={s.name:s for s in symsec.iter_symbols()};mp={s['st_value']&~1:s.name for s in syms.values() if s['st_value']}
 rel=e.get_section_by_name('.rel.plt');plt=e.get_section_by_name('.plt')
 for i,r in enumerate(rel.iter_relocations()):mp[plt['sh_addr']+20+12*i]=symsec.get_symbol(r['r_info_sym']).name
 def read(addr,size):
  for seg in e.iter_segments():
   if seg['p_type']=='PT_LOAD' and seg['p_vaddr']<=addr<seg['p_vaddr']+seg['p_filesz']:
    f.seek(addr-seg['p_vaddr']+seg['p_offset']);return f.read(size)
  return bytes(size)
 for name in a.names:
  s=syms[name];addr=s['st_value']&~1;data=read(addr,s['st_size']);print('\n'+name+' '+hex(addr)+' size '+str(s['st_size']))
  for ins in Cs(CS_ARCH_ARM,CS_MODE_THUMB if s['st_value']&1 else CS_MODE_ARM).disasm(data,addr):
   desc=''
   if ins.mnemonic in ['bl','blx'] and ins.op_str.startswith('#'):desc=mp.get(int(ins.op_str[1:],16),'')
   if ins.mnemonic=='ldr' and '[pc,' in ins.op_str:
    off=int(re.search(r'#(0x[0-9a-f]+|[0-9]+)',ins.op_str).group(1),0);ptr=((ins.address+4)&~3)+off;desc='literal='+hex(struct.unpack('<I',read(ptr,4))[0])
   print(hex(ins.address),ins.mnemonic,ins.op_str,desc)
