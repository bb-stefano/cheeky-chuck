// The slice of Cloudflare D1's API that accounts.mjs uses (copied from Crash of Crowns' server), over Node's built-in SQLite:
// prepare().bind().first()/all()/run(), and batch() as one transaction.
import {DatabaseSync} from 'node:sqlite';
import {readFileSync,readdirSync} from 'node:fs';

export function openD1(path,migrations){
 const sqlite=new DatabaseSync(path);
 sqlite.exec('PRAGMA journal_mode=WAL;PRAGMA busy_timeout=5000;CREATE TABLE IF NOT EXISTS _migrations(name TEXT PRIMARY KEY)');
 // The drizzle migrations, each applied once, in order.
 for(const file of readdirSync(migrations).filter(f=>f.endsWith('.sql')).sort()){
  if(sqlite.prepare('SELECT 1 FROM _migrations WHERE name=?').get(file))continue;
  sqlite.exec('BEGIN');
  try{for(const sql of readFileSync(migrations+'/'+file,'utf8').split('--> statement-breakpoint'))if(sql.trim())sqlite.exec(sql);sqlite.prepare('INSERT INTO _migrations VALUES(?)').run(file);sqlite.exec('COMMIT');}
  catch(e){sqlite.exec('ROLLBACK');throw e;}
 }
 const statement=(sql,args=[])=>{
  const execute=()=>({meta:{changes:Number(sqlite.prepare(sql).run(...args).changes)}});
  return {
   bind:(...values)=>statement(sql,values),
   async first(){return sqlite.prepare(sql).get(...args)??null;},
   async all(){return {results:sqlite.prepare(sql).all(...args)};},
   async run(){return execute();},
   execute,
  };
 };
 // ponytail: node:sqlite is synchronous, so a batch can't interleave with another request; one process only.
 return {
  prepare:sql=>statement(sql),
  async batch(stmts){sqlite.exec('BEGIN');try{const out=stmts.map(s=>s.execute());sqlite.exec('COMMIT');return out;}catch(e){sqlite.exec('ROLLBACK');throw e;}},
  close:()=>sqlite.close(),
 };
}
