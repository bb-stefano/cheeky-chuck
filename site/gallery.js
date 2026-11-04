// The players' photo gallery. /gallery lists photos newest first, with a "More" button for older ones;
// /gallery?id=N shows one photo (the link in the mail). User text only ever goes in via textContent.
const PAGE=24;
const list=document.getElementById('photos'),status=document.getElementById('status');
const more=document.getElementById('more'),back=document.getElementById('back');

function el(tag,text){const e=document.createElement(tag);if(text!=null)e.textContent=text;return e;}

function figure(p,lazy){
 const f=el('figure'),frame=el('div'),img=el('img'),cap=el('figcaption');
 f.className='photo';frame.className='frame';
 img.src=p.url;img.alt=p.comment?'Cheeky Chuck photo: '+p.comment:'A Cheeky Chuck photo';
 if(lazy)img.loading='lazy';
 frame.append(img);
 if(p.comment)cap.append(el('q',p.comment));
 const d=new Date(p.created),t=el('time',d.toLocaleDateString(undefined,{year:'numeric',month:'long',day:'numeric'}));
 t.dateTime=d.toISOString();cap.append(t);
 f.append(frame,cap);return f;
}

async function getJSON(url){const r=await fetch(url);if(r.status===404)return null;if(!r.ok)throw new Error('HTTP '+r.status);return r.json();}

async function showOne(id){
 back.hidden=false;list.classList.add('single');
 const p=/^\d+$/.test(id)?await getJSON('/api/gallery?id='+id):null;
 if(!p){status.textContent="Sorry, we can't find that photo. It may have been removed.";return;}
 status.textContent='';list.append(figure(p,false));
 if(p.comment)document.title='“'+p.comment+'” – Cheeky Chuck';
}

let last=null;
async function showPage(){
 more.disabled=true;
 const page=await getJSON('/api/gallery?limit='+PAGE+(last?'&before='+last:''));
 for(const p of page)list.append(figure(p,true));
 if(page.length)last=page.at(-1).id;
 status.textContent=list.children.length?'':'No photos yet. Take one in the game and it will show up here!';
 more.hidden=page.length<PAGE;more.disabled=false;
}

more.addEventListener('click',()=>showPage().catch(fail));
function fail(){status.textContent="Couldn't load the photos. Please try again later.";more.disabled=false;}

const id=new URLSearchParams(location.search).get('id');
(id!==null?showOne(id):showPage()).catch(fail);
