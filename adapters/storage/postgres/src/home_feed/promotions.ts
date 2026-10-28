import {createHash,createHmac,randomBytes} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';
import {reviewedPromotionDestination} from '@masanawa/feed';

type Row=Record<string,unknown>;
export class PromotionError extends Error {
 readonly statusCode:number;
 constructor(readonly status:number,readonly code:string){super(code);this.statusCode=status;}
}
const fail=(code:string,status=422):never=>{throw new PromotionError(status,code);};
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const principal=/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/;
const keyPattern=/^[A-Za-z0-9][A-Za-z0-9:_-]{7,127}$/;
const hash=(s:string)=>createHash('sha256').update(s).digest('hex');
function reviewReason(reason:string|undefined,required:boolean){
 const value=reason?.trim()??'';
 if((required&&!value)||value.length>500)fail('invalid_review_reason');
 return value;
}
const count=(v:unknown)=>{const n=Number(v);if(!Number.isSafeInteger(n)||n<0)throw Error('corrupt_promotion_balance');return n;};
/** Each payable view consumes exactly one purchased MB. Keep allocation in
 * integer half-MB units so odd referrals retain their fractional liability
 * across campaigns without floating-point rounding or per-campaign truncation. */
export function qualifiedViewAllocation(hasEligibleSharer:boolean){
 return hasEligibleSharer?
  {platformHalfMb:1 as const,sharerHalfMb:1 as const}:
  {platformHalfMb:2 as const,sharerHalfMb:0 as const};
}
function actor(t:string,u:string){if(!principal.test(t)||!principal.test(u))fail('invalid_actor');}
function identifier(id:string){if(!uuid.test(id))fail('invalid_identifier');}
function campaign(r:Row){
 const state=String(r.state),remaining=count(r.remaining_views),delivered=count(r.delivered_views);
 return {id:String(r.id),quoteId:String(r.quote_id),postId:String(r.post_id),
  kind:String(r.kind),state,targetViews:count(r.target_views),
  remainingViews:remaining,deliveredViews:delivered,
  directViews:count(r.direct_views),referredViews:count(r.referred_views),
  spentMb:delivered,
  // Ended campaigns retain immutable target/delivery maths in their rows;
  // unused views have already been released from the sponsor reservation.
  reservedMb:['active','pending_review','paused'].includes(state)?remaining:0,
  refundedUnusedMb:['cancelled','rejected','expired'].includes(state)?remaining:0,
  ...(typeof r.review_reason==='string'&&r.review_reason?
    {reviewReason:r.review_reason}:{}),
  priceVersion:String(r.price_version),expiresAt:r.expires_at??null};
}
async function serial<T>(pool:Pool,fn:(c:PoolClient)=>Promise<T>):Promise<T>{
 for(let i=0;i<4;i++)try{return await withTransaction(pool,fn,{isolation:'serializable'});}
 catch(e){if(!['40001','40P01'].includes(String((e as {code?:unknown}).code))||i===3)throw e;}
 throw Error('promotion_serialization_retry_exhausted');
}

/** Funded purchased-MB accounting, never welcome MB. Live activation must
 * remain separately disabled until fraud, media and provider qualification. */
export class PgStatusPromotions {
 constructor(private readonly pool:Pool,private readonly secret:string,
  private readonly publicBaseUrl:string){
  if(Buffer.byteLength(secret)<32)throw Error('promotion_secret_required');
  const url=new URL(publicBaseUrl);
  if(url.protocol!=='https:'||url.username||url.password)throw Error('promotion_https_required');
 }
 private digest(t:string,u:string){return createHmac('sha256',this.secret).update(`${t}\0${u}`).digest('hex');}
 private audit(c:PoolClient,t:string,p:string,who:string,action:string,id:string|null=null,details:object={}){
  return c.query(`INSERT INTO feed.promotion_audit(tenant_id,post_id,actor_id,action,campaign_id,details)
   VALUES($1,$2,$3,$4,$5,$6::jsonb)`,[t,p,who,action,id,JSON.stringify(details)]);
 }
 private async refund(c:PoolClient,t:string,p:Row){
  const rest=count(p.remaining_views);if(!rest)return;
  const r=await c.query(`UPDATE gb_wallet.accounts SET reserved_purchased_mb=reserved_purchased_mb-$3,
   version=version+1 WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2
   AND reserved_purchased_mb>=$3 RETURNING account_id`,[t,p.sponsor_id,rest]);
  if(!r.rowCount)throw Error('promotion_reservation_invariant');
 }
 private disable(c:PoolClient,t:string,post:string){return c.query(`UPDATE feed.posts
  SET state='hidden',paid_disabled_at=statement_timestamp(),
  paid_purge_at=statement_timestamp()+interval '72 hours'
  WHERE tenant_id=$1 AND id=$2 AND author_type='human'
   AND state IN ('published','hidden') AND paid_disabled_at IS NULL
   AND paid_purged_at IS NULL
   AND NOT EXISTS(SELECT 1 FROM feed.promotion_campaigns x WHERE x.tenant_id=$1 AND x.post_id=$2
    AND x.state='active' AND x.remaining_views>0)
  RETURNING paid_purge_at`,[t,post]);}

 /** Enqueue deletion before references are scrubbed in the same transaction.
  * Objects stay private and inaccessible while storage cleanup retries. */
 private enqueueMediaDeletion(c:PoolClient,t:string,post:string){
  return c.query(`INSERT INTO feed.paid_media_deletion_outbox
    (tenant_id,post_id,media_id,object_key)
   SELECT tenant_id,post_id,media_id,object_key FROM feed.paid_post_media_objects
    WHERE tenant_id=$1 AND post_id=$2
   ON CONFLICT (tenant_id,post_id,media_id) DO NOTHING`,[t,post]);
 }


 /** A draft is private, retryable, and never reserves or consumes purchased MB. */

