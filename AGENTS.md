# SEED3 项目协作与实机安装说明

## 已确认的用户操作约定

- 用户手机为 vivo V2170A，Android 15，通过 USB ADB 连接。
- 更新测试版时，先卸载旧测试版，再安装新 APK。不要反复尝试覆盖安装。
- 用户已明确要求采用卸载重装流程。卸载会清除测试版的本地存档，不要宣称存档得到保留。
- 跳过开场动画、选择角色和进入游戏由用户操作。安装并打开游戏后告知用户，等待用户进入指定页面，再截图检查。
- 当前工作范围为操作界面汉化，剧情汉化暂不进行。

## PowerShell 安装流程

测试版包名为 `ch.kingdoms.market.compat`。原始 APK 为 `SEED3.apk`，不要误卸载其他应用。

```powershell
adb devices -l
adb uninstall ch.kingdoms.market.compat
# 确认卸载输出 Success 后再安装。若未安装该包，先确认包状态。
adb install --no-incremental --bypass-low-target-sdk-block "C:\Users\Administrator\Desktop\SEED3重制\SEED3-zh-ui-v2.apk"
# 只有安装输出 Success 后才启动。
adb shell am start -n ch.kingdoms.market.compat/ch.kingdoms.kor.KingdomsActivity
```

以本次待验证的已签名 APK 替换上述文件名，不要仅按文件名猜测最新版本。

覆盖安装曾返回 `INSTALL_FAILED_ABORTED: User rejected permissions`。该错误是安装流程返回的信息，不能据此断定用户主动拒绝或 ADB 自身拒绝。用户确认本机覆盖安装不可用，卸载重装已多次成功。若全新安装仍失败，再保存原始错误并排查手机安装提示、设备授权和包状态。

## 构建与调试位置

- 项目目录为 `C:\Users\Administrator\Desktop\SEED3重制`。
- 可编辑的解包内容位于项目的 `decoded` 目录。
- 构建工作副本位于 `C:\Users\Administrator\seed3-debug\decoded`。修改后需同步相关文件再构建。
- Apktool 在中文路径上调用 aapt2 曾失败，构建时使用上述英文路径。
- 已签名的发布 APK 应复制回项目目录，保留原始 `SEED3.apk`。
- Android 构建工具位于 `C:\Users\Administrator\AppData\Local\Android\Sdk\build-tools\35.0.0`。
- 诊断日志位于 `C:\Users\Administrator\seed3-debug\live-diagnostics.log`。检查采集进程仍在运行，不能默认日志持续更新。
- 包名改为兼容版后，动态资源查找的包名也必须同步。曾因技能图标仍使用原包名而返回空 Bitmap 并崩溃。
- 界面文字同时存在于 Android strings、压缩菜单文本表和按钮图片中。仅修改 strings 不能完成界面汉化。

## 当前版本记录

2026-11-24，`SEED3-zh-ui-v2.apk` 已通过先卸载再安装的方式成功安装。该版补充菜单文本表中的保存确认、保存成功、当前不可保存及保存返回主菜单提示。中文保存提示仍需进入游戏后实机验证。

## v4 实机验收记录

技能列表字号已由 16dp 对应画笔调整为 12dp 对应画笔。2026-11-24 截图确认 Lv.1、Lv.10、Lv.23 显示完整，无行内重叠。当前角色技能处于锁定状态，点击首项后详情区仍为空，详情区字号尚不能据此宣布验收通过。本次进程 24307 的日志未发现 Java 致命异常、JNI 致命错误或原生致命信号。截图保存在 C:\Users\Administrator\seed3-debug\skill-v4-review.png。


## v11 当前验收版本

2026-11-25，用户确认 SEED3-local-shop-v11.apk 验收无问题。当前目标版本为 API 28。包含去除应用列表扫描、电话标识读取、外链入口，Help/Option/商城文本汉化、本地购买，以及游戏自带 INFO 购买结果提示。说明正文恢复原字号。后续修改提示样式须复用游戏 INFO 面板，不能擅自换成系统 Toast 或地图短消息，也不要额外调整无关文字大小。本地解锁和点数记录会随卸载清除。

