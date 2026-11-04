// Dev-only stand-in for the Caddy routes (npm run dev, CC_SITE set): site/ at /, /gallery → gallery/index.html,
// /photos/<id>.jpg from the photos dir. Returns null for /api/* so the app handles it.
import {readFileSync,statSync} from 'node:fs';
import {resolve,sep,extname} from 'node:path';

const TYPES={'.html':'text/html; charset=utf-8','.css':'text/css; charset=utf-8','.js':'text/javascript; charset=utf-8',
 '.png':'image/png','.jpg':'image/jpeg','.txt':'text/plain; charset=utf-8','.ttf':'font/ttf'};
const NOT_FOUND={status:404,headers:{'Content-Type':'text/plain; charset=utf-8'},body:'not found'};

function file(root,rel){
 const base=resolve(root),full=resolve(base,'.'+sep+rel);
 if(!full.startsWith(base+sep)||!TYPES[extname(full)])return NOT_FOUND;
 try{if(!statSync(full).isFile())return NOT_FOUND;return {status:200,headers:{'Content-Type':TYPES[extname(full)]},body:readFileSync(full)};}
 catch{return NOT_FOUND;}
}

export function serveStatic({siteDir,photosDir,path}){
 if(path.startsWith('/api/'))return null;
 let p;try{p=decodeURIComponent(path);}catch{return NOT_FOUND;}
 const photo=/^\/photos\/(\d+\.jpg)$/.exec(p);
 if(photo)return file(photosDir,photo[1]);
 if(p.startsWith('/photos/'))return NOT_FOUND;
 if(p==='/')p='/index.html';
 else if(p==='/gallery'||p==='/gallery/')p='/gallery/index.html';
 return file(siteDir,p);
}
