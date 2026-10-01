import assert from 'node:assert/strict';
import test from 'node:test';
import { checkCdnPath } from './check-cdn-path.mjs';

const base = 'https://cos-sh.tiye.me/Memkits/timegrass-viewer/pr/';
const html = `<script src="${base}assets/main.js"></script><link href="${base}assets/main.css">`;
test('accepts exact preview prefix and separately hosted font', () => {
  checkCdnPath(`${html}<link href="https://cdn.tiye.me/favored-fonts/main-fonts.css">`, base);
});
test('rejects relative or production assets mixed into preview HTML', () => {
  for (const url of ['./assets/extra.js', 'https://cos-sh.tiye.me/Memkits/timegrass-viewer/assets/extra.js']) {
    assert.throws(() => checkCdnPath(`${html}<script src="${url}"></script>`, base));
  }
});
test('requires generated JS and CSS', () => {
  assert.throws(() => checkCdnPath(`<link href="${base}assets/main.css">`, base));
  assert.throws(() => checkCdnPath(`<script src="${base}assets/main.js"></script>`, base));
});
test('rejects missing local artifacts', () => {
  assert.throws(() => checkCdnPath(html, base, 'scripts'), /Missing local artifact/);
});
test('rejects malformed base and ignores comments', () => {
  assert.throws(() => checkCdnPath(html, './'));
  checkCdnPath(`${html}<!-- <script src="./assets/old.js"></script> -->`, base);
});
