
Timegrass Viewer
----

> View data from timegrass

### 本轮使用者影响：正式 Calcit 0.30.1

CLI / `@calcit/procs` 保持配对正式 **0.30.1**，直接依赖升级为已发布的 Reel 0.6.42、
UI 0.8.1、Respo 0.16.126、JS-FFI 0.2.6，Router 0.8.38 为传递依赖。
请重新安装完整图、生成 JS 并刷新，不混用旧 alpha 缓存；UI 升级可能有样式差异，
不承诺逐像素相同。Timegrass EDN 输入、日期算法、原始源文、存档 key/协议和恢复错误处理不变。

本轮迁移实际源码中的旧 Option helper、Map merge 和 List concat 调用，移除一处只有单个
Map 参数的冗余 merge；保留 Map 后值覆盖前值、惰性 fallback、任务顺序和日期规则。
六处内联 CSS 长度/枚举改为等价 String，匹配已发布 UI 样式的真实 String Map 合同，
不通过放宽泛型或 Dynamic 规避检查。局部样式表达式的原始值类型有所变化，CSS 表现目标不变。
原三项原生测试和七项业务回归不改，保留 all-defs、完整 strict 和弃用零门禁。
不增加永久脚本、预算、强转、框架或 concurrently，不改变恢复与保存合同。
原 tested artifact、PR 隔离路径、COS 内置 verify 和前端 rsync 目标保留。
不合并、部署生产、重启服务或发版；不读取真实 Timegrass 数据。
本候选尚需独立正式 CI 和正常浏览器验收，不以已有版本声明或旧绿色检查代替。
源码仅由官方 Linux 0.30.1 CI 的结构化原子事务生成；本地不运行 Caps 或编译器检查、
codegen、构建及 Snapshot 写入。只读 query/tree 视图和跳过脚本的 Yarn 锁文件更新允许。

### Usage

Use Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
Calcit modules use exact formal tags in `deps.cirru`.

Use only `calcit.cirru` and `deps.cirru`. The retired `compact.cirru` and
`package.cirru` snapshots must not be restored; CI checks their absence.

```bash
caps --strict --ci
yarn install --immutable
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru fix --workflow strict --verify
calcit calcit.cirru test --tag unit --require-match
yarn compile
node --test scripts/viewer-regression.test.mjs
yarn dev
```

Paste a Timegrass EDN map with `:tasks` (`:working` and `:finished`) and `:notes`, then select Read to view entries grouped by day.

输入仍为原来的 Timegrass EDN Map，工作任务和已完成任务先按 key 合并
（后者覆盖同 key），不同 key 下的相同条目不会被去重。任务优先使用数字
`finished-time`，否则使用 `created-time`；日期、周日对齐和天数计算保持原样。
非法输入或字段类型错误显示错误并保留可编辑源文。

内部只读日期视图使用真实 `Info` / `Entry` Struct，不把它们冒充完整任务模型；
原始源文仍保留所有输入字段。根状态保留开放 Map 合同及额外字段，操作使用
`Op` Enum 和 `reel.typed/State`，不通过伪 Map/Struct 强转绕过检查。
仍使用 `timegrass-viewer` 存储键、原状态字段和 beforeunload 保存时机。
无法解码的旧缓存会显示错误并暂停自动保存，避免覆盖原值；未自动删除旧数据。
开放状态 Map、混合 key 的 UI 游标和外部 EDN 解码入口仍有显式 `Dynamic`
边界；strict 通过不代表这些边界已消失，不使用 `:js-ffi` 标签掩盖它们。

### Deployment

`yarn build` uses `VITE_BASE_URL` when provided and otherwise uses relative URLs.
COS public verification uses the Action's built-in verify settings, without
extra project-local CDN checker scripts.
Only deployment jobs queue for the shared COS prefix; builds run independently.
Tested artifacts are retained for 90 days and reused when upload is rerun.

The workflow uploads only built frontend assets from `dist/` to COS under `Memkits/timegrass-viewer/` (or its separate `pr/` prefix) and verifies their public CDN URLs. The existing `dist/*` rsync destination, `rsync-user@tiye.me:/web-assets/repo/Memkits/timegrass-viewer`, remains unchanged and runs only on main pushes. No server code is moved to COS.

使用正式 COS action v1.2.0 内置生成 HTML 资源引用及公开字节/SHA-256 校验，不新增 CDN 验证脚本或测试。PR 构建路径按 PR/run/attempt 隔离，仅 upload job 按 PR/production 排队；保持原 tested artifact 下载、重跑复用、过期部署保护和 secret 策略。

默认入口为浏览器 JS；CI 检查所有定义、完整 strict workflow
和 deprecated-call 清零，保留原有 3 项 native unit 和 7 项业务回归。
回归测试仅将 Reel 构造及渲染树遍历适配到新版库的公开接口，不削弱业务断言。
`yarn dev` 先编译一次再 Vite，实时编译另终端运行 `calcit calcit.cirru js -w`，
无需 concurrently。不新增验证脚本，COS 只使用 Action 自带验证。

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
