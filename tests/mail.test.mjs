import {test} from 'node:test';
import assert from 'node:assert/strict';
import nodemailer from 'nodemailer';
import {buildMail,smtpMailer} from '../server/mail.mjs';
import {hashEmail} from '../server/photos.mjs';

const base={lang:'en',comment:'hi',id:'abc',publicUrl:'https://cc.test',unsubscribeUrl:'https://cc.test/api/unsubscribe?t=x'};

test('escapes html',()=>{
 const m=buildMail({...base,comment:`<script>x</script> & "q" 'a'`});
 assert.ok(m.html.includes('&lt;script&gt;x&lt;/script&gt; &amp; &quot;q&quot; &#39;a&#39;'));assert.ok(!m.html.includes('<script>'));
 assert.ok(m.text.includes('<script>x</script>'));
});

test('four languages and fallback',()=>{
 const s={};for(const lang of ['en','it','jp','zh'])s[lang]=buildMail({...base,lang}).subject;
 assert.equal(s.en,'Someone sent you a Cheeky Chuck photo');assert.equal(s.it,'Qualcuno ti ha inviato una foto di Cheeky Chuck');
 assert.equal(s.jp,'Cheeky Chuckの写真が届きました');assert.equal(s.zh,'有人给你发了一张 Cheeky Chuck 照片');
 assert.equal(new Set(Object.values(s)).size,4);
 assert.deepEqual(buildMail({...base,lang:'de'}),buildMail(base));
 for(const lang of ['en','it','jp','zh']){const m=buildMail({...base,lang});
  for(const part of [m.text,m.html]){assert.ok(part.includes('https://cc.test/gallery?id=abc'));assert.ok(part.includes('https://cc.test/'));assert.ok(part.includes('https://cc.test/api/unsubscribe?t=x'));}}
});

test('empty comment omitted',()=>{
 for(const comment of ['',undefined]){const m=buildMail({...base,comment});assert.ok(!m.text.includes('""'));assert.ok(!m.html.includes('&quot;'));assert.ok(!m.html.includes('""'));}
 assert.ok(buildMail(base).text.includes('"hi"'));
});

test('unsubscribe headers present',()=>{
 assert.deepEqual(buildMail(base).headers,{'List-Unsubscribe':'<https://cc.test/api/unsubscribe?t=x>','List-Unsubscribe-Post':'List-Unsubscribe=One-Click'});
});

test('smtpMailer without a host logs the mail',async t=>{
 const log=t.mock.method(console,'log',()=>{});
 await smtpMailer({}).send({to:'Bob@example.com',subject:'S',url:'https://cc.test/gallery?id=abc'});
 assert.equal(log.mock.callCount(),1);assert.ok(log.mock.calls[0].arguments[0].includes(hashEmail('Bob@example.com').slice(0,8)));
});

test('smtpMailer: relay with auth+TLS, local Postfix without, short timeouts, bare recipient address',async t=>{
 const opts=[],mails=[];
 t.mock.method(nodemailer,'createTransport',o=>{opts.push(o);return {sendMail:async m=>{mails.push(m);}};});
 await smtpMailer({SMTP_HOST:'smtp.test',SMTP_USER:'u',SMTP_PASS:'p'}).send({to:'bob@example.com',subject:'S',text:'t',html:'h',headers:{}});
 await smtpMailer({SMTP_HOST:'127.0.0.1',SMTP_PORT:'25'}).send({to:'bob@example.com',subject:'S',text:'t',html:'h',headers:{}});
 const timeouts={connectionTimeout:10000,greetingTimeout:10000,socketTimeout:15000};
 assert.deepEqual(opts[0],{host:'smtp.test',port:587,secure:false,requireTLS:true,auth:{user:'u',pass:'p'},...timeouts});
 assert.deepEqual(opts[1],{host:'127.0.0.1',port:25,secure:false,requireTLS:false,...timeouts});
 for(const m of mails){assert.deepEqual(m.to,{name:'',address:'bob@example.com'});assert.equal(m.from,'Cheeky Chuck <contact@jocogiant.com>');}
});
