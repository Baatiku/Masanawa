/**
 * Channel-independent Citizenvoice service catalogue. No wallet write or public
 * posting capability is exposed to the language model. A pilot is deliberately
 * opt-in per dedicated service channel; provider eligibility is an external gate.
 */
type Context={channelId:string;numberPurpose:string;roleLevel:number;permissions:readonly string[]};
type Env=Readonly<Record<string,string|undefined>>;
type Skill={id:string;label:string;level:number;permissions:readonly string[];mode:'chat'|'authenticated_web'};
export const citizenvoiceSkills:readonly Skill[]=[
 {id:'help',label:'Service directory and guidance',level:1,permissions:['faq'],mode:'chat'},
 {id:'link',label:'Secure account linking',level:3,permissions:['account_link'],mode:'authenticated_web'},
 {id:'balance',label:'Wallet balance after recent authorization',level:3,permissions:['wallet_balance'],mode:'chat'},
 {id:'data',label:'Live data plans, reviewed purchases and receipts',level:4,permissions:['data_catalog','data_purchase'],mode:'authenticated_web'},
 {id:'receipts',label:'Transaction status and receipts',level:4,permissions:['transaction_status','receipts'],mode:'authenticated_web'},
 {id:'support',label:'Customer support',level:2,permissions:['customer_support'],mode:'chat'},
 {id:'news',label:'Recent publisher headlines',level:1,permissions:['faq'],mode:'chat'},
];
export function isCitizenvoicePilot(ctx:Context,env:Env):boolean{
 return ctx.numberPurpose==='service'&&/^[0-9a-f-]{36}$/i.test(ctx.channelId)&&
  (env.MASANAWA_CITIZENVOICE_WHATSAPP_PILOT_CHANNELS??'').split(',').map(x=>x.trim()).includes(ctx.channelId);
}
export function availableCitizenvoiceSkills(ctx:Context,env:Env){
 return isCitizenvoicePilot(ctx,env)?citizenvoiceSkills.filter(s=>ctx.roleLevel>=s.level&&s.permissions.every(p=>ctx.permissions.includes(p))):[];
}
export function citizenvoiceCapabilityInstructions(ctx:Context,env:Env):string{
 const skills=availableCitizenvoiceSkills(ctx,env);
 if(!skills.length)return '';
 return 'Citizenvoice is a Nigerian citizen-information and digital-services platform. Available capabilities on this number: '+skills.map(s=>s.label+' ('+s.mode+')').join('; ')+'. '+
  'Only claim capabilities listed here. No direct money transfers, airtime, utility payments, forum publication, political assessments or official impersonation are available through this pilot. '+
  'Explain the difference between chat guidance and a secure signed-in operation. Do not invent source material, current prices, fees, balances or completed actions. '+
  'Follow the current request, use prior context only as context, ask one necessary question at a time, and avoid repetitive greetings or sign-offs. Match the sender’s language; use natural English or standard Hausa and preserve code-switching.';
}
export function wantsData(text:string):boolean{
 return /\b(?:buy|purchase|recharge|get|need|want|subscribe|top up)\b[^.!?\n]{0,70}\bdata\b/i.test(text)||
  /\bdata (?:bundles|plans|packages|purchase)\b/i.test(text)||
  /(?:sayen data|siyan data|tsarin data|saya min data)/i.test(text);
}
export function wantsAccountRegistration(text:string):boolean{
 const s=text.trim();
 return /^(?:register|registration|sign up|create account)[.!?]*$/i.test(s)||
  /\b(?:register|sign up|create (?:an?|my) account)\b[^.!?\n]{0,45}\b(?:citizenvoice|chatmeup|masanawa)\b/i.test(s)||
  /\b(?:create|open|register|set up)\s+(?:an? |my |a new )?account\b/i.test(s);
}
export function wantsAccountLink(text:string):boolean{
 return /^link(?:\s+account)?[.!?]*$/i.test(text.trim())||
  /\b(?:link|connect)\s+(?:my |this )?(?:citizenvoice |chatmeup |masanawa |whatsapp )?account\b/i.test(text);
}
export function citizenvoiceIntent(text:string):'menu'|'news'|'unsupported'|'none'{
 const s=text.trim();
 if(/\b(?:vote|rating|rate (?:the|my|a) governor|citizenpulse|political campaign|candidate comparison|forum|public official)\b/i.test(s))return 'unsupported';
 if(/^(?:menu|services|help|what can you do|what services (?:do you offer|are available))[.!?]*$/i.test(s))return 'menu';
 if(/\b(?:send|transfer)\s+(?:me |him |her |them |money|₦|NGN|[0-9])/i.test(s)||/\b(?:buy|purchase|recharge)\b[^.!?]{0,50}\bairtime\b/i.test(s)||/\bpay\b[^.!?]{0,50}\b(?:bill|electricity|utility)\b/i.test(s))return 'unsupported';
 if(/\b(?:news|headlines|news briefing)\b/i.test(s)&&!/[\r\n]/.test(s))return 'news';
 return 'none';
}
const states=['abia','adamawa','akwa-ibom','anambra','bauchi','bayelsa','benue','borno','cross-river','delta','ebonyi','edo','ekiti','enugu','gombe','imo','jigawa','kaduna','kano','katsina','kebbi','kogi','kwara','lagos','nasarawa','niger','ogun','ondo','osun','oyo','plateau','rivers','sokoto','taraba','yobe','zamfara','fct'];
export function requestedNewsState(text:string):string|undefined{
 const s=text.toLowerCase().replace(/-/g,' ');
 if(/\babuja\b/.test(s))return 'fct';
 return states.find(state=>new RegExp('\\b'+state.replace(/-/g,' ')+'\\b').test(s));
}
function object(value:unknown):Record<string,unknown>{return value&&typeof value==='object'&&!Array.isArray(value)?value as Record<string,unknown>:{};}
function line(v:unknown,max:number):string{
 return typeof v==='string'?v.replace(/[\r\n\t\u0000-\u001f]+/g,' ').replace(/https?:\/\/\S+/gi,'').trim().slice(0,max):'';
}
export function renderCitizenvoiceNews(payload:unknown,state:string|undefined,now=Date.now()):string|null{
 const data=object(payload);
 if(!Array.isArray(data.items))return null;
 const seen=new Set<string>(),headlines:string[]=[];
 for(const item of data.items.slice(0,50)){
  const r=object(item),title=line(r.title,240),publisher=line(r.publisher,80),date=typeof r.publishedAt==='string'?Date.parse(r.publishedAt):NaN;
  if(r.sourceType==='social'||!title||!publisher||!Number.isFinite(date)||date<now-7*86400000||date>now+300000)continue;
  if(state&&r.nationwide!==true&&(!Array.isArray(r.states)||!r.states.includes(state)))continue;
  if(typeof r.url!=='string'||r.url.length>1500)continue;
  let url:URL;try{url=new URL(r.url);}catch{continue;}
  if(url.protocol!=='https:'||url.username||url.password||url.port||!url.hostname.includes('.')||seen.has(url.href))continue;
  seen.add(url.href);
  headlines.push(title+'\n'+publisher+' · '+new Date(date).toISOString().slice(0,10)+'\n'+url.href);
  if(headlines.length===3)break;
 }
 if(!headlines.length)return data.partial===true?'The news feed is partly unavailable. No recent matching publisher headlines could be verified.':'No recent matching publisher headlines are available in the current feed.';
 return 'Citizenvoice News'+(state?' · '+state.toUpperCase():' · Nigeria')+'\n\n'+headlines.join('\n\n')+(data.partial===true?'\n\nSome publishers are temporarily unavailable.':'');
}
export async function getCitizenvoiceNews(origin:string,state:string|undefined,fetcher:typeof fetch):Promise<string>{
 const failure='The Citizenvoice news feed is temporarily unavailable. I cannot verify the latest headlines right now.';
 try{
  const url=new URL('/api/news',origin);
  if(url.protocol!=='https:'||url.username||url.password)return failure;
  if(state&&states.includes(state))url.searchParams.set('state',state);
  const response=await fetcher(url.href,{headers:{Accept:'application/json'},redirect:'error',signal:AbortSignal.timeout(8000)});
  if(!response.ok||!response.headers.get('content-type')?.includes('application/json')||!response.body)return failure;
  const reader=response.body.getReader(),decoder=new TextDecoder();let bytes=0,raw='';
  try{for(;;){const result=await reader.read();if(result.done)break;bytes+=result.value.byteLength;if(bytes>512000){await reader.cancel();return failure;}raw+=decoder.decode(result.value,{stream:true});}raw+=decoder.decode();}
  finally{reader.releaseLock();}
  return renderCitizenvoiceNews(JSON.parse(raw),state)??failure;
 }catch{return failure;}
}
