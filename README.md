
Timegrass Viewer
----

> View data from timegrass

### Usage

Requires Calcit 0.27.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.

Use only `calcit.cirru` and `deps.cirru`. The retired `compact.cirru` and
`package.cirru` snapshots must not be restored; CI checks their absence.

```bash
caps --strict --ci
yarn install --immutable
calcit calcit.cirru --check-only
calcit calcit.cirru js
node --test scripts/viewer-regression.test.mjs
yarn dev
```

Paste a Timegrass EDN map with `:tasks` (`:working` and `:finished`) and `:notes`, then select Read to view entries grouped by day.

### Deployment

`yarn build` uses `VITE_BASE_URL` when provided and otherwise uses relative URLs.
COS public verification uses the Action's built-in verify settings, without
extra project-local CDN checker scripts.
Only deployment jobs queue for the shared COS prefix; builds run independently.
Tested artifacts are retained for 90 days and reused when upload is rerun.

The workflow uploads only built frontend assets from `dist/` to COS under `Memkits/timegrass-viewer/` (or its separate `pr/` prefix) and verifies their public CDN URLs. The existing `dist/*` rsync destination, `rsync-user@tiye.me:/web-assets/repo/Memkits/timegrass-viewer`, remains unchanged and runs only on main pushes. No server code is moved to COS.

使用正式 COS action v1.2.0 内置生成 HTML 资源引用及公开字节/SHA-256 校验，不新增 CDN 验证脚本或测试。PR 构建路径按 PR/run/attempt 隔离，仅 upload job 按 PR/production 排队；保持原 tested artifact 下载、重跑复用、过期部署保护和 secret 策略。

默认入口明确为浏览器 JS（通过 Calcit 配置命令维护），保留严格 Caps、工具链一致性、规范格式、严格入口、六 namespace public、原 unit 定义测试和七项业务回归，清理重复 strict workflow 报告及版本文字断言。`yarn dev` 先编译一次再 Vite，实时编译另终端运行 `calcit calcit.cirru js -w`，无需 concurrently。Calcit/procs 0.27.0 保持，不新增模块 hash 或机械降级兼容 alpha；原数据/存储键/日期逻辑/生产和服务器路径不变。

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
