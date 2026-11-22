import {createHmac,timingSafeEqual} from 'node:crypto';
import type {NgnCallActor,NgnCallAdmission,NgnSpendBalance} from '@masanawa/postgres';
import {parseCanonicalId} from '@masanawa/contracts';
import type {UsageBillingPolicy} from '@masanawa/postgres';


export class NgnCallReviewError extends Error {
  constructor(readonly code:string,readonly statusCode:number){super(code);}
}
export interface NgnCallPorts {
  authorize(header:string|undefined):Promise<NgnCallActor>;
  approved(actor:NgnCallActor,characterId:string):Promise<{version:string}|null>;
  balance(actor:NgnCallActor):Promise<NgnSpendBalance|null>;
  pricing?(actor:NgnCallActor):Promise<UsageBillingPolicy>;
  journal:{
    admit(actor:NgnCallActor,input:{characterId:string;budgetKobo:number;rateKoboPerStartedSecond:number;maxConnectedSeconds:number;idempotencyKey:string}):Promise<NgnCallAdmission>;
    read(actor:NgnCallActor,id:string):Promise<NgnCallAdmission|null>;
    readOriginal(actor:NgnCallActor,key:string):Promise<NgnCallAdmission|null>;
  };
  /** Must be true only when the trusted relay and durable recovery are ready. */
  ready():boolean;
  reviewSecret:string;
  /** Ephemeral, admission-bound relay grant; never a direct provider token. */
  grant?(actor:NgnCallActor,authorizationHeader:string|undefined,id:string):Promise<{
    token:string;websocketUrl:string;transport:'gateway_relay';model:string;
    voiceName:string;expiresAt:string;systemInstruction?:string;callId?:string;
  }>;
  finish?(actor:NgnCallActor,id:string):Promise<NgnCallAdmission>;
  now?:()=>Date;
}
interface Review {
  purpose:'masana-call-ngn-v1';tenantId:string;userId:string;characterId:string;
  version:string;budgetKobo:number;rateKoboPerStartedSecond:number;maxConnectedSeconds:number;idempotencyKey:string;expiresAt:number;
}
const purpose='masana-call-ngn-v1';
function fail(code:string,status=409):never {throw new NgnCallReviewError('ngn.call.'+code,status)}
const key=(value:unknown):value is string=>typeof value==='string'&&/^[A-Za-z0-9_-]{8,128}$/.test(value);
export function createNgnCallReviewService(ports:NgnCallPorts){
  if(typeof ports.reviewSecret!=='string'||Buffer.byteLength(ports.reviewSecret)<32)
    throw new TypeError('NGN call review requires a server secret of at least 32 bytes');
  const now=ports.now??(()=>new Date());
  const mac=(payload:string)=>createHmac('sha256',ports.reviewSecret)
    .update(purpose+'\0'+payload).digest('base64url');
  const encode=(review:Review)=>{
    const payload=Buffer.from(JSON.stringify(review)).toString('base64url');
    return payload+'.'+mac(payload);
  };
  const verify=(actor:NgnCallActor,token:string):Review=>{
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
    if(!key(row.idempotencyKey)||!Number.isSafeInteger(row.budgetKobo)||!Number.isSafeInteger(row.rateKoboPerStartedSecond)||row.rateKoboPerStartedSecond<0||
       row.rateKoboPerStartedSecond>100000||!Number.isSafeInteger(row.maxConnectedSeconds)||
       row.maxConnectedSeconds<1||row.maxConnectedSeconds>3600||
       row.budgetKobo!==row.maxConnectedSeconds*row.rateKoboPerStartedSecond||
       !Number.isSafeInteger(row.expiresAt)||typeof row.version!=='string'||!row.version||row.version.length>160)
      fail('invalid_review',422);
    try{parseCanonicalId('character',row.characterId);}catch{fail('invalid_review',422);}
    return row;
  };
  return {
    async review(actor:NgnCallActor,input:{characterId:string;expectedSeconds:number;idempotencyKey:string}){
      if(!ports.ready())fail('unavailable',503);
      try{parseCanonicalId('character',input.characterId);}catch{fail('invalid_character',422);}
      if(!key(input.idempotencyKey)||!Number.isSafeInteger(input.expectedSeconds)||
         input.expectedSeconds<1||input.expectedSeconds>3600)fail('invalid_budget',422);
      const approved=await ports.approved(actor,input.characterId);
      if(!approved||!approved.version||approved.version.length>160)fail('masana_unavailable',404);
      const billing=await ports.pricing?.(actor)??{billingEnabled:false,replyKobo:200,callKoboPerStartedSecond:100,revision:0};
      const rateKoboPerStartedSecond=billing.billingEnabled?billing.callKoboPerStartedSecond:0;
      let maxConnectedSeconds=input.expectedSeconds;
      if(rateKoboPerStartedSecond>0){
        const balance=await ports.balance(actor);
        if(!balance)fail('balance_unavailable',503);
        if(balance.frozen)fail('account_restricted',403);
        maxConnectedSeconds=Math.min(input.expectedSeconds,Math.floor(balance.availableKobo/rateKoboPerStartedSecond));
        if(maxConnectedSeconds<1)fail('insufficient_balance');
      }
      const budgetKobo=maxConnectedSeconds*rateKoboPerStartedSecond;
      const review:Review={purpose,tenantId:actor.tenantId,userId:actor.userId,
        characterId:input.characterId,version:approved.version,budgetKobo,rateKoboPerStartedSecond,maxConnectedSeconds,
        idempotencyKey:input.idempotencyKey,expiresAt:now().getTime()+120000};
      return {currency:'NGN' as const,characterId:input.characterId,budgetKobo,maxConnectedSeconds,
        rateKoboPerStartedSecond,ringingCostKobo:0 as const,
        expiresAt:new Date(review.expiresAt).toISOString(),reviewToken:encode(review)};
    },
    async confirm(actor:NgnCallActor,input:{reviewToken:string;accepted:boolean}){
      if(input.accepted!==true)fail('acceptance_required',422);
      const review=verify(actor,input.reviewToken);
      const old=await ports.journal.readOriginal(actor,review.idempotencyKey);
      if(old){
        if(old.characterId!==review.characterId||old.budgetKobo!==review.budgetKobo||
        old.rateKoboPerStartedSecond!==review.rateKoboPerStartedSecond||
        old.maxConnectedSeconds!==review.maxConnectedSeconds)fail('idempotency_conflict');
        // A timeout/expired review recovers the original receipt, never another hold.
        if(old.state!=='pending'||review.expiresAt<=now().getTime())return old;
      }
      if(!ports.ready())fail('unavailable',503);
      if(review.expiresAt<=now().getTime())fail('review_expired');
      const approved=await ports.approved(actor,review.characterId);
      if(!approved||approved.version!==review.version)fail('stale_masana');
      return ports.journal.admit(actor,{characterId:review.characterId,
        budgetKobo:review.budgetKobo,rateKoboPerStartedSecond:review.rateKoboPerStartedSecond,
        maxConnectedSeconds:review.maxConnectedSeconds,idempotencyKey:review.idempotencyKey});
    },
    async read(actor:NgnCallActor,id:string){
      const row=await ports.journal.read(actor,id);
      if(!row)fail('not_found',404);
      return row;
    },
    async readOriginal(actor:NgnCallActor,idempotencyKey:string){
      if(!key(idempotencyKey))fail('invalid_request',400);
      const row=await ports.journal.readOriginal(actor,idempotencyKey);
      if(!row)fail('not_found',404);
      return row;
    },
  };
}
