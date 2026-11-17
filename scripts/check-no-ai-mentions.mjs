// Fails (exit 1) when any shipped file names an AI tool or carries an AI image generator's provenance metadata
// (C2PA manifests, which generators embed in PNG/WebP/JPEG). App packages (.apk/.aab/.zip/.jar) are opened and
// every file inside is checked, so compressed content cannot hide a mention.
//   node scripts/check-no-ai-mentions.mjs public            (cap sync and deploy/deploy.sh run this)
//   node scripts/check-no-ai-mentions.mjs app-release.aab   (before a Play upload)
// Fix a hit by rewording the text, or by re-saving an image's pixels without its metadata.
import {readdirSync,readFileSync,statSync,mkdtempSync,rmSync} from 'node:fs';
import {join,extname} from 'node:path';
import {tmpdir} from 'node:os';
import {execFileSync} from 'node:child_process';
const NAMES=/\b(claude|anthropic|openai|codex|chatgpt|gpt-image|dall-?e|midjourney|copilot|gemini ai)\b/i;
const C2PA=/urn:c2pa|c2pa\.(assertions|actions|claim|signature|hash)|jumbc2pa/;
const ARCHIVES=new Set(['.apk','.aab','.zip','.jar']);
const roots=process.argv.slice(2);if(!roots.length){console.error('usage: check-no-ai-mentions.mjs <file or folder>...');process.exit(2);}
const hits=[];
function check(path,label=path){
 if(statSync(path).isDirectory()){for(const name of readdirSync(path))check(join(path,name),join(label,name));return;}
 if(ARCHIVES.has(extname(path).toLowerCase())){
  const dir=mkdtempSync(join(tmpdir(),'ai-check-'));
  try{execFileSync('unzip',['-qq','-o',path,'-d',dir]);check(dir,label+'!');}finally{rmSync(dir,{recursive:true,force:true});}
  return;
 }
 const text=readFileSync(path).toString('latin1'),m=NAMES.exec(text)||C2PA.exec(text);
 if(m)hits.push(`${label}: "${text.slice(Math.max(0,m.index-30),m.index+30).replace(/[^\x20-\x7e]/g,'.')}"`);
}
roots.forEach(r=>check(r));
if(hits.length){console.error(`Mentions of AI tools in shipped files (${hits.length}):\n`+hits.join('\n'));process.exit(1);}
console.log('OK: no AI tool mentions in',roots.join(', '));
