
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

The workflow uploads only built frontend assets from `dist/` to COS under `Memkits/timegrass-viewer/` (or its separate `pr/` prefix) and verifies their public CDN URLs. The existing `dist/*` rsync destination, `rsync-user@tiye.me:/web-assets/repo/Memkits/timegrass-viewer`, remains unchanged and runs only on main pushes. No server code is moved to COS.

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
