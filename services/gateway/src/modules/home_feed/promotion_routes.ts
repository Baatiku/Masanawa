import type {FastifyInstance,FastifyRequest} from 'fastify';
import {reviewedPromotionDestination} from '@masanawa/feed';

export interface PromotionPort {
 draft(t:string,owner:string,input:{body:string;targetViews:number;destinationUrl?:string;campaignExpiresAt?:string;mediaIds?:readonly string[];idempotencyKey:string}):Promise<unknown>;
 editDraft(t:string,owner:string,id:string,input:{body:string;targetViews:number;destinationUrl?:string;campaignExpiresAt?:string;mediaIds?:readonly string[];expectedVersion:number}):Promise<unknown>;
 myDrafts(t:string,owner:string):Promise<unknown>;
 discardDraft(t:string,owner:string,id:string):Promise<unknown>;
 quoteDraft(t:string,owner:string,id:string):Promise<unknown>;
 prepareImageUpload(t:string,owner:string,input:{sha256:string;bytes:number;altText:string;idempotencyKey:string;rightsConfirmed:boolean}):Promise<{mediaId:string;objectKey:string;ready:boolean}>;
 completeImageUpload(t:string,owner:string,id:string,sha256:string,bytes:number):Promise<{mediaId:string;state:string}>;
 reviewImage(t:string,editor:string,post:string,mediaId:string,approve:boolean,reason:string):Promise<unknown>;
 adminImagePreview(t:string,editor:string,post:string,mediaId:string):Promise<{objectKey:string;altText:string;reviewState:string}>;
 approvedImageObject(t:string,post:string,mediaId:string):Promise<{objectKey:string;altText:string}|null>;
 openDestination(t:string,viewer:string,post:string):Promise<unknown>;
 extensionQuote(t:string,sponsor:string,id:string,targetViews:number,key:string):Promise<unknown>;
 reportPost(t:string,reporter:string,post:string,reason:string):Promise<unknown>;
 adminReports(t:string,editor:string):Promise<unknown>;
 resolveReport(t:string,editor:string,id:string,remove:boolean,reason:string):Promise<unknown>;
 expireCampaigns(limit?:number):Promise<unknown>;
 quote(input:{tenantId:string;sponsorId:string;postId?:string;body?:string;destinationUrl?:string;mediaIds?:readonly string[];targetViews:number}):Promise<unknown>;
 confirm(t:string,s:string,qid:string,key:string):Promise<unknown>;
 receipt(t:string,s:string,id:string):Promise<unknown>;
 review(t:string,editor:string,id:string,approved:boolean,reason?:string,policy?:{
  category:'general'|'financial'|'health'|'political'|'employment'|'regulated_other';
  bodyChecked:true;rightsChecked:true;destinationChecked:boolean;
  clearanceReference?:string;evidenceNote:string}):Promise<unknown>;
 adminQueue(t:string,editor:string):Promise<unknown>;
 adminOverview(t:string,editor:string):Promise<unknown>;
 adminTakedown(t:string,editor:string,post:string,reason:string):Promise<unknown>;
 proposeEdit(t:string,owner:string,postId:string,input:{
  expectedRevision:number;body:string;destinationUrl?:string;mediaIds?:readonly string[];idempotencyKey:string
 }):Promise<unknown>;
 myEdits(t:string,owner:string):Promise<unknown>;
 adminEdits(t:string,editor:string):Promise<unknown>;
 reviewEdit(t:string,editor:string,id:string,approve:boolean,reason:string):Promise<unknown>;
 appeal(t:string,owner:string,campaignId:string,reason:string):Promise<unknown>;
 myAppeals(t:string,owner:string):Promise<unknown>;
 adminAppeals(t:string,editor:string):Promise<unknown>;
 resolveAppeal(t:string,editor:string,id:string,accept:boolean,reason:string):Promise<unknown>;
 cancel(t:string,s:string,id:string):Promise<unknown>;
 pause(t:string,s:string,id:string):Promise<unknown>;
 resume(t:string,s:string,id:string):Promise<unknown>;
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
 imageUpload?:(input:{tenantId:string;ownerId:string;imageBase64:string;altText:string;
  rightsConfirmed:boolean;idempotencyKey:string})=>Promise<unknown>;
 imagePreview?:(t:string,editor:string,post:string,mediaId:string)=>Promise<unknown>;
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

