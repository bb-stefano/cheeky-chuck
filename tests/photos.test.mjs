import {test} from 'node:test';
import assert from 'node:assert/strict';
import {existsSync,rmSync} from 'node:fs';
import {join} from 'node:path';
import {makeApp,post,register} from './helpers.mjs';
import {hashEmail,unsubscribeToken,emailFromToken} from '../server/photos.mjs';

const JPEG=Buffer.from([0xFF,0xD8,0xFF,0xE0,0,0x10,0x4A,0x46,0x49,0x46,0,1,1,0,0,1,0,1,0,0,0xFF,0xD9]).toString('base64');
const send=(app,token,extra={},opts={})=>post(app,'/api/photo',{image:JPEG,comment:'hi',to:'bob@example.com',lang:'en',...extra},{token,...opts});
const count=async(db,table)=>(await db.prepare(`SELECT count(*) AS n FROM ${table}`).first()).n;

test('stores the photo and mails the friend',async()=>{
 const {app,db,photosDir,sent}=makeApp(),token=await register(app);
 const r=await send(app,token),j=await r.json();
 assert.equal(r.status,200);assert.equal(j.delivered,true);assert.equal(j.url,`https://cc.test/gallery?id=${j.id}`);
 assert.ok(existsSync(join(photosDir,`${j.id}.jpg`)));
 assert.equal(sent.length,1);assert.equal(sent[0].to,'bob@example.com');
 assert.ok(sent[0].html.includes(`gallery?id=${j.id}`));assert.ok(!sent[0].html.includes('amy@example.com'));assert.ok(!sent[0].text.includes('amy@example.com'));
 assert.match(sent[0].headers['List-Unsubscribe'],/^<https:\/\/cc\.test\/api\/unsubscribe\?t=/);
 assert.equal((await db.prepare('SELECT comment FROM photos WHERE id=?').bind(j.id).first()).comment,'hi');
 const m=await db.prepare('SELECT to_hash FROM mails WHERE photo=?').bind(j.id).first();
 assert.equal(m.to_hash,hashEmail(' Bob@Example.com '));
 assert.equal(emailFromToken(unsubscribeToken('bob@example.com','test'),'test'),'bob@example.com');
 assert.equal(emailFromToken(unsubscribeToken('bob@example.com','test'),'other'),null);
});

test('rejects bad bodies',async()=>{
 const {app,db}=makeApp(),token=await register(app);
 const raw=await app.handle(new Request('http://x/api/photo',{method:'POST',headers:{'X-Account-Token':token},body:'not json'}),'1.1.1.1');
 assert.equal(raw.status,400);
 assert.equal((await send(app,token,{image:'###'})).status,400);
 assert.equal((await send(app,token,{image:Buffer.from('GIF89a').toString('base64')})).status,400);
 assert.equal((await send(app,token,{image:Buffer.concat([Buffer.from([0xFF,0xD8,0xFF]),Buffer.alloc(2*1024*1024)]).toString('base64')})).status,400);
 assert.equal((await send(app,token,{comment:'x'.repeat(91)})).status,400);
 assert.equal((await send(app,token,{to:'nope'})).status,400);
 assert.equal((await send(app,undefined)).status,401);
 assert.equal((await send(app,'bogus')).status,401);
 assert.equal(await count(db,'photos'),0);
 assert.equal((await send(app,token,{comment:'x'.repeat(90),lang:'xx'})).status,200);
});

test('blocked recipient gets no mail but the photo stays',async()=>{
 const {app,db,sent,photosDir}=makeApp(),token=await register(app);
 await db.prepare('INSERT INTO blocked(to_hash,created) VALUES(?,?)').bind(hashEmail('bob@example.com'),Date.now()).run();
 const r=await send(app,token),j=await r.json();
 assert.equal(r.status,200);assert.equal(j.delivered,false);assert.equal(sent.length,0);
 assert.equal(await count(db,'photos'),1);assert.equal(await count(db,'mails'),0);assert.ok(existsSync(join(photosDir,`${j.id}.jpg`)));
});

test('account limit counts all devices',async()=>{
 const {app}=makeApp(),a=await register(app);
 const login=await post(app,'/api/account',{action:'login',email:'amy@example.com',password:'eightchars'},{ip:'8.8.8.8'});
 const b=(await login.json()).token;assert.notEqual(a,b);
 for(let i=0;i<10;i++)assert.equal((await send(app,i%2?a:b,{to:`f${i}@example.com`},{ip:`9.9.9.${i}`})).status,200);
 const r=await send(app,a,{to:'z@example.com'},{ip:'9.9.9.99'});
 assert.equal(r.status,429);assert.equal((await r.json()).error,'You have sent enough photos for today.');
});

test('recipient limit',async()=>{
 const {app}=makeApp(),a=await register(app),b=await register(app,'cat@example.com');
 assert.equal((await send(app,a)).status,200);assert.equal((await send(app,b)).status,200);
 assert.equal((await send(app,a,{to:' BOB@example.com'})).status,429);
});

test('ip limit',async()=>{
 const {app}=makeApp(),tokens=[];
 for(let i=0;i<4;i++)tokens.push(await register(app,`u${i}@example.com`));
 for(let i=0;i<30;i++)assert.equal((await send(app,tokens[i%4],{to:`f${i}@example.com`},{ip:'7.7.7.7'})).status,200);
 assert.equal((await send(app,tokens[0],{to:'late@example.com'},{ip:'7.7.7.7'})).status,429);
 assert.equal((await send(app,tokens[0],{to:'late@example.com'},{ip:'7.7.7.8'})).status,200);
});

test('global cap',async()=>{
 const {app,db}=makeApp({env:{CC_MAX_MAILS_PER_DAY:'1'}}),token=await register(app);
 assert.equal((await send(app,token)).status,200);
 const r=await send(app,token,{to:'cat@example.com'});
 assert.equal(r.status,503);assert.equal((await r.json()).error,'Photo sharing is busy right now. Please try again tomorrow.');
 assert.equal(await count(db,'photos'),1);
});

test('smtp failure removes the photo',async(t)=>{
 t.mock.method(console,'error',()=>{});
 const {app,db,photosDir}=makeApp({mailer:{send:async()=>{throw new Error('smtp down');}}}),token=await register(app);
 const r=await send(app,token);
 assert.equal(r.status,502);assert.equal((await r.json()).error,'Could not send the email. Please try again later.');
 assert.equal(await count(db,'photos'),0);assert.equal(await count(db,'mails'),0);assert.ok(!existsSync(join(photosDir,'1.jpg')));
});

test('account limit counts photos to blocked recipients too',async()=>{
 const {app,db}=makeApp(),token=await register(app);
 await db.prepare('INSERT INTO blocked(to_hash,created) VALUES(?,?)').bind(hashEmail('bob@example.com'),Date.now()).run();
 for(let i=0;i<10;i++)assert.equal((await send(app,token,i<5?{}:{to:`f${i}@example.com`},{ip:`6.6.6.${i}`})).status,200);
 assert.equal((await send(app,token,{},{ip:'6.6.6.99'})).status,429);
 assert.equal(await count(db,'photos'),10);
});

test('unwritable photo directory is a 500 and leaves no row',async(t)=>{
 t.mock.method(console,'error',()=>{});
 const {app,db,photosDir}=makeApp(),token=await register(app);
 rmSync(photosDir,{recursive:true});
 const r=await send(app,token);
 assert.equal(r.status,500);assert.equal(await count(db,'photos'),0);
});
