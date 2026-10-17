const DEFAULT_PUBLIC_URL="https://masanawa-gateway-production-338f.up.railway.app";
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
<tr><td align="center" style="padding:28px 24px 20px;border-top:5px solid #00DC52"><img src="${base}/brand/masanawa-logo.png" width="64" height="64" alt="Masanawa logo" style="display:block;border:0;border-radius:16px"><p style="margin:12px 0 0;font-size:25px;font-weight:800;color:#075E54">Masanawa</p></td></tr>
<tr><td style="padding:8px 28px 28px;font-size:16px;line-height:1.65">${body}</td></tr>
<tr><td style="padding:20px 24px;border-top:1px solid #E9EDEF;text-align:center;font-size:12px;color:#54656F">Masanawa · Chats, Calls and Rooms<br><a href="mailto:support@masanawa.com" style="color:#075E54">Contact support</a></td></tr></table></td></tr></table></body></html>`;
}
export function renderMasanawaOtpEmail(code:string,publicBaseUrl?:string):Readonly<{subject:string;text:string;html:string}> {
  if(!/^\d{6}$/u.test(code))throw new TypeError("OTP code must contain exactly six digits");
  const base=baseUrl(publicBaseUrl),subject="Your Masanawa sign-in code";
  const text=`Your Masanawa sign-in code is ${code}. It expires in 10 minutes. Copy helper: ${base}/auth/code#${code}. If you did not request this code, ignore this email. Never share it.`;
  const html=frame(subject,"Your six-digit verification code expires in 10 minutes.",`<h1 style="text-align:center;font-size:26px;margin:0 0 12px">Verify your email</h1><p style="text-align:center;color:#54656F">Enter this code to finish signing in.</p>
<div role="text" aria-label="Verification code ${code}" style="background:#E7FCEB;border:1px solid #25D366;border-radius:14px;padding:20px 8px;text-align:center;font-family:Courier New,monospace;font-size:32px;font-weight:bold;letter-spacing:5px;color:#075E54">${code}</div>
<p style="text-align:center;margin:20px 0"><a href="${base}/auth/code#${code}" rel="noreferrer noopener" style="display:inline-block;background:#075E54;color:#FFFFFF;padding:13px 24px;border-radius:10px;text-decoration:none;font-weight:bold">Open code &amp; copy</a></p>
<p style="text-align:center;font-size:13px;color:#54656F">Opens a secure copy helper. You can also use Paste code in the app.<br>Expires in 10 minutes. This code can only be used once.</p>
<div style="padding:16px;background:#F3F6F5;border-radius:12px;font-size:14px"><strong>Security note:</strong> Never share this code. Masanawa will never ask for it in a chat or call. If you did not request it, you can ignore this email.</div>`,base);
  return Object.freeze({subject,text,html});
}
export function renderMasanawaWelcomeEmail(input:Readonly<{name:string;username?:string}>,publicBaseUrl?:string):Readonly<{subject:string;text:string;html:string}> {
  const base=baseUrl(publicBaseUrl),name=escape(input.name.trim()||"there"),username=input.username?`@${escape(input.username)}`:undefined;
  const subject="Welcome to Masanawa";
  const text=`Welcome to Masanawa, ${input.name}!${input.username?` Your username is @${input.username}.`:""} Meet your Masana, start a conversation, explore Rooms and manage your Wallet. Open Masanawa to get started.`;
  const html=frame(subject,"Your Masanawa account is ready.",`<h1 style="font-size:26px;margin:0 0 12px">Welcome, ${name}!</h1><p>Your Masanawa account is ready.</p>${username?`<p style="background:#E7FCEB;border-radius:12px;padding:16px">Your username<br><strong style="font-size:20px;color:#075E54">${username}</strong></p>`:""}<p>Meet your Masana, send a message or voice note, and explore their Rooms. Your Wallet and services are available inside the app.</p><p style="text-align:center"><a href="https://masanawa.com" style="display:inline-block;background:#075E54;color:#FFFFFF;padding:13px 24px;border-radius:10px;text-decoration:none;font-weight:bold">Explore Masanawa</a></p><p style="font-size:14px;color:#54656F">Keep your password and verification codes private. Need help? Gwani is there to guide you.</p>`,base);
  return Object.freeze({subject,text,html});
}
