import {createHmac,randomBytes,timingSafeEqual} from 'node:crypto';
import type {FastifyInstance,FastifyRequest} from 'fastify';

export const STATUS_GUEST_COOKIE='__Host-Masanawa-Status-Guest';
const lifetimeSeconds=86_400;
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const referral=/^[A-Za-z0-9_-]{20,128}$/;
type GuestActor={consentDigest:string;viewerDigest:string};
export interface GuestProofPort {
 revoked(consentDigest:string):Promise<boolean>;
 begin(postId:string,actor:GuestActor,referralToken?:string):Promise<unknown>;
 complete(id:string,actor:GuestActor,report:{visibleFraction:number;
  foreground:boolean;engaged:boolean}):Promise<unknown>;
 withdraw(consentDigest:string):Promise<void>;
}

/** A session is created ONLY on explicit guest opt-in. No user, IP, device,
 * cookie plaintext, or fingerprint is persisted: database keys are HMACs. */
export class GuestConsentSigner {
 constructor(private readonly secret:string,
  private readonly now:()=>number=()=>Date.now()){
  if(Buffer.byteLength(secret,'utf8')<32)throw Error('guest_signing_secret_too_short');
 }
 private hmac(domain:string,value:string){
  return createHmac('sha256',this.secret).update(domain+'\0'+value).digest('hex');
 }
 issue(){
  const nonce=randomBytes(32).toString('base64url');
  const issued=Math.floor(this.now()/1000);
  const head=`v1.${nonce}.${issued}`;
  return `${head}.${this.hmac('guest-cookie',head)}`;
 }
 verify(token:string|undefined):GuestActor|null{
  if(!token||token.length>240)return null;
  const pieces=/^v1\.([A-Za-z0-9_-]{43})\.([0-9]{10})\.([0-9a-f]{64})$/.exec(token);
  if(!pieces)return null;
  const issued=Number(pieces[2]);
  const seconds=Math.floor(this.now()/1000);
  if(!Number.isSafeInteger(issued)||issued>seconds+60||seconds-issued>=lifetimeSeconds)
   return null;
  const expected=this.hmac('guest-cookie',`v1.${pieces[1]}.${pieces[2]}`);
  const actual=pieces[3]!;
  if(!timingSafeEqual(Buffer.from(actual,'hex'),Buffer.from(expected,'hex')))return null;
  const nonce=pieces[1]!;
  return {consentDigest:this.hmac('guest-consent',nonce),
   viewerDigest:this.hmac('guest-view',nonce)};
 }
}

function extractCookie(request:FastifyRequest):string|undefined{
 const raw=request.headers.cookie;
 if(!raw||raw.length>4096)return;
 const found=raw.split(';').map(x=>x.trim()).filter(x=>x.startsWith(`${STATUS_GUEST_COOKIE}=`));
 if(found.length!==1)return;
 return found[0]!.slice(STATUS_GUEST_COOKIE.length+1);
}
const consentCookie=(token:string)=>`${STATUS_GUEST_COOKIE}=${token}; Path=/; Max-Age=${lifetimeSeconds}; HttpOnly; Secure; SameSite=Lax`;
const clearedCookie=()=>`${STATUS_GUEST_COOKIE}=; Path=/; Max-Age=0; HttpOnly; Secure; SameSite=Lax`;
const exact=(value:unknown,keys:string[])=>!!value&&typeof value==='object'&&!Array.isArray(value)&&
 Object.keys(value).length===keys.length&&Object.keys(value).every(key=>keys.includes(key));

/** Inactive until separately approved. Client visibility assertions are NOT
 * human verification; proof records only enter a manual-review queue. */
