# 原生场景 4× 技术验证 / Native scene 4× experiment

## v15 的实际范围

v15 保留 v14 的全部界面资源，在游戏原生库上传场景纹理给 OpenGL 时，将 512×256 RGB565 画布转换为 xBRZ 4× 的 2048×1024 RGBA 输出。它是整幅场景的实时像素放大，尚未让旧软件绘制器直接绘制独立 4× 人物/地图贴图。游戏逻辑、移动、碰撞、动画帧和坐标不变。原始图片包及 libndk_kingdoms.so 未改。

Scope: v15 scales the completed scene at upload time. It does **not** yet render independently upscaled source textures at a higher native scene resolution. Game logic, collisions, animation frames and logical coordinates are preserved. All v14 artwork and the original native library remain unchanged.

## 结构与构建

- `scene_hd.cpp`：可选 JNI 库，在已加载原生库的 glTexImage2D 导入槽接入输出处理。只处理 512×256 / RGB565 场景纹理；其他上传原样转交。
- `vendor/`：Zenju xBRZ 源码，从 https://github.com/atheros/xbrzscale/tree/master/xbrz 获取；各文件版权和 GPL-3.0 声明保留，许可证见 COPYING，SHA256SUMS.json 记录下载文件摘要。
- `ministd/`：供此工具链使用的最小 C++ 辅助头，仅覆盖随附 xBRZ 的使用范围。运行时依赖 Android libc/libdl/liblog/libm。
- 先安装 Python 包 ziglang==0.17.1，运行 `python tools/native-scene-hd/build.py C:\Users\Administrator\seed3-debug\scene-poc\native`。构建过程生成的同名系统库只是链接桩，**不能放进 APK**；APK 仅复制 libseed3_scene_hd.so。输出面向当前手机支持的 ARMv8 AArch32 / NEON-VFPv4，尚未验证其他设备。
- 构建脚本锁定原生库 SHA256，防止套用错误的函数和 GOT 地址。原生库有变化时必须重新审查。当前 drawScreenTex 相对地址 0x145e1，glTexImage2D 导入槽 0xb2664。旧库无 PT_GNU_RELRO，导入槽页面同时包含可写数据，不能将其改为只读。
- 输出库使用 16 KiB LOAD 段对齐。启动时导入检查失败则不接入处理；可选库加载失败时保留原渲染路径。

Build with the pinned Zig Python package. The generated libc/libdl/liblog/libm files are link stubs only and must never be packaged. Only libseed3_scene_hd.so belongs in the APK. The original library hash and import offsets are version-specific; re-audit them after native code changes. This experiment has only been checked on the connected vivo V2170A.

## 运行时对比开关

```powershell
adb shell am broadcast -a ch.kingdoms.market.compat.HD_SCENE -n ch.kingdoms.market.compat/ch.kingdoms.ndk.SceneHdReceiver --ez enabled false
adb shell am broadcast -a ch.kingdoms.market.compat.HD_SCENE -n ch.kingdoms.market.compat/ch.kingdoms.ndk.SceneHdReceiver --ez enabled true
adb logcat -s Seed3HD:I
```

开关仅用于实验对比；进程重启默认启用。关闭处理后，已分配缓存留到进程退出，不代表立即释放内存。RGB 距离查找表约 64 MiB，源/输出/对比缓冲约 8.75 MiB；相同场景帧复用放大结果。日志给出累计处理次数与平均耗时，不是战斗帧率测试。

The toggle is for A/B inspection and defaults to enabled after process restart. Allocated buffers remain until process exit. The RGB lookup table uses about 64 MiB, with roughly 8.75 MiB for frame buffers. Unchanged input frames reuse cached results. Logged timings are cumulative CPU filter/upload measurements, not a combat FPS benchmark.

## 已验证 / Verified

2026-11-25，v15 已签名、卸载重装并在城镇运行。PID 18094 的开关对比、短距离移动、角色页检查正常，日志未检出 FATAL EXCEPTION、JNI DETECTED、Fatal signal 或 OutOfMemoryError。累计场景处理均值约 12 ms，纹理上传约 1 ms。采样总 PSS 359499 KiB；v14 先前角色页采样 284222 KiB，采样页面与时刻不同，不能视为严格内存基准。战斗、全地图、其他设备及持续发热尚未验证。

The town A/B comparison, brief movement and character page were checked. No crash or out-of-memory signature was found in the current process log. Combat, all maps, other devices and sustained thermal behavior remain untested.

## 原生素材接入的后续工作

`tools/scene_assets.py` 可读取原生 CMB/CBM：图片包索引、zlib 数据、4/8 位索引色、多套调色板、4 字节行对齐和切片矩形。1157 张图片的结构校验通过。`tools/scene_animation.py` 可完整解析 HSPR_0.dat 第 0 项的 625 个组合帧、29 个碰撞记录和 15 组动画；字段部分语义仍需对照绘制代码确认。

离线样本定位：当前城镇图集 mapImg_5.cbm；角色 HA_0/HA_1/HA_2 为分层素材，另有 HW 武器素材。独立贴图接入还需适配源切片坐标、调色板/透明度、软件绘制画布、地图缓存、翻转和遮挡。不能把当前实时输出实验宣称为独立高清素材接入已完成。

The extraction and animation parsers establish the source formats. Independent HD texture support still requires adapting slice coordinates, palette/transparency handling, software rasterization, map caching, transforms and occlusion.
