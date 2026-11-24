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
