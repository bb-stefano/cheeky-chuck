// The friend's email (en/it/jp/zh, English fallback) and the SMTP transport.
import nodemailer from 'nodemailer';
import {hashEmail} from './photos.mjs';

const esc=s=>String(s).replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
const T={
 en:{subject:'Someone sent you a Cheeky Chuck photo',intro:'A Cheeky Chuck player sent you this photo:',link:'See the photo',about:'Cheeky Chuck is a game for your phone:',unsub:"Don't want these?"},
 it:{subject:'Qualcuno ti ha inviato una foto di Cheeky Chuck',intro:'Un giocatore di Cheeky Chuck ti ha inviato questa foto:',link:'Guarda la foto',about:'Cheeky Chuck è un gioco per il tuo telefono:',unsub:'Non vuoi più riceverle?'},
 jp:{subject:'Cheeky Chuckの写真が届きました',intro:'Cheeky Chuckのプレイヤーからこの写真が届きました：',link:'写真を見る',about:'Cheeky Chuckはスマートフォンで遊べるゲームです：',unsub:'今後のメールが不要な場合：'},
 zh:{subject:'有人给你发了一张 Cheeky Chuck 照片',intro:'一位 Cheeky Chuck 玩家给你发了这张照片：',link:'查看照片',about:'Cheeky Chuck 是一款手机游戏：',unsub:'不想再收到？'},
};

export function buildMail({lang,comment,id,publicUrl,unsubscribeUrl}){
 const t=T[lang]||T.en,link=`${publicUrl}/gallery?id=${id}`,home=`${publicUrl}/`;
 return {
  subject:t.subject,
  text:`${t.intro}\n\n${comment?`"${comment}"\n\n`:''}${t.link}: ${link}\n\n${t.about} ${home}\n\n${t.unsub} ${unsubscribeUrl}\n`,
  html:`<p>${t.intro}</p>${comment?`<p>"${esc(comment)}"</p>`:''}<p><a href="${esc(link)}">${t.link}</a></p><p>${t.about} <a href="${esc(home)}">${esc(home)}</a></p><p>${t.unsub} <a href="${esc(unsubscribeUrl)}">${esc(unsubscribeUrl)}</a></p>`,
  headers:{'List-Unsubscribe':`<${unsubscribeUrl}>`,'List-Unsubscribe-Post':'List-Unsubscribe=One-Click'},
 };
}

// Dev mode: print the mail instead of sending it.
export const logMailer=()=>({async send({to,subject,url}){console.log(`[mail] to=${hashEmail(to).slice(0,8)} subject=${subject} link=${url}`);}});

// Box-local Postfix on 127.0.0.1:25 needs neither auth nor TLS; an authenticated relay (SMTP_USER set) gets both.
// Timeouts stay under the game's 60 s request timeout, so a slow send fails instead of arriving after the player retried.
export function smtpMailer(env){
 if(!env.SMTP_HOST)return logMailer();
 const transport=nodemailer.createTransport({host:env.SMTP_HOST,port:Number(env.SMTP_PORT||587),secure:false,requireTLS:!!env.SMTP_USER,
  ...(env.SMTP_USER?{auth:{user:env.SMTP_USER,pass:env.SMTP_PASS}}:{}),connectionTimeout:10000,greetingTimeout:10000,socketTimeout:15000});
 // to as {name:'',address}: nodemailer sends the address as given, never parsing it for display names or more recipients.
 return {send:({to,subject,text,html,headers})=>transport.sendMail({from:'Cheeky Chuck <contact@jocogiant.com>',to:{name:'',address:to},subject,text,html,headers})};
}
