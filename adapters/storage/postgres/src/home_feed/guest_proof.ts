import {createHash} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';

type PublicSource={
 find(id:string):Promise<{id:string;gone?:boolean}|null>;
 validReferral(id:string,token:string):Promise<boolean>;
};
type ProofActor={consentDigest:string;viewerDigest:string};
type Row=Record<string,unknown>;
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const digest=/^[0-9a-f]{64}$/;
const referral=/^[A-Za-z0-9_-]{20,128}$/;
const fail=(code:string,statusCode=422):never=>{
 throw Object.assign(new Error(code),{code,statusCode});
};
async function transaction<T>(pool:Pool,fn:(c:PoolClient)=>Promise<T>):Promise<T>{
 for(let i=0;i<4;i++)try{return await withTransaction(pool,fn,{isolation:'serializable'});}
 catch(e){if(!['40001','40P01'].includes(String((e as {code?:unknown}).code))||i===3)throw e;}
 throw Error('guest_proof_serialization_exhausted');
}

/** Pseudonymous and deliberately NONPAYABLE public visitor evidence.
 * This never inserts qualified_views, promotion_view_charges or wallet rows.
 * A random consent cookie is not proof of a distinct person: every reported
 * event stays pending independent fraud review and outside public counters. */
export class PgStatusGuestProofs {
 constructor(private readonly pool:Pool,private readonly publicPosts:PublicSource){}

 async revoked(consentDigest:string){
  if(!digest.test(consentDigest))return true;
  const r=await this.pool.query(`SELECT 1 FROM feed.guest_consent_revocations
   WHERE consent_digest=$1 AND expires_at>statement_timestamp()`,[consentDigest]);
  return !!r.rowCount;
 }

 async begin(postId:string,actor:ProofActor,referralToken?:string){
  if(!uuid.test(postId)||!digest.test(actor.consentDigest)||
    !digest.test(actor.viewerDigest))fail('guest_proof_invalid');
  if(await this.revoked(actor.consentDigest))fail('guest_consent_withdrawn',403);
  const visible=await this.publicPosts.find(postId);
  if(!visible||visible.gone)fail('guest_post_unavailable',404);
  return transaction(this.pool,async c=>{
   const live=await c.query(`SELECT tenant_id FROM feed.posts p WHERE p.id=$1
    AND p.state='published' AND p.audience='public'
    AND p.paid_purged_at IS NULL
    AND (p.author_type='masana' OR EXISTS (
      SELECT 1 FROM feed.promotion_campaigns b WHERE b.tenant_id=p.tenant_id
       AND b.post_id=p.id AND b.state='active' AND b.remaining_views>0))
    ORDER BY tenant_id LIMIT 2`,[postId]);
   if(live.rows.length!==1)fail('guest_post_unavailable',404);
   const tenant=String(live.rows[0]!.tenant_id);
   const revoke=await c.query(`SELECT 1 FROM feed.guest_consent_revocations
    WHERE consent_digest=$1 AND expires_at>statement_timestamp()`,[actor.consentDigest]);
   if(revoke.rowCount)fail('guest_consent_withdrawn',403);
   const count=await c.query(`SELECT count(*)::int AS n FROM feed.guest_view_proofs
    WHERE consent_digest=$1 AND started_at>statement_timestamp()-interval '5 minutes'`,
    [actor.consentDigest]);
   if(Number(count.rows[0]?.n)>=100)fail('guest_challenge_rate_limited',429);
   let linked:string|null=null;
   if(referralToken&&referral.test(referralToken)&&
     await this.publicPosts.validReferral(postId,referralToken)){
    const sha=createHash('sha256').update(referralToken).digest('hex');
    const link=await c.query(`SELECT l.id FROM feed.share_links l
     JOIN feed.promotion_campaigns b ON b.tenant_id=l.tenant_id
       AND b.id=l.campaign_id AND b.post_id=l.post_id
     JOIN identity.users sharer ON sharer.tenant_id=l.tenant_id
       AND sharer.user_id=l.sharer_id AND sharer.state='active'
     LEFT JOIN gb_wallet.accounts reward ON reward.tenant_id=l.tenant_id
       AND reward.account_kind='human' AND reward.account_id=l.sharer_id
     WHERE l.tenant_id=$1 AND l.post_id=$2 AND l.token_sha256=$3
       AND l.revoked_at IS NULL AND b.state='active' AND b.remaining_views>0
       AND COALESCE(reward.frozen,false)=false
     LIMIT 2`,[tenant,postId,sha]);
    if(link.rows.length===1)linked=String(link.rows[0]!.id);
   }
   const r=await c.query(`INSERT INTO feed.guest_view_proofs
    (tenant_id,post_id,consent_digest,viewer_digest,referral_link_id)
    VALUES($1,$2,$3,$4,$5)
    ON CONFLICT(tenant_id,post_id,consent_digest) DO NOTHING RETURNING id,started_at`,
    [tenant,postId,actor.consentDigest,actor.viewerDigest,linked]);
   if(!r.rowCount)return {started:false,duplicate:true,payable:false,qualified:false};
   return {started:true,duplicate:false,challengeId:String(r.rows[0]!.id),
    startedAt:r.rows[0]!.started_at,minimumDwellSeconds:6,
    minimumVisibleFraction:0.5,payable:false,qualified:false};
  });
 }

