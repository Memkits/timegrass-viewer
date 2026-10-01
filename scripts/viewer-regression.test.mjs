import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { comp_container, comp_viewer, grab_info, task_time } from '../js-out/app.comp.container.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = c.init_tags(['event', 'children', 'click', 'input', 'some', 'store', 'states', 'cursor', 'data', 'content', 'list?', 'error', 'value', 'tasks', 'working', 'finished', 'notes', 'text', 'time', 'created-time', 'finished-time', 'grouped-tasks', 'grouped-notes']);
const map = c._$n__$M_;
const field = (v, k) => c.option_$o_unwrap(c.get(v, k));
const nth = (v, i) => c.option_$o_unwrap(c.nth(v, i));
const en = c._$n_enum_$o_nth;
const stamp = (day) => new Date(2026, 0, day, 12).getTime();
const task = map(t.text, 'working-fixture', t['created-time'], stamp(5));
const finished = map(t.text, 'finished-fixture', t['created-time'], stamp(5), t['finished-time'], stamp(6));
const note = map(t.text, 'note-fixture', t.time, stamp(7));
const fixture = map(t.tasks, map(t.working, map('working', task), t.finished, map('finished', finished)), t.notes, map('note', note));
const state = (content = '') => map(t.content, content, t['list?'], false, t.data, null, t.error, null);
const storeFor = (s) => map(t.states, map(t.data, s));
const render = (store) => comp_container(map(t.store, store));
function handler(node, kind, label = '') {
  if (component_$q_(node)) return handler(c.option_$o_unwrap(component_tree(node)), kind, label);
  const event = c.get(node, t.event);
  if (en(event, 0) === t.some && (!label || make_string(node).includes(`>${label}<`))) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (en(fn, 0) === t.some) return c.option_$o_unwrap(fn);
  }
  const children = c.get(node, t.children);
  if (en(children, 0) === t.some) {
    const pairs = c.option_$o_unwrap(children);
    for (let i = 0; i < c.count(pairs); i++) {
      const found = handler(nth(nth(pairs, i), 1), kind, label);
      if (found) return found;
    }
  }
}
function runEvent(fn, initial, event = null) {
  assert.equal(typeof fn, 'function');
  const ops = [];
  fn(event, (...args) => { assert.equal(args.length, 1); ops.push(args[0]); });
  assert.equal(ops.length, 1);
  return updater(initial, ops[0], 'event', 1);
}
test('finished time wins; unfinished task falls back to created time', () => {
  assert.equal(task_time(task), stamp(5));
  assert.equal(task_time(finished), stamp(6));
});
test('working/finished tasks and notes retain their separate day groups', () => {
  const info = grab_info(fixture);
  const tasks = field(info, t['grouped-tasks']);
  const notes = field(info, t['grouped-notes']);
  assert.equal(field(nth(field(tasks, '2026-01-05'), 0), t.text), 'working-fixture');
  assert.equal(field(nth(field(tasks, '2026-01-06'), 0), t.text), 'finished-fixture');
  assert.equal(field(nth(field(notes, '2026-01-07'), 0), t.text), 'note-fixture');
  const html = make_string(comp_viewer(info));
  for (const text of ['working-fixture', 'finished-fixture', 'note-fixture']) assert.ok(html.includes(text));
});
test('Read enters listing and Edit returns to source without losing data', () => {
  let store = storeFor(state(c.format_cirru_edn(fixture)));
  store = runEvent(handler(render(store), t.click, 'Read'), store);
  let s = field(field(store, t.states), t.data);
  assert.equal(field(s, t['list?']), true);
  assert.equal(field(s, t.error), null);
  assert.ok(make_string(render(store)).includes('working-fixture'));
  const data = field(s, t.data);
  store = runEvent(handler(render(store), t.click, 'Edit'), store);
  s = field(field(store, t.states), t.data);
  assert.equal(field(s, t['list?']), false);
  assert.ok(c._$e_(field(s, t.data), data));
  assert.equal(c._$n_map_$o_contains_$q_(field(store, t.states), t.states), false);
});
test('text input updates state through a single Enum', () => {
  const store = storeFor(state());
  const next = runEvent(handler(render(store), t.input), store, map(t.value, 'fixture'));
  assert.equal(field(field(field(next, t.states), t.data), t.content), 'fixture');
});
for (const content of ['[] 1 2', '{} (:a']) {
  test(`invalid/non-map source stays editable: ${content}`, () => {
    const store = storeFor(state(content));
    const next = runEvent(handler(render(store), t.click, 'Read'), store);
    const s = field(field(next, t.states), t.data);
    assert.equal(field(s, t['list?']), false);
    assert.equal(typeof field(s, t.error), 'string');
    assert.ok(field(s, t.error).length > 0);
  });
}
test('empty valid task/note collections still render', () => {
  const info = grab_info(map(t.tasks, map(t.working, map(), t.finished, map()), t.notes, map()));
  assert.equal(typeof make_string(comp_viewer(info)), 'string');
  assert.equal(c.count(field(info, t['grouped-tasks'])), 0);
  assert.equal(c.count(field(info, t['grouped-notes'])), 0);
});
