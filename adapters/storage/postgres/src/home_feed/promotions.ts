import {createHash,createHmac,randomBytes} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';

type Row=Record<string,unknown>;
export class PromotionError extends Error {
 constructor(readonly status:number,readonly code:string){super(code);}
}
const fail=(code:string,status=422):never=>{throw new PromotionError(status,code);};
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const principal=/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/;
const keyPattern=/^[A-Za-z0-9][A-Za-z0-9:_-]{7,127}$/;
const hash=(s:string)=>createHash('sha256').update(s).digest('hex');
const count=(v:unknown)=>{const n=Number(v);if(!Number.isSafeInteger(n)||n<0)throw Error('corrupt_promotion_balance');return n;};
function actor(t:string,u:string){if(!principal.test(t)||!principal.test(u))fail('invalid_actor');}
function identifier(id:string){if(!uuid.test(id))fail('invalid_identifier');}
function campaign(r:Row){return {id:String(r.id),quoteId:String(r.quote_id),postId:String(r.post_id),
 kind:String(r.kind),state:String(r.state),targetViews:count(r.target_views),
 remainingViews:count(r.remaining_views),deliveredViews:count(r.delivered_views),
 directViews:count(r.direct_views),referredViews:count(r.referred_views),
 priceVersion:String(r.price_version)};}
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
  WHERE tenant_id=$1 AND id=$2 AND author_type='human' AND state='published'
   AND NOT EXISTS(SELECT 1 FROM feed.promotion_campaigns x WHERE x.tenant_id=$1 AND x.post_id=$2
    AND x.state='active' AND x.remaining_views>0)`,[t,post]);}

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
  const r=await this.pool.query(`SELECT c.* FROM feed.promotion_quotes q
   LEFT JOIN feed.promotion_campaigns c ON c.tenant_id=q.tenant_id AND c.quote_id=q.id
   WHERE q.tenant_id=$1 AND q.sponsor_id=$2 AND q.id=$3`,[t,s,id]);
  if(!r.rows[0])fail('quote_not_found',404);
  return {campaign:r.rows[0].id?campaign(r.rows[0] as Row):null};
 }
 async review(t:string,editor:string,id:string,approve:boolean){actor(t,editor);identifier(id);
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
   await this.audit(c,t,String(p.post_id),editor,approve?'approved':'rejected',id);
   return {campaignId:id,state:approve?'active':'rejected'};
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
   return {...campaign(p),state:'cancelled'};
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
   let link:string|null=null;
   if(referral&&referral.length<=128){
    const r=await c.query(`SELECT id FROM feed.share_links WHERE tenant_id=$1
      AND post_id=$2 AND token_sha256=$3 AND revoked_at IS NULL`,[t,post,hash(referral)]);
    if(r.rows[0])link=String(r.rows[0].id);
   }
   const added=await c.query(`INSERT INTO feed.view_challenges
    (tenant_id,post_id,viewer_digest,share_link_id)
    VALUES($1,$2,$3,$4) RETURNING id,started_at`,[t,post,this.digest(t,viewer),link]);
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
    await c.query(`INSERT INTO feed.promotion_view_charges
     (tenant_id,view_id,campaign_id,wallet_operation_id,platform_half_mb,sharer_half_mb,sharer_id)
     VALUES($1,$2,$3,$4,$5,$6,$7)`,[t,view,selected.id,operation,sharer?1:2,sharer?1:0,sharer]);
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
    if(count(selected.remaining_views)===1)await this.disable(c,t,post);
   }
   const counted=await c.query<{n:string}>(`SELECT count(*)::text AS n FROM
    feed.qualified_views WHERE tenant_id=$1 AND post_id=$2`,[t,post]);
   return {qualified:true,duplicate:false,verifiedViews:Number(counted.rows[0]!.n),
    payable:!!selected};
  });
 }

 async mine(t:string,u:string){actor(t,u);
  const campaigns=await this.pool.query(`SELECT * FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND sponsor_id=$2 ORDER BY created_at DESC,id DESC LIMIT 100`,[t,u]);
  const inactive=await this.pool.query(`SELECT id,paid_purge_at FROM feed.posts
    WHERE tenant_id=$1 AND author_type='human' AND author_user_id=$2
     AND state='hidden' AND paid_purge_at>statement_timestamp()
     AND paid_purged_at IS NULL ORDER BY paid_purge_at LIMIT 100`,[t,u]);
  const earnings=await this.pool.query(`SELECT b.post_id,count(*)::int AS views,
    sum(c.sharer_half_mb)::int AS half_mb FROM feed.promotion_view_charges c
    JOIN feed.promotion_campaigns b ON b.tenant_id=c.tenant_id AND b.id=c.campaign_id
    WHERE c.tenant_id=$1 AND c.sharer_id=$2 GROUP BY b.post_id
    ORDER BY views DESC LIMIT 100`,[t,u]);
  return {campaigns:campaigns.rows.map(x=>campaign(x as Row)),
   inactivePosts:inactive.rows.map(x=>({postId:String(x.id),purgeAt:x.paid_purge_at})),
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
    await c.query(`UPDATE feed.posts SET state='removed',body='',media_ids='{}',
     transcript=NULL,paid_purged_at=statement_timestamp() WHERE tenant_id=$1 AND id=$2`,[t,id]);
    await c.query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
     WHERE tenant_id=$1 AND post_id=$2 AND revoked_at IS NULL`,[t,id]);
    await this.audit(c,t,id,'system','paid_post_purged');
   }
   return {purged:posts.rowCount??0};
  });
 }
}
