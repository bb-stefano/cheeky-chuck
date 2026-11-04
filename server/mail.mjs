// The friend's email. Task 4 adds the other languages and the SMTP mailer; for now English only.
const esc=s=>String(s).replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));

export function buildMail({lang,comment,id,publicUrl,unsubscribeUrl}){
 const link=`${publicUrl}/gallery?id=${id}`;
 return {
  subject:'Someone sent you a Cheeky Chuck photo',
  text:`A Cheeky Chuck player sent you this photo:\n\n${comment?`"${comment}"\n\n`:''}${link}\n\nDon't want these? ${unsubscribeUrl}\n`,
  html:`<p>A Cheeky Chuck player sent you this photo:</p>${comment?`<p>"${esc(comment)}"</p>`:''}<p><a href="${link}">${link}</a></p><p>Don't want these? <a href="${esc(unsubscribeUrl)}">Unsubscribe</a></p>`,
  headers:{'List-Unsubscribe':`<${unsubscribeUrl}>`,'List-Unsubscribe-Post':'List-Unsubscribe=One-Click'},
 };
}
