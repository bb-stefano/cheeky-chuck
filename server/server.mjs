// Cheeky Chuck's server: the node:http adapter over app.mjs, behind Caddy. Node 22+. Settings from the environment:
//   CC_DB          sqlite file (default cheekychuck.db)
//   CC_PHOTOS      photo directory (default ./photos)
//   CC_SECRET, CC_APP_ORIGINS, CC_PUBLIC_URL, CC_MAX_MAILS_PER_DAY   see app.mjs
//   SMTP_HOST, SMTP_PORT, SMTP_USER, SMTP_PASS   mail transport; with SMTP_HOST empty mails are only logged
//   PORT, HOST     default 8095 on 127.0.0.1
//   CC_SITE        dev only (npm run dev): also serve this site dir and /photos/, mirroring the Caddy routes
import {createServer} from 'node:http';
import {join,dirname} from 'node:path';
import {fileURLToPath} from 'node:url';
import {openD1} from './sqlite-d1.mjs';
import {createApp} from './app.mjs';
import {smtpMailer} from './mail.mjs';
import {serveStatic} from './static.mjs';

const env=process.env,HERE=dirname(fileURLToPath(import.meta.url));
const app=createApp({db:openD1(env.CC_DB||'cheekychuck.db',join(HERE,'migrations')),photosDir:env.CC_PHOTOS||'./photos',mailer:smtpMailer(env),env});

async function body(req,max=4*1024*1024){let size=0;const parts=[];for await(const part of req){size+=part.length;if(size>max)throw Object.assign(Error('too large'),{status:413});parts.push(part);}return Buffer.concat(parts);}

createServer(async(req,res)=>{
 try{
  if(env.CC_SITE){const s=serveStatic({siteDir:env.CC_SITE,photosDir:env.CC_PHOTOS||'./photos',path:req.url.split('?')[0]});if(s){res.writeHead(s.status,s.headers);res.end(req.method==='HEAD'?undefined:s.body);return;}}
  // Caddy terminates HTTPS, and appends the client's address last to X-Forwarded-For; only Caddy reaches this port.
  const url=`${req.headers['x-forwarded-proto']||'http'}://${req.headers.host}${req.url}`;
  const ip=String(req.headers['x-forwarded-for']||req.socket.remoteAddress||'').split(',').at(-1).trim();
  const r=await app.handle(new Request(url,{method:req.method,headers:req.headers,...(req.method==='POST'?{body:await body(req)}:{})}),ip);
  res.writeHead(r.status,Object.fromEntries(r.headers));res.end(Buffer.from(await r.arrayBuffer()));
 }catch(e){if(!res.headersSent)res.writeHead(e.status||500);res.end();if(!e.status)console.error(e);}
}).listen(Number(env.PORT||8095),env.HOST||'127.0.0.1',function(){console.log(`Cheeky Chuck API on http://${this.address().address}:${this.address().port}`);});
