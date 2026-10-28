import {createHash,createHmac,randomBytes} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';

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
  refundedUnusedMb:['cancelled','rejected'].includes(state)?remaining:0,
  ...(typeof r.review_reason==='string'&&r.review_reason?
    {reviewReason:r.review_reason}:{}),
  priceVersion:String(r.price_version)};
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

 async quote(input:{tenantId:string;sponsorId:string;postId?:string;body?:string;targetViews:number}){
  const {tenantId:t,sponsorId:s}=input;actor(t,s);
  if(!Number.isSafeInteger(input.targetViews)||input.targetViews<1||input.targetViews>1000000)
   fail('invalid_view_target');
  const isBoost=input.postId!==undefined;
  if(isBoost)identifier(input.postId!);
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
   const balance=await c.query<{free:string}>(`SELECT
    (purchased_mb-reserved_purchased_mb)::text AS free FROM gb_wallet.accounts
    WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2 AND NOT frozen`,[t,s]);
   const available=balance.rows[0]?count(balance.rows[0].free):0;
   const quote=await c.query(`INSERT INTO feed.promotion_quotes
     (tenant_id,sponsor_id,post_id,kind,body,target_views)
     VALUES($1,$2,$3,$4,$5,$6) RETURNING id,expires_at`,
     [t,s,input.postId??null,isBoost?'boost':'human_primary',isBoost?null:body,input.targetViews]);
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
   const fp=hash(JSON.stringify([qid,s,q.kind,q.post_id,q.body,q.target_views]));
   const previous=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND sponsor_id=$2 AND idempotency_key=$3`,[t,s,key]);
   if(previous.rows[0]){
    if(previous.rows[0].fingerprint!==fp)fail('idempotency_conflict',409);
    return campaign(previous.rows[0] as Row);
   }
   if(new Date(String(q.expires_at)).getTime()<=Date.now())fail('quote_expired',409);
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
    const created=await c.query(`INSERT INTO feed.posts
     (tenant_id,author_masana_id,author_type,author_user_id,kind,body,media_ids,
      transcript,state,idempotency_key,published_by)
     VALUES($1,NULL,'human',$2,'text',$3,'{}',NULL,'hidden',$4,$2) RETURNING id`,
     [t,s,q.body,`promotion:${qid}`]);
    post=String(created.rows[0]!.id);
   }
   const state=q.kind==='human_primary'?'pending_review':'active';
   const inserted=await c.query(`INSERT INTO feed.promotion_campaigns
    (tenant_id,quote_id,post_id,sponsor_id,kind,idempotency_key,fingerprint,
     state,target_views,remaining_views,price_version)
    VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$9,$10) RETURNING *`,
    [t,qid,post,s,q.kind,key,fp,state,q.target_views,q.price_version]);
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
     published_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2
     AND state='hidden' AND author_type='human' AND paid_disabled_at IS NULL
     AND paid_purged_at IS NULL RETURNING id`,[t,p.post_id]);
    if(!accepted.rowCount)fail('post_no_longer_approvable',409);
   }else await this.refund(c,t,p);
   await c.query(`UPDATE feed.promotion_campaigns SET state=$3,reviewed_by=$4,
    reviewed_at=statement_timestamp(),updated_at=statement_timestamp()
    WHERE tenant_id=$1 AND id=$2`,[t,id,approve?'active':'rejected',editor]);
   await this.audit(c,t,String(p.post_id),editor,approve?'approved':'rejected',id,
    rationale?{reason:rationale}:{});
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
   p.author_user_id,p.kind AS content_kind,p.body,p.state AS post_state
   FROM feed.promotion_campaigns c JOIN feed.posts p
    ON p.tenant_id=c.tenant_id AND p.id=c.post_id
   WHERE c.tenant_id=$1 AND c.state='pending_review'
   ORDER BY c.created_at,c.id LIMIT 100`,[t]);
  return {pending:r.rows.map(x=>({campaignId:String(x.id),postId:String(x.post_id),
   sponsorId:String(x.sponsor_id),authorId:String(x.author_user_id),
   campaignKind:String(x.kind),contentKind:String(x.content_kind),
   body:String(x.body??''),postState:String(x.post_state),
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
 async cancel(t:string,s:string,id:string){actor(t,s);identifier(id);
  return serial(this.pool,async c=>{
   const r=await c.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2 AND sponsor_id=$3 FOR UPDATE`,[t,id,s]);
   const p=(r.rows[0] as Row|undefined)??fail('campaign_not_found',404);
   if(['completed','cancelled','rejected'].includes(String(p.state)))return campaign(p);
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
      (post.paid_purge_at==null||new Date(post.paid_purge_at).getTime()>Date.now()))))
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
    WHERE tenant_id=$1 AND id=$2 AND state='published'`,[t,post]);
   if(!p.rows[0])fail('post_not_found',404);
   const source=await c.query(`SELECT id FROM feed.promotion_campaigns WHERE tenant_id=$1
    AND post_id=$2 AND sponsor_id<>$3 AND state='active' AND remaining_views>0
    ORDER BY created_at,id LIMIT 1`,[t,post,sharer]);
   const base=`${this.publicBaseUrl.replace(/\/$/,'')}/status/${post}`;
   if(!source.rows[0]||p.rows[0].author_user_id===sharer)
    return {url:base,earnable:false};
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
    AND state='published' AND paid_purged_at IS NULL`,[t,post]);
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
    const r=await c.query(`SELECT id FROM feed.share_links WHERE tenant_id=$1
      AND post_id=$2 AND token_sha256=$3 AND revoked_at IS NULL`,[t,post,hash(referral)]);
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
     AND id=$2 AND state='published' AND paid_purged_at IS NULL FOR UPDATE`,[t,post]);
   if(!owner.rows[0])fail('post_unavailable',404);
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
      AND b.remaining_views>0 AND b.sponsor_id<>$3 AND NOT a.frozen
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
       WHERE l.tenant_id=$1 AND l.id=$2 AND l.post_id=$3
        AND l.revoked_at IS NULL AND origin.state='active' AND origin.remaining_views>0`,
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
