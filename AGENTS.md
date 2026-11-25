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
