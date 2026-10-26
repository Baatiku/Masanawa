import {createHmac,timingSafeEqual} from 'node:crypto';
import type {GbCallActor,GbCallAdmission,GbWalletSnapshot} from '@masanawa/postgres';
import {parseCanonicalId} from '@masanawa/contracts';
import {availableForUse} from '../gb_wallet/usage.js';

export class GbCallReviewError extends Error {
  constructor(readonly code:string,readonly statusCode:number){super(code);}
}
export interface GbCallPorts {
  authorize(header:string|undefined):Promise<GbCallActor>;
  approved(actor:GbCallActor,characterId:string):Promise<{version:string}|null>;
  balance(actor:GbCallActor):Promise<GbWalletSnapshot|null>;
  journal:{
    admit(actor:GbCallActor,input:{characterId:string;budgetMb:number;idempotencyKey:string}):Promise<GbCallAdmission>;
    read(actor:GbCallActor,id:string):Promise<GbCallAdmission|null>;
    readOriginal(actor:GbCallActor,key:string):Promise<GbCallAdmission|null>;
  };
  /** Must be true only when the trusted relay and durable recovery are ready. */
  ready():boolean;
  reviewSecret:string;
  /** Ephemeral, admission-bound relay grant; never a direct provider token. */
  grant?(actor:GbCallActor,authorizationHeader:string|undefined,id:string):Promise<{
    token:string;websocketUrl:string;transport:'gateway_relay';model:string;
    voiceName:string;expiresAt:string;systemInstruction?:string;callId?:string;
  }>;
  finish?(actor:GbCallActor,id:string):Promise<GbCallAdmission>;
  now?:()=>Date;
}
interface Review {
  purpose:'masana-call-mb-v1';tenantId:string;userId:string;characterId:string;
  version:string;budgetMb:number;idempotencyKey:string;expiresAt:number;
}
const purpose='masana-call-mb-v1';
function fail(code:string,status=409):never {throw new GbCallReviewError('gb.call.'+code,status)}
const key=(value:unknown):value is string=>typeof value==='string'&&/^[A-Za-z0-9_-]{8,128}$/.test(value);
export function createGbCallReviewService(ports:GbCallPorts){
  if(typeof ports.reviewSecret!=='string'||Buffer.byteLength(ports.reviewSecret)<32)
    throw new TypeError('MB call review requires a server secret of at least 32 bytes');
  const now=ports.now??(()=>new Date());
  const mac=(payload:string)=>createHmac('sha256',ports.reviewSecret)
    .update(purpose+'\0'+payload).digest('base64url');
  const encode=(review:Review)=>{
    const payload=Buffer.from(JSON.stringify(review)).toString('base64url');
    return payload+'.'+mac(payload);
  };
  const verify=(actor:GbCallActor,token:string):Review=>{
    if(typeof token!=='string'||token.length>4096)fail('invalid_review',422);
    const parts=token.split('.');
    if(parts.length!==2||!/^[A-Za-z0-9_-]+$/.test(parts[0]??'')||
       !/^[A-Za-z0-9_-]{43}$/.test(parts[1]??''))fail('invalid_review',422);
    const expected=Buffer.from(mac(parts[0]!)),actual=Buffer.from(parts[1]!);
    if(expected.length!==actual.length||!timingSafeEqual(expected,actual))fail('invalid_review',422);
    let row:Review;
    try{row=JSON.parse(Buffer.from(parts[0]!,'base64url').toString('utf8')) as Review;}
    catch{fail('invalid_review',422);}
    if(!row||row.purpose!==purpose||row.tenantId!==actor.tenantId||row.userId!==actor.userId)
      fail('review_owner_mismatch',403);
    if(!key(row.idempotencyKey)||!Number.isSafeInteger(row.budgetMb)||row.budgetMb<1||row.budgetMb>3600||
       !Number.isSafeInteger(row.expiresAt)||typeof row.version!=='string'||!row.version||row.version.length>160)
      fail('invalid_review',422);
    try{parseCanonicalId('character',row.characterId);}catch{fail('invalid_review',422);}
    return row;
  };
  return {
    async review(actor:GbCallActor,input:{characterId:string;expectedSeconds:number;idempotencyKey:string}){
      if(!ports.ready())fail('unavailable',503);
      try{parseCanonicalId('character',input.characterId);}catch{fail('invalid_character',422);}
      if(!key(input.idempotencyKey)||!Number.isSafeInteger(input.expectedSeconds)||
         input.expectedSeconds<1||input.expectedSeconds>3600)fail('invalid_budget',422);
      const approved=await ports.approved(actor,input.characterId);
      if(!approved||!approved.version||approved.version.length>160)fail('masana_unavailable',404);
      const balance=await ports.balance(actor);
      if(!balance)fail('balance_unavailable',503);
      if(balance.frozen)fail('account_restricted',403);
      const budgetMb=Math.min(input.expectedSeconds,availableForUse({purchasedMb:balance.purchasedMb,welcomeMb:balance.welcomeMb,
        reservedPurchasedMb:balance.reservedPurchasedMb,reservedWelcomeMb:balance.reservedWelcomeMb},'connected_call'));
      if(budgetMb<1)fail('insufficient_mb');
      const review:Review={purpose,tenantId:actor.tenantId,userId:actor.userId,
        characterId:input.characterId,version:approved.version,budgetMb,
        idempotencyKey:input.idempotencyKey,expiresAt:now().getTime()+120000};
      return {characterId:input.characterId,budgetMb,maxConnectedSeconds:budgetMb,
        rateMbPerStartedSecond:1 as const,ringingCostMb:0 as const,
        expiresAt:new Date(review.expiresAt).toISOString(),reviewToken:encode(review)};
    },
    async confirm(actor:GbCallActor,input:{reviewToken:string;accepted:boolean}){
      if(input.accepted!==true)fail('acceptance_required',422);
      const review=verify(actor,input.reviewToken);
      const old=await ports.journal.readOriginal(actor,review.idempotencyKey);
      if(old){
        if(old.characterId!==review.characterId||old.budgetMb!==review.budgetMb)fail('idempotency_conflict');
        // A timeout/expired review recovers the original receipt, never another hold.
        if(old.state!=='pending'||review.expiresAt<=now().getTime())return old;
      }
      if(!ports.ready())fail('unavailable',503);
      if(review.expiresAt<=now().getTime())fail('review_expired');
      const approved=await ports.approved(actor,review.characterId);
      if(!approved||approved.version!==review.version)fail('stale_masana');
      return ports.journal.admit(actor,{characterId:review.characterId,
        budgetMb:review.budgetMb,idempotencyKey:review.idempotencyKey});
    },
    async read(actor:GbCallActor,id:string){
      const row=await ports.journal.read(actor,id);
      if(!row)fail('not_found',404);
      return row;
    },
  };
}
