# SEED3 Android 15 兼容修复与界面汉化

[English](README.en.md)

为 SEED3 提供 Android 15 兼容修复、界面排版调整与简体中文界面翻译。当前版本为 v0.4.0，对应实机测试安装包 SEED3-zh-ui-v4.apk。

## 已完成

- 修复资源扫描因误读目录而提前中断、找不到 CHFONT 的启动问题。
- 修正技能原生接口创建数组的类型错误。
- 同步兼容版包名与动态图片资源查找，修复技能图标空指针崩溃。
- 调整右侧快捷技能栏与攻击按钮边界。
- 修正角色信息、背包容量及金币文字的重复字号缩放。
- 缩小技能列表文字，并设置技能详情文字的像素字号。
- 翻译 62 项 Android 界面字符串、4 项保存提示和首个任务的标题与说明。
- 增加 Seed3Diag 启动、菜单切换和图标资源诊断日志。

## 下载与安装

从本仓库 Releases 下载 APK。测试包名为 `ch.kingdoms.market.compat`。

用户实机的覆盖安装曾失败。该设备按先卸载再安装的流程操作。卸载会清除应用的本地存档，请提前保留需要的数据。

```powershell
adb devices -l
adb uninstall ch.kingdoms.market.compat
adb install --no-incremental --bypass-low-target-sdk-block SEED3-zh-ui-v4.apk
adb shell am start -n ch.kingdoms.market.compat/ch.kingdoms.kor.KingdomsActivity
```

分别检查命令结果。卸载和安装应返回 Success。若包尚未安装，可确认包状态后直接安装。

## 当前验证范围

在 vivo V2170A、Android 15 上验证启动、菜单、右侧按钮、角色页、背包数字、首个任务中文及技能列表字号。技能详情字号已修改，但当前测试角色技能锁定，详情区域显示效果尚待验证。剧情、战斗和全流程没有完整回归。

汉化仍在进行。任务数据共 135 条，目前只翻译首条。大量其他文字和图片标签仍为英文。剧情汉化暂未开展。旧联网服务仍可能报错。

## 工程目录

- `decoded/` — Apktool 解包后的当前工作工程。
- `tools/` — 兼容性和汉化补丁的历史脚本及翻译映射。
- `AGENTS.md` — 后续协作者操作约定与实机记录。

部分历史补丁脚本含开发机绝对路径或一次性修改断言，应先阅读再使用，不能对当前工程全部重复执行。

## 构建

需要 Java、Apktool 2.12.1 和 Android SDK Build Tools。使用英文路径构建，避免旧工具的中文路径问题。密钥由构建者自行准备，不提交到仓库。

```powershell
java -jar tools/apktool.jar b decoded -o unsigned.apk
zipalign -f 4 unsigned.apk aligned.apk
apksigner sign --ks YOUR_KEYSTORE --out SEED3-zh-ui-v4.apk aligned.apk
apksigner verify SEED3-zh-ui-v4.apk
```

Apktool JAR、原始 APK、构建输出、日志和签名密钥已排除出 Git。可从 Apktool 官方发布页获取工具。

## 权利说明

本项目为第三方兼容性修复与翻译工作，非游戏官方版本。原游戏程序、素材、名称等权利归原权利人。仓库未对第三方游戏内容授予额外许可。

