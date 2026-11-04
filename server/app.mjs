// Cheeky Chuck's request handler: Request in, Response out, so tests call it without sockets (server.mjs is the node:http adapter).
import {handleAccount} from './accounts.mjs';
import {cleanProgress,mergeProgress} from './progress.mjs';

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
  return new Response('Not found',{status:404});
 }
 return {handle};
}
