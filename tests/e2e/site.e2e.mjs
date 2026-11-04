// End-to-end check of the site in a real browser (Edge via playwright-core). `npm run e2e` starts the dev server on a
// temp db/photos dir, uploads two photos, and checks the pages. E2E_BASE_URL=https://... checks a deployed site instead
// (no server, no uploads; only checks that need no seeded data).
import {spawn} from 'node:child_process';
import {mkdtempSync,mkdirSync,readFileSync,rmSync} from 'node:fs';
import {tmpdir} from 'node:os';
import {join,dirname} from 'node:path';
import {fileURLToPath} from 'node:url';
import {createServer} from 'node:net';
import assert from 'node:assert/strict';
import {chromium} from 'playwright-core';

const ROOT=join(dirname(fileURLToPath(import.meta.url)),'..','..');
const remote=process.env.E2E_BASE_URL;
let base=(remote||'').replace(/\/$/,'');
let server,tmp,browser,checks=0;

const freePort=()=>new Promise((res,rej)=>{const s=createServer().once('error',rej).listen(0,'127.0.0.1',()=>{const {port}=s.address();s.close(()=>res(port));});});

async function startServer(){
 const PORT=await freePort();base=`http://127.0.0.1:${PORT}`;
 tmp=mkdtempSync(join(tmpdir(),'cc-e2e-'));mkdirSync(join(tmp,'photos'));
 server=spawn(process.execPath,['server/server.mjs'],{cwd:ROOT,stdio:['ignore','inherit','inherit'],env:{...process.env,
  CC_DB:join(tmp,'cc.db'),CC_PHOTOS:join(tmp,'photos'),CC_SECRET:'e2e-secret',CC_APP_ORIGINS:'app://cheekychuck',
  CC_PUBLIC_URL:base,SMTP_HOST:'',PORT:String(PORT),CC_SITE:'site'}});
 for(let i=0;i<100;i++){
  if(server.exitCode!==null)throw new Error('server exited early');
  try{if((await fetch(base+'/api/gallery?limit=1')).ok)return;}catch{}
  await new Promise(r=>setTimeout(r,100));
 }
 throw new Error('server did not become healthy');
}

async function post(path,body,headers={}){
 const r=await fetch(base+path,{method:'POST',headers:{'content-type':'application/json',...headers},body:JSON.stringify(body)});
 assert.ok(r.ok,`${path} -> HTTP ${r.status}`);return r.json();
}

async function seed(){
 const {token}=await post('/api/account',{action:'register',email:'e2e@example.com',password:'e2e-password-1'});
 const image=readFileSync(join(ROOT,'tests/e2e/photo.jpg')).toString('base64'),ids=[];
 for(const [n,comment] of ['first','second'].entries())
  ids.push((await post('/api/photo',{image,comment,to:`friend${n}@example.com`,lang:'en'},{'X-Account-Token':token})).id);
 return ids;
}

async function check(name,fn){
 try{await fn();}catch(e){throw new Error(`FAILED: ${name}: ${e.message}`);}
 checks++;console.log('ok  '+name);
}

async function withPage(fn,opts){
 const ctx=await browser.newContext(opts),page=await ctx.newPage();
 try{await fn(page);}finally{await ctx.close();}
}

const imagesLoaded=(page,sel)=>page.waitForFunction(s=>{const i=[...document.querySelectorAll(s)];return i.length>0&&i.every(x=>x.complete&&x.naturalWidth>0);},sel,{timeout:10000});

async function run(){
 let ids=[];
 if(!remote){await startServer();ids=await seed();}
 browser=await chromium.launch({channel:'msedge',headless:true});

 await check('home page: title, five screenshots, gallery link',()=>withPage(async page=>{
  await page.goto(base+'/');
  assert.match(await page.title(),/^Cheeky Chuck/);
  const shots=page.locator('img[src^="/assets/shot-"]');
  assert.equal(await shots.count(),5);
  for(const img of await shots.all())await img.scrollIntoViewIfNeeded();
  await imagesLoaded(page,'img[src^="/assets/shot-"]');
  await page.locator('a[href="/gallery"]').first().click();
  await page.waitForURL(u=>u.pathname==='/gallery');
 }));

 await check('gallery list',()=>withPage(async page=>{
  await page.goto(base+'/gallery');
  if(remote){
   await page.waitForFunction(()=>document.getElementById('status').textContent!=='Loading photos…',null,{timeout:10000});
   assert.doesNotMatch(await page.locator('#status').innerText(),/Couldn't load/);
   return;
  }
  const figs=page.locator('#photos figure');
  await figs.nth(1).waitFor();
  assert.equal(await figs.count(),2);
  assert.deepEqual(await figs.locator('figcaption q').allInnerTexts(),['second','first']);
  await imagesLoaded(page,'#photos img');
 }));

 if(!remote)await check('single photo',()=>withPage(async page=>{
  await page.goto(`${base}/gallery?id=${ids[0]}`);
  const figs=page.locator('#photos figure');
  await figs.first().waitFor();
  assert.equal(await figs.count(),1);
  assert.equal(await figs.locator('figcaption q').innerText(),'first');
  await imagesLoaded(page,'#photos img');
  await page.getByRole('link',{name:'See all photos'}).waitFor();
 }));

 await check('unknown photo id',()=>withPage(async page=>{
  await page.goto(base+'/gallery?id=999');
  await page.getByText("can't find that photo").waitFor({timeout:10000});
  assert.equal(await page.locator('#photos figure').count(),0);
 }));

 await check('home page fits a narrow viewport',()=>withPage(async page=>{
  await page.goto(base+'/');
  await page.waitForLoadState('load');
  const [sw,iw]=await page.evaluate(()=>[document.documentElement.scrollWidth,window.innerWidth]);
  assert.ok(sw<=iw+1,`scrollWidth ${sw} > innerWidth ${iw}`);
 },{viewport:{width:390,height:844}}));
}

let failed=false;
try{await run();console.log(`PASS: site e2e (${checks} checks)`);}
catch(e){failed=true;console.error(e.message);}
finally{
 await browser?.close().catch(()=>{});
 if(server){server.kill();await new Promise(r=>server.exitCode!==null?r():server.once('exit',r));}
 if(tmp)try{rmSync(tmp,{recursive:true,force:true,maxRetries:5,retryDelay:200});}catch{}
}
process.exit(failed?1:0);