 async complete(id:string,actor:ProofActor,report:{visibleFraction:number;
  foreground:boolean;engaged:boolean}){
  if(!uuid.test(id)||!digest.test(actor.consentDigest)||!digest.test(actor.viewerDigest))
   fail('guest_proof_invalid');
  if(!Number.isFinite(report.visibleFraction)||report.visibleFraction<0.5||
   report.visibleFraction>1||!report.foreground||!report.engaged)
   fail('guest_proof_not_observed');
  return transaction(this.pool,async c=>{
   const r=await c.query(`SELECT *,EXTRACT(EPOCH FROM
    (statement_timestamp()-started_at))::float8 AS elapsed
    FROM feed.guest_view_proofs WHERE id=$1 AND consent_digest=$2
     AND viewer_digest=$3 FOR UPDATE`,[id,actor.consentDigest,actor.viewerDigest]);
   if(r.rows.length!==1)fail('guest_proof_not_found',404);
   const proof=r.rows[0] as Row;
   if(proof.observed_at)return {recorded:false,duplicate:true,qualified:false,payable:false};
   if(Number(proof.elapsed)<6)fail('guest_proof_too_short',409);
   if(Number(proof.elapsed)>300)fail('guest_proof_expired',409);
   const revoked=await c.query(`SELECT 1 FROM feed.guest_consent_revocations
    WHERE consent_digest=$1 AND expires_at>statement_timestamp()`,[actor.consentDigest]);
   if(revoked.rowCount)fail('guest_consent_withdrawn',403);
   const post=String(proof.post_id);
   const visible=await this.publicPosts.find(post);
   if(!visible||visible.gone)fail('guest_post_unavailable',404);
   const result=await c.query(`UPDATE feed.guest_view_proofs g
    SET observed_at=statement_timestamp(),review_state='pending_review',
     referral_link_id=CASE WHEN EXISTS(
       SELECT 1 FROM feed.share_links l
       JOIN feed.promotion_campaigns b ON b.tenant_id=l.tenant_id
        AND b.id=l.campaign_id AND b.post_id=l.post_id
       JOIN identity.users sharer ON sharer.tenant_id=l.tenant_id
        AND sharer.user_id=l.sharer_id AND sharer.state='active'
       LEFT JOIN gb_wallet.accounts reward ON reward.tenant_id=l.tenant_id
        AND reward.account_kind='human' AND reward.account_id=l.sharer_id
       WHERE l.tenant_id=g.tenant_id AND l.id=g.referral_link_id
        AND l.revoked_at IS NULL AND b.state='active' AND b.remaining_views>0
        AND COALESCE(reward.frozen,false)=false)
      THEN g.referral_link_id ELSE NULL END
    WHERE g.tenant_id=$1 AND g.id=$2 AND EXISTS (
      SELECT 1 FROM feed.posts p WHERE p.tenant_id=g.tenant_id AND p.id=g.post_id
       AND p.state='published' AND p.audience='public' AND p.paid_purged_at IS NULL)
    RETURNING id`,[proof.tenant_id,id]);
   if(!result.rowCount)fail('guest_post_unavailable',404);
   return {recorded:true,reviewStatus:'unverified' as const,
    qualified:false,payable:false};
  });
 }

