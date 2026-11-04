import {test} from 'node:test';
import assert from 'node:assert/strict';
import {readFileSync,mkdtempSync,writeFileSync} from 'node:fs';
import {join} from 'node:path';
import {tmpdir} from 'node:os';
import {spawnSync} from 'node:child_process';
import {fileURLToPath} from 'node:url';
import {serveStatic} from '../server/static.mjs';

const SITE=new URL('../site/',import.meta.url);
const read=p=>readFileSync(new URL(p,SITE),'utf8');

test('landing page has title, description, OG image, app JSON-LD and the gallery link',()=>{
 const html=read('index.html');
 assert.match(html,/<title>Cheeky Chuck/);
 assert.match(html,/<meta name="description" content="([^"]{1,160})">/);
 assert.match(html,/og:image/);
 assert.match(html,/"@type": "MobileApplication"/);
 assert.match(html,/href="\/gallery"/);
 for(let i=1;i<=5;i++)assert.match(html,new RegExp(`assets/shot-${i}\\.png`));
 assert.match(html,/<nav id="stores"[^>]*>(?:(?!<\/nav>)[\s\S])*class="badge"(?:(?!<\/nav>)[\s\S])*class="badge"/);
});

test('gallery page loads gallery.js, which asks the API by id and by before=',()=>{
 assert.match(read('gallery/index.html'),/\/gallery\.js/);
 const js=read('gallery.js');
 assert.match(js,/\/api\/gallery\?id=/);
 assert.match(js,/before=/);
 assert.doesNotMatch(js,/innerHTML/);
});

test('serveStatic maps the Caddy routes and refuses traversal',()=>{
 const siteDir=new URL('../site',import.meta.url).pathname.replace(/^\/(\w:)/,'$1');
 const photosDir=mkdtempSync(join(tmpdir(),'cc-static-'));
 writeFileSync(join(photosDir,'7.jpg'),Buffer.from([0xff,0xd8,0xff,0]));
 const s=path=>serveStatic({siteDir,photosDir,path});
 assert.equal(s('/').headers['Content-Type'],'text/html; charset=utf-8');
 assert.match(String(s('/').body),/<title>Cheeky Chuck/);
 for(const p of ['/gallery','/gallery/'])assert.match(String(s(p).body),/\/gallery\.js/);
 assert.equal(s('/site.css').headers['Content-Type'],'text/css; charset=utf-8');
 assert.equal(s('/gallery.js').headers['Content-Type'],'text/javascript; charset=utf-8');
 assert.equal(s('/assets/icon.png').headers['Content-Type'],'image/png');
 assert.equal(s('/robots.txt').headers['Content-Type'],'text/plain; charset=utf-8');
 const photo=s('/photos/7.jpg');assert.equal(photo.status,200);assert.equal(photo.headers['Content-Type'],'image/jpeg');
 assert.equal(s('/photos/8.jpg').status,404);
 assert.equal(s('/photos/../package.json').status,404);
 assert.equal(s('/nope.html').status,404);
 for(const p of ['/../package.json','/..%2fpackage.json','/%2e%2e/package.json','/assets/../../package.json'])assert.equal(s(p).status,404,p);
 assert.equal(s('/api/gallery'),null);
});

test('server refuses to start without CC_SECRET or CC_PUBLIC_URL',()=>{
 const run=extra=>spawnSync(process.execPath,[fileURLToPath(new URL('../server/server.mjs',import.meta.url))],{env:{PATH:process.env.PATH,CC_DB:':memory:',...extra},encoding:'utf8',timeout:10000});
 for(const [extra,name] of [[{CC_PUBLIC_URL:'https://cc.test'},'CC_SECRET'],[{CC_SECRET:'s',CC_PUBLIC_URL:''},'CC_PUBLIC_URL']]){
  const r=run(extra);
  assert.equal(r.status,1);assert.match(r.stderr,new RegExp(`${name} must be set, refusing to start`));
 }
});
