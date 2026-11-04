// POST /api/photo: validate, enforce the limits, store the JPEG and its row, mail the friend's link. Recipients are kept only as hashes.
import {createHash,createHmac,timingSafeEqual} from 'node:crypto';
import {writeFileSync,rmSync} from 'node:fs';
import {join} from 'node:path';

export const limits={perAccount:10,perRecipient:2,perIp:30};
const DAY=86400e3,MAX_BYTES=2*1024*1024,EMAIL=/^[A-Za-z0-9.!#$%&'*+/=?^_`{|}~-]+@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)+$/,LANGS=['en','it','jp','zh'];
const fail=(status,error)=>Response.json({error},{status});
// Mail errors carry the address (rejected:[...], '550 <addr>'): log only their code and a scrubbed, short message.
const mailError=(e,to)=>({code:e?.code,responseCode:e?.responseCode,message:String(e?.message??'').replace(/\S*@\S*/g,'<email>').slice(0,80),to:hashEmail(to).slice(0,8)});

export const hashEmail=email=>createHash('sha256').update(String(email).trim().toLowerCase()).digest('hex');
const mac=(email,secret)=>createHmac('sha256',secret).update(email).digest('base64url');
export const unsubscribeToken=(email,secret)=>`${Buffer.from(email).toString('base64url')}.${mac(email,secret)}`;
export function emailFromToken(token,secret){
 const [enc,sig,...rest]=String(token).split('.');
 if(!enc||!sig||rest.length)return null;
 const email=Buffer.from(enc,'base64url').toString(),want=Buffer.from(mac(email,secret)),got=Buffer.from(sig);
 return want.length===got.length&&timingSafeEqual(want,got)?email:null;
}

// ponytail: photos per IP held in memory (one server process), like the login attempts in accounts.mjs.
const byIp=new Map();
function ipBlocked(ip,now){
 const a=byIp.get(ip);
 if(!a||now-a.since>=DAY){if(byIp.size>50000)byIp.clear();byIp.set(ip,{since:now,n:1});return false;}
 return ++a.n>limits.perIp;
}

const countMails=async(db,sql,...args)=>(await db.prepare(`SELECT count(*) AS n FROM mails m ${sql}`).bind(...args).first()).n;

function parse(body){
 if(!body||typeof body!=='object')return 'Invalid request.';
 const {image,comment='',to,lang}=body;
 if(typeof image!=='string'||!/^[A-Za-z0-9+/=\s]+$/.test(image))return 'The photo is not valid.';
 const bytes=Buffer.from(image,'base64');
 if(bytes.length>MAX_BYTES)return 'The photo is too big.';
 if(bytes.length<3||bytes[0]!==0xFF||bytes[1]!==0xD8||bytes[2]!==0xFF)return 'The photo must be a JPEG.';
 if(typeof comment!=='string'||comment.length>90)return 'The comment is too long.';
 const addr=typeof to==='string'?to.trim().toLowerCase():''; // strict addr-spec: nodemailer would parse 'x<a@b>', 'a@b,c' and the like as other recipients
 if(addr.length>254||!EMAIL.test(addr))return 'Please enter a valid email address.';
 return {bytes,comment,to:addr,lang:LANGS.includes(lang)?lang:'en'};
}

export async function postPhoto({db,body,session,ip,now,photosDir,mailer,env,buildMail}){
 if(!session)return Response.json({error:'Please sign in again.',signedOut:true},{status:401}); // signedOut: the game drops its token, as for /api/account
 const v=parse(body);
 if(typeof v==='string')return fail(400,v);
 const since=now-DAY;
 if(await countMails(db,'WHERE m.created>?',since)>=Number(env.CC_MAX_MAILS_PER_DAY||200))return fail(503,'Photo sharing is busy right now. Please try again tomorrow.');
 const toHash=hashEmail(v.to);
 if(ipBlocked(ip,now)||
  (await db.prepare('SELECT count(*) AS n FROM photos WHERE account=? AND created>?').bind(session.id,since).first()).n>=limits.perAccount||
  await countMails(db,'WHERE m.to_hash=? AND m.created>?',toHash,since)>=limits.perRecipient)return fail(429,'You have sent enough photos for today.');

 const {id}=await db.prepare('INSERT INTO photos(account,comment,created) VALUES(?,?,?) RETURNING id').bind(session.id,v.comment,now).first();
 const file=join(photosDir,`${id}.jpg`),url=`${env.CC_PUBLIC_URL}/gallery?id=${id}`;
 // Each removal is tried even if an earlier one fails; failures are logged.
 const undo=async()=>{
  for(const step of [()=>db.prepare('DELETE FROM mails WHERE photo=?').bind(id).run(),()=>db.prepare('DELETE FROM photos WHERE id=?').bind(id).run(),()=>rmSync(file,{force:true})])
   try{await step();}catch(e){console.error('photo cleanup failed',e);}
 };
 try{writeFileSync(file,v.bytes);}
 catch(e){console.error('photo write failed',e);await undo();return fail(500,'Something went wrong. Please try again.');}
 try{
  if(await db.prepare('SELECT 1 AS x FROM blocked WHERE to_hash=?').bind(toHash).first())return Response.json({id,url,delivered:false});
  await db.prepare('INSERT INTO mails(photo,to_hash,created) VALUES(?,?,?)').bind(id,toHash,now).run();
  const mail=buildMail({lang:v.lang,comment:v.comment,id,publicUrl:env.CC_PUBLIC_URL,unsubscribeUrl:`${env.CC_PUBLIC_URL}/api/unsubscribe?t=${unsubscribeToken(v.to,env.CC_SECRET)}`});
  await mailer.send({to:v.to,...mail,url});
 }catch(e){
  console.error('photo mail failed',mailError(e,v.to));
  await undo();
  return fail(502,'Could not send the email. Please try again later.');
 }
 return Response.json({id,url,delivered:true});
}

const json=(body,status=200)=>Response.json(body,{status,headers:{'Cache-Control':'no-store'}});
const num=v=>/^\d+$/.test(v??'')?Number(v):null;
const pub=r=>({id:r.id,comment:r.comment,created:r.created,url:`/photos/${r.id}.jpg`});

// GET /api/gallery: one visible photo by ?id=, else a page of them, newest first.
export async function gallery({db,url}){
 const id=num(url.searchParams.get('id'));
 if(id!==null){
  const r=await db.prepare('SELECT id, comment, created FROM photos WHERE id=? AND hidden=0').bind(id).first();
  return r?json(pub(r)):json({error:'Not found'},404);
 }
 const before=num(url.searchParams.get('before')),limit=Math.min(60,Math.max(1,num(url.searchParams.get('limit'))??30));
 const {results}=await db.prepare('SELECT id, comment, created FROM photos WHERE hidden=0 AND (?1 IS NULL OR id<?1) ORDER BY id DESC LIMIT ?2').bind(before,limit).all();
 return json(results.map(pub));
}

// GET|POST /api/unsubscribe?t=: block the address in the signed token (POST is the mail clients' one-click form).
export async function unsubscribe({db,url,env}){
 const email=emailFromToken(url.searchParams.get('t')??'',env.CC_SECRET);
 if(!email)return json({error:'This unsubscribe link is not valid.'},400);
 await db.prepare('INSERT OR IGNORE INTO blocked(to_hash,created) VALUES(?,?)').bind(hashEmail(email),Date.now()).run();
 return new Response(`<!doctype html><meta charset="utf-8"><title>Cheeky Chuck</title><p>You won't get Cheeky Chuck photos again.</p>`,{headers:{'Content-Type':'text/html; charset=utf-8','Cache-Control':'no-store'}});
}

// Account deletion: the rows first, so a stuck file never leaves them behind; then the files (failures are logged).
// The mails rows stay: they hold only a recipient hash and a time, and are the per-recipient and global counters.
export async function deleteAccountPhotos({db,photosDir,accountId}){
 const {results}=await db.prepare('SELECT id FROM photos WHERE account=?').bind(accountId).all();
 await db.prepare('DELETE FROM photos WHERE account=?').bind(accountId).run();
 for(const {id} of results)
  try{rmSync(join(photosDir,`${id}.jpg`),{force:true});}catch(e){console.error('photo file removal failed',e);}
}
