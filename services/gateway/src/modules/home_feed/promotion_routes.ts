import type {FastifyInstance,FastifyRequest} from 'fastify';

export interface PromotionPort {
 quote(input:{tenantId:string;sponsorId:string;postId?:string;body?:string;targetViews:number}):Promise<unknown>;
 confirm(t:string,s:string,qid:string,key:string):Promise<unknown>;
 receipt(t:string,s:string,id:string):Promise<unknown>;
 review(t:string,editor:string,id:string,approved:boolean,reason?:string):Promise<unknown>;
 adminQueue(t:string,editor:string):Promise<unknown>;
 adminOverview(t:string,editor:string):Promise<unknown>;
 adminTakedown(t:string,editor:string,post:string,reason:string):Promise<unknown>;
 cancel(t:string,s:string,id:string):Promise<unknown>;
 share(t:string,sharer:string,post:string):Promise<unknown>;
 beginView(t:string,viewer:string,post:string,referral?:string):Promise<unknown>;
 finishView(t:string,viewer:string,id:string,report:{visibleFraction:number;foreground:boolean;engaged:boolean}):Promise<unknown>;
 mine(t:string,u:string):Promise<unknown>;
 deleteOwnPost(t:string,u:string,post:string):Promise<unknown>;
 purgeExpired(limit?:number):Promise<unknown>;
}
type Principal={tenantId:string;userId:string};
const fail=(code:string,status=422):never=>{throw Object.assign(new Error(code),{status,statusCode:status,code});};
const body=(r:FastifyRequest)=>r.body!==null&&typeof r.body==='object'&&!Array.isArray(r.body)
 ?r.body as Record<string,unknown>:{};
const params=(r:FastifyRequest,name:string)=>String((r.params as Record<string,unknown>)[name]??'');
const fields=(r:Record<string,unknown>,allowed:readonly string[])=>{
 if(Object.keys(r).some(x=>!allowed.includes(x)))fail('unexpected_field');
};

/** Routes inherit the existing session scope. No body-supplied payer, tenant,
 * principal, balance, review capability or trusted view count is accepted. */
export async function registerPromotionRoutes(app:FastifyInstance,options:{
 port:PromotionPort;principal:(r:FastifyRequest)=>Promise<Principal>;
 isEditor:(p:Principal)=>Promise<boolean>;enabled:()=>boolean;
}){
 // Client capability discovery is intentionally safe when the financial
 // engine is disabled. Do not advertise a purchasable campaign until all
 // source/provider/privacy qualifications have been explicitly released.
 app.get('/v1/promotions/capabilities',async(_r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  return {enabled:options.enabled(),priceMbPerQualifiedView:1,
   pendingCommissionHalfMbPerReferredView:1};
 });
 const who=async(r:FastifyRequest)=>{
  if(!options.enabled())fail('status_financial_qualification_missing',503);
  return options.principal(r);
 };
 const admin=async(r:FastifyRequest)=>{
  // Safety response, moderation, refunds and immutable receipts must remain
  // available even when new spending and paid views are switched OFF.
  const p=await options.principal(r);
  if(!await options.isEditor(p))fail('editorial_permission_denied',403);
  return p;
 };
 app.post('/v1/promotions/quotes',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r),b=body(r);
  fields(b,['postId','body','targetViews']);
  if(typeof b.targetViews!=='number'||!Number.isSafeInteger(b.targetViews)||
    (b.postId!==undefined&&typeof b.postId!=='string')||
    (b.body!==undefined&&typeof b.body!=='string'))fail('invalid_quote');
  return options.port.quote({tenantId:p.tenantId,sponsorId:p.userId,
   targetViews:b.targetViews as number,
   ...(typeof b.postId==='string'?{postId:b.postId}:{}),
   ...(typeof b.body==='string'?{body:b.body}:{})});
 });
 app.post('/v1/promotions/quotes/:quoteId/confirm',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r);
  fields(body(r),[]);const key=r.headers['idempotency-key'];
  if(typeof key!=='string')fail('idempotency_key_required');
  return options.port.confirm(p.tenantId,p.userId,params(r,'quoteId'),key as string);
 });
 app.get('/v1/promotions/quotes/:quoteId/receipt',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);
  return options.port.receipt(p.tenantId,p.userId,params(r,'quoteId'));
 });
 app.get('/v1/promotions/mine',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);
  return options.port.mine(p.tenantId,p.userId);
 });
 app.post('/v1/promotions/:campaignId/cancel',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);fields(body(r),[]);
  return options.port.cancel(p.tenantId,p.userId,params(r,'campaignId'));
 });
 app.post('/v1/promotions/posts/:postId/delete',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);fields(body(r),[]);
  return options.port.deleteOwnPost(p.tenantId,p.userId,params(r,'postId'));
 });
 app.post('/v1/posts/:postId/share-link',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r);fields(body(r),[]);
  return options.port.share(p.tenantId,p.userId,params(r,'postId'));
 });
 app.post('/v1/posts/:postId/view-challenges',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r),b=body(r);
  fields(b,['referral']);if(b.referral!==undefined&&typeof b.referral!=='string')fail('invalid_referral');
  return options.port.beginView(p.tenantId,p.userId,params(r,'postId'),b.referral as string|undefined);
 });
 app.post('/v1/views/:challengeId/qualify',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r),b=body(r);
  fields(b,['visibleFraction','foreground','engaged']);
  if(typeof b.visibleFraction!=='number'||typeof b.foreground!=='boolean'||
    typeof b.engaged!=='boolean')fail('invalid_visibility_report');
  return options.port.finishView(p.tenantId,p.userId,params(r,'challengeId'),{
   visibleFraction:b.visibleFraction as number,foreground:b.foreground as boolean,
   engaged:b.engaged as boolean});
 });
 app.post('/v1/admin/promotions/:campaignId/review',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await admin(r),b=body(r);
  fields(b,['decision','reason']);if(b.decision!=='approve'&&b.decision!=='reject')fail('invalid_review');
  if(b.decision==='approve'&&!options.enabled())fail('status_financial_qualification_missing',503);
  if(b.reason!==undefined&&typeof b.reason!=='string')fail('invalid_review_reason');
  if(b.decision==='reject'&&(typeof b.reason!=='string'||!b.reason.trim()))fail('review_reason_required');
  return options.port.review(p.tenantId,p.userId,params(r,'campaignId'),b.decision==='approve',
   b.reason as string|undefined);
 });
 app.get('/v1/admin/promotions/review',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await admin(r);
  return options.port.adminQueue(p.tenantId,p.userId);
 });
 app.get('/v1/admin/promotions/overview',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await admin(r);
  return options.port.adminOverview(p.tenantId,p.userId);
 });
 app.post('/v1/admin/promotions/posts/:postId/takedown',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await admin(r),b=body(r);
  fields(b,['reason']);if(typeof b.reason!=='string'||!b.reason.trim())fail('review_reason_required');
  return options.port.adminTakedown(p.tenantId,p.userId,params(r,'postId'),b.reason as string);
 });
 app.post('/v1/admin/promotions/purge-expired',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');await admin(r);fields(body(r),[]);
  return options.port.purgeExpired();
 });
}