## 菜单高清预览 v12

2026-11-25，生成 SEED3-menu-HD-preview-v12.apk，18 张启动与主菜单静态资源放大至两倍。Real-ESRGAN ncnn-vulkan 20220424，realesr-animevideov3 模型，用于 icon、title_back、title_left_ch、title_right_ch。@kayahr/xbrz 1.1.2 用于三个开发商标志、标题标志、菜单文字、touchme 和 main_menu_bg。使用 drawable-480dpi-v4 与 drawable-320dpi-v4 保持显示尺寸。原低分辨率资源保留。首次安装曾返回 INSTALL_FAILED_ABORTED；随后全新安装成功，实机结果见下方安装记录。工具与模型在 C:\Users\Administrator\seed3-upscale，处理脚本已复制到 tools。当前主分支 Release v0.11.0 仍为先前验收版本，此预览尚未发布。

## v12 高清预览安装记录
2026-11-25，SEED3-menu-HD-preview-v12.apk 已全新安装成功并启动。实机截图确认到达标题触屏页面，人物、背景与标题位置正常；本次 PID 8272 日志未检出 FATAL EXCEPTION、JNI DETECTED 或 Fatal signal。主菜单按钮仍待用户点击进入后验收。截图：C:\Users\Administrator\seed3-debug\hd-v12-running.png。此版仅为本地预览，尚未发布到远端。

## 后续资源高清化规范（2026-11-25 用户确认）

- 启动画面至主菜单的现有 v12 高清资源保持现状，不继续提高倍率或重新处理。
- 后续其他资源采用「背景、人物 4×，其余 2×」：倍率均相对于原始素材的宽、高，不能在已超分的素材上再次叠加放大。
- 背景和人物插画以 Real-ESRGAN 处理为主；像素风图标、按钮、文字图片等以 xBRZ 处理为主，按素材实际风格选择算法并检查效果。
- 高清化保持原有画面布局、显示尺寸、透明通道和交互区域。图集或精灵资源须同步处理切片坐标与加载逻辑，不能仅替换大图导致错位。
- 保留原始素材；新增高清资源须检查透明边缘、图集接缝、文字可读性及实机内存和加载情况，再交由用户验收。
- 本条记录后续处理规则，不代表已授权本次继续批量修改资源或安装新包。

## 操作界面高清预览 v13（2026-11-25）

- 用户指定本轮仅处理悬浮界面，底层游戏人物与地图暂不高清化；启动至主菜单的 v12 资源保持原样。
- 已新增 639 张 xBRZ 2× UI 资源，涵盖方向键、攻击/技能槽、头像状态条、菜单按钮、面板、物品/技能图标、弹窗与界面动画。小地图内容由游戏动态绘制，底层地图/人物及剧情立绘未改。
- 以 drawable-320dpi-v4 / drawable-480dpi-v4 匹配原 mdpi / hdpi 资源，保持原有显示尺寸。原始素材仍保留。
- EquipUi 的两处旧布局直接将 Options.outWidth/outHeight 当作 mdpi 尺寸，改用 HdResources.decodeResource 将 320dpi 高清资源的源图尺寸折回原尺寸；BmpUtil 已自行处理密度，不套用此修正。
- 处理脚本 tools/upscale-ui.py，清单 tools/hd-ui-manifest.json，依赖及 Node 工作目录沿用 C:\Users\Administrator\seed3-upscale。脚本始终从原始密度目录生成，不从高清资源重复放大。
- APK：SEED3-ui-HD-v13.apk，29,195,329 字节；SHA256：505b6bd136eb0c2d4aa44ad553f5cd14af24ddacc19f62fdb7636f6c2afed096。已通过签名校验，确认 APK 内 639 张资源均为原尺寸 2×，与 v12 比较的 1015 个原始素材、assets 和原生库条目完全一致。
- 已按先卸载后安装流程成功安装并启动，等待用户跳过开场并进入游戏后检查实际界面；不能据此宣称游戏内全部验收通过。本轮尚未推送或发布 Release。

