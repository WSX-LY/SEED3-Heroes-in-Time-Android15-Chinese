from pathlib import Path
import re,json
translations={
'finish_discription':'是否退出游戏？','ok':'确定','cancel':'取消','str':'力量','vit':'体质','dex':'敏捷','intelligence':'智力','confirm_status':'是否应用属性变更？','confirm_no_money':'金币不足。','confirm_no_items_in_inven':'背包中没有可选择的物品。','confirm_disallow_equip_level_limit':'等级不足。','confirm_is_delete':'是否丢弃所选物品？','confirm_alloc_skill':'是否强化所选技能？','confirm_giveup_quest':'放弃任务将清除该任务进度，是否继续？','confirm_buyitem_itemnocount':'已达到数量上限。','select_quantity':'请选择数量。','fence':'金币','lv_bonus':'等级奖励','score':'得分','backToGame':'返回','colosseum':'竞技场','item_purchase_success':'交易完成。','load_title':'初始化游戏','load_content':'加载资源','load_ui':'初始化界面','load_data':'加载数据','inven_full':'背包需要至少一个空位。','upgrade_item_txt':'精炼','power_item_txt':'合成','repower_item_txt':'重铸','mix_item_txt':'镶嵌','next':'下一页','previous':'上一页','help001':'操作说明','help002':'（1）角色信息 （2）任务 （3）商城 （4）世界地图 （5）快速存档 （6）怪物信息 （7）小地图 （8）移动 （9）快捷栏 （10）切换快捷栏 （11）攻击／对话／确认 （12）经验值','help010':'属性提升','help011':'升级或完成任务可获得属性点。分配力量、体质、敏捷和智力，培养你的角色。','help012':'属性','help013':'在角色信息的属性页面查看并提升属性。','help014':'力量：提升攻击力和 TP 上限。','help015':'体质：提升防御力、生命上限和生命恢复。','help016':'敏捷：提升命中、闪避和暴击。','help017':'智力：提升技能攻击力，缩短技能冷却，提高 SP 上限。','help018':'其他属性：攻击、技能攻击、防御、命中、闪避、暴击。','help019':'主动技能','help021':'增益技能','help023':'狂暴系统','help026':'精炼','help028':'合成','help038':'任务提示','help040':'竞技场','help042':'传送门','help044':'商城','seller':'出售方','restore':'恢复购买','restore_complete':'恢复完成','earn_points':'获取点数','welcome':'你好，','of_no':'否','of_yes':'是','of_ok':'确定','of_cancel':'取消'}
p=Path('decoded/res/values/strings.xml'); s=p.read_text(encoding="utf8"); changed=[]
for k,v in translations.items():
 pattern=r'(<string name="'+re.escape(k)+r'">).*?(</string>)'
 s,n=re.subn(pattern,lambda m:m[1]+v+m[2],s,flags=re.S)
 if n: changed.append(k)
p.write_text(s,encoding='utf8')
Path('tools/zh-ui-translations.json').write_text(json.dumps(translations,ensure_ascii=False,indent=2),encoding='utf8')
print('Translated Android strings:',len(changed))

