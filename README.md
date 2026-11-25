# 种子3 SEED3 - Heroes in Time｜安卓15兼容修复与中文汉化

[English](README.en.md)

为《种子3》（SEED3 / SEED 3 - Heroes in Time）提供 Android 15 兼容修复、界面排版调整与简体中文界面翻译。最新发布为 **v0.15.0 高清实验版**，安装包 `SEED3-scene-HD-experiment-v15.apk`。

[下载最新 APK](https://github.com/WSX-LY/SEED3-Heroes-in-Time-Android15-Chinese/releases/download/v0.15.0/SEED3-scene-HD-experiment-v15.apk) · [Release 与校验文件](https://github.com/WSX-LY/SEED3-Heroes-in-Time-Android15-Chinese/releases/tag/v0.15.0)

## v0.15.0 更新

- 新增 639 张 2× 操作界面素材、23 张 4× 悬浮人物立绘和表情，保留启动菜单 2× 资源。
- 增加 xBRZ 4× 实时场景输出：512×256 → 2048×1024，独立 4× 场景贴图替换尚未完成。
- 修正高清素材对装备页布局计算的影响，加入资源/动画解析工具、构建源码和运行时对比开关。
- vivo V2170A / Android 15 已验证城镇、短距离移动、角色页及高清开关；战斗、全地图、持续发热和其他设备尚未验收。
- 实机累计处理均值约 12ms、上传约 1ms；额外查找表和缓冲约 73MiB。这是实验版，保留旧版本 Release 供回退。

![原效果（左）与实时4×（右）](docs/images/scene-hd-comparison.png)

## v0.11.0 更新

- 目标 Android API 提升至 28，补齐旧 HTTP 兼容库、私有缓存和明确服务绑定。
- 移除已安装应用列表扫描及旧修改工具检测，去除手机号等电话标识读取。
- 移除标题页 Facebook、OpenFeint 外链图标。
- 补充 Help、Option 与商城及二级弹窗的中文文本，修正相关字号。
- 原真实内购入口改为免费本地领取，解锁记录和点数写入本机数据。恢复购买读取本地记录。卸载会清除本地数据。
- 购买提示使用游戏自带 INFO／确认框，说明正文恢复原字号。用户已于 2026-11-25 验收 v11 无问题。

本地领取和解锁仅在本机生效，不能恢复原服务端购买记录。全流程和全部商品尚未完成回归测试。

## 已完成

- 修复资源扫描因误读目录而提前中断、找不到 CHFONT 的启动问题。
- 修正技能原生接口创建数组的类型错误。
- 同步兼容版包名与动态图片资源查找，修复技能图标空指针崩溃。
- 调整右侧快捷技能栏与攻击按钮边界。
- 修正角色信息、背包容量及金币文字的重复字号缩放。
- 缩小技能列表文字，并设置技能详情文字的像素字号。
- 翻译 62 项 Android 界面字符串、4 项保存提示和首个任务的标题与说明。
- 增加 Seed3Diag 启动、菜单切换和图标资源诊断日志。

## 游戏名称与搜索

中文常用名称为“种子3”，英文名称为 SEED3 - Heroes in Time，也常写作 SEED 3。安装包标题画面显示 SEED III: Wheel of Fortune。项目提供安卓15兼容修复与部分简体中文界面汉化，汉化进度见下文。

[中文名称参考](https://m.ali213.net/android/16165.html) · [英文名称参考](https://www.taptap.cn/app/41768)

## 下载与安装

从本仓库 Releases 下载 APK。测试包名为 `ch.kingdoms.market.compat`。

用户实机的覆盖安装曾失败。该设备按先卸载再安装的流程操作。卸载会清除应用的本地存档，请提前保留需要的数据。

```powershell
adb devices -l
adb uninstall ch.kingdoms.market.compat
adb install --no-incremental --bypass-low-target-sdk-block SEED3-scene-HD-experiment-v15.apk
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
apksigner sign --ks YOUR_KEYSTORE --out SEED3-scene-HD-experiment-v15.apk aligned.apk
apksigner verify SEED3-scene-HD-experiment-v15.apk
```

Apktool JAR、原始 APK、构建输出、日志和签名密钥已排除出 Git。可从 Apktool 官方发布页获取工具。

## 权利说明

本项目为第三方兼容性修复与翻译工作，非游戏官方版本。原游戏程序、素材、名称等权利归原权利人。仓库未对第三方游戏内容授予额外许可。



## 高清预览与后续计划

当前源码包含 v12 的 18 张启动及主菜单 2× 高清资源，组合使用 Real-ESRGAN 与 xBRZ，并通过资源密度保持原有显示尺寸。已实机确认进入标题触屏页，主菜单按钮仍待逐项验收；最新 Release 为 v0.15.0 高清实验版。

启动至主菜单资源保持当前效果。后续其他资源采用背景、人物 4×，其余 2×，倍率以原始素材为准，保持布局与交互区域，并检查画质、内存和加载情况。

`tools/upscale-menu.py` 和 `tools/scale-xbrz.mjs` 记录本次 2× 预览处理流程，含开发机路径，使用前须调整。依赖 Python/Pillow、Node.js、`@kayahr/xbrz`、`pngjs` 及 Real-ESRGAN ncnn-vulkan 的 `realesr-animevideov3` 模型；工具和模型不随仓库提交。

### 操作界面高清预览 v14

新增 639 张 2× 界面资源（xBRZ）和 23 张 4× 悬浮人物立绘及表情（Real-ESRGAN）。涵盖状态条、方向键、攻击/技能槽、菜单、背包/技能图标、面板和弹窗；地图与场景行走人物保持原样。启动及主菜单沿用 v12。保留源图，通过资源密度保持显示尺寸，并修正装备页按原始像素计算布局的问题。

处理脚本及素材清单：`tools/upscale-ui.py`、`tools/upscale-ui-characters.py`、`tools/hd-ui-manifest.json`、`tools/hd-ui-characters-manifest.json`。工具依赖沿用前述环境；两份 Python 脚本支持 `--project` 与 `--work` 参数。

v13 中间版已实机检查主操作界面与主要菜单；空背包、锁定技能状态下的检查不能覆盖所有内容。补齐立绘的 v14 已安装，实机确认主操作界面和角色页布局正常，4× 角色立绘显示完整，当前进程日志未检出崩溃或内存不足异常。其他 NPC 立绘、表情及全部物品详情尚未逐项验收。最新 Release 为 v0.15.0 高清实验版。

### 场景实时 4× 实验 v15

已在实机验证将旧引擎完成的 512×256 场景画布，经 xBRZ 4× 输出至 2048×1024，保留 v14 高清界面。此实验尚未接入独立 4× 人物/地图贴图。城镇的开关对比、短距离移动和角色页正常；当前平均处理约 12ms、上传约 1ms，额外缓存和查找表约 73 MiB。战斗、全地图和长期性能未验收。

原生图片和动画解析器已加入工具目录。实验构建、源代码、设备限制及对比开关见 [技术说明](tools/native-scene-hd/README.md)。最新 Release 为 v0.15.0 高清实验版。
