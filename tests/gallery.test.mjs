import {test} from 'node:test';
import assert from 'node:assert/strict';
import {existsSync} from 'node:fs';
import {join} from 'node:path';
import {makeApp,post,register} from './helpers.mjs';
import {hashEmail,unsubscribeToken} from '../server/photos.mjs';

const JPEG=Buffer.from([0xFF,0xD8,0xFF,0xE0,0,0x10,0x4A,0x46,0x49,0x46,0,1,1,0,0,1,0,1,0,0,0xFF,0xD9]).toString('base64');
const send=(app,token,extra={},opts={})=>post(app,'/api/photo',{image:JPEG,comment:'hi',to:'bob@example.com',lang:'en',...extra},{token,...opts});
const get=(app,path,method='GET')=>app.handle(new Request('http://x'+path,{method}),'1.1.1.1');
const fill=async(app,token,n)=>{const ids=[];for(let i=0;i<n;i++)ids.push((await (await send(app,token,{comment:`c${i}`,to:`f${i}@example.com`},{ip:`5.5.5.${i}`})).json()).id);return ids;};

test('lists newest first and pages with before',async()=>{
 const {app}=makeApp(),token=await register(app),ids=await fill(app,token,5);
 const r=await get(app,'/api/gallery'),j=await r.json();
 assert.equal(r.status,200);assert.equal(r.headers.get('cache-control'),'no-store');
 assert.deepEqual(j.map(p=>p.id),[...ids].reverse());
 assert.deepEqual(j[0],{id:ids[4],comment:'c4',created:j[0].created,url:`/photos/${ids[4]}.jpg`});
 assert.deepEqual((await (await get(app,`/api/gallery?before=${ids[3]}&limit=2`)).json()).map(p=>p.id),[ids[2],ids[1]]);
 assert.equal((await (await get(app,'/api/gallery?limit=0')).json()).length,1);
 assert.equal((await (await get(app,'/api/gallery?limit=abc&before=x')).json()).length,5);
});

test('single photo and 404',async()=>{
 const {app}=makeApp(),token=await register(app),[id]=await fill(app,token,1);
 const r=await get(app,`/api/gallery?id=${id}`),j=await r.json();
 assert.equal(r.status,200);assert.equal(j.id,id);assert.equal(j.comment,'c0');assert.equal(j.url,`/photos/${id}.jpg`);assert.ok(j.created);
 const n=await get(app,'/api/gallery?id=999');
 assert.equal(n.status,404);assert.equal((await n.json()).error,'Not found');
});

test('hidden photos are skipped',async()=>{
 const {app,db}=makeApp(),token=await register(app),ids=await fill(app,token,3);
 await db.prepare('UPDATE photos SET hidden=1 WHERE id=?').bind(ids[1]).run();
 assert.deepEqual((await (await get(app,'/api/gallery')).json()).map(p=>p.id),[ids[2],ids[0]]);
 assert.equal((await get(app,`/api/gallery?id=${ids[1]}`)).status,404);
});

test('unsubscribe blocks the address',async()=>{
 const {app,db,sent}=makeApp(),token=await register(app),t=unsubscribeToken('bob@example.com','test');
 for(const method of ['GET','POST']){
  const r=await get(app,`/api/unsubscribe?t=${t}`,method);
  assert.equal(r.status,200);assert.match(r.headers.get('content-type'),/^text\/html; charset=utf-8/);
  assert.ok((await r.text()).includes("You won't get Cheeky Chuck photos again."));
 }
 assert.equal((await db.prepare('SELECT count(*) AS n FROM blocked WHERE to_hash=?').bind(hashEmail('bob@example.com')).first()).n,1);
 const j=await (await send(app,token)).json();
 assert.equal(j.delivered,false);assert.equal(sent.length,0);
});

test('unsubscribe rejects a bad token',async()=>{
 const {app,db}=makeApp(),t=unsubscribeToken('bob@example.com','other');
 for(const q of ['',`?t=${t}`,'?t=garbage'])assert.equal((await get(app,'/api/unsubscribe'+q)).status,400);
 assert.equal((await db.prepare('SELECT count(*) AS n FROM blocked').first()).n,0);
});

test('delete removes photos',async()=>{
 const {app,db,photosDir}=makeApp(),token=await register(app),other=await register(app,'cat@example.com');
 const [id]=await fill(app,token,1),[keep]=await fill(app,other,1);
 const r=await post(app,'/api/account',{action:'delete',password:'eightchars'},{token});
 assert.equal((await r.json()).deleted,true);
 assert.ok(!existsSync(join(photosDir,`${id}.jpg`)));
 assert.equal((await get(app,`/api/gallery?id=${id}`)).status,404);
 assert.equal(await db.prepare('SELECT 1 AS x FROM mails WHERE photo=?').bind(id).first(),null);
 assert.ok(existsSync(join(photosDir,`${keep}.jpg`)));
 assert.equal((await get(app,`/api/gallery?id=${keep}`)).status,200);
});

test('delete with only the cookie removes photos',async()=>{
 const {app,db,photosDir}=makeApp(),token=await register(app),[id]=await fill(app,token,1);
 const r=await app.handle(new Request('http://x/api/account',{method:'POST',headers:{'Content-Type':'application/json',Origin:'http://x',Cookie:`theme=dark; cc_account=${token}`},body:JSON.stringify({action:'delete',password:'eightchars'})}),'1.1.1.1');
 assert.equal((await r.json()).deleted,true);
 assert.ok(!existsSync(join(photosDir,`${id}.jpg`)));
 assert.equal(await db.prepare('SELECT 1 AS x FROM photos WHERE id=?').bind(id).first(),null);
});