 // Drafts never reserve money. Quote and confirm remain kill-switch gated.
 const draftInput=(b:Record<string,unknown>)=>{
  fields(b,['body','targetViews','destinationUrl','campaignExpiresAt','mediaIds']);
  if(typeof b.body!=='string'||typeof b.targetViews!=='number'||
    !Number.isSafeInteger(b.targetViews)||b.targetViews<1||b.targetViews>1000000||
    (b.campaignExpiresAt!==undefined&&typeof b.campaignExpiresAt!=='string'))
   fail('invalid_campaign_draft');
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(b.destinationUrl);}
  catch{fail('invalid_promotion_destination');}
  const ids=b.mediaIds??[];
  if(!Array.isArray(ids)||ids.length>10||new Set(ids).size!==ids.length||
   ids.some(id=>typeof id!=='string'||!/^[0-9a-f]{8}-[0-9a-f-]{27,}$/i.test(id)))
   fail('invalid_paid_image_ids');
  return {body:b.body as string,targetViews:b.targetViews as number,
   ...((ids as string[]).length?{mediaIds:ids as string[]}:{}),
   ...(destinationUrl!==null?{destinationUrl}:{}),
   ...(typeof b.campaignExpiresAt==='string'?{campaignExpiresAt:b.campaignExpiresAt}:{})};
 };
 app.post('/v1/promotions/drafts',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r),data=draftInput(body(r));
  const key=r.headers['idempotency-key'];
  if(typeof key!=='string')fail('idempotency_key_required');
  return options.port.draft(p.tenantId,p.userId,{...data,idempotencyKey:key as string});
 });
 app.get('/v1/promotions/drafts/mine',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r);
  return options.port.myDrafts(p.tenantId,p.userId);
 });
 app.put('/v1/promotions/drafts/:draftId',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r),b=body(r);
  fields(b,['body','targetViews','destinationUrl','campaignExpiresAt','expectedVersion','mediaIds']);
  if(typeof b.expectedVersion!=='number'||!Number.isSafeInteger(b.expectedVersion)||
   b.expectedVersion<0)fail('invalid_campaign_draft');
  const {expectedVersion,...values}=b;
  return options.port.editDraft(p.tenantId,p.userId,params(r,'draftId'),
   {...draftInput(values),expectedVersion:expectedVersion as number});
 });
 app.post('/v1/promotions/drafts/:draftId/discard',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r);fields(body(r),[]);
  return options.port.discardDraft(p.tenantId,p.userId,params(r,'draftId'));
 });
 app.post('/v1/promotions/drafts/:draftId/quote',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await who(r);fields(body(r),[]);
  return options.port.quoteDraft(p.tenantId,p.userId,params(r,'draftId'));
 });

 app.post('/v1/promotions/images',{bodyLimit:8*1024*1024},async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await who(r),b=body(r);
  fields(b,['imageBase64','altText','rightsConfirmed']);
  const key=r.headers['idempotency-key'];
  if(!options.imageUpload)return fail('paid_image_store_unavailable',503);
  if(typeof key!=='string'||typeof b.imageBase64!=='string'||
   typeof b.altText!=='string'||b.rightsConfirmed!==true)
   fail('invalid_paid_image');
  return options.imageUpload({tenantId:p.tenantId,ownerId:p.userId,
   imageBase64:b.imageBase64 as string,altText:b.altText as string,
   rightsConfirmed:true,idempotencyKey:key as string});
 });
 app.post('/v1/admin/promotions/posts/:postId/images/:mediaId/review',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r),b=body(r);
  fields(b,['decision','reason']);
  if((b.decision!=='approve'&&b.decision!=='reject')||
   typeof b.reason!=='string'||b.reason.trim().length<5||b.reason.length>500)
   fail('invalid_paid_media_review');
  if(b.decision==='approve'&&!options.enabled())
   fail('status_financial_qualification_missing',503);
  return options.port.reviewImage(p.tenantId,p.userId,
   params(r,'postId'),params(r,'mediaId'),b.decision==='approve',b.reason as string);
 });
 app.get('/v1/admin/promotions/posts/:postId/images/:mediaId/preview',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r);
  if(!options.imagePreview)return fail('paid_image_store_unavailable',503);
  return options.imagePreview(p.tenantId,p.userId,params(r,'postId'),params(r,'mediaId'));
 });
 app.post('/v1/promotions/quotes',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r),b=body(r);
  fields(b,['postId','body','targetViews','destinationUrl','mediaIds']);
  if(typeof b.targetViews!=='number'||!Number.isSafeInteger(b.targetViews)||
    (b.postId!==undefined&&typeof b.postId!=='string')||
    (b.body!==undefined&&typeof b.body!=='string'))fail('invalid_quote');
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(b.destinationUrl);}catch{fail('invalid_promotion_destination');}
  if(b.postId!==undefined&&destinationUrl!==null)fail('boost_cannot_edit_post');
  const ids=b.mediaIds??[];
  if(!Array.isArray(ids)||ids.length>10||new Set(ids).size!==ids.length||
    ids.some(id=>typeof id!=='string'||!/^[0-9a-f]{8}-[0-9a-f-]{27,}$/i.test(id)))
   fail('invalid_paid_image_ids');
  return options.port.quote({tenantId:p.tenantId,sponsorId:p.userId,
   targetViews:b.targetViews as number,
   ...(typeof b.postId==='string'?{postId:b.postId}:{}),
   ...(typeof b.body==='string'?{body:b.body}:{}),
   ...(destinationUrl!==null?{destinationUrl}:{}),
   ...((ids as string[]).length?{mediaIds:ids as string[]}:{}),});
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


 app.post('/v1/promotions/posts/:postId/revisions',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await who(r),b=body(r);
  fields(b,['expectedRevision','body','destinationUrl','mediaIds']);
  if(typeof b.body!=='string'||typeof b.expectedRevision!=='number'||
    !Number.isSafeInteger(b.expectedRevision)||b.expectedRevision<0)
   fail('invalid_edit');
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(b.destinationUrl);}
  catch{fail('invalid_promotion_destination');}
  const ids=b.mediaIds??null;
  if(ids!==null&&(!Array.isArray(ids)||ids.length>10||new Set(ids).size!==ids.length||
   ids.some(id=>typeof id!=='string'||!/^[0-9a-f]{8}-[0-9a-f-]{27,}$/i.test(id))))
    fail('invalid_paid_image_ids');
  const key=r.headers['idempotency-key'];
  if(typeof key!=='string')fail('idempotency_key_required');
  return options.port.proposeEdit(p.tenantId,p.userId,params(r,'postId'),{
   body:b.body as string,expectedRevision:b.expectedRevision as number,
   idempotencyKey:key as string,...(destinationUrl!==null?{destinationUrl}:{}),
   ...(ids!==null?{mediaIds:ids as string[]}:{}),});
 });
 app.get('/v1/promotions/revisions/mine',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r);
  return options.port.myEdits(p.tenantId,p.userId);
 });
 app.get('/v1/admin/promotions/revisions',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r);
  return options.port.adminEdits(p.tenantId,p.userId);
 });
 app.post('/v1/admin/promotions/revisions/:revisionId/review',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r),b=body(r);
  fields(b,['decision','reason']);
  if((b.decision!=='approve'&&b.decision!=='reject')||
    typeof b.reason!=='string'||b.reason.trim().length<5||b.reason.length>500)
   fail('invalid_edit_review');
  if(b.decision==='approve'&&!options.enabled())
   fail('status_financial_qualification_missing',503);
  return options.port.reviewEdit(p.tenantId,p.userId,params(r,'revisionId'),
   b.decision==='approve',b.reason as string);
 });
 app.post('/v1/promotions/:campaignId/appeal',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  // OFF-state historical safety and appeal readback remains usable.
  const p=await options.principal(r),b=body(r);
  fields(b,['reason']);
  if(typeof b.reason!=='string'||b.reason.trim().length<10||b.reason.length>500)
   fail('invalid_appeal_reason');
  return options.port.appeal(p.tenantId,p.userId,params(r,'campaignId'),b.reason as string);
 });
 app.get('/v1/promotions/appeals/mine',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r);
  return options.port.myAppeals(p.tenantId,p.userId);
 });
 app.get('/v1/admin/promotions/appeals',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r);
  return options.port.adminAppeals(p.tenantId,p.userId);
 });
 app.post('/v1/admin/promotions/appeals/:appealId/resolve',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r),b=body(r);
  fields(b,['decision','reason']);
  if((b.decision!=='accept'&&b.decision!=='deny')||
    typeof b.reason!=='string'||b.reason.trim().length<5||b.reason.length>500)
   fail('invalid_appeal_resolution');
  return options.port.resolveAppeal(p.tenantId,p.userId,
   params(r,'appealId'),b.decision==='accept',b.reason as string);
 });

 app.post('/v1/promotions/:campaignId/extension-quotes',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await who(r),b=body(r);
  fields(b,['targetViews']);
  const key=r.headers['idempotency-key'];
  if(typeof b.targetViews!=='number'||!Number.isSafeInteger(b.targetViews)||
   b.targetViews<1||b.targetViews>1000000||typeof key!=='string')
   fail('invalid_extension');
  return options.port.extensionQuote(p.tenantId,p.userId,
   params(r,'campaignId'),b.targetViews as number,key as string);
 });
 app.post('/v1/posts/:postId/report',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await options.principal(r),b=body(r);
  fields(b,['reason']);
  if(typeof b.reason!=='string'||b.reason.trim().length<10||b.reason.length>500)
    fail('invalid_report_reason');
  return options.port.reportPost(p.tenantId,p.userId,params(r,'postId'),b.reason as string);
 });
 app.get('/v1/admin/promotions/reports',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r);
  return options.port.adminReports(p.tenantId,p.userId);
 });
 app.post('/v1/admin/promotions/reports/:reportId/resolve',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r),b=body(r);
  fields(b,['decision','reason']);
  if(!['remove','dismiss'].includes(String(b.decision))||
    typeof b.reason!=='string'||b.reason.trim().length<5||b.reason.length>500)
    fail('invalid_report_resolution');
  return options.port.resolveReport(p.tenantId,p.userId,
   params(r,'reportId'),b.decision==='remove',b.reason as string);
 });
 app.post('/v1/admin/promotions/posts/:postId/images/:mediaId/revoke',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await admin(r),b=body(r);
  fields(b,['reason']);
  if(typeof b.reason!=='string'||b.reason.trim().length<5||b.reason.length>500)
    fail('invalid_media_revocation');
  // The conservative safety response revokes every charge and link of the
  // parent paid post, not just the browser's revoked image.
  return options.port.adminTakedown(p.tenantId,p.userId,
   params(r,'postId'),b.reason as string);
 });
 app.post('/v1/promotions/:campaignId/cancel',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);fields(body(r),[]);
  return options.port.cancel(p.tenantId,p.userId,params(r,'campaignId'));
 });
 app.post('/v1/promotions/:campaignId/pause',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);
  fields(body(r),[]);return options.port.pause(p.tenantId,p.userId,params(r,'campaignId'));
 });
 app.post('/v1/promotions/:campaignId/resume',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await who(r);
  fields(body(r),[]);return options.port.resume(p.tenantId,p.userId,params(r,'campaignId'));
 });
 app.post('/v1/promotions/posts/:postId/delete',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await options.principal(r);fields(body(r),[]);
  return options.port.deleteOwnPost(p.tenantId,p.userId,params(r,'postId'));
 });
 app.get('/v1/posts/:postId/destination',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');
  const p=await who(r);
  return options.port.openDestination(p.tenantId,p.userId,params(r,'postId'));
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
  fields(b,['decision','reason','policy']);if(b.decision!=='approve'&&b.decision!=='reject')fail('invalid_review');
  if(b.decision==='approve'&&!options.enabled())fail('status_financial_qualification_missing',503);
  if(b.reason!==undefined&&typeof b.reason!=='string')fail('invalid_review_reason');
  if(b.decision==='reject'&&(typeof b.reason!=='string'||!b.reason.trim()))fail('review_reason_required');
  let policy:undefined|{
   category:'general'|'financial'|'health'|'political'|'employment'|'regulated_other';
   bodyChecked:true;rightsChecked:true;destinationChecked:boolean;
   clearanceReference?:string;evidenceNote:string};
  if(b.decision==='approve'){
   const x=b.policy;
   if(!x||typeof x!=='object'||Array.isArray(x))fail('advertising_policy_review_required');
   const v=x as Record<string,unknown>;
   if(Object.keys(v).some(k=>!['category','bodyChecked','rightsChecked',
    'destinationChecked','clearanceReference','evidenceNote'].includes(k))||
    !['general','financial','health','political','employment','regulated_other'].includes(String(v.category))||
    v.bodyChecked!==true||v.rightsChecked!==true||typeof v.destinationChecked!=='boolean'||
    typeof v.evidenceNote!=='string'||v.evidenceNote.trim().length<10||
    v.evidenceNote.trim().length>500||
    (v.clearanceReference!==undefined&&typeof v.clearanceReference!=='string')||
    (v.category!=='general'&&
     (typeof v.clearanceReference!=='string'||v.clearanceReference.trim().length<6)))
    fail('invalid_advertising_policy_evidence');
   policy={category:v.category as NonNullable<typeof policy>['category'],
    bodyChecked:true,rightsChecked:true,destinationChecked:v.destinationChecked as boolean,
    evidenceNote:v.evidenceNote as string,
    ...(typeof v.clearanceReference==='string'?{clearanceReference:v.clearanceReference}:{})};
  }else if(b.policy!==undefined)fail('invalid_review');
  return policy
   ?options.port.review(p.tenantId,p.userId,params(r,'campaignId'),true,
     b.reason as string|undefined,policy)
   :options.port.review(p.tenantId,p.userId,params(r,'campaignId'),false,
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
