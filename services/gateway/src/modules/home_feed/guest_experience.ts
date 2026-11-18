import {randomBytes} from 'node:crypto';
import type {FastifyInstance} from 'fastify';
import type {PublicStatusPost} from './public_landing.js';

const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const tokenPattern=/^[A-Za-z0-9_-]{20,128}$/;
const escapeHtml=(s:string)=>s.replace(/[&<>"']/g,ch=>({
 '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'
})[ch]!);

/** Separate OPTIONAL browser experience. Ordinary public posts stay JS-free,
 * no-cookie and readable without accepting attribution. This client provides
 * only UNVERIFIED telemetry; it cannot unlock any financial or public view. */
export function renderGuestExperience(post:Extract<PublicStatusPost,{gone?:false}>,
  options:{nonce:string;referral?:string;image?:boolean}):string{
 const title=escapeHtml(post.name.slice(0,130));
 const body=escapeHtml(post.body.slice(0,5000));
 const id=encodeURIComponent(post.id);
 const validReferral=options.referral&&tokenPattern.test(options.referral)
  ?options.referral:undefined;
 const base=`/status/${id}`;
 const organic=`${base}`;
 const image=options.image&&post.imagePreview?
  `<img alt="${escapeHtml(post.imagePreview.altText)}" loading="lazy" src="${base}/image/${encodeURIComponent(post.imagePreview.id)}">`:'';
 // Script values are generated solely from a validated UUID and a
 // conservative URL-safe link hint; no author text becomes executable JS.
 const postId=JSON.stringify(post.id),hint=JSON.stringify(validReferral??null);
 return `<!doctype html><html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="robots" content="noindex,nofollow"><title>Optional Status verification · Masanawa</title>
<style nonce="${options.nonce}">
body{background:#f4f5f2;color:#1b2c23;font:16px/1.6 system-ui,sans-serif;margin:0}
main{max-width:640px;margin:30px auto;padding:24px;background:white;border-radius:18px}
h1{font-size:22px}article{white-space:pre-wrap;overflow-wrap:anywhere;min-height:180px}
img{max-width:100%;height:auto;border-radius:12px}
button,a.action{margin:8px 8px 8px 0;padding:12px 14px;border-radius:10px;
 border:1px solid #167346;background:#167346;color:white;font:inherit;cursor:pointer}
button.secondary,a.action.secondary{background:white;color:#176c43}
a.action{display:inline-block;text-decoration:none}
button:focus-visible,a:focus-visible,article:focus-visible{outline:3px solid #1b66ca;outline-offset:3px}
.notice{background:#edf5ee;padding:14px;border-radius:12px}
.fine{color:#5c6961;font-size:14px}
</style></head><body><main><h1>${title} · Optional Status verification</h1>
<p class="notice" id="notice">You can read this post without a tracking cookie, account or app.
Choosing <strong>Allow optional verification</strong> creates a secure first-party cookie for up to
24 hours and keeps a keyed record of this post, when you started, and browser-reported
visibility and engagement for up to 24 hours. A referral, if you keep it, may be attached.
No name, phone, location or fingerprint is stored in the guest proof. This browser report
cannot verify a distinct person, pay a sharer, debit a sponsor or increase the public verified count.
You may decline or withdraw. Separate security logs may apply under the main privacy policy.
This is a draft feature pending privacy and fraud approval.</p>
<button id="allow" type="button" aria-describedby="notice">Allow optional verification</button>
<button id="withdraw" class="secondary" type="button">Withdraw optional verification</button>
<a class="action secondary" href="${organic}">Continue without optional verification</a>
<p id="status" role="status" aria-live="polite">Nothing has been recorded.</p>
<h2>Public post</h2><article id="post" tabindex="0" aria-label="Status post content">${body}${image}</article>
<p class="fine">To send an optional observation, keep this post visible and interact with it.
Hidden tabs, short visits, link previews and reading without consent are never recorded.</p>
<noscript><p>You can read this post above without JavaScript or consent. Optional verification requires JavaScript.</p></noscript>
</main><script nonce="${options.nonce}">
(()=>{'use strict';
const postId=${postId},referral=${hint};
const message=document.getElementById('status');
const content=document.getElementById('post');
const allow=document.getElementById('allow');
const withdraw=document.getElementById('withdraw');
let active=false,submitting=false,challenge=null,visible=0,engaged=false;
let continuousMs=0,last=performance.now(),timer=null;
const observation=new IntersectionObserver(entries=>{
 visible=entries[0]?.intersectionRatio??0;
 if(visible<0.5)continuousMs=0;
},{threshold:[0,0.5,1]});
observation.observe(content);
const interact=()=>{if(active)engaged=true;};
content.addEventListener('pointerdown',interact);
content.addEventListener('keydown',interact);
async function send(url,method,payload){
 const response=await fetch(url,{method,credentials:'same-origin',cache:'no-store',
  headers:payload?{'content-type':'application/json'}:{},
  ...(payload?{body:JSON.stringify(payload)}:{})});
 if(!response.ok)throw Error('unavailable');
 return response.json();
}
function halt(){if(timer!==null)clearInterval(timer);timer=null;active=false;challenge=null;
 continuousMs=0;engaged=false;}
async function tick(){
 const now=performance.now(),delta=Math.min(1000,Math.max(0,now-last));last=now;
 if(!active||submitting||!challenge)return;
 if(document.visibilityState!=='visible'||visible<0.5){continuousMs=0;return;}
 continuousMs+=delta;
 if(continuousMs<6500||!engaged)return;
 submitting=true;
 try{const result=await send('/v1/status/guest/challenges/'+challenge+'/complete','POST',
  {visibleFraction:visible,foreground:true,engaged:true});
  message.textContent=result.recorded?'Optional observation pending fraud review — no verified or paid view.':
   'This optional observation was already submitted; no reward was generated.';
 }catch{message.textContent='Optional observation was not recorded. You can continue reading.';}
 finally{halt();submitting=false;}
}
allow.addEventListener('click',async()=>{
 if(active||submitting)return;
 submitting=true;allow.disabled=true;
 try{
  await send('/v1/status/guest/consent','POST',{consent:true});
  const request={postId,...(referral?{referralToken:referral}:{})};
  const result=await send('/v1/status/guest/challenges','POST',request);
  if(!result.started){message.textContent='This post already has an optional proof. No extra view or reward.';return;}
  challenge=result.challengeId;active=true;continuousMs=0;engaged=false;
  last=performance.now();
  message.textContent='Consent saved. Read the post and interact with it to submit a nonpayable observation.';
  timer=setInterval(()=>{void tick();},250);
 }catch{message.textContent='Optional verification unavailable. Reading without it remains available.';}
 finally{submitting=false;allow.disabled=false;}
});
withdraw.addEventListener('click',async()=>{
 halt();allow.disabled=true;
 try{await send('/v1/status/guest/consent','DELETE');
  message.textContent='Optional consent withdrawn and pending proof deleted.';
 }catch{message.textContent='Withdrawal unavailable; please retry. No new observation will be sent.';}
 finally{allow.disabled=false;}
});
document.addEventListener('visibilitychange',()=>{if(document.hidden)continuousMs=0;});
})();
</script></body></html>`;
}