## v13 实机检查与 v14 补齐记录（2026-11-25）

- v13 PID 11011 已实机打开主操作界面、角色、装备、背包、技能、任务与系统页，未见因资源放大导致的明显布局溢出；装备页尺寸兼容修正生效。当前背包为空、技能锁定，不能宣称非空物品详情和全部技能详情已验收。日志未检出 FATAL EXCEPTION、JNI DETECTED、Fatal signal 或 OutOfMemoryError。
- v14 在上述 639 张 2× UI 资源上，补齐 23 张独立悬浮人物立绘与配套嘴部表情为 Real-ESRGAN 4×，使用 drawable-640dpi-v4 保持显示尺寸；小型头像图标按 UI 资源 2× 处理。脚本 tools/upscale-ui-characters.py，清单 tools/hd-ui-characters-manifest.json。剧情文字未改，游戏底层行走人物与地图未改。
- 最终预览包 SEED3-ui-HD-v14.apk，38,765,497 字节；SHA256：0e828294bf2267c3f2c5f6203c9fe37eb1f57806459a586884c441b8a2e57c83。签名验证通过，662 张新增高清素材尺寸核对通过，1015 个原始资源、assets 和原生库条目与 v12 一致。
- v14 已成功卸载重装并启动，用户进入游戏后已实机检查主操作界面和角色页：头像状态条、方向键、攻击/技能槽无明显错位，角色页 4× 立绘显示完整、尺寸正常。PID 13026 日志未检出 FATAL EXCEPTION、JNI DETECTED、Fatal signal 或 OutOfMemoryError；其他 NPC 立绘、全部表情和非空物品详情尚未逐项验收。截图位于 C:\Users\Administrator\seed3-debug\ui-v14-main.png 和 ui-v14-status.png。尚未推送或发布。

## 原生场景技术验证 v15（2026-11-25）

- 用户已授权开始底层人物与地图的小范围高清化验证，先前“底层先不处理”不再限制本次实验。
- 已确认旧原生场景输出为固定 512×256 RGB565，最终经 drawScreenTex 上传 OpenGL。独立 4× 素材在旧画布内绘制仍会丢失分辨率，尚需进一步适配软件绘制器与缓存。
- 当前 v15 实现实时 xBRZ 4× 场景输出至 2048×1024 RGBA，保留 v14 界面。原始素材和 libndk_kingdoms.so 均未改；已比对 APK 中 1724 个既有资源/原生库条目完全一致。不能将此实验描述为独立 4× 原生贴图接入完成。
- 技术资料、构建方法、设备范围、GPL 源码及运行时开关见 tools/native-scene-hd/README.md。新 JNI 库只与固定原生库配套，构建前校验原生库 SHA256。生成的 libc/libdl/liblog/libm 链接桩绝不能打进 APK。
- scene_assets.py 对全部 1157 张原生图片进行结构校验；scene_animation.py 完整解析一套 625 帧、29 条碰撞记录、15 组动画。当前城镇图集为 mapImg_5.cbm，原始素材均保留。
- SEED3-scene-HD-experiment-v15.apk：39,285,767 字节，SHA256 0c888472b8331044e6eb731dd992358a95f1ff68dd39b1d8cfb2269497689ad1。已通过签名校验并成功卸载重装。用户已进入城镇，PID 18094 检查开关、短距离移动、角色页正常，无崩溃/内存不足日志；处理均值约 12ms、上传约 1ms，不是完整战斗性能验收。
- 4× 运行时输出额外缓冲/查找表理论约 72.75 MiB；实际 PSS 采样约 351 MiB。关闭开关不会立即释放已分配的缓存，进程退出才释放。长期性能、发热、战斗、全地图和其他设备未验收。
- 开关对比截图：C:\Users\Administrator\seed3-debug\scene-poc\v15-scene-ab.png；日志位于同目录。当前手机保持 4× 开启。v14 APK 保留回退；v15 尚未推送或发布 Release。
