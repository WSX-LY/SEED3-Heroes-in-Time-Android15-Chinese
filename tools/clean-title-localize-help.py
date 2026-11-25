from pathlib import Path
import re,struct,zlib,shutil
root=Path('decoded')
p=root/'smali/ch/kingdoms/android/ui/MainMenuUi.smali'; s=p.read_text()
for reg,lp in [('v5','v9'),('v3','v10')]:
 a=f'    invoke-virtual {{v0, {reg}, {lp}}}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V'; assert a in s;s=s.replace(a,'    # External link entry removed.')
for reg in ['v5','v3']: s=s.replace(f'    invoke-virtual {{{reg}, v14}}, Lch/android/api/ui/ChImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V','    # External link listener removed.')
p.write_text(s)
p=root/'smali/ch/kingdoms/android/ui/HelpUi.smali';s=p.read_text();s=re.sub(r'invoke-virtual \{([^}]+)\}, Lch/android/api/ui/ChTextView;->setTextSize\(F\)V',r'invoke-static {\1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V',s);p.write_text(s)
translations={
'help020':'每种职业有六个主动技能，达到相应等级后可学习。三级、十级等阶段获得的主动技能点可用于强化技能。技能可放入快捷栏使用。',
'help022':'共有五个增益技能，达到相应等级后可学习。使用四级、十级等阶段获得的增益技能点，可将技能强化最多十次。',
'help024':'推进剧情后可解锁狂暴系统。可在增益技能页查看，并将其放入快捷栏启用。',
'help025':'狂暴状态会持续消耗 TP，耗尽后自动结束。再次点击对应按钮可主动关闭。击败怪物或使用 TP 药水可补充 TP。',
'help027':'使用武器精炼石或防具精炼石可提升装备属性。武器最多精炼十九次，防具最多九次。精炼可能失败。',
'help029':'装备有空插槽时，可镶嵌宝珠或水晶以获得额外属性。各城镇的铁匠可进行此操作。',
'help030':'重铸','help031':'铁匠可以重铸装备。重铸后，装备附加属性会按稀有度重新生成。需要使用商城出售的贤者之石。',
'help032':'合成、宝珠与水晶','help033':'通过合成可以制作宝珠或水晶。','help034':'宝石＋神秘石＝元素宝珠','help035':'矿石＋催化剂＝属性水晶',
'help036':'元素宝珠可镶嵌在武器上，为武器增加属性。','help037':'属性水晶可镶嵌在武器或防具上，其属性会计入角色总属性。',
'help039':'进行主线任务时，世界地图和区域地图会显示目标旗标。部分任务目标可能不会显示旗标。',
'help041':'八座主要城镇设有竞技场，可挑战怪物。每座竞技场有八至十五个不同等级的挑战，完成后可获得奖励。',
'help043':'八座主要城镇和竞技场设有传送门，可用来快速移动。',
'help045':'商城出售实用道具，需要使用购买的点数。点数与消耗品使用后无法退款。删除游戏可能导致点数及道具丢失。',
'help048':'注意事项','help049':'游戏相关权利归 CH Games 所有。游玩过程中产生的损失由玩家自行承担。修改游戏代码或以不当方式游玩，可能导致联网资格被取消或游戏无法运行。',
'help052':'问题反馈','help054':'电子邮件：chgamescs@gmail.com',
'auto_routing_txt':'需要先在商城购买自动拾取道具，才能使用此功能。'}
p=root/'res/values/strings.xml';s=p.read_text(encoding='utf8')
for key,value in translations.items(): s,n=re.subn(r'(<string name="'+key+r'">).*?(</string>)',lambda m:m[1]+value+m[2],s,flags=re.S);assert n==1,key
p.write_text(s,encoding='utf8')
p=root/'assets/eng_txt/ENG_GAMEMENU.ctx'; d=zlib.decompress(p.read_bytes()[4:]); n=struct.unpack_from('<H',d)[0]; base=2+4*n; entries=[]
for i in range(n):
 off,size=struct.unpack_from('<HH',d,2+4*i);entries.append(d[base+off:base+off+size])
for i,text in {291:'高清：地图更清晰，显示比例更大。较低配置设备可能出现卡顿。重启游戏后生效。',292:'标准：采用更近的地图视野，以提高运行流畅度。重启游戏后生效。'}.items():entries[i]=text.encode('utf-16le')
table=bytearray(struct.pack('<H',n));payload=bytearray()
for entry in entries:table.extend(struct.pack('<HH',len(payload),len(entry)));payload.extend(entry)
d=table+payload;p.write_bytes(struct.pack('<I',len(d))+zlib.compress(d))
for name in ['smali/ch/kingdoms/android/ui/MainMenuUi.smali','smali/ch/kingdoms/android/ui/HelpUi.smali','res/values/strings.xml','assets/eng_txt/ENG_GAMEMENU.ctx']:shutil.copy2(root/name,Path('C:/Users/Administrator/seed3-debug/decoded')/name)
