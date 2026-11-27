# SEED3 静态图片协作包

运行 `python tools/export-static-assets.py` 从 decoded 原始素材重新导出。不要直接修改 originals；重新导出会覆盖这些文件。

mapping.json 为稳定映射清单：id 使用原始相对路径、图集索引、调色板索引，不依赖导出顺序。source_sha256 用于识别源版本，size 和 slices 均使用原图像素坐标。原生图片的品红透明色已转为透明通道，各调色板分别导出。Android 图片保留原始密度路径，排除新增的 320/480/640dpi 高清目录。

补绘放入 replacements/，在相应条目的 replacement 字段填写相对路径。保留透明通道、轮廓锚点和图集切片布局；背景、人物目标为原图宽高 4 倍，其余通常 2 倍。启动至主菜单既有 v12 高清素材按项目约定保持现状。请在提交中记录作者、生成工具、倍率与授权来源。原作素材不因导出而取得再分发授权。

当前清单是离线协作与未来构建输入协议，尚未接入 APK 打包或原生运行时替换。replacement=null 表示回退原始素材。未来打包器必须校验源哈希、目标尺寸和切片坐标，并显式报告未支持的替换，不能静默忽略。当前实时 xBRZ 场景放大不等于加载独立高清贴图。

范围：全部 assets 中 CBM/CMB 图片及原始 Android drawable 位图。未把动画组合帧、地图动态拼装结果当成独立静态素材；动画与地图数据仍在 decoded/assets，已有 tools/scene_animation.py 可解析已验证的精灵格式。尚未完成全部动画表与图片银行的语义对应，因此不能把目录数量等同于全部角色动作已整理完成。

## 智能体入口

先读 [AGENTS.md](AGENTS.md) 与 [WORKFLOW.md](WORKFLOW.md)。任务表为 [tasks.json](tasks.json)，提交格式为 [submission.example.json](submission.example.json)。协作提交使用独立 submission.json；旧说明中的 replacement 字段只供后续整合者使用，执行者不要并发修改总映射。