export async function registerGuestExperience(app:FastifyInstance,options:{
 port:{find(id:string):Promise<PublicStatusPost|null>;
  validReferral?(id:string,token:string):Promise<boolean>};
 enabled:()=>boolean;imagesEnabled?:()=>boolean;
}){
 app.get('/status/:postId/verify',async(req,reply)=>{
  reply.header('Cache-Control','no-store');
  reply.header('Referrer-Policy','no-referrer');
  reply.header('X-Content-Type-Options','nosniff');
  reply.header('X-Frame-Options','DENY');
  reply.header('X-Robots-Tag','noindex, nofollow');
  reply.header('Permissions-Policy','camera=(), microphone=(), geolocation=()');
  if(!options.enabled())return reply.code(404).type('text/plain').send('Unavailable');
  const id=(req.params as {postId?:unknown}).postId;
  if(typeof id!=='string'||!uuid.test(id))
   return reply.code(404).type('text/plain').send('Unavailable');
  const post=await options.port.find(id);
  if(!post)return reply.code(404).type('text/plain').send('Unavailable');
  if(post.gone)return reply.code(410).type('text/plain').send('Removed');
  const raw=(req.query as Record<string,unknown>).r;
  const referral=typeof raw==='string'&&tokenPattern.test(raw)&&
   await options.port.validReferral?.(id,raw)?raw:undefined;
  const nonce=randomBytes(18).toString('base64');
  reply.header('Content-Security-Policy',
   `default-src 'none'; script-src 'nonce-${nonce}'; style-src 'nonce-${nonce}'; `+
   "connect-src 'self'; img-src 'self'; base-uri 'none'; form-action 'none'; frame-ancestors 'none'");
  return reply.type('text/html; charset=utf-8').send(renderGuestExperience(post,
   {nonce,...(referral?{referral}:{}),image:options.imagesEnabled?.()===true}));
 });
}
