// Player accounts: email + password, so progress follows the player to any device, web or app. The same file
// runs Crash of Crowns' and Squid Maze's servers (keep the copies identical); each game passes its own rules:
// clean(raw) validates a device's progress, merge(stored, incoming, coins) combines two copies of it.
//   GET                                    who is signed in, with their progress
//   POST {action:'register'|'login', email, password, progress}
//   POST {action:'sync', progress, pull?}  pull: on app start (the account's coins win), else this device's do
//   POST {action:'logout'} | {action:'delete', password}
// The web game uses an HttpOnly cookie; the Android app (another origin) sends X-Account-Token, which register
// and login return to it as `token`. Tables: accounts, account_sessions (see the migrations).
import {scrypt,randomBytes,timingSafeEqual,createHash,randomUUID} from 'node:crypto';
import {promisify} from 'node:util';

const scryptAsync=promisify(scrypt),YEAR=31536000,EMAIL=/^[^\s@]+@[^\s@]+\.[^\s@]+$/;
const json=(data,status=200,headers={})=>Response.json(data,{status,headers:{'Cache-Control':'no-store',...headers}});
const sha=s=>createHash('sha256').update(s).digest('hex');
async function hashPassword(password,salt=randomBytes(16)){
 return `scrypt$${salt.toString('base64')}$${(await scryptAsync(password.normalize('NFKC'),salt,64)).toString('base64')}`;
}
async function checkPassword(password,stored){
 const [,salt,key]=stored.split('$');
 return timingSafeEqual(await scryptAsync(password.normalize('NFKC'),Buffer.from(salt,'base64'),64),Buffer.from(key,'base64'));
}
const DUMMY=hashPassword('no such account');   // an unknown email takes as long as a wrong password

// ponytail: attempts per IP held in memory (one server process); move them to the db if it ever scales out.
const attempts=new Map(),WINDOW=15*60e3,MAX_TRIES=10;
const limited=(ip,now)=>{const a=attempts.get(ip);return !!a&&now-a.since<WINDOW&&a.n>=MAX_TRIES;};
function tried(ip,now){const a=attempts.get(ip);if(!a||now-a.since>=WINDOW){if(attempts.size>50000)attempts.clear();attempts.set(ip,{since:now,n:1});}else a.n++;}

export async function handleAccount(req,db,{cookie,clean,merge,appOrigins=[],ip=''}){
 try{
  const url=new URL(req.url),now=Date.now(),origin=req.headers.get('Origin'),app=appOrigins.includes(origin);
  if(req.method==='POST'&&origin!==url.origin&&!app)return json({error:'Please open the game in its own tab.'},403);
  const secure=url.protocol==='https:'?'; Secure':'',signOutCookie={'Set-Cookie':`${cookie}=; Path=/; HttpOnly; SameSite=Strict; Max-Age=0${secure}`};
  const raw=(req.headers.get('Cookie')||'').match(new RegExp(`(?:^|;\\s*)${cookie}=([^;]+)`))?.[1]||req.headers.get('X-Account-Token');
  const session=raw?await db.prepare('SELECT s.secret,a.* FROM account_sessions s JOIN accounts a ON a.id=s.account WHERE s.secret=? AND s.created>?').bind(sha(raw),now-YEAR*1000).first():null;
  const body=req.method==='POST'?await req.json().catch(()=>({})):{},action=req.method==='POST'?String(body.action||''):'me';
  const save=(id,progress)=>db.prepare('UPDATE accounts SET progress=?,updated=? WHERE id=?').bind(JSON.stringify(progress),now,id).run();
  async function signedIn(account,progress,status=200){
   const token=randomBytes(32).toString('base64url');
   await db.prepare('INSERT INTO account_sessions(secret,account,created) VALUES(?,?,?)').bind(sha(token),account.id,now).run();
   return json({email:account.email,progress,...(app?{token}:{})},status,{'Set-Cookie':`${cookie}=${token}; Path=/; HttpOnly; SameSite=Strict; Max-Age=${YEAR}${secure}`});
  }

  if(action==='register'||action==='login'){
   if(limited(ip,now))return json({error:'Too many tries. Please wait a few minutes.'},429);
   const email=String(body.email||'').trim().toLowerCase(),password=String(body.password||'');
   if(email.length>254||!EMAIL.test(email))return json({error:'Please enter a valid email address.'},400);
   if(password.length<8||password.length>200)return json({error:'Use a password of at least 8 characters.'},400);
   const progress=clean(body.progress);
   if(action==='register'){
    tried(ip,now);   // every sign-up counts toward the limit, so one address can't mint accounts in bulk
    const account={id:randomUUID(),email};
    const {meta}=await db.prepare('INSERT INTO accounts(id,email,password,progress,created,updated) VALUES(?,?,?,?,?,?) ON CONFLICT(email) DO NOTHING').bind(account.id,email,await hashPassword(password),JSON.stringify(progress),now,now).run();
    if(!meta.changes)return json({error:'An account with this email already exists. Sign in instead.'},409);
    return signedIn(account,progress,201);
   }
   const found=await db.prepare('SELECT * FROM accounts WHERE email=?').bind(email).first();
   if(!(found?await checkPassword(password,found.password):(await checkPassword(password,await DUMMY),false))){tried(ip,now);return json({error:'Wrong email or password.'},401);}
   const merged=merge(clean(JSON.parse(found.progress)),progress,'max');   // two devices meet: keep the best of each
   await save(found.id,merged);
   return signedIn(found,merged);
  }
  if(!session)return action==='me'?json({email:null}):json({error:'Please sign in again.',signedOut:true},401,signOutCookie);
  if(action==='me')return json({email:session.email,progress:clean(JSON.parse(session.progress))});
  if(action==='sync'){
   const merged=merge(clean(JSON.parse(session.progress)),clean(body.progress),body.pull?'stored':'incoming');
   await save(session.id,merged);
   return json({email:session.email,progress:merged});
  }
  if(action==='logout'){
   await db.prepare('DELETE FROM account_sessions WHERE secret=?').bind(session.secret).run();
   return json({email:null},200,signOutCookie);
  }
  if(action==='delete'){
   if(limited(ip,now))return json({error:'Too many tries. Please wait a few minutes.'},429);
   if(!await checkPassword(String(body.password||''),session.password)){tried(ip,now);return json({error:'Wrong password.'},401);}
   await db.batch([db.prepare('DELETE FROM account_sessions WHERE account=?').bind(session.id),db.prepare('DELETE FROM accounts WHERE id=?').bind(session.id)]);
   return json({email:null,deleted:true},200,signOutCookie);
  }
  return json({error:'Unknown action.'},400);
 }catch(e){console.error(e);return json({error:'Something went wrong. Please try again.'},500);}
}