 async withdraw(consentDigest:string){
  if(!digest.test(consentDigest))return;
  await transaction(this.pool,async c=>{
   await c.query(`INSERT INTO feed.guest_consent_revocations
    (consent_digest,expires_at)
    VALUES($1,statement_timestamp()+interval '24 hours')
    ON CONFLICT(consent_digest) DO UPDATE SET
     expires_at=GREATEST(feed.guest_consent_revocations.expires_at,EXCLUDED.expires_at)`,
    [consentDigest]);
   await c.query(`DELETE FROM feed.guest_view_proofs WHERE consent_digest=$1`,
    [consentDigest]);
  });
 }

 /** Staff review never returns a viewer pseudonym, nonce, sharer identity,
  * network header, account mapping or reward authority. */
 async listPending(tenantId:string,limit=25){
  if(!tenantId||tenantId.length>200||!Number.isSafeInteger(limit)||limit<1||limit>100)
   fail('guest_review_invalid');
  const r=await this.pool.query(`SELECT id,post_id,started_at,observed_at,
    (referral_link_id IS NOT NULL) AS has_referral
   FROM feed.guest_view_proofs
   WHERE tenant_id=$1 AND review_state='pending_review' AND review_decision='none'
   ORDER BY observed_at,id LIMIT $2`,[tenantId,limit]);
  return r.rows.map(row=>({id:String(row.id),postId:String(row.post_id),
   startedAt:row.started_at,observedAt:row.observed_at,
   hasReferral:row.has_referral===true}));
 }

 /** One reason-coded decision, restricted to the authorized staff tenant.
  * Held and rejected are final for this ephemeral, unverified evidence.
  * No positive approval, reward or public view-count pathway exists. */
 async review(tenantId:string,reviewerId:string,id:string,
  decision:'held'|'rejected',reason:string){
  if(!tenantId||tenantId.length>200||!reviewerId||reviewerId.length>200||
   !uuid.test(id)||!['held','rejected'].includes(decision)||
   !['suspicious_automation','invalid_referral','duplicate_exposure','other_risk']
     .includes(reason))fail('guest_review_invalid');
  return transaction(this.pool,async c=>{
   const r=await c.query(`UPDATE feed.guest_view_proofs
    SET review_decision=$4,review_reason=$5,reviewed_by=$2,
     reviewed_at=statement_timestamp()
    WHERE tenant_id=$1 AND id=$3 AND review_state='pending_review'
     AND review_decision='none'
    RETURNING id,post_id,review_decision`,[tenantId,reviewerId,id,decision,reason]);
   if(!r.rowCount)return null;
   return {id:String(r.rows[0]!.id),postId:String(r.rows[0]!.post_id),
    decision:String(r.rows[0]!.review_decision),qualified:false as const,payable:false as const};
  });
 }

 /** Bounded, replica-safe deletion with no guest evidence retained >24h
  * after its start under normal minute-by-minute maintenance. */
 async pruneExpired(limit=100){
  if(!Number.isSafeInteger(limit)||limit<1||limit>500)fail('invalid_limit');
  return transaction(this.pool,async c=>{
   const stale=await c.query(`SELECT tenant_id,id FROM feed.guest_view_proofs
    WHERE started_at<statement_timestamp()-interval '24 hours'
    ORDER BY started_at,id LIMIT $1 FOR UPDATE SKIP LOCKED`,[limit]);
   for(const row of stale.rows)await c.query(`DELETE FROM feed.guest_view_proofs
    WHERE tenant_id=$1 AND id=$2`,[row.tenant_id,row.id]);
   await c.query(`DELETE FROM feed.guest_consent_revocations
    WHERE expires_at<=statement_timestamp()`);
   return {pruned:stale.rowCount??0};
  });
 }
}
