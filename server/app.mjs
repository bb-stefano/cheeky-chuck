// Cheeky Chuck's request handler: Request in, Response out, so tests call it without sockets (server.mjs is the node:http adapter).
import {handleAccount} from './accounts.mjs';
import {createHash} from 'node:crypto';
import {cleanProgress,mergeProgress} from './progress.mjs';
import {postPhoto,gallery,unsubscribe,deleteAccountPhotos} from './photos.mjs';
import {buildMail} from './mail.mjs';

const sha=s=>createHash('sha256').update(s).digest('hex');

export function createApp({db,photosDir,mailer,env}){
 const appOrigins=(env.CC_APP_ORIGINS||'').split(',').filter(Boolean);
 async function handle(req,ip){
  // Same session lookup as accounts.mjs: sha256 of the token, valid for a year.
  const sessionOf=async r=>{
   const token=r.headers.get('x-account-token');
   return token?db.prepare('SELECT a.id, a.email FROM account_sessions s JOIN accounts a ON a.id=s.account WHERE s.secret=? AND s.created>?').bind(sha(token),Date.now()-365*86400e3).first():null;
  };
  const path=new URL(req.url).pathname;
  if(path==='/health')return Response.json({ok:true});
  if(path==='/api/account'){
   // The Solar2D client sends no Origin; accounts.mjs treats app origins as trusted and only they get a token.
   if(!req.headers.get('origin')&&appOrigins.length){const headers=new Headers(req.headers);headers.set('Origin',appOrigins[0]);req=new Request(req,{headers});}
   const opts={cookie:'cc_account',clean:cleanProgress,merge:mergeProgress,appOrigins,ip};
   if(req.method!=='POST')return handleAccount(req,db,opts);
   // A delete must also remove the photos, so find the account before accounts.mjs drops its sessions.
   const text=await req.text(),isDelete=(()=>{try{return JSON.parse(text)?.action==='delete';}catch{return false;}})();
   req=new Request(req.url,{method:req.method,headers:req.headers,body:text});
   const session=isDelete?await sessionOf(req):null;
   const res=await handleAccount(req,db,opts);
   if(session&&(await res.clone().json().catch(()=>null))?.deleted===true)await deleteAccountPhotos({db,photosDir,accountId:session.id});
   return res;
  }
  if(path==='/api/gallery'&&req.method==='GET')return gallery({db,url:new URL(req.url),env});
  if(path==='/api/unsubscribe'&&(req.method==='GET'||req.method==='POST'))return unsubscribe({db,url:new URL(req.url),method:req.method,env});
  if(path==='/api/photo'&&req.method==='POST'){
   const now=Date.now(),session=await sessionOf(req);
   const body=await req.json().catch(()=>null);
   return postPhoto({db,body,session,ip,now,photosDir,mailer,env,buildMail});
  }
  return new Response('Not found',{status:404});
 }
 return {handle};
}
