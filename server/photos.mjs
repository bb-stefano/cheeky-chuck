// POST /api/photo: validate, enforce the limits, store the JPEG and its row, mail the friend's link. Recipients are kept only as hashes.
import {createHash,createHmac,timingSafeEqual} from 'node:crypto';
import {writeFileSync,rmSync} from 'node:fs';
import {join} from 'node:path';

export const limits={perAccount:10,perRecipient:2,perIp:30};
const DAY=86400e3,MAX_BYTES=2*1024*1024,EMAIL=/^[^\s@]+@[^\s@]+\.[^\s@]+$/,LANGS=['en','it','jp','zh'];
const fail=(status,error)=>Response.json({error},{status});

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
 if(typeof to!=='string'||to.length>254||!EMAIL.test(to.trim()))return 'Please enter a valid email address.';
 return {bytes,comment,to:to.trim(),lang:LANGS.includes(lang)?lang:'en'};
}

export async function postPhoto({db,body,session,ip,now,photosDir,mailer,env,buildMail}){
 if(!session)return fail(401,'Please sign in again.');
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
  console.error('photo mail failed',e);
  await undo();
  return fail(502,'Could not send the email. Please try again later.');
 }
 return Response.json({id,url,delivered:true});
}
