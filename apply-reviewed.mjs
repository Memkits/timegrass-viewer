import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'96d74af4ab1061da10ebbee384f2085531af0ef5');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,32);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length,0),3);assert.equal(before.defs.reduce((n,d)=>n+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={'option:unwrap-or':0,'option:unwrap':0,merge:0,concat:0};let css=0,unary=0;
const aliases={'option:unwrap-or':'.unwrap-or','option:unwrap':'.unwrap',merge:'.merge',concat:'.concat'};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
const replace=(id,path,value)=>ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  if(Object.hasOwn(aliases,x[0])){
    const old=x[0];assert.deepEqual(show(id,path),x);counts[old]++;sites.push({id,path,original:structuredClone(x)});
    if(old==='merge'&&x.length===2){assert.equal(id,'app.comp.container/comp-viewer');assert.equal(x[1],'style-list');replace(id,path,x[1]);unary++;return x[1];}
    replace(id,[...path,0],aliases[old]);x[0]=aliases[old];
    if(old==='merge')for(let i=1;i<x.length;i++)if(Array.isArray(x[i])&&x[i][0]==='{}')for(let j=1;j<x[i].length;j++){
      const pair=x[i][j];assert.ok(Array.isArray(pair)&&pair.length===2);
      const [k,v]=pair;let next;
      if(k===':height'&&v==='420')next='|420px';
      if(k===':white-space'&&v===':nowrap')next='|nowrap';
      if(k===':display'&&v===':inline-flex')next='|inline-flex';
      if(k===':padding-left'&&v==='8')next='|8px';
      if(k===':margin-bottom'&&v==='16')next='|16px';
      if(next!==undefined){const p=[...path,i,j,1];assert.equal(show(id,p),v);replace(id,p,next);sites.push({id,path:p,cssBefore:v,cssAfter:next,property:k});pair[1]=next;css++;}
    }
  }
  return x.map((v,i)=>walk(v,[...path,i],id));
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
assert.deepEqual(counts,{'option:unwrap-or':5,'option:unwrap':1,merge:7,concat:1});assert.equal(css,6);assert.equal(unary,1);assert.equal(ops.length,20);
mkdirSync('acceptance',{recursive:true});
for(const [name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:before.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
for(const id of ['app.main/main!','app.main/reload!','app.main/restore-storage!','app.main/persist-storage!'])assert.deepEqual(after.defs.find(d=>d.id===id),before.defs.find(d=>d.id===id));
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:32,tests:3,examples:0,operations:20,counts,css,unary,preserved:'All other code/schema/FFI/doc/tag/test/example/ns/config, original main/reload/restore/persist and storage format, 3 attached and 7 Node original assertions. No HUD existed in original reload, none removed/replaced. No helper/cast/budget/framework/permanentchecker added.'},null,2));
