from pathlib import Path
import struct,zlib,shutil,re
p=Path('decoded/assets/eng_txt/ENG_GAMEMENU.ctx'); d=zlib.decompress(p.read_bytes()[4:]); n=struct.unpack_from('<H',d)[0]; base=2+4*n; entries=[]
for i in range(n):
 off,size=struct.unpack_from('<HH',d,2+4*i); entries.append(d[base+off:base+off+size])
t={74:'购买物品',76:'出售物品',78:'购买后不会自动存档，是否继续购买？',79:'是否出售此物品？',80:'请选择数量。',81:'金币不足。',82:'背包已满。',83:'已达到数量上限。',125:'现在无法使用商城。',143:'点数说明',144:'购买点数',145:'解锁内容',146:'购买商城道具',147:'点数可在商城兑换道具，所有存档共用点数余额。',148:'1000 点数',149:'2200 点数',150:'3600 点数',151:'6000 点数',152:'14000 点数',154:'游戏将自动保存，是否继续？',155:'没有复活石。',156:'点数不足。',157:'此物品已达到购买上限。',177:'SP 消耗：',179:'技能强化',180:'是否强化所选技能？',182:'点数不足。',204:'处理中',205:'交易完成。',208:'网络错误导致交易失败，请重试。',242:'输入点数',273:'解锁章节',274:'需要解锁章节才能继续游戏，是否购买？',275:'种子3可免费体验至第二章。解锁后可游玩至结局，重新安装游戏无需重复购买。',276:'解锁传送门',277:'需要解锁传送门才能使用，是否购买？',278:'解锁后可通过八座主要城镇的传送门快速移动。重新安装游戏无需重复购买。',279:'解锁竞技场',280:'需要解锁竞技场才能进入，是否购买？',281:'八座主要城镇设有竞技场。挑战怪物可获得复活石、经验卷轴、套装和贤者之石，并获得1.5倍经验。',282:'进入需要190点数，是否继续？',283:'你已购买此内容。',286:'因不当游戏行为，网络连接已被限制。',287:'网络错误，无法加载商品列表，请重试。',288:'购买已取消。',294:'点数已达到上限。',296:'游戏将自动保存，是否继续购买？',297:'交易完成。重新安装游戏无需重复购买。'}
for i,s in t.items():entries[i]=s.encode('utf-16le')
head=bytearray(struct.pack('<H',n)); data=bytearray()
for e in entries:head.extend(struct.pack('<HH',len(data),len(e)));data.extend(e)
r=head+data;p.write_bytes(struct.pack('<I',len(r))+zlib.compress(r));shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=Path('decoded/smali/ch/kingdoms/android/ui/StoreUi$StoreView.smali');s=p.read_text();s=re.sub(r'invoke-virtual \{([^}]+)\}, Lch/android/api/ui/ChTextView;->setTextSize\(F\)V',r'invoke-static {\1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V',s);p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
print('Translated shop/menu entries:',len(t))
