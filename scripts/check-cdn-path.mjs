import assert from 'node:assert/strict';
import { existsSync, readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

// Checks generated build output; COS public verification stays in the Action.
export function checkCdnPath(html, base, dist) {
  assert.ok(base?.startsWith('https://') && base.endsWith('/'), 'Expected an HTTPS CDN base');
  const assets = [...html.replace(/<!--[\s\S]*?-->/g, '').matchAll(/(?:src|href)=["']([^"']+)["']/g)]
    .map((match) => match[1]).filter((url) => /\.(?:js|css)(?:[?#]|$)/.test(url));
  assert.ok(assets.some((url) => /\.js(?:[?#]|$)/.test(url)), 'Missing JavaScript entry');
  assert.ok(assets.some((url) => url.startsWith(base) && /\.css(?:[?#]|$)/.test(url)), 'Missing generated CSS');
  for (const asset of assets) {
    if (asset === 'https://cdn.tiye.me/favored-fonts/main-fonts.css') continue;
    assert.ok(asset.startsWith(`${base}assets/`), `Wrong CDN asset: ${asset}`);
    const path = new URL(asset).pathname;
    assert.equal(path, path.replace(/\/\//g, '/'), 'Duplicate slash');
    const relative = decodeURIComponent(asset.slice(base.length).split(/[?#]/)[0]);
    assert.ok(!relative.split('/').some((part) => part === '..' || part === '.'), 'Invalid asset path');
    if (dist) assert.ok(existsSync(resolve(dist, relative)), `Missing local artifact: ${relative}`);
  }
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  checkCdnPath(readFileSync('dist/index.html', 'utf8'), process.env.VITE_BASE_URL, 'dist');
  console.log('Generated JS/CSS CDN paths and local artifacts verified');
}