 /** Reserve server-generated private object key before S3 upload. The key
  * never appears in an authenticated owner's API response. */
 async prepareImageUpload(t:string,owner:string,input:{sha256:string;bytes:number;
  altText:string;idempotencyKey:string;rightsConfirmed:boolean}){
  actor(t,owner);
  if(!keyPattern.test(input.idempotencyKey)||!input.rightsConfirmed||
   !/^[0-9a-f]{64}$/.test(input.sha256)||!Number.isSafeInteger(input.bytes)||
   input.bytes<1||input.bytes>1048576||typeof input.altText!=='string'||
   input.altText.trim().length<5||input.altText.trim().length>280)
   fail('invalid_paid_image');
  return serial(this.pool,async c=>{
   const existing=await c.query(`SELECT * FROM feed.paid_image_uploads WHERE
    tenant_id=$1 AND owner_id=$2 AND idempotency_key=$3 FOR UPDATE`,
    [t,owner,input.idempotencyKey]);
   if(existing.rows[0]){
    const row=existing.rows[0];
    if(row.request_sha256!==input.sha256||Number(row.bytes)!==input.bytes||
     row.alt_text!==input.altText.trim())fail('idempotency_conflict',409);
    if(row.state==='rejected')fail('image_rejected',409);
    return {mediaId:String(row.id),objectKey:String(row.object_key),ready:row.state==='ready'};
   }
   const ownerDigest=hash(t+'\0'+owner);
   const objectKey='status-paid/'+ownerDigest.slice(0,20)+'/'+randomBytes(16).toString('hex')+'.webp';
   const added=await c.query(`INSERT INTO feed.paid_image_uploads
    (tenant_id,owner_id,idempotency_key,request_sha256,object_key,bytes,rights_confirmed,alt_text)
    VALUES($1,$2,$3,$4,$5,$6,true,$7) RETURNING id`,
    [t,owner,input.idempotencyKey,input.sha256,objectKey,input.bytes,input.altText.trim()]);
   return {mediaId:String(added.rows[0]!.id),objectKey,ready:false};
  });
 }
 async completeImageUpload(t:string,owner:string,id:string,sha256:string,bytes:number){
  actor(t,owner);identifier(id);
  const r=await this.pool.query(`UPDATE feed.paid_image_uploads
   SET state='ready',uploaded_at=statement_timestamp()
   WHERE tenant_id=$1 AND owner_id=$2 AND id=$3 AND request_sha256=$4
    AND bytes=$5 AND state='staging' RETURNING id`,[t,owner,id,sha256,bytes]);
  if(!r.rowCount){
   const ready=await this.pool.query(`SELECT 1 FROM feed.paid_image_uploads
    WHERE tenant_id=$1 AND owner_id=$2 AND id=$3 AND request_sha256=$4
     AND bytes=$5 AND state='ready'`,[t,owner,id,sha256,bytes]);
   if(!ready.rowCount)fail('image_upload_not_owned',404);
  }
  return {mediaId:id,state:'ready'};
 }
 async reviewImage(t:string,editor:string,post:string,mediaId:string,approve:boolean,reason:string){
  actor(t,editor);identifier(post);identifier(mediaId);
  const rationale=reviewReason(reason,true);if(rationale.length<5)fail('invalid_media_review_reason');
  return serial(this.pool,async c=>{
   const original=await c.query(`SELECT p.author_user_id,p.state,u.owner_id,u.state AS upload_state,
    o.review_state FROM feed.posts p
    JOIN feed.paid_post_media_objects o ON o.tenant_id=p.tenant_id AND o.post_id=p.id
    JOIN feed.paid_image_uploads u ON u.tenant_id=o.tenant_id AND u.id=o.media_id
    WHERE p.tenant_id=$1 AND p.id=$2 AND p.author_type='human'
     AND o.media_id=$3 FOR UPDATE OF p,o`,[t,post,mediaId]);
   const x=original.rows[0];
   if(!x)fail('paid_media_not_found',404);
   if(x.author_user_id===editor||x.owner_id===editor)fail('separate_reviewer_required',403);
   if(x.upload_state!=='ready'||x.review_state!=='pending')fail('paid_media_not_pending',409);
   await c.query(`UPDATE feed.paid_post_media_objects SET review_state=$4,
    reviewed_by=$5,reviewed_at=statement_timestamp(),review_reason=$6
    WHERE tenant_id=$1 AND post_id=$2 AND media_id=$3`,
    [t,post,mediaId,approve?'approved':'rejected',editor,rationale]);
   if(!approve){
    await c.query(`UPDATE feed.paid_image_uploads SET state='rejected'
      WHERE tenant_id=$1 AND id=$2`,[t,mediaId]);
    await this.enqueueMediaDeletion(c,t,post);
   }
   await this.audit(c,t,post,editor,approve?'paid_image_approved':'paid_image_rejected',null,
    {mediaId,reason:rationale});
   return {mediaId,postId:post,state:approve?'approved':'rejected'};
  });
 }
 async adminImagePreview(t:string,editor:string,post:string,mediaId:string){
  actor(t,editor);identifier(post);identifier(mediaId);
  const r=await this.pool.query(`SELECT o.object_key,u.alt_text,o.review_state
   FROM feed.paid_post_media_objects o
   JOIN feed.paid_image_uploads u ON u.tenant_id=o.tenant_id AND u.id=o.media_id
   WHERE o.tenant_id=$1 AND o.post_id=$2 AND o.media_id=$3`,[t,post,mediaId]);
  if(!r.rows[0])fail('paid_media_not_found',404);
  return {objectKey:String(r.rows[0].object_key),altText:String(r.rows[0].alt_text),
   reviewState:String(r.rows[0].review_state)};
 }
 async approvedImageObject(t:string,post:string,mediaId:string){
  actor(t,'system');identifier(post);identifier(mediaId);
  const r=await this.pool.query(`SELECT o.object_key,u.alt_text FROM feed.posts p
   JOIN feed.paid_post_media_objects o ON o.tenant_id=p.tenant_id AND o.post_id=p.id
   JOIN feed.paid_image_uploads u ON u.tenant_id=o.tenant_id AND u.id=o.media_id
   WHERE p.tenant_id=$1 AND p.id=$2 AND o.media_id=$3
    AND p.state='published' AND p.author_type='human' AND p.kind='image'
    AND p.paid_purged_at IS NULL AND $3::text=ANY(p.media_ids)
    AND o.review_state='approved' AND u.state='ready'
    AND EXISTS(SELECT 1 FROM feed.promotion_campaigns b
      WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id AND b.state='active'
      AND b.remaining_views>0 AND (b.expires_at IS NULL OR b.expires_at>statement_timestamp()))`,
    [t,post,mediaId]);
  return r.rows[0]?{objectKey:String(r.rows[0].object_key),altText:String(r.rows[0].alt_text)}:null;
 }
 async draft(t:string,owner:string,input:{body:string;targetViews:number;
  destinationUrl?:string;campaignExpiresAt?:string;mediaIds?:readonly string[];idempotencyKey:string}){
  actor(t,owner);
  if(!keyPattern.test(input.idempotencyKey)||!Number.isSafeInteger(input.targetViews)||
   input.targetViews<1||input.targetViews>1000000||typeof input.body!=='string'||
   !input.body.trim()||input.body.trim().length>5000)fail('invalid_campaign_draft');
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(input.destinationUrl);}
  catch{fail('invalid_promotion_destination');}
  const expires=input.campaignExpiresAt??null;
  if(expires!==null&&(!/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d{1,3})?Z$/.test(expires)||
   !Number.isFinite(Date.parse(expires))||Date.parse(expires)<=Date.now()+3600000||
   Date.parse(expires)>Date.now()+180*86400000))fail('invalid_campaign_expiry');
  const mediaIds=input.mediaIds??[];
  if(!Array.isArray(mediaIds)||mediaIds.length>10||new Set(mediaIds).size!==mediaIds.length||
    mediaIds.some(id=>typeof id!=='string'||!uuid.test(id)))fail('invalid_paid_image_ids');
  const body=input.body.trim(),fingerprint=hash(JSON.stringify([body,input.targetViews,destinationUrl,expires,...(mediaIds.length?[mediaIds]:[])]));
  return serial(this.pool,async c=>{
   const saved=await c.query(`INSERT INTO feed.promotion_drafts
    (tenant_id,owner_id,body,destination_url,target_views,campaign_expires_at,idempotency_key,request_sha256,media_ids)
    VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9)
    ON CONFLICT(tenant_id,owner_id,idempotency_key) DO NOTHING RETURNING *`,
    [t,owner,body,destinationUrl,input.targetViews,expires,input.idempotencyKey,fingerprint,mediaIds]);
   const row=saved.rows[0]??(await c.query(`SELECT * FROM feed.promotion_drafts
     WHERE tenant_id=$1 AND owner_id=$2 AND idempotency_key=$3`,
     [t,owner,input.idempotencyKey])).rows[0];
   if(!row||row.request_sha256!==fingerprint)fail('idempotency_conflict',409);
   return {draftId:String(row.id),state:String(row.state),version:count(row.version),
    targetViews:count(row.target_views),body:String(row.body),destinationUrl:row.destination_url??null,
    mediaIds:row.media_ids??[],
    campaignExpiresAt:row.campaign_expires_at??null};
  });
 }
 async editDraft(t:string,owner:string,id:string,input:{body:string;targetViews:number;
  destinationUrl?:string;campaignExpiresAt?:string;mediaIds?:readonly string[];expectedVersion:number}){
  actor(t,owner);identifier(id);
  if(!Number.isSafeInteger(input.expectedVersion)||input.expectedVersion<0||
   !Number.isSafeInteger(input.targetViews)||input.targetViews<1||input.targetViews>1000000||
   typeof input.body!=='string'||!input.body.trim()||input.body.trim().length>5000)
   fail('invalid_campaign_draft');
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(input.destinationUrl);}
  catch{fail('invalid_promotion_destination');}
  const expires=input.campaignExpiresAt??null;
  if(expires!==null&&(!/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d{1,3})?Z$/.test(expires)||
   !Number.isFinite(Date.parse(expires))||Date.parse(expires)<=Date.now()+3600000||
   Date.parse(expires)>Date.now()+180*86400000))fail('invalid_campaign_expiry');
  const mediaIds=input.mediaIds??[];
  if(!Array.isArray(mediaIds)||mediaIds.length>10||new Set(mediaIds).size!==mediaIds.length||
   mediaIds.some(id=>typeof id!=='string'||!uuid.test(id)))fail('invalid_paid_image_ids');
  const body=input.body.trim();
  return serial(this.pool,async c=>{
   const r=await c.query(`UPDATE feed.promotion_drafts SET body=$4,target_views=$5,
    destination_url=$6,campaign_expires_at=$7,media_ids=$10,version=version+1,
    updated_at=statement_timestamp(),request_sha256=$8
    WHERE tenant_id=$1 AND id=$2 AND owner_id=$3 AND state='draft'
     AND version=$9 RETURNING id,version`,
    [t,id,owner,body,input.targetViews,destinationUrl,expires,
     hash(JSON.stringify([body,input.targetViews,destinationUrl,expires,...(mediaIds.length?[mediaIds]:[])])),input.expectedVersion,mediaIds]);
   if(!r.rowCount)fail('draft_stale_or_submitted',409);
   return {draftId:id,state:'draft',version:count(r.rows[0]!.version)};
  });
 }
 async myDrafts(t:string,owner:string){actor(t,owner);
  const r=await this.pool.query(`SELECT d.id,d.state,d.version,d.body,d.target_views,
    d.destination_url,d.campaign_expires_at,d.media_ids,d.updated_at,q.id AS quote_id
    FROM feed.promotion_drafts d LEFT JOIN feed.promotion_quotes q
    ON q.tenant_id=d.tenant_id AND q.draft_id=d.id
    WHERE d.tenant_id=$1 AND d.owner_id=$2 AND d.state<>'discarded'
    ORDER BY d.updated_at DESC,d.id DESC LIMIT 100`,[t,owner]);
  return {drafts:r.rows.map(x=>({draftId:String(x.id),state:String(x.state),
   version:count(x.version),body:String(x.body),targetViews:count(x.target_views),
   destinationUrl:x.destination_url??null,campaignExpiresAt:x.campaign_expires_at??null,
   mediaIds:x.media_ids??[],
   quoteId:x.quote_id??null,updatedAt:x.updated_at}))};
 }
 async discardDraft(t:string,owner:string,id:string){actor(t,owner);identifier(id);
  const r=await this.pool.query(`UPDATE feed.promotion_drafts SET state='discarded',
    updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2 AND owner_id=$3
     AND state='draft' RETURNING id`,[t,id,owner]);
  if(!r.rowCount)fail('draft_not_discardable',409);
  return {draftId:id,state:'discarded'};
 }
 async quoteDraft(t:string,owner:string,id:string){
  actor(t,owner);identifier(id);
  return serial(this.pool,async c=>{
   const found=await c.query(`SELECT * FROM feed.promotion_drafts
    WHERE tenant_id=$1 AND id=$2 AND owner_id=$3 FOR UPDATE`,[t,id,owner]);
   const d=found.rows[0];
   if(!d||d.state==='discarded')fail('draft_not_found',404);
   const existing=await c.query(`SELECT * FROM feed.promotion_quotes
    WHERE tenant_id=$1 AND draft_id=$2`,[t,id]);
   const row=existing.rows[0];
   const balance=await c.query(`SELECT (purchased_mb-reserved_purchased_mb)::text AS free
    FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_kind='human'
      AND account_id=$2 AND NOT frozen`,[t,owner]);
   const available=balance.rows[0]?count(balance.rows[0].free):0;
   if(!row&&d.state!=='draft')fail('draft_not_quotable',409);
   const mediaIds=Array.isArray(d.media_ids)?d.media_ids as string[]:[];
   if(!row&&mediaIds.length){
    const ready=await c.query(`SELECT count(*)::int AS n FROM feed.paid_image_uploads
      WHERE tenant_id=$1 AND owner_id=$2 AND id::text=ANY($3::text[])
       AND state='ready' AND post_id IS NULL`,[t,owner,mediaIds]);
    if(Number(ready.rows[0]?.n)!==mediaIds.length)fail('paid_image_not_owned_or_ready',403);
   }
   if(!row&&d.campaign_expires_at&&new Date(d.campaign_expires_at).getTime()<=Date.now()+3600000)
    fail('campaign_expiry_too_soon',409);
   const q=row??(await c.query(`INSERT INTO feed.promotion_quotes
    (tenant_id,sponsor_id,kind,body,target_views,destination_url,draft_id,campaign_expires_at,media_ids)
    VALUES($1,$2,'human_primary',$3,$4,$5,$6,$7,$8) RETURNING *`,
    [t,owner,d.body,d.target_views,d.destination_url,id,d.campaign_expires_at,mediaIds])).rows[0];
   if(!row)await c.query(`UPDATE feed.promotion_drafts SET state='quoted',
    updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,id]);
   return {quoteId:String(q.id),draftId:id,expiresAt:q.expires_at,
    targetViews:count(q.target_views),totalMb:count(q.target_views),eligibleMb:available,
    insufficientMb:available<count(q.target_views),
    priceVersion:String(q.price_version),campaignExpiresAt:q.campaign_expires_at??null};
  });
 }

 async quote(input:{tenantId:string;sponsorId:string;postId?:string;body?:string;destinationUrl?:string;mediaIds?:readonly string[];targetViews:number}){
  const {tenantId:t,sponsorId:s}=input;actor(t,s);
  if(!Number.isSafeInteger(input.targetViews)||input.targetViews<1||input.targetViews>1000000)
   fail('invalid_view_target');
  const isBoost=input.postId!==undefined;
  const mediaIds=input.mediaIds??[];
  if(!Array.isArray(mediaIds)||mediaIds.length>10||new Set(mediaIds).size!==mediaIds.length||
    mediaIds.some(id=>typeof id!=='string'||!uuid.test(id)))fail('invalid_paid_image_ids');
  if(isBoost&&mediaIds.length)fail('boost_cannot_edit_post');
  if(isBoost)identifier(input.postId!);
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(input.destinationUrl);}catch{fail('invalid_promotion_destination');}
  if(isBoost&&destinationUrl!==null)fail('boost_cannot_edit_post');
  const body=input.body?.trim();
  if(!isBoost&&(!body||body.length>5000))fail('promotion_body_required');
  if(isBoost&&body!==undefined)fail('boost_cannot_edit_post');
  return serial(this.pool,async c=>{
   if(isBoost){
    const post=await c.query(`SELECT 1 FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$2
     AND p.paid_purged_at IS NULL AND
      (p.state='published' OR (p.author_type='human' AND p.state='hidden'
        AND p.paid_purge_at>statement_timestamp()))`,[t,input.postId]);
    if(!post.rowCount)fail('post_not_boostable',404);
   }else{
    const person=await c.query(`SELECT 1 FROM identity.users u JOIN talks.public_profiles p
      ON p.tenant_id=u.tenant_id AND p.user_id=u.user_id
      WHERE u.tenant_id=$1 AND u.user_id=$2 AND u.state='active'`,[t,s]);
    if(!person.rowCount)fail('public_profile_required',403);
   }
   if(mediaIds.length){
    const valid=await c.query(`SELECT count(*)::int AS n FROM feed.paid_image_uploads
     WHERE tenant_id=$1 AND owner_id=$2 AND id::text=ANY($3::text[])
       AND state='ready' AND post_id IS NULL AND rights_confirmed`,[t,s,mediaIds]);
    if(Number(valid.rows[0]?.n)!==mediaIds.length)fail('paid_image_not_owned_or_ready',403);
   }
   const balance=await c.query<{free:string}>(`SELECT
    (purchased_mb-reserved_purchased_mb)::text AS free FROM gb_wallet.accounts
    WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2 AND NOT frozen`,[t,s]);
   const available=balance.rows[0]?count(balance.rows[0].free):0;
   const quote=await c.query(`INSERT INTO feed.promotion_quotes
     (tenant_id,sponsor_id,post_id,kind,body,target_views,destination_url,media_ids)
     VALUES($1,$2,$3,$4,$5,$6,$7,$8) RETURNING id,expires_at`,
     [t,s,input.postId??null,isBoost?'boost':'human_primary',isBoost?null:body,input.targetViews,destinationUrl,mediaIds]);
   return {quoteId:String(quote.rows[0]!.id),expiresAt:quote.rows[0]!.expires_at,
    targetViews:input.targetViews,totalMb:input.targetViews,eligibleMb:available,
    insufficientMb:available<input.targetViews,priceVersion:'2026-10-27:1MB'};
  });
 }

 async confirm(t:string,s:string,qid:string,key:string){
  actor(t,s);identifier(qid);if(!keyPattern.test(key))fail('invalid_idempotency_key');
  return serial(this.pool,async c=>{
   const quotes=await c.query(`SELECT * FROM feed.promotion_quotes
    WHERE tenant_id=$1 AND id=$2 AND sponsor_id=$3 FOR UPDATE`,[t,qid,s]);
   const q=(quotes.rows[0] as Row|undefined)??fail('quote_not_found',404);
   // Preserve the original hash for all historic quotes without a CTA.
   // Only quotes with a new, reviewed destination extend the fingerprint.
   const quoted=[qid,s,q.kind,q.post_id,q.body,q.target_views];
   const extra=q.destination_url==null?quoted:[...quoted,q.destination_url];
   const fp=hash(JSON.stringify(Array.isArray(q.media_ids)&&q.media_ids.length?
    [...extra,q.media_ids]:extra));
   const previous=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND sponsor_id=$2 AND idempotency_key=$3`,[t,s,key]);
   if(previous.rows[0]){
    if(previous.rows[0].fingerprint!==fp)fail('idempotency_conflict',409);
    return campaign(previous.rows[0] as Row);
   }
   if(new Date(String(q.expires_at)).getTime()<=Date.now())fail('quote_expired',409);
   if(q.campaign_expires_at&&new Date(String(q.campaign_expires_at)).getTime()<=Date.now())
    fail('campaign_expired',409);
   let post=q.post_id==null?null:String(q.post_id);
   if(post){
    const current=await c.query(`SELECT state,author_type,paid_purged_at,
     (paid_purge_at>statement_timestamp()) AS within_grace FROM feed.posts
     WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,post]);
    const p=current.rows[0];
    if(!p||p.paid_purged_at||(p.state!=='published'&&
      !(p.author_type==='human'&&p.state==='hidden'&&p.within_grace===true)))
      fail('post_not_boostable',409);
   }
   await c.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id)
    VALUES($1,'human',$2) ON CONFLICT DO NOTHING`,[t,s]);
   const reserved=await c.query(`UPDATE gb_wallet.accounts SET
    reserved_purchased_mb=reserved_purchased_mb+$3,version=version+1
    WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2 AND NOT frozen
    AND purchased_mb-reserved_purchased_mb>=$3 RETURNING account_id`,[t,s,q.target_views]);
   if(!reserved.rowCount)fail('insufficient_eligible_mb',409);
   if(!post){
    const mediaIds=Array.isArray(q.media_ids)?q.media_ids as string[]:[];
    if(mediaIds.length){
     const valid=await c.query(`SELECT id FROM feed.paid_image_uploads WHERE
      tenant_id=$1 AND owner_id=$2 AND id::text=ANY($3::text[]) AND state='ready'
       AND post_id IS NULL FOR UPDATE`,[t,s,mediaIds]);
     if(valid.rows.length!==mediaIds.length)fail('paid_image_not_owned_or_ready',409);
    }
    const created=await c.query(`INSERT INTO feed.posts
     (tenant_id,author_masana_id,author_type,author_user_id,kind,body,media_ids,
      transcript,state,idempotency_key,published_by)
     VALUES($1,NULL,'human',$2,$5,$3,$6,NULL,'hidden',$4,$2) RETURNING id`
     [t,s,q.body,`promotion:${qid}`,mediaIds.length?'image':'text',mediaIds]);
    post=String(created.rows[0]!.id);
    if(mediaIds.length){
     await c.query(`UPDATE feed.paid_image_uploads SET post_id=$4
       WHERE tenant_id=$1 AND owner_id=$2 AND id::text=ANY($3::text[])
        AND state='ready' AND post_id IS NULL`,[t,s,mediaIds,post]);
     await c.query(`INSERT INTO feed.paid_post_media_objects
      (tenant_id,post_id,media_id,object_key,review_state)
      SELECT tenant_id,post_id,id,object_key,'pending'
      FROM feed.paid_image_uploads WHERE tenant_id=$1 AND owner_id=$2
       AND post_id=$3 AND id::text=ANY($4::text[])`,[t,s,post,mediaIds]);
    }
   }
   const state=q.kind==='human_primary'?'pending_review':'active';
   const inserted=await c.query(`INSERT INTO feed.promotion_campaigns
    (tenant_id,quote_id,post_id,sponsor_id,kind,idempotency_key,fingerprint,
     state,target_views,remaining_views,price_version,expires_at)
    VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$9,$10,$11) RETURNING *`,
    [t,qid,post,s,q.kind,key,fp,state,q.target_views,q.price_version,q.campaign_expires_at]);
   if(state==='active')await c.query(`UPDATE feed.posts SET state='published',
    paid_disabled_at=NULL,paid_purge_at=NULL
    WHERE tenant_id=$1 AND id=$2 AND author_type='human'`,[t,post]);
   await this.audit(c,t,post!,s,'budget_reserved',String(inserted.rows[0]!.id),
    {targetViews:q.target_views});
   return campaign(inserted.rows[0] as Row);
  });
 }

 async receipt(t:string,s:string,id:string){actor(t,s);identifier(id);
  const r=await this.pool.query(`SELECT c.*,(
    SELECT a.details->>'reason' FROM feed.promotion_audit a
    WHERE a.tenant_id=c.tenant_id AND a.campaign_id=c.id
      AND a.action='rejected' ORDER BY a.id DESC LIMIT 1) AS review_reason
    FROM feed.promotion_quotes q
   LEFT JOIN feed.promotion_campaigns c ON c.tenant_id=q.tenant_id AND c.quote_id=q.id
   WHERE q.tenant_id=$1 AND q.sponsor_id=$2 AND q.id=$3`,[t,s,id]);
  if(!r.rows[0])fail('quote_not_found',404);
  return {campaign:r.rows[0].id?campaign(r.rows[0] as Row):null};
 }
 async review(t:string,editor:string,id:string,approve:boolean,reason?:string){actor(t,editor);identifier(id);
  const rationale=reviewReason(reason,!approve);
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,id]);
   const p=(r.rows[0] as Row|undefined)??fail('campaign_not_found',404);
   if(p.state!=='pending_review')fail('campaign_not_pending',409);
   if(p.sponsor_id===editor)fail('separate_reviewer_required',403);
   if(approve){
    const accepted=await c.query(`UPDATE feed.posts SET state='published',
     published_at=statement_timestamp(),paid_reviewed_destination_url=(
       SELECT destination_url FROM feed.promotion_quotes WHERE tenant_id=$1 AND id=$3
     ) WHERE tenant_id=$1 AND id=$2
     AND state='hidden' AND author_type='human' AND paid_disabled_at IS NULL
     AND paid_purged_at IS NULL RETURNING id`,[t,p.post_id,p.quote_id]);
    if(!accepted.rowCount)fail('post_no_longer_approvable',409);
   }else await this.refund(c,t,p);
   await c.query(`UPDATE feed.promotion_campaigns SET state=$3,reviewed_by=$4,
    reviewed_at=statement_timestamp(),updated_at=statement_timestamp()
    WHERE tenant_id=$1 AND id=$2`,[t,id,approve?'active':'rejected',editor]);
   const approvedQuote=approve?await c.query(`SELECT q.body,q.destination_url,q.media_ids,
     p.kind AS content_kind,p.media_ids AS posted_media
     FROM feed.promotion_quotes q JOIN feed.posts p ON p.tenant_id=q.tenant_id
      AND p.id=$3 WHERE q.tenant_id=$1 AND q.id=$2`,[t,p.quote_id,p.post_id]):null;
   const approval=approvedQuote?.rows[0];
   // Any image must match exact registered, independently approved objects.
   // Failure rolls back the publish and campaign state transition.
   if(approval?.content_kind==='image'){
    const ready=await c.query(`SELECT count(*)::int AS approved
      FROM feed.paid_post_media_objects
      WHERE tenant_id=$1 AND post_id=$2 AND review_state='approved'
       AND media_id::text=ANY($3::text[])`,[t,p.post_id,approval.posted_media]);
    const attached=Array.isArray(approval.posted_media)?approval.posted_media.length:0;
    if(!attached||Number(ready.rows[0]?.approved)!==attached)fail('paid_media_not_approved',409);
   }
   await this.audit(c,t,String(p.post_id),editor,approve?'approved':'rejected',id,
    approve?{bodySha256:hash(String(approval?.body??'')),
     destinationUrl:approval?.destination_url??null,
     reviewedMediaIds:approval?.media_ids??[],reason:rationale||null}:
     {reason:rationale});
   if(!approve)await this.disable(c,t,String(p.post_id));
   return {campaignId:id,state:approve?'active':'rejected',
    ...(rationale?{reason:rationale}:{})};
  });
 }

 /** Tenant-scoped content review. Staff authorization is checked by the
  * Gateway before this method; never include viewer identities or tokens. */
 async adminQueue(t:string,editor:string){actor(t,editor);
  const r=await this.pool.query(`SELECT c.id,c.post_id,c.sponsor_id,c.kind,
   c.target_views,c.remaining_views,c.delivered_views,c.created_at,
   p.author_user_id,p.kind AS content_kind,p.body,p.media_ids,p.state AS post_state,q.destination_url AS destination_url
   FROM feed.promotion_campaigns c JOIN feed.promotion_quotes q
    ON q.tenant_id=c.tenant_id AND q.id=c.quote_id
   JOIN feed.posts p
    ON p.tenant_id=c.tenant_id AND p.id=c.post_id
   WHERE c.tenant_id=$1 AND c.state='pending_review'
   ORDER BY c.created_at,c.id LIMIT 100`,[t]);
  return {pending:r.rows.map(x=>({campaignId:String(x.id),postId:String(x.post_id),
   sponsorId:String(x.sponsor_id),authorId:String(x.author_user_id),
   campaignKind:String(x.kind),contentKind:String(x.content_kind),
   body:String(x.body??''),mediaIds:x.media_ids??[],postState:String(x.post_state),
   destinationUrl:x.destination_url==null?null:String(x.destination_url),
   targetViews:count(x.target_views),remainingViews:count(x.remaining_views),
   deliveredViews:count(x.delivered_views),submittedAt:x.created_at}))};
 }

 async adminOverview(t:string,editor:string){actor(t,editor);
  const budgets=await this.pool.query(`SELECT
   count(*)::text AS campaigns,
   count(*) FILTER(WHERE state='pending_review')::text AS pending_review,
   count(*) FILTER(WHERE state='active')::text AS active,
   count(*) FILTER(WHERE state='rejected')::text AS rejected,
   count(*) FILTER(WHERE state='completed')::text AS completed,
   coalesce(sum(remaining_views) FILTER(WHERE state IN
    ('pending_review','active','paused')),0)::text AS reserved_mb,
   coalesce(sum(delivered_views),0)::text AS billed_views,
   coalesce(sum(referred_views),0)::text AS referred_views
   FROM feed.promotion_campaigns WHERE tenant_id=$1`,[t]);
  const liabilities=await this.pool.query(`SELECT
   coalesce(sum(sharer_half_mb),0)::text AS pending_sharer_half_mb,
   coalesce(sum(platform_half_mb),0)::text AS allocated_platform_half_mb
   FROM feed.promotion_view_charges WHERE tenant_id=$1`,[t]);
  const b=budgets.rows[0]!,l=liabilities.rows[0]!;
  return {campaigns:count(b.campaigns),pendingReview:count(b.pending_review),
   active:count(b.active),rejected:count(b.rejected),completed:count(b.completed),
   outstandingReservedMb:count(b.reserved_mb),billedQualifiedViews:count(b.billed_views),
   referredQualifiedViews:count(b.referred_views),
   pendingSharerHalfMb:count(l.pending_sharer_half_mb),
   allocatedPlatformHalfMb:count(l.allocated_platform_half_mb),
   rewardSettlementEnabled:false,
   fundingQualification:'not_qualified'};
 }

 /** Permanent safety takedown is owned by an independent editor, not a
  * booster. Refund every unspent sponsor reserve in the same transaction,
  * revoke linked attribution and scrub the content while preserving audit. */
 async adminTakedown(t:string,editor:string,post:string,reason:string){
  actor(t,editor);identifier(post);const rationale=reviewReason(reason,true);
  return serial(this.pool,async c=>{
   const found=await c.query(`SELECT author_type,author_user_id,paid_purged_at
    FROM feed.posts WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,post]);
   const p=found.rows[0];
   if(!p||p.author_type!=='human')fail('paid_post_not_found',404);
   if(p.author_user_id===editor)fail('separate_reviewer_required',403);
   if(p.paid_purged_at)return {postId:post,state:'removed',alreadyRemoved:true};
   const campaigns=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND post_id=$2
     AND state IN ('active','paused','pending_review')
    ORDER BY sponsor_id,id FOR UPDATE`,[t,post]);
   let refundedMb=0;
   for(const b of campaigns.rows){
    await this.refund(c,t,b as Row);refundedMb+=count(b.remaining_views);
    await c.query(`UPDATE feed.promotion_campaigns SET state='cancelled',
     updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,b.id]);
    await this.audit(c,t,post,editor,'moderation_refund',String(b.id),
     {releasedMb:count(b.remaining_views)});
   }
   await this.enqueueMediaDeletion(c,t,post);
   await c.query(`UPDATE feed.posts SET state='removed',body='',media_ids='{}',
    transcript=NULL,paid_purged_at=statement_timestamp(),
    paid_purge_at=NULL WHERE tenant_id=$1 AND id=$2`,[t,post]);
   await c.query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
    WHERE tenant_id=$1 AND post_id=$2 AND revoked_at IS NULL`,[t,post]);
   await this.audit(c,t,post,editor,'moderation_takedown',null,
    {reason:rationale,refundedMb});
   return {postId:post,state:'removed',refundedMb};
  });
 }


 /** Stage owner copy/destination edits; the approved live version is unchanged
  * until an independent reviewer accepts a matching revision. */
 async proposeEdit(t:string,owner:string,postId:string,input:{
  expectedRevision:number;body:string;destinationUrl?:string;idempotencyKey:string;
 }){
  actor(t,owner);identifier(postId);
  if(!Number.isSafeInteger(input.expectedRevision)||input.expectedRevision<0||
    !keyPattern.test(input.idempotencyKey))fail('invalid_edit_revision');
  const body=input.body?.trim();
  if(typeof body!=='string'||!body||body.length>5000)fail('invalid_edit_body');
  let destinationUrl:string|null=null;
  try{destinationUrl=reviewedPromotionDestination(input.destinationUrl);}
  catch{fail('invalid_promotion_destination');}
  const fingerprint=hash(JSON.stringify([postId,input.expectedRevision,body,destinationUrl]));
  return serial(this.pool,async c=>{
   const result=await c.query(`SELECT id,kind,body,author_user_id,paid_content_revision,
    paid_reviewed_destination_url FROM feed.posts WHERE tenant_id=$1 AND id=$2
    AND author_type='human' AND author_user_id=$3 AND state='published'
    AND paid_purged_at IS NULL FOR UPDATE`,[t,postId,owner]);
   const p=result.rows[0];
   if(!p)fail('post_not_editable',404);
   if(p.kind!=='text')fail('paid_image_edit_requires_media_review',409);
   const previous=await c.query(`SELECT id,state,request_sha256
    FROM feed.promotion_edit_proposals WHERE tenant_id=$1 AND owner_id=$2
     AND idempotency_key=$3`,[t,owner,input.idempotencyKey]);
   if(previous.rows[0]){
    if(previous.rows[0].request_sha256!==fingerprint)fail('idempotency_conflict',409);
    return {proposalId:String(previous.rows[0].id),state:String(previous.rows[0].state),
     alreadySubmitted:true};
   }
   if(Number(p.paid_content_revision)!==input.expectedRevision)fail('stale_post_revision',409);
   const original=await c.query(`SELECT 1 FROM feed.promotion_campaigns
     WHERE tenant_id=$1 AND post_id=$2 AND kind='human_primary'
      AND reviewed_at IS NOT NULL AND state<>'rejected'`,[t,postId]);
   if(!original.rowCount)fail('approved_primary_required',403);
   if(p.body===body&&(p.paid_reviewed_destination_url??null)===destinationUrl)
    fail('edit_has_no_changes');
   const already=await c.query(`SELECT 1 FROM feed.promotion_edit_proposals
     WHERE tenant_id=$1 AND post_id=$2 AND state='pending'`,[t,postId]);
   if(already.rowCount)fail('edit_review_already_pending',409);
   const inserted=await c.query(`INSERT INTO feed.promotion_edit_proposals
    (tenant_id,post_id,owner_id,original_revision,idempotency_key,
      request_sha256,proposed_body,proposed_destination_url)
    VALUES($1,$2,$3,$4,$5,$6,$7,$8) RETURNING id`,
    [t,postId,owner,input.expectedRevision,input.idempotencyKey,
     fingerprint,body,destinationUrl]);
   await this.audit(c,t,postId,owner,'paid_edit_submitted',null,
    {proposalId:String(inserted.rows[0]!.id),originalRevision:input.expectedRevision});
   return {proposalId:String(inserted.rows[0]!.id),state:'pending',
    alreadySubmitted:false};
  });
 }
 async myEdits(t:string,owner:string){actor(t,owner);
  const r=await this.pool.query(`SELECT id,post_id,original_revision,
    state,proposed_body,proposed_destination_url,resolution_reason,created_at,reviewed_at
    FROM feed.promotion_edit_proposals WHERE tenant_id=$1 AND owner_id=$2
    ORDER BY created_at DESC,id DESC LIMIT 100`,[t,owner]);
  return {edits:r.rows.map(x=>({proposalId:String(x.id),postId:String(x.post_id),
   originalRevision:count(x.original_revision),state:String(x.state),
   body:String(x.proposed_body),destinationUrl:x.proposed_destination_url??null,
   resolutionReason:x.resolution_reason??null,createdAt:x.created_at,reviewedAt:x.reviewed_at}))};
 }
 async adminEdits(t:string,editor:string){actor(t,editor);
  const r=await this.pool.query(`SELECT id,post_id,owner_id,original_revision,
    proposed_body,proposed_destination_url,created_at
    FROM feed.promotion_edit_proposals WHERE tenant_id=$1 AND state='pending'
    ORDER BY created_at,id LIMIT 100`,[t]);
  return {pending:r.rows.map(x=>({proposalId:String(x.id),postId:String(x.post_id),
   ownerId:String(x.owner_id),originalRevision:count(x.original_revision),
   body:String(x.proposed_body),destinationUrl:x.proposed_destination_url??null,
   createdAt:x.created_at}))};
 }
 async reviewEdit(t:string,editor:string,id:string,approve:boolean,reason:string){
  actor(t,editor);identifier(id);
  const rationale=reviewReason(reason,true);
  if(rationale.length<5)fail('edit_review_reason_too_short');
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_edit_proposals
    WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,id]);
   const edit=(r.rows[0] as Row|undefined)??fail('edit_proposal_not_found',404);
   if(edit.owner_id===editor)fail('separate_reviewer_required',403);
   if(edit.state!=='pending')fail('edit_already_reviewed',409);
   if(approve){
    const p=await c.query(`UPDATE feed.posts SET body=$4,
      paid_reviewed_destination_url=$5,
      paid_content_revision=paid_content_revision+1
      WHERE tenant_id=$1 AND id=$2 AND author_type='human' AND state='published'
       AND paid_purged_at IS NULL AND paid_content_revision=$3
      RETURNING paid_content_revision`,
     [t,edit.post_id,edit.original_revision,edit.proposed_body,
      edit.proposed_destination_url]);
    if(!p.rowCount)fail('edit_version_or_visibility_changed',409);
   }
   await c.query(`UPDATE feed.promotion_edit_proposals SET state=$3,
    reviewer_id=$4,resolution_reason=$5,reviewed_at=statement_timestamp()
    WHERE tenant_id=$1 AND id=$2`,
    [t,id,approve?'approved':'rejected',editor,rationale]);
   await this.audit(c,t,String(edit.post_id),editor,
    approve?'paid_edit_approved':'paid_edit_rejected',null,
    {proposalId:id,oldRevision:count(edit.original_revision),
     newRevision:approve?count(edit.original_revision)+1:null,
     proposedBodySha256:hash(String(edit.proposed_body)),
     destinationUrl:edit.proposed_destination_url??null,reason:rationale});
   return {proposalId:id,postId:String(edit.post_id),
    state:approve?'approved':'rejected',
    newRevision:approve?count(edit.original_revision)+1:null};
  });
 }
 /** A rejection appeal is a reviewable record, not new authorization to spend.
  * It never restores the previously refunded reserved MB or old campaign. */
 async appeal(t:string,owner:string,id:string,reason:string){
  actor(t,owner);identifier(id);
  const rationale=reviewReason(reason,true);
  if(rationale.length<10)fail('appeal_reason_too_short');
  return serial(this.pool,async c=>{
   const original=await c.query(`SELECT post_id,kind,state FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2 AND sponsor_id=$3 FOR UPDATE`,[t,id,owner]);
   const campaign=original.rows[0];
   if(!campaign)fail('campaign_not_found',404);
   if(campaign.kind!=='human_primary'||campaign.state!=='rejected')
    fail('appeal_only_for_rejected_promotion',409);
   const previous=await c.query(`SELECT id,created_at FROM feed.promotion_rejection_appeals
    WHERE tenant_id=$1 AND campaign_id=$2 AND state='pending'`,[t,id]);
   if(previous.rows[0])return {appealId:String(previous.rows[0].id),
    campaignId:id,state:'pending',alreadySubmitted:true};
   const added=await c.query(`INSERT INTO feed.promotion_rejection_appeals
    (tenant_id,campaign_id,post_id,owner_id,reason) VALUES($1,$2,$3,$4,$5)
    RETURNING id`,[t,id,campaign.post_id,owner,rationale]);
   await this.audit(c,t,String(campaign.post_id),owner,'rejection_appeal_submitted',id,
    {appealId:String(added.rows[0]!.id)});
   return {appealId:String(added.rows[0]!.id),campaignId:id,state:'pending',
    alreadySubmitted:false};
  });
 }
 async myAppeals(t:string,owner:string){actor(t,owner);
  const r=await this.pool.query(`SELECT id,campaign_id,state,reason,resolution_reason,
    created_at,resolved_at FROM feed.promotion_rejection_appeals
   WHERE tenant_id=$1 AND owner_id=$2 ORDER BY created_at DESC,id DESC LIMIT 100`,
   [t,owner]);
  return {appeals:r.rows.map(x=>({appealId:String(x.id),campaignId:String(x.campaign_id),
   state:String(x.state),reason:String(x.reason),
   resolutionReason:x.resolution_reason==null?null:String(x.resolution_reason),
   submittedAt:x.created_at,resolvedAt:x.resolved_at}))};
 }
 async adminAppeals(t:string,reviewer:string){actor(t,reviewer);
  const r=await this.pool.query(`SELECT id,campaign_id,post_id,owner_id,reason,created_at
   FROM feed.promotion_rejection_appeals WHERE tenant_id=$1 AND state='pending'
   ORDER BY created_at,id LIMIT 100`,[t]);
  return {pending:r.rows.map(x=>({appealId:String(x.id),campaignId:String(x.campaign_id),
   postId:String(x.post_id),ownerId:String(x.owner_id),
   reason:String(x.reason),submittedAt:x.created_at}))};
 }
 async resolveAppeal(t:string,reviewer:string,id:string,accept:boolean,reason:string){
  actor(t,reviewer);identifier(id);
  const rationale=reviewReason(reason,true);
  if(rationale.length<5)fail('appeal_resolution_reason_too_short');
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_rejection_appeals
    WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,id]);
   const appeal=(r.rows[0] as Row|undefined)??fail('appeal_not_found',404);
   if(appeal.owner_id===reviewer)fail('separate_reviewer_required',403);
   if(appeal.state!=='pending')fail('appeal_already_resolved',409);
   await c.query(`UPDATE feed.promotion_rejection_appeals
    SET state=$3,reviewer_id=$4,resolution_reason=$5,
      resolved_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,
    [t,id,accept?'accepted':'denied',reviewer,rationale]);
   await this.audit(c,t,String(appeal.post_id),reviewer,
    accept?'rejection_appeal_accepted':'rejection_appeal_denied',
    String(appeal.campaign_id),{appealId:id,reason:rationale,
    // Acceptance permits manual resubmission; never unrefund or republish.
    noAutomaticCampaignReactivation:true});
   return {appealId:id,campaignId:String(appeal.campaign_id),
    state:accept?'accepted':'denied',campaignReactivated:false};
  });
 }
 async cancel(t:string,s:string,id:string){actor(t,s);identifier(id);
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2 AND sponsor_id=$3 FOR UPDATE`,[t,id,s]);
   const p=(r.rows[0] as Row|undefined)??fail('campaign_not_found',404);
   if(['completed','cancelled','rejected','expired'].includes(String(p.state)))return campaign(p);
   await c.query(`SELECT 1 FROM feed.posts WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,p.post_id]);
   await this.refund(c,t,p);
   await c.query(`UPDATE feed.promotion_campaigns SET state='cancelled',
    updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,id]);
   await this.disable(c,t,String(p.post_id));
   await this.audit(c,t,String(p.post_id),s,'cancelled',id,{releasedMb:p.remaining_views});
   return campaign({...p,state:'cancelled'});
  });
 }

 async pause(t:string,s:string,id:string){actor(t,s);identifier(id);
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2 AND sponsor_id=$3 FOR UPDATE`,[t,id,s]);
   const p=(r.rows[0] as Row|undefined)??fail('campaign_not_found',404);
   if(p.state==='paused')return campaign(p);
   if(p.state!=='active')fail('campaign_not_active',409);
   await c.query(`SELECT 1 FROM feed.posts WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,p.post_id]);
   await c.query(`UPDATE feed.promotion_campaigns SET state='paused',
    updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,id]);
   await this.disable(c,t,String(p.post_id));
   await this.audit(c,t,String(p.post_id),s,'paused',id,{remainingViews:count(p.remaining_views)});
   return campaign({...p,state:'paused'});
  });
 }

 async resume(t:string,s:string,id:string){actor(t,s);identifier(id);
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2 AND sponsor_id=$3 FOR UPDATE`,[t,id,s]);
   const p=(r.rows[0] as Row|undefined)??fail('campaign_not_found',404);
   if(p.state==='active')return campaign(p);
   if(p.state!=='paused'||count(p.remaining_views)===0)fail('campaign_not_resumable',409);
   const posts=await c.query(`SELECT state,paid_purged_at,paid_purge_at,author_type
    FROM feed.posts WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,p.post_id]);
   const post=posts.rows[0];
   if(!post||post.paid_purged_at||
     (post.state!=='published'&&!(post.author_type==='human'&&post.state==='hidden'&&
      (post.paid_purge_at!=null&&new Date(post.paid_purge_at).getTime()>Date.now()))))
    fail('post_not_resumable',409);
   await c.query(`UPDATE feed.promotion_campaigns SET state='active',
    updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,id]);
   await c.query(`UPDATE feed.posts SET state='published',
    paid_disabled_at=NULL,paid_purge_at=NULL
    WHERE tenant_id=$1 AND id=$2 AND author_type='human'`,[t,p.post_id]);
   await this.audit(c,t,String(p.post_id),s,'resumed',id);
   return campaign({...p,state:'active'});
  });
 }

 async share(t:string,sharer:string,post:string){actor(t,sharer);identifier(post);
  return serial(this.pool,async c=>{
   const p=await c.query(`SELECT author_user_id FROM feed.posts
    WHERE tenant_id=$1 AND id=$2 AND state='published'
      AND audience='public' AND paid_purged_at IS NULL`,[t,post]);
   if(!p.rows[0])fail('post_not_found',404);
   const source=await c.query(`SELECT id FROM feed.promotion_campaigns WHERE tenant_id=$1
    AND post_id=$2 AND sponsor_id<>$3 AND state='active' AND remaining_views>0 AND (expires_at IS NULL OR expires_at>statement_timestamp())
    ORDER BY created_at,id LIMIT 1`,[t,post,sharer]);
   const base=`${this.publicBaseUrl.replace(/\/$/,'')}/status/${post}`;
   if(!source.rows[0]||p.rows[0].author_user_id===sharer)
    return {url:base,earnable:false};
   // A revoked/suspended person or frozen reward account may still read a
   // public post, but must not issue a fresh commission-bearing token.
   const eligible=await c.query(`SELECT 1 FROM identity.users u
    LEFT JOIN gb_wallet.accounts reward ON reward.tenant_id=u.tenant_id
      AND reward.account_kind='human' AND reward.account_id=u.user_id
    WHERE u.tenant_id=$1 AND u.user_id=$2 AND u.state='active'
      AND COALESCE(reward.frozen,false)=false`,
    [t,sharer]);
   if(!eligible.rowCount)return {url:base,earnable:false};
   const token=randomBytes(32).toString('base64url');
   await c.query(`INSERT INTO feed.share_links(tenant_id,post_id,campaign_id,
    sharer_id,token_sha256) VALUES($1,$2,$3,$4,$5)`,[t,post,source.rows[0].id,sharer,hash(token)]);
   return {url:`${base}?r=${token}`,earnable:true,pendingRewardHalfMbPerQualifiedView:1};
  });
 }

 async beginView(t:string,viewer:string,post:string,referral?:string){
  actor(t,viewer);identifier(post);
  return serial(this.pool,async c=>{
   const p=await c.query(`SELECT 1 FROM feed.posts WHERE tenant_id=$1 AND id=$2
    AND state='published' AND audience='public'
    AND paid_purged_at IS NULL`,[t,post]);
   if(!p.rowCount)fail('post_not_found',404);
   // Issue quotas are per authenticated account digest, not shared IP: carrier
   // NAT must not cause one person's requests to penalize unrelated users.
   // At most 100 fresh starts in 5 minutes (well above 6s normal dwell) to
   // bound challenge-table spam. This is not a paid-ad display/frequency cap.
   const viewerDigest=this.digest(t,viewer);
   const recent=await c.query<{issued:string}>(`SELECT count(*)::text AS issued
    FROM feed.view_challenges WHERE tenant_id=$1 AND viewer_digest=$2
      AND started_at>statement_timestamp()-interval '5 minutes'`,[t,viewerDigest]);
   if(count(recent.rows[0]?.issued??0)>=100)fail('view_challenge_rate_limited',429);
   let link:string|null=null;
   if(referral&&referral.length<=128){
    const r=await c.query(`SELECT l.id FROM feed.share_links l
      JOIN feed.promotion_campaigns campaign ON campaign.tenant_id=l.tenant_id
       AND campaign.id=l.campaign_id AND campaign.post_id=l.post_id
      JOIN identity.users sharer ON sharer.tenant_id=l.tenant_id
        AND sharer.user_id=l.sharer_id AND sharer.state='active'
      LEFT JOIN gb_wallet.accounts reward ON reward.tenant_id=l.tenant_id
        AND reward.account_kind='human' AND reward.account_id=l.sharer_id
      WHERE l.tenant_id=$1 AND l.post_id=$2 AND l.token_sha256=$3
       AND l.revoked_at IS NULL AND campaign.state='active'
       AND campaign.remaining_views>0
       AND (campaign.expires_at IS NULL OR campaign.expires_at>statement_timestamp()) AND COALESCE(reward.frozen,false)=false`,
      [t,post,hash(referral)]);
    if(r.rows[0])link=String(r.rows[0].id);
   }
   const added=await c.query(`INSERT INTO feed.view_challenges
    (tenant_id,post_id,viewer_digest,share_link_id)
    VALUES($1,$2,$3,$4) RETURNING id,started_at`,[t,post,viewerDigest,link]);
   return {challengeId:String(added.rows[0]!.id),startedAt:added.rows[0]!.started_at,
    minimumDwellSeconds:6,minimumVisibleFraction:0.5};
  });
 }

 async finishView(t:string,viewer:string,id:string,visibility:{visibleFraction:number;foreground:boolean;engaged:boolean}){
  actor(t,viewer);identifier(id);
  if(!Number.isFinite(visibility.visibleFraction)||visibility.visibleFraction<0.5||
   visibility.visibleFraction>1||!visibility.foreground||!visibility.engaged)
   fail('view_not_qualified');
  return serial(this.pool,async c=>{
   const checks=await c.query(`SELECT * FROM feed.view_challenges WHERE tenant_id=$1
     AND id=$2 AND viewer_digest=$3 FOR UPDATE`,[t,id,this.digest(t,viewer)]);
   const ch=(checks.rows[0] as Row|undefined)??fail('view_challenge_not_found',404);
   if(ch.claimed_at)return {qualified:false,duplicate:true};
   const time=await c.query<{sec:number}>(`SELECT EXTRACT(EPOCH FROM
     (statement_timestamp()-$1::timestamptz))::float8 AS sec`,[ch.started_at]);
   if(time.rows[0]!.sec<6)fail('view_dwell_too_short',409);
   if(time.rows[0]!.sec>300)fail('view_challenge_expired',409);
   const post=String(ch.post_id);
   const owner=await c.query(`SELECT author_user_id FROM feed.posts WHERE tenant_id=$1
     AND id=$2 AND state='published' AND audience='public'
     AND paid_purged_at IS NULL FOR UPDATE`,[t,post]);
   if(!owner.rows[0])fail('post_unavailable',404);
   // A publisher refreshing their own paid post is not a qualified audience
   // exposure. In particular it must not exhaust an independent boost.
   if(owner.rows[0].author_user_id===viewer){
    await c.query(`UPDATE feed.view_challenges SET claimed_at=statement_timestamp()
     WHERE tenant_id=$1 AND id=$2`,[t,id]);
    return {qualified:false,selfView:true,payable:false};
   }
   const inserted=await c.query(`INSERT INTO feed.qualified_views
    (tenant_id,post_id,viewer_digest,challenge_id) VALUES($1,$2,$3,$4)
    ON CONFLICT(tenant_id,post_id,viewer_digest) DO NOTHING RETURNING id`,
    [t,post,this.digest(t,viewer),id]);
   await c.query(`UPDATE feed.view_challenges SET claimed_at=statement_timestamp()
    WHERE tenant_id=$1 AND id=$2`,[t,id]);
   if(!inserted.rows[0])return {qualified:false,duplicate:true};
   const view=String(inserted.rows[0].id);
   const available=await c.query(`SELECT b.* FROM feed.promotion_campaigns b
     JOIN gb_wallet.accounts a ON a.tenant_id=b.tenant_id AND
      a.account_kind='human' AND a.account_id=b.sponsor_id
     WHERE b.tenant_id=$1 AND b.post_id=$2 AND b.state='active'
      AND b.remaining_views>0 AND (b.expires_at IS NULL OR b.expires_at>statement_timestamp()) AND b.sponsor_id<>$3 AND NOT a.frozen
      AND NOT EXISTS (SELECT 1 FROM feed.promotion_campaigns own
       WHERE own.tenant_id=b.tenant_id AND own.post_id=b.post_id
        AND own.sponsor_id=$3)
     ORDER BY b.delivered_views::numeric/b.target_views,b.created_at,b.id
     LIMIT 1 FOR UPDATE OF b`,[t,post,viewer]);
   const selected=available.rows[0] as Row|undefined;
   if(selected){
    const debit=await c.query(`UPDATE gb_wallet.accounts SET purchased_mb=purchased_mb-1,
      reserved_purchased_mb=reserved_purchased_mb-1,version=version+1
      WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2
       AND NOT frozen AND purchased_mb>=1 AND reserved_purchased_mb>=1 RETURNING account_id`,
      [t,selected.sponsor_id]);
    if(!debit.rowCount)throw Error('promotion_reserved_mb_invariant');
    let sharer:string|null=null;
    if(ch.share_link_id){
     const link=await c.query(`SELECT l.sharer_id FROM feed.share_links l
       JOIN feed.promotion_campaigns origin ON origin.tenant_id=l.tenant_id
        AND origin.id=l.campaign_id
       JOIN identity.users sharer ON sharer.tenant_id=l.tenant_id
        AND sharer.user_id=l.sharer_id AND sharer.state='active'
       LEFT JOIN gb_wallet.accounts reward ON reward.tenant_id=l.tenant_id
        AND reward.account_kind='human' AND reward.account_id=l.sharer_id
       WHERE l.tenant_id=$1 AND l.id=$2 AND l.post_id=$3
        AND l.revoked_at IS NULL AND origin.state='active' AND origin.remaining_views>0
        AND COALESCE(reward.frozen,false)=false`,
       [t,ch.share_link_id,post]);
     const candidate=link.rows[0]?.sharer_id as string|undefined;
     if(candidate&&candidate!==viewer&&candidate!==selected.sponsor_id&&
       candidate!==owner.rows[0].author_user_id)sharer=candidate;
    }
    const operation=`promotion-view:${view}`;
    await c.query(`INSERT INTO gb_wallet.operations
     (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,operation_kind,amount_mb,state)
     VALUES($1,$2,$3,$4,$5,'promotion_view',1,'completed')`,
      [t,operation,selected.sponsor_id,`view:${view}`,hash(JSON.stringify([selected.id,view]))]);
    await c.query(`INSERT INTO gb_wallet.movements(tenant_id,operation_id,
     from_kind,from_id,to_kind,to_id,source_bucket,target_bucket,amount_mb)
     VALUES($1,$2,'human',$3,'usage','promotion','purchased','usage',1)`,
      [t,operation,selected.sponsor_id]);
    const allocation=qualifiedViewAllocation(sharer!==null);
    await c.query(`INSERT INTO feed.promotion_view_charges
     (tenant_id,view_id,campaign_id,wallet_operation_id,platform_half_mb,sharer_half_mb,sharer_id)
     VALUES($1,$2,$3,$4,$5,$6,$7)`,[t,view,selected.id,operation,
      allocation.platformHalfMb,allocation.sharerHalfMb,sharer]);
    await c.query(`UPDATE feed.qualified_views SET campaign_id=$3,sharer_id=$4
     WHERE tenant_id=$1 AND id=$2`,[t,view,selected.id,sharer]);
    await c.query(`UPDATE feed.promotion_campaigns SET remaining_views=remaining_views-1,
     delivered_views=delivered_views+1,direct_views=direct_views+$3,
     referred_views=referred_views+$4,
     state=CASE WHEN remaining_views=1 THEN 'completed' ELSE state END,
     updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,
      [t,selected.id,sharer?0:1,sharer?1:0]);
    await this.audit(c,t,post,'system','qualified_view',String(selected.id),
      {viewId:view,referral:!!sharer,chargedMb:1});
    if(count(selected.remaining_views)===1){
     await this.audit(c,t,post,'system','campaign_completed',String(selected.id));
     if((await this.disable(c,t,post)).rowCount)
      await this.audit(c,t,post,'system','post_disabled',String(selected.id));
    }
   }
   const counted=await c.query<{n:string}>(`SELECT count(*)::text AS n FROM
    feed.qualified_views WHERE tenant_id=$1 AND post_id=$2`,[t,post]);
   return {qualified:true,duplicate:false,verifiedViews:Number(counted.rows[0]!.n),
    payable:!!selected};
  });
 }

 async mine(t:string,u:string){actor(t,u);
  const campaigns=await this.pool.query(`SELECT c.*,(
    SELECT a.details->>'reason' FROM feed.promotion_audit a
    WHERE a.tenant_id=c.tenant_id AND a.campaign_id=c.id
      AND a.action='rejected' ORDER BY a.id DESC LIMIT 1) AS review_reason
    FROM feed.promotion_campaigns c
    WHERE c.tenant_id=$1 AND c.sponsor_id=$2
    ORDER BY c.created_at DESC,c.id DESC LIMIT 100`,[t,u]);
  const inactive=await this.pool.query(`SELECT p.id,p.body,p.kind,p.paid_disabled_at,
    p.paid_purge_at,(SELECT count(*)::int FROM feed.qualified_views v
      WHERE v.tenant_id=p.tenant_id AND v.post_id=p.id) AS historical_views
    FROM feed.posts p WHERE p.tenant_id=$1 AND p.author_type='human'
     AND p.author_user_id=$2 AND p.state='hidden'
     AND p.paid_purge_at>statement_timestamp() AND p.paid_purged_at IS NULL
    ORDER BY p.paid_purge_at,p.id LIMIT 100`,[t,u]);
  const earnings=await this.pool.query(`SELECT b.post_id,count(*)::int AS views,
    sum(c.sharer_half_mb)::int AS half_mb FROM feed.promotion_view_charges c
    JOIN feed.promotion_campaigns b ON b.tenant_id=c.tenant_id AND b.id=c.campaign_id
    WHERE c.tenant_id=$1 AND c.sharer_id=$2 GROUP BY b.post_id
    ORDER BY views DESC LIMIT 100`,[t,u]);
  const serverClock=await this.pool.query(`SELECT statement_timestamp() AS now_utc`);
  const notices=await this.pool.query(`SELECT a.id,a.action,a.post_id,a.campaign_id,
    a.occurred_at,a.details->>'reason' AS reason FROM feed.promotion_audit a
    JOIN feed.posts p ON p.tenant_id=a.tenant_id AND p.id=a.post_id
    LEFT JOIN feed.promotion_campaigns c ON c.tenant_id=a.tenant_id AND c.id=a.campaign_id
    WHERE a.tenant_id=$1 AND (p.author_user_id=$2 OR c.sponsor_id=$2)
      AND a.action IN ('budget_reserved','approved','rejected','cancelled','paused',
       'resumed','campaign_completed','post_disabled','moderation_takedown',
       'owner_deleted','paid_post_purged')
    ORDER BY a.occurred_at DESC,a.id DESC LIMIT 50`,[t,u]);
  return {serverNow:serverClock.rows[0]!.now_utc,
   lifecycleNotifications:notices.rows.map(n=>({id:String(n.id),kind:String(n.action),
    postId:String(n.post_id),campaignId:n.campaign_id==null?null:String(n.campaign_id),
    at:n.occurred_at,...(n.reason?{reason:String(n.reason)}:{})})),
   campaigns:campaigns.rows.map(x=>campaign(x as Row)),
   inactivePosts:inactive.rows.map(x=>({postId:String(x.id),purgeAt:x.paid_purge_at,
    disabledAt:x.paid_disabled_at,kind:x.kind,body:String(x.body??''),
    historicalVerifiedViews:count(x.historical_views)})),
   sharingEarnings:earnings.rows.map(x=>({postId:x.post_id,
    referredQualifiedViews:x.views,pendingHalfMb:x.half_mb,
    settlementState:'provider_qualification_pending'}))};
 }

 async deleteOwnPost(t:string,u:string,post:string){actor(t,u);identifier(post);
  return serial(this.pool,async c=>{
   const p=await c.query(`SELECT id,paid_purged_at FROM feed.posts WHERE tenant_id=$1
    AND id=$2 AND author_type='human' AND author_user_id=$3 FOR UPDATE`,[t,post,u]);
   if(!p.rows[0])fail('post_not_owned',404);
   if(p.rows[0].paid_purged_at)return {postId:post,state:'deleted'};
   const campaigns=await c.query(`SELECT * FROM feed.promotion_campaigns WHERE tenant_id=$1
     AND post_id=$2 AND state IN ('active','paused','pending_review')
     ORDER BY sponsor_id,id FOR UPDATE`,[t,post]);
   for(const b of campaigns.rows){await this.refund(c,t,b as Row);
    await c.query(`UPDATE feed.promotion_campaigns SET state='cancelled' WHERE tenant_id=$1 AND id=$2`,[t,b.id]);
    await this.audit(c,t,post,u,'owner_delete_refund',String(b.id),{releasedMb:b.remaining_views});
   }
   await this.enqueueMediaDeletion(c,t,post);
   await c.query(`UPDATE feed.posts SET state='removed',body='',media_ids='{}',
     transcript=NULL,paid_purged_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,post]);
   await c.query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
    WHERE tenant_id=$1 AND post_id=$2 AND revoked_at IS NULL`,[t,post]);
   await this.audit(c,t,post,u,'owner_deleted');
   return {postId:post,state:'deleted'};
  });
 }

 /** Reap reached campaign deadlines under serializable row locks. A funded
  * view checks the same server deadline, so worker downtime cannot overbill. */
 async expireCampaigns(limit=100){
  if(!Number.isSafeInteger(limit)||limit<1||limit>500)fail('invalid_limit');
  return serial(this.pool,async c=>{
   const due=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE expires_at<=statement_timestamp() AND state IN ('pending_review','active','paused')
    ORDER BY expires_at,id LIMIT $1 FOR UPDATE SKIP LOCKED`,[limit]);
   let refundedMb=0;
   for(const b of due.rows){
    const t=String(b.tenant_id),post=String(b.post_id);
    await c.query(`SELECT 1 FROM feed.posts WHERE tenant_id=$1 AND id=$2 FOR UPDATE`,[t,post]);
    await this.refund(c,t,b as Row);
    refundedMb+=count(b.remaining_views);
    await c.query(`UPDATE feed.promotion_campaigns SET state='expired',
     updated_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,b.id]);
    await c.query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
     WHERE tenant_id=$1 AND campaign_id=$2 AND revoked_at IS NULL`,[t,b.id]);
    await this.disable(c,t,post);
    await this.audit(c,t,post,'system','campaign_expired',String(b.id),
     {releasedMb:count(b.remaining_views),expiryAt:b.expires_at});
   }
   return {expired:due.rowCount??0,refundedMb};
  });
 }
 async purgeExpired(limit=100){if(!Number.isInteger(limit)||limit<1||limit>500)fail('invalid_limit');
  return serial(this.pool,async c=>{
   const posts=await c.query(`SELECT tenant_id,id FROM feed.posts WHERE author_type='human'
    AND paid_purge_at<=statement_timestamp() AND paid_purged_at IS NULL
    ORDER BY paid_purge_at,id LIMIT $1 FOR UPDATE SKIP LOCKED`,[limit]);
   for(const p of posts.rows){const t=String(p.tenant_id),id=String(p.id);
    const campaigns=await c.query(`SELECT * FROM feed.promotion_campaigns WHERE tenant_id=$1
     AND post_id=$2 AND state IN ('active','paused','pending_review') FOR UPDATE`,[t,id]);
    for(const b of campaigns.rows){await this.refund(c,t,b as Row);
     await c.query(`UPDATE feed.promotion_campaigns SET state='cancelled'
      WHERE tenant_id=$1 AND id=$2`,[t,b.id]);
    }
    await this.enqueueMediaDeletion(c,t,id);
    await c.query(`UPDATE feed.posts SET state='removed',body='',media_ids='{}',
     transcript=NULL,paid_purged_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,id]);
    await c.query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
     WHERE tenant_id=$1 AND post_id=$2 AND revoked_at IS NULL`,[t,id]);
    await this.audit(c,t,id,'system','paid_post_purged');
   }
   return {purged:posts.rowCount??0};
  });
 }

 /** Unused authenticated view challenges are short-lived pseudonymous proof,
  * not immutable financial events. Remove them 24 hours after issue (far
  * beyond their five-minute acceptance window) using the existing partial
  * expiry index. Claimed challenges remain for qualified-view audit/FKs. */
 async pruneExpiredViewChallenges(limit=100){
  if(!Number.isSafeInteger(limit)||limit<1||limit>500)fail('invalid_limit');
  return serial(this.pool,async c=>{
   const stale=await c.query(`SELECT tenant_id,id FROM feed.view_challenges
    WHERE claimed_at IS NULL AND started_at<statement_timestamp()-interval '24 hours'
    ORDER BY started_at,id LIMIT $1 FOR UPDATE SKIP LOCKED`,[limit]);
   for(const row of stale.rows)await c.query(`DELETE FROM feed.view_challenges
    WHERE tenant_id=$1 AND id=$2 AND claimed_at IS NULL`,[row.tenant_id,row.id]);
   return {pruned:stale.rowCount??0};
  });
 }

 async claimMediaDeletions(limit=20){
  if(!Number.isSafeInteger(limit)||limit<1||limit>100)fail('invalid_limit');
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT tenant_id,post_id,media_id,object_key
    FROM feed.paid_media_deletion_outbox WHERE completed_at IS NULL
      AND retry_after<=statement_timestamp()
      AND (lease_until IS NULL OR lease_until<=statement_timestamp())
    ORDER BY retry_after,post_id,media_id LIMIT $1 FOR UPDATE SKIP LOCKED`,[limit]);
   for(const row of r.rows)await c.query(`UPDATE feed.paid_media_deletion_outbox
     SET lease_until=statement_timestamp()+interval '3 minutes',attempt_count=attempt_count+1
     WHERE tenant_id=$1 AND post_id=$2 AND media_id=$3`,
     [row.tenant_id,row.post_id,row.media_id]);
   return r.rows.map(row=>({tenantId:String(row.tenant_id),postId:String(row.post_id),
    mediaId:String(row.media_id),objectKey:String(row.object_key)}));
  });
 }
 async settleMediaDeletion(input:{tenantId:string;postId:string;mediaId:string},success:boolean){
  const {tenantId,postId,mediaId}=input;actor(tenantId,'system');identifier(postId);identifier(mediaId);
  return this.pool.query(`UPDATE feed.paid_media_deletion_outbox SET
    lease_until=NULL,
    completed_at=CASE WHEN $4 THEN statement_timestamp() ELSE completed_at END,
    retry_after=CASE WHEN $4 THEN retry_after ELSE
      statement_timestamp()+make_interval(secs=>LEAST(86400,
       CAST(POWER(2,LEAST(attempt_count,16)) AS integer)*30)) END
    WHERE tenant_id=$1 AND post_id=$2 AND media_id=$3
      AND completed_at IS NULL AND lease_until>statement_timestamp()`,
    [tenantId,postId,mediaId,success]);
 }
}
