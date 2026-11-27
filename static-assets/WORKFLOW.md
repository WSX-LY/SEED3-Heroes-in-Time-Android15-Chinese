# 分工、交付与整合

## 目录与启动命令
在项目根执行，Python 需要 Pillow：

```powershell
python tools/export-static-assets.py
python tools/asset-workflow.py index
python tools/asset-workflow.py validate static-assets/submissions/<task_id>/<author>
```

前两条由协调者初始化时使用；当前已生成，不必重跑。index 已存在任务表时拒绝覆盖，避免清掉认领。export 会覆盖原图和 mapping，不能在协作进行中随意重跑。这里的原始是当前 decoded 中未放大的尺寸基线，可能包含既有汉化，并非保证逐字节来自最初 SEED3.apk。

originals/ 是输入；mapping.json 是稳定图片身份；tasks.json 是835项按源文件分组的队列（原生91个源文件，Android744个位图源文件）。一任务可含多张图片及调色板；不要拆散同图的调色板。source 是 decoded 下相对路径；image_index 是容器内图像序号；palette 是调色板序号；slices 是原图坐标 x,y,w,h。id 不可改名。1350个原生图片/调色板条目加744个Android条目共2094条，原生不计调色板为1157张。

## 协调者分配
1. 查看 tasks.json，对照 originals 图片决定用途，核对 tools/upscale-menu.py 中冻结的18个资源名称及现有 tools/hd-ui*-manifest.json，避免重复重做已验收图片。
2. 每次分配一个源文件或少量小任务。填写 owner、status=claimed、category、scale、algorithm；类别未确认不要批量生成。原生文件名仅提示用途，不能当作语义已验证。
3. 给执行者 task_id、输出目录和本目录 AGENTS.md。多人共享目录时由一个协调者维护认领表，避免文件冲突。
4. 收到提交后运行校验、检查对比图，确认所有变体齐全。通过后才标 accepted；不通过填 needs_revision 和原因。任务表是协作记录，当前校验器不强制 owner/status。

## 提交文件
每任务独立 submission.json，结构见 submission.example.json。entries 必须覆盖该任务所有 id；file 为相对提交目录路径，禁止绝对路径或越界。author/tool/tool_version/category/review_notes 必填。模型、参数、生成提示词（如使用）、来源授权情况写在额外元数据中。不支持的混合类别任务先交协调者拆分方案，不随意改变协议。

所有结果为 PNG RGBA，尺寸精确为原尺寸乘倍率。目标图片不需要改成原生 CBM/CMB，暂时不要量化回旧调色板。不要修改 mapping 中 replacement 来抢先整合；独立提交避免多智能体同时改总清单。

## 人工验收
- 原尺寸观看与放大观看均比对；保持角色识别特征、文字内容、图标含义和布局。
- 透明背景与深浅棋盘格下检查黑边、白边、光晕、半透明污染。
- 图集逐切片检查，地图拼接边缘无缝；多调色板保持一致；涉及动画时检查帧间轮廓稳定，尚未组合验证则明确标记。
- 生成细节可另交候选版本，记录提示词和模型；不让模型补出的装饰侵入相邻切片或改变实际交互区域。

## 自动校验能力边界
检查源哈希、任务ID范围、重复/缺失条目、PNG/RGBA、倍率和尺寸、明显透明通道丢失以及路径越界。不会自动证明视觉质量、接缝正确、动画无抖动、切片内容未位移或运行时兼容。模型/算法真实性由执行记录和人工复核确认。

## 未来打包映射
整合者在验收后才把提交路径写入独立整合清单，按 id 查找，null 回退原图。必须包含 source_sha256、倍率、目标路径和切片缩放信息。当前没有实现打包消费这些提交的代码；不能把校验通过当作 APK 已使用高清图。原生512×256画布限制仍需另行改造。安装仍按根 AGENTS.md 的卸载重装规则，需单独获得相应工作授权。

## 可复制给执行者的任务提示
阅读 static-assets/AGENTS.md 和 WORKFLOW.md。只处理 task_id=<协调者填写>，owner=<填写>。从 mapping.json 对应 originals 读取原图，先目视分类并说明倍率与算法；遇到冻结/既有高清资源或用途不明先报告。输出至 static-assets/submissions/<task_id>/<author>/，提交全部调色板、submission.json 和对比图；运行 validate 并报告人工未验证事项。不得改游戏代码、原图或安装包。
