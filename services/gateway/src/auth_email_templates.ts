import {publicWebOrigin} from '@masanawa/contracts';
import {MASANAWA_EMAIL_LOGO_BASE64} from './auth_email_brand.js';
const attachments=()=>[{filename:'masanawa-logo.png',content:MASANAWA_EMAIL_LOGO_BASE64,content_id:'masanawa-logo'}];
// Stable, provider-independent Gateway origin. Production OTP delivery should
// explicitly supply MASANAWA_AUTH_PUBLIC_BASE_URL after DNS/TLS qualification.
const DEFAULT_PUBLIC_URL="https://api.masanawa.com";
function baseUrl(value=DEFAULT_PUBLIC_URL):string {
  const url=new URL(value);
  if(url.protocol!=="https:" || url.username || url.password)throw new TypeError("auth.email_public_url_invalid");
  return url.origin;
}
function escape(value:string):string {return value.replace(/[&<>"']/gu,c=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]!));}
function frame(title:string,preheader:string,body:string,base:string):string {
  return `<!doctype html><html lang="en" dir="ltr"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>${escape(title)}</title></head>
<body style="margin:0;background:#F3F6F5;color:#111B21;font-family:Arial,Helvetica,sans-serif"><div style="display:none;max-height:0;overflow:hidden">${escape(preheader)}</div>
<table role="presentation" width="100%" cellpadding="0" cellspacing="0"><tr><td align="center" style="padding:28px 12px"><table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width:560px;background:#FFFFFF;border:1px solid #E9EDEF;border-radius:20px;overflow:hidden">
<tr><td align="center" style="padding:28px 24px 20px;border-top:5px solid #25D366"><img src="cid:masanawa-logo" width="64" height="64" alt="ChatMeUp logo" style="display:block;border:0;border-radius:16px"><p style="margin:12px 0 0;font-size:25px;font-weight:800;color:#25D366">ChatMeUp</p></td></tr>
<tr><td style="padding:8px 28px 28px;font-size:16px;line-height:1.65">${body}</td></tr>
<tr><td style="padding:20px 24px;border-top:1px solid #E9EDEF;text-align:center;font-size:12px;color:#54656F">ChatMeUp · Chats, Calls and Wallet<br><a href="mailto:support@masanawa.com" style="color:#25D366">Contact support</a></td></tr></table></td></tr></table></body></html>`;
}
export function renderMasanawaOtpEmail(code:string,publicBaseUrl?:string):Readonly<{subject:string;text:string;html:string;attachments:ReturnType<typeof attachments>}> {
  if(!/^\d{6}$/u.test(code))throw new TypeError("OTP code must contain exactly six digits");
  const base=baseUrl(publicBaseUrl),subject="Your ChatMeUp sign-in code";
  const text=`Your ChatMeUp sign-in code is ${code}. It expires in 10 minutes. If you did not request this code, ignore this email. Never share it.`;
  const html=frame(subject,"Your six-digit verification code expires in 10 minutes.",`<h1 style="text-align:center;font-size:26px;margin:0 0 12px">Verify your email</h1><p style="text-align:center;color:#54656F">Enter this code to finish signing in.</p>
<div role="text" aria-label="Verification code ${code}" style="background:#E7FCEB;border:1px solid #25D366;border-radius:14px;padding:20px 8px;text-align:center;font-family:Courier New,monospace;font-size:32px;font-weight:bold;letter-spacing:5px;color:#25D366">${code}</div>
<p style="text-align:center;font-size:13px;color:#54656F">Expires in 10 minutes. This code can only be used once.</p>
<div style="padding:16px;background:#F3F6F5;border-radius:12px;font-size:14px"><strong>Security note:</strong> Never share this code. ChatMeUp will never ask for it in a chat or call. If you did not request it, you can ignore this email.</div>`,base);
  return Object.freeze({subject,text,html,attachments:attachments()});
}
export function renderMasanawaWelcomeEmail(input:Readonly<{name:string;username?:string}>,publicBaseUrl?:string):Readonly<{subject:string;text:string;html:string;attachments:ReturnType<typeof attachments>}> {
  const base=baseUrl(publicBaseUrl),name=escape(input.name.trim()||"there"),username=input.username?`@${escape(input.username)}`:undefined;
  const subject="Welcome to ChatMeUp";
  const text=`Welcome to ChatMeUp, ${input.name}!${input.username?` Your username is @${input.username}.`:""} Meet your Masana, start a conversation, explore ChatMeUp and manage your Wallet. Open ChatMeUp to get started.`;
  const html=frame(subject,"Your ChatMeUp account is ready.",`<h1 style="font-size:26px;margin:0 0 12px">Welcome, ${name}!</h1><p>Your ChatMeUp account is ready.</p>${username?`<p style="background:#E7FCEB;border-radius:12px;padding:16px">Your username<br><strong style="font-size:20px;color:#25D366">${username}</strong></p>`:""}<p>Meet your Masana, send a message or voice note, and manage your Wallet. Your Wallet and services are available inside the app.</p><p style="text-align:center"><a href="${publicWebOrigin(process.env.MASANAWA_WEB_BASE_URL)}" style="display:inline-block;background:#25D366;color:#FFFFFF;padding:13px 24px;border-radius:10px;text-decoration:none;font-weight:bold">Explore ChatMeUp</a></p><p style="font-size:14px;color:#54656F">Keep your password and verification codes private. Need help? Gwani is there to guide you.</p>`,base);
  return Object.freeze({subject,text,html,attachments:attachments()});
}