export async function registerStatusGuestProofRoutes(app:FastifyInstance,options:{
 port:GuestProofPort;signer:GuestConsentSigner;enabled:()=>boolean;publicBaseUrl:string;
}){
 const origin=new URL(options.publicBaseUrl).origin;
 if(!origin.startsWith('https://'))throw Error('guest_public_origin_must_be_https');
 await app.register(async guest=>{
  guest.addHook('onRequest',async(req,reply)=>{
   reply.header('Cache-Control','no-store');
   reply.header('Referrer-Policy','no-referrer');
   reply.header('X-Content-Type-Options','nosniff');
   reply.header('X-Frame-Options','DENY');
   reply.header('Content-Security-Policy',"default-src 'none'; frame-ancestors 'none'");
   reply.header('Permissions-Policy','camera=(), microphone=(), geolocation=()');
   // Same-site sibling subdomains are NOT accepted. A cookie alone cannot
   // authorize state mutation across origins. Never grant permissive CORS.
   if(req.headers.origin!==origin||
      (req.headers['sec-fetch-site']&&req.headers['sec-fetch-site']!=='same-origin'))
    return reply.code(403).send({code:'guest_origin_denied'});
   if(req.method==='POST'&&req.headers['content-type']?.split(';')[0]?.trim().toLowerCase()!==
      'application/json')return reply.code(415).send({code:'guest_json_required'});
  });
  guest.setErrorHandler((error,_request,reply)=>{
   const code=(error as {code?:string;statusCode?:number}).code;
   const status=(error as {statusCode?:number}).statusCode;
   if(status&&[403,404,409,422,429].includes(status)&&code?.startsWith('guest_'))
    return reply.code(status).send({code});
   return reply.code(503).send({code:'guest_proof_unavailable'});
  });
  guest.post('/v1/status/guest/consent',async(req,reply)=>{
   if(!options.enabled())return reply.code(503).send({code:'guest_proof_disabled'});
   if(!exact(req.body,['consent'])||(req.body as {consent?:unknown}).consent!==true)
    return reply.code(422).send({code:'guest_explicit_consent_required'});
   const existing=options.signer.verify(extractCookie(req));
   if(existing){
    if(await options.port.revoked(existing.consentDigest)){
     reply.header('Set-Cookie',clearedCookie());
     return reply.code(403).send({code:'guest_consent_withdrawn'});
    }
    // Consent renewal creates no new identity and does not extend its life.
    return {consented:true,existing:true,qualified:false,payable:false};
   }
   const token=options.signer.issue();
   reply.header('Set-Cookie',consentCookie(token));
   return {consented:true,existing:false,qualified:false,payable:false};
  });
  guest.post('/v1/status/guest/challenges',async(req,reply)=>{
   if(!options.enabled())return reply.code(503).send({code:'guest_proof_disabled'});
   const actor=options.signer.verify(extractCookie(req));
   if(!actor)return reply.code(403).send({code:'guest_consent_required'});
   if(!exact(req.body,['postId'])&&!exact(req.body,['postId','referralToken']))
    return reply.code(422).send({code:'guest_proof_invalid'});
   const body=req.body as {postId:unknown;referralToken?:unknown};
   if(typeof body.postId!=='string'||!uuid.test(body.postId)||
      (body.referralToken!==undefined&&
       (typeof body.referralToken!=='string'||!referral.test(body.referralToken))))
    return reply.code(422).send({code:'guest_proof_invalid'});
   return options.port.begin(body.postId,actor,body.referralToken as string|undefined);
  });
  guest.post('/v1/status/guest/challenges/:id/complete',async(req,reply)=>{
   if(!options.enabled())return reply.code(503).send({code:'guest_proof_disabled'});
   const actor=options.signer.verify(extractCookie(req));
   if(!actor)return reply.code(403).send({code:'guest_consent_required'});
   const {id}=(req.params??{}) as {id?:unknown};
   if(typeof id!=='string'||!uuid.test(id)||
     !exact(req.body,['visibleFraction','foreground','engaged']))
    return reply.code(422).send({code:'guest_proof_invalid'});
   const body=req.body as Record<string,unknown>;
   if(typeof body.visibleFraction!=='number'||!Number.isFinite(body.visibleFraction)||
      typeof body.foreground!=='boolean'||typeof body.engaged!=='boolean')
    return reply.code(422).send({code:'guest_proof_invalid'});
   return options.port.complete(id,actor,{visibleFraction:body.visibleFraction,
    foreground:body.foreground,engaged:body.engaged});
  });
  // A previously issued consent can always be withdrawn, even after an
  // operator disables new evidence. Tombstones block replay until expiry.
  guest.delete('/v1/status/guest/consent',async(req,reply)=>{
   const actor=options.signer.verify(extractCookie(req));
   if(actor)await options.port.withdraw(actor.consentDigest);
   reply.header('Set-Cookie',clearedCookie());
   return {consented:false,withdrawn:true,payable:false,qualified:false};
  });
 });
}
