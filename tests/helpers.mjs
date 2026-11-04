import {mkdtempSync} from 'node:fs';
import {tmpdir} from 'node:os';
import {join,dirname} from 'node:path';
import {fileURLToPath} from 'node:url';
import {openD1} from '../server/sqlite-d1.mjs';
import {createApp} from '../server/app.mjs';

const MIGRATIONS=join(dirname(fileURLToPath(import.meta.url)),'..','server','migrations');

export function makeApp({mailer,env:extra}={}){
 const db=openD1(':memory:',MIGRATIONS),photosDir=mkdtempSync(join(tmpdir(),'cc-photos-')),sent=[];
 const env={CC_SECRET:'test',CC_APP_ORIGINS:'app://cheekychuck',CC_PUBLIC_URL:'https://cc.test',CC_MAX_MAILS_PER_DAY:'200',...extra};
 const app=createApp({db,photosDir,mailer:mailer||{send:async m=>{sent.push(m);}},env});
 return {app,db,photosDir,sent};
}

export const post=(app,path,body,{token,ip='1.1.1.1',origin}={})=>app.handle(new Request('http://x'+path,{method:'POST',headers:{'Content-Type':'application/json',...(token?{'X-Account-Token':token}:{}),...(origin?{Origin:origin}:{})},body:JSON.stringify(body)}),ip);

// accounts.mjs throttles by IP across the whole process, so each registration comes from its own address.
let nextIp=0;
export async function register(app,email='amy@example.com'){
 const r=await post(app,'/api/account',{action:'register',email,password:'eightchars'},{ip:`10.1.${nextIp>>8}.${nextIp++&255}`});
 return (await r.json()).token;
}
