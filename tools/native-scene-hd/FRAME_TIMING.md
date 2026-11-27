# 游戏速度与帧率：静态分析（2026-11-25）

## 已确认

- OptionUi 的滑条范围为 0..18，读取 getGameSpeedLevel；点击返回/确认时调用 setGameSpeedLevel 并 saveOptions。
- JNI setGameSpeedLevel(level) 设置延时 clamp(55 - 3*level, 1, 55) 毫秒；getGameSpeedLevel() 返回 (55-delay)/3。
- CH_SetTimerDly 将字节写入 0xb2edf，再由 setSleepTime 经 JNI 调用 NdkGraphicManager.setSleepTime(B)。ChGLSurfaceView.onDrawFrame 每次调用原生 timercallback 后 Thread.sleep(sleepTime)。这不是独立的目标 FPS 限制器，没有从延时中扣除本帧绘制耗时。
- 原生回调链：timercallback -> NdkTimerCallback -> 0x4466c：CH_FuctionUpdate、Game_MainUpdate、0x44660、CH_GrpFlushLcd、CH_SetTimer、updateRealTimeUi。逻辑更新和画面提交在同一回调中；各子系统是否使用时间差仍需继续核对。
- MC_knlSetTimer 是返回 0 的空实现，不能据旧函数名认定存在另一条硬件定时器驱动。
- 该版本原生库文件中的计时字节初值为 1ms；Java 初始化 sleepTime 也是 1ms。Load_option 会用保存的延时覆盖它。此事实不能定义用户所指的“正常速度”，必须实机读取当前档位和确认预期游戏速度。
- 存在 FrameRate.smali 辅助类，但未发现其他类调用，不能用其中的目标帧率算法描述实际 GL 主循环。

## 档位示例

| 滑条档位 | 每帧后的 sleep |
|---|---:|
| 0 | 55ms |
| 8 | 31ms |
| 9 | 28ms |
| 12 | 19ms |
| 13 | 16ms |
| 18 | 1ms |

实际帧间隔还包含逻辑、软件绘制、4× 处理、纹理上传、交换/显示同步和调度。1000/sleep 不是实际 FPS。之前 v15 日志显示约 60 次场景上传回调/秒，但当时没有记录或确认速度档位，不能宣称“正常速度下 60fps”。

## 实机待办

用户要求将实机调试留到明天；当前 ADB 未连接。今天未操作手机、未修改速度或安装新版本。

1. 先读取并记录当前速度档位、sleep 和显示刷新率，确认用户所指的正常速度，不为提高测量结果而加速游戏。
2. 在该档位测量城镇静止、行走及战斗的逻辑调用、场景绘制/提交、显示呈现与帧间隔分布。
3. 保持同一速度，用现有开关分别测试 4× 开/关，分离引擎自身表现与超分成本。
4. 记录 p50/p95/p99 帧耗时及移动/动画速度；未完成测试前不给出正常速度 FPS 结论。

## 2026-11-27 ADB 首轮基准

已连接 vivo V2170A，启动现有 v15，未重装；用户进入城镇。PID 6679。Option 页截图显示速度滑条在最右端，对应 level 18 / sleep 1ms；未移动滑条。显示当前为 1080×2310、renderFrameRate 约60Hz。

SurfaceFlinger 原生场景层 SurfaceView[ch.kingdoms.market.compat/ch.kingdoms.kor.KingdomsActivity](BLAST)#20030 的原始呈现时间戳结果：

| 城镇静止、18档 | 有效时间戳 | FPS | 帧间隔p50 | p95 | 最大 |
|---|---:|---:|---:|---:|---:|
| 4× 开 |126|60.054|16.652ms|16.667ms|16.747ms|
| 4× 关 |127|60.044|16.654ms|16.681ms|16.876ms|

这只是约2秒滚动窗口的静止城镇呈现数据，不是逻辑速度、战斗或全流程验收。timestats 的 averageFPS=62.5 源自16ms整数直方图，不能直接当作实际呈现帧率。使用原始时间戳差重新计算。原始记录保存在 C:\Users\Administrator\seed3-debug\fps18-hd-*-latency.txt，较长窗口的直方图记录见同目录 stats.txt。Seed3HD 累计处理均值约11ms，上传约1ms。

测试结束已将4×恢复开启，速度保持18档；关闭本次SurfaceFlinger timestats采集。仍需找到可校准的游戏计时项目，确定正常节奏，不能把18档60FPS称为正常速度60FPS。
