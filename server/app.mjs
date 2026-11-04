// Cheeky Chuck's request handler: Request in, Response out, so tests call it without sockets (server.mjs is the node:http adapter).
import {handleAccount} from './accounts.mjs';
import {createHash} from 'node:crypto';
import {cleanProgress,mergeProgress} from './progress.mjs';
import {postPhoto} from './photos.mjs';
import {buildMail} from './mail.mjs';

const sha=s=>createHash('sha256').update(s).digest('hex');

export function createApp({db,photosDir,mailer,env}){
 const appOrigins=(env.CC_APP_ORIGINS||'').split(',').filter(Boolean);
 async function handle(req,ip){
  const path=new URL(req.url).pathname;
  if(path==='/health')return Response.json({ok:true});
  if(path==='/api/account'){
   // The Solar2D client sends no Origin; accounts.mjs treats app origins as trusted and only they get a token.
   if(!req.headers.get('origin')&&appOrigins.length){const headers=new Headers(req.headers);headers.set('Origin',appOrigins[0]);req=new Request(req,{headers});}
   return handleAccount(req,db,{cookie:'cc_account',clean:cleanProgress,merge:mergeProgress,appOrigins,ip});
  }
  if(path==='/api/photo'&&req.method==='POST'){
   // Same session lookup as accounts.mjs: sha256 of the token, valid for a year.
   const token=req.headers.get('x-account-token'),now=Date.now();
   const session=token?await db.prepare('SELECT a.id, a.email FROM account_sessions s JOIN accounts a ON a.id=s.account WHERE s.secret=? AND s.created>?').bind(sha(token),now-365*86400e3).first():null;
   const body=await req.json().catch(()=>null);
   return postPhoto({db,body,session,ip,now,photosDir,mailer,env,buildMail});
  }
  return new Response('Not found',{status:404});
 }
 return {handle};
}
