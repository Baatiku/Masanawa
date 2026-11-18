import { createHmac, randomBytes, timingSafeEqual } from "node:crypto";
import type { GbTipReceipt, GbTipRequest, GbWalletSnapshot } from "@masanawa/postgres";

/** An explicit, post-bound tip is never a generic human transfer. Only
 * purchased MB may fund it; the Masana account has no withdrawal route. */
export interface StatusTipActor { readonly tenantId:string; readonly userId:string }
export interface StatusTipTarget {
  readonly postId:string; readonly characterId:string; readonly displayName:string;
}
export interface StatusTipPorts {
  readonly authorize:(header:string|undefined)=>Promise<StatusTipActor>;
  /** Return only currently published posts by approved platform Masana. */
  readonly post:(actor:StatusTipActor,postId:string)=>Promise<StatusTipTarget|null>;
  readonly balance:(actor:StatusTipActor)=>Promise<GbWalletSnapshot|null>;
  readonly tip:(input:GbTipRequest)=>Promise<GbTipReceipt>;
  readonly readTip:(actor:StatusTipActor,operationId:string)=>Promise<GbTipReceipt|null>;
  readonly reviewSecret:string;
  readonly now?:()=>Date;
  readonly nonce?:()=>string;
}
export class StatusTipError extends Error {
  constructor(readonly status:400|401|403|404|409|410|422|503,
    readonly code:string){super(code);this.name="StatusTipError";}
}
type TipReview={
  kind:"status-tip-v1"; tenantId:string;actorId:string;
  postId:string;characterId:string;amountMb:number;nonce:string;expiresAt:string;
};
const validAccount=(s:string)=>/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(s);
const validPost=(s:string)=>/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(s);
const validNonce=(s:string)=>/^[A-Za-z0-9_-]{22,128}$/.test(s);
const amount=(mb:number)=>{
  if(!Number.isSafeInteger(mb)||mb<1||mb>1_000_000_000)
    throw new StatusTipError(422,"invalid_tip_mb");
  return mb;
};
function checkActor(actor:StatusTipActor){
  if(!actor||!validAccount(actor.tenantId)||!validAccount(actor.userId))
    throw new StatusTipError(401,"unauthorized");
}
function target(p:StatusTipTarget|null,postId:string):StatusTipTarget{
  if(!p||p.postId!==postId||!validAccount(p.characterId)||
    typeof p.displayName!=="string"||!p.displayName.trim())
    throw new StatusTipError(404,"tip_post_unavailable");
  return p;
}
export function createStatusTipService(ports:StatusTipPorts){
  if(!ports.reviewSecret||Buffer.byteLength(ports.reviewSecret,"utf8")<32)
    throw new TypeError("Status tips require a server-only review key");
  const now=ports.now??(()=>new Date());
  const nonce=ports.nonce??(()=>randomBytes(24).toString("base64url"));
  const mac=(data:string)=>createHmac("sha256",ports.reviewSecret)
    .update("status-tip-v1:").update(data).digest("base64url");
  function issue(review:TipReview){
    const payload=Buffer.from(JSON.stringify(review)).toString("base64url");
    return payload+"."+mac(payload);
  }
  function verify(token:string,actor:StatusTipActor):TipReview{
    if(typeof token!=="string"||token.length>4096)
      throw new StatusTipError(422,"invalid_tip_review");
    const [encoded,signature,...rest]=token.split(".");
    if(rest.length!==0||!encoded||!signature||
      !/^[A-Za-z0-9_-]+$/.test(encoded)||!/^[A-Za-z0-9_-]{43}$/.test(signature))
      throw new StatusTipError(422,"invalid_tip_review");
    const expected=Buffer.from(mac(encoded));
    const actual=Buffer.from(signature);
    if(expected.length!==actual.length||!timingSafeEqual(expected,actual))
      throw new StatusTipError(403,"invalid_tip_signature");
    let parsed:unknown;
    try{parsed=JSON.parse(Buffer.from(encoded,"base64url").toString("utf8"));}catch{
      throw new StatusTipError(422,"invalid_tip_review");
    }
    if(!parsed||typeof parsed!=="object"||Array.isArray(parsed))
      throw new StatusTipError(422,"invalid_tip_review");
    const p=parsed as Partial<TipReview>;
    if(p.kind!=="status-tip-v1"||p.tenantId!==actor.tenantId||
      p.actorId!==actor.userId||typeof p.postId!=="string"||
      !validPost(p.postId)||typeof p.characterId!=="string"||
      !validAccount(p.characterId)||typeof p.nonce!=="string"||
      !validNonce(p.nonce)||typeof p.amountMb!=="number"||
      !Number.isSafeInteger(p.amountMb)||p.amountMb<1||
      p.amountMb>1_000_000_000||typeof p.expiresAt!=="string"||
      !Number.isFinite(Date.parse(p.expiresAt)))
      throw new StatusTipError(403,"tip_review_owner_mismatch");
    if(Date.parse(p.expiresAt)<=now().getTime())
      throw new StatusTipError(410,"tip_review_expired");
    return p as TipReview;
  }
  return {
    async review(actor:StatusTipActor,postId:string,amountMb:number){
      checkActor(actor);
      if(typeof postId!=="string"||!validPost(postId))
        throw new StatusTipError(422,"invalid_tip_post");
      const mb=amount(amountMb);
      const post=target(await ports.post(actor,postId),postId);
      const wallet=await ports.balance(actor);
      if(!wallet||wallet.frozen)
        throw new StatusTipError(503,"tip_wallet_unavailable");
      if(wallet.purchasedMb-wallet.reservedPurchasedMb<mb)
        throw new StatusTipError(409,"insufficient_purchased_mb");
      const key=nonce();
      if(!validNonce(key))throw new TypeError("Invalid tip nonce");
      const expiresAt=new Date(now().getTime()+5*60_000).toISOString();
      const signed:TipReview={kind:"status-tip-v1",tenantId:actor.tenantId,
        actorId:actor.userId,postId,characterId:post.characterId,
        amountMb:mb,nonce:key,expiresAt};
      return {postId,characterId:post.characterId,displayName:post.displayName,
        amountMb:mb,feeMb:0,operationId:"tip_"+key,reviewToken:issue(signed),
        expiresAt,requiresConfirmation:true as const};
    },
    async confirm(actor:StatusTipActor,token:string){
      checkActor(actor);
      const signed=verify(token,actor);
      const operationId="tip_"+signed.nonce;
      // Receipt readback before a visibility recheck permits idempotent
      // success after post takedown, without making another payment.
      const original=await ports.readTip(actor,operationId);
      if(original){
        if(original.postId!==signed.postId||
          original.characterId!==signed.characterId||
          original.amountMb!==signed.amountMb)
          throw new StatusTipError(409,"tip_receipt_mismatch");
        return original;
      }
      const current=target(await ports.post(actor,signed.postId),signed.postId);
      if(current.characterId!==signed.characterId)
        throw new StatusTipError(409,"tip_post_changed");
      return ports.tip({tenantId:actor.tenantId,userId:actor.userId,
        postId:signed.postId,characterId:signed.characterId,
        amountMb:signed.amountMb,operationId,idempotencyKey:operationId});
    },
  };
}
