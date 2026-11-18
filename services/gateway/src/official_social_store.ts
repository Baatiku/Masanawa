import {randomUUID,createHash} from 'node:crypto';
import {withTransaction,type Pool} from '@masanawa/postgres';
import {createOfficialSocialFetcher,OfficialSocialError,validOfficialPermalink,type OfficialSourcePost,type OfficialSocialAccount,type createOfficialSocialInspector} from './official_social_import.js';
const sourceEligible=(alias:string)=>`EXISTS(SELECT 1 FROM masana.public_official_dossiers d
 JOIN identity.characters a ON a.tenant_id=d.tenant_id AND a.character_id=d.character_id
 JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id AND o.kind='platform'
 WHERE d.tenant_id=${alias}.tenant_id AND d.character_id=${alias}.character_id AND d.state='approved'
 AND d.review_expires_at>clock_timestamp() AND a.state='active' AND a.active_character_version_id=d.character_version_id)`;
const account=(s:Record<string,any>):OfficialSocialAccount=>({platform:s.platform,accountId:s.account_id,handle:s.handle,rightsBasis:s.rights_basis,reviewExpiresAt:new Date(s.review_expires_at).toISOString()});
/** Durable head polling and history backfill are separate. Inspection uses explicit
 * per-object provider evidence; absence from a timeline cannot delete anything. */
export function createOfficialSocialSync(pool:Pool,fetchPage:ReturnType<typeof createOfficialSocialFetcher>,inspect?:ReturnType<typeof createOfficialSocialInspector>){
 async function failure(source:Record<string,any>,error:unknown,inspection=false){
  const message=error instanceof Error?error.message:'';
  const integrity=/official_source_(?:author_mismatch|binding_changed)/.test(message);
  const denied=message==='official_source_access_denied'||integrity;
  const retry=error instanceof OfficialSocialError?error.retryAfterMs:900000;
  if(message==='official_source_rate_limited')await pool.query(`INSERT INTO feed.official_social_provider_limits(platform,not_before)
   VALUES($1,clock_timestamp()+$2::bigint*interval '1 millisecond') ON CONFLICT(platform) DO UPDATE
   SET not_before=GREATEST(feed.official_social_provider_limits.not_before,EXCLUDED.not_before)`,[source.platform,retry]);
  const code=denied?'access_denied':message==='official_source_rate_limited'?'rate_limited':message==='official_source_cursor_invalid'?'cursor_invalid':'unavailable';
  const lease=inspection?'inspection_lease':'lease_token',until=inspection?'inspection_lease_until':'lease_until';
  await pool.query(`UPDATE feed.official_social_sources SET ${lease}=NULL,${until}=NULL,
   next_sync_at=clock_timestamp()+$3::bigint*interval '1 millisecond',
   next_inspection_at=clock_timestamp()+$3::bigint*interval '1 millisecond',
   state=CASE WHEN $4 THEN 'suspended' ELSE state END,last_error_code=$5,
   cursor=CASE WHEN $6 THEN NULL ELSE cursor END WHERE id=$1 AND ${lease}=$2`,
   [source.id,source[lease],retry,denied,code,message==='official_source_cursor_invalid']);
 }
 async function save(source:Record<string,any>,post:OfficialSourcePost,inspection=false){
  if(post.accountId!==source.account_id||post.platform!==source.platform||
   !/^\d{1,30}(?:_\d{1,30})?$/.test(post.externalId)||createHash('sha256').update(post.originalText).digest('hex')!==post.contentSha256)throw Error('official_source_binding_changed');
  validOfficialPermalink(post.platform,post.sourceUrl);
  const providerId=post.providerId??post.externalId,editVersion=post.editVersion??0,updated=post.providerUpdatedAt??post.publishedAt;
  if(!Number.isSafeInteger(editVersion)||editVersion<0||!Number.isFinite(Date.parse(updated)))throw Error('invalid_official_source_post');
  return withTransaction(pool,async c=>{
   const lease=inspection?'inspection_lease':'lease_token',until=inspection?'inspection_lease_until':'lease_until';
   const eligible=await c.query(`SELECT s.id FROM feed.official_social_sources s WHERE s.id=$1 AND s.${lease}=$2
    AND s.${until}>clock_timestamp() AND s.state='approved' AND s.review_expires_at>clock_timestamp()
    AND ${sourceEligible('s')} AND EXISTS(SELECT 1 FROM masana.character_revisions m WHERE m.tenant_id=s.tenant_id
      AND m.character_id=s.character_id AND m.state='approved') FOR UPDATE OF s`,[source.id,source[lease]]);
   if(!eligible.rows[0])throw Error('official_source_review_required');
   const previous=await c.query(`SELECT * FROM feed.official_social_posts WHERE source_id=$1 AND external_id=$2 FOR UPDATE`,[source.id,post.externalId]);
   const old=previous.rows[0];if(old?.withdrawn_at||old&&Number(old.edit_version)>editVersion||old?.provider_updated_at&&Date.parse(old.provider_updated_at)>Date.parse(updated))return false;
   if(old?.content_sha256===post.contentSha256&&old.provider_id===providerId&&Number(old.edit_version)===editVersion)return false;
   const postId=old?.post_id??randomUUID(),revision=old?old.revision+1:1;
   const original=old?new Date(old.original_published_at).toISOString():post.publishedAt;
   const provenance={platform:post.platform,externalId:post.externalId,providerId,url:post.sourceUrl,
    originalPublishedAt:original,contentSha256:post.contentSha256,revision};
   if(old)await c.query(`UPDATE feed.posts SET body=$3,source_provenance=$4::jsonb
    WHERE tenant_id=$1 AND id=$2 AND state='published'`,[source.tenant_id,postId,post.originalText,JSON.stringify(provenance)]);
   else await c.query(`INSERT INTO feed.posts(tenant_id,id,author_masana_id,kind,body,media_ids,published_by,idempotency_key,published_at,source_provenance)
    VALUES($1,$2,$3,'text',$4,'{}','official-source-import',$5,$6,$7::jsonb)`,[source.tenant_id,postId,source.character_id,post.originalText,`source-${source.id}-${post.externalId}`,original,JSON.stringify(provenance)]);
   await c.query(`INSERT INTO feed.official_social_posts(source_id,external_id,tenant_id,post_id,content_sha256,
    original_published_at,source_url,revision,provider_id,edit_version,provider_updated_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11)
    ON CONFLICT(source_id,external_id) DO UPDATE SET content_sha256=EXCLUDED.content_sha256,revision=EXCLUDED.revision,
     imported_at=clock_timestamp(),source_url=EXCLUDED.source_url,provider_id=EXCLUDED.provider_id,
     edit_version=EXCLUDED.edit_version,provider_updated_at=EXCLUDED.provider_updated_at`,
    [source.id,post.externalId,source.tenant_id,postId,post.contentSha256,original,post.sourceUrl,revision,providerId,editVersion,updated]);
   await c.query(`INSERT INTO feed.official_social_revisions(source_id,external_id,revision,content_sha256) VALUES($1,$2,$3,$4)`,[source.id,post.externalId,revision,post.contentSha256]);return true;
  });
 }
 async function withdraw(sourceId:string,externalId:string,reason:'deleted'|'withheld'|'unavailable'='unavailable'){
  await withTransaction(pool,async c=>{
   const row=await c.query(`UPDATE feed.official_social_posts SET withdrawn_at=COALESCE(withdrawn_at,clock_timestamp()),withdrawal_reason=$3
    WHERE source_id=$1 AND external_id=$2 RETURNING tenant_id,post_id`,[sourceId,externalId,reason]);
   if(row.rows[0])await c.query(`UPDATE feed.posts SET state='removed',body='',media_ids='{}' WHERE tenant_id=$1 AND id=$2`,[row.rows[0].tenant_id,row.rows[0].post_id]);
  });
 }
 async function runOnce(){
  const result=await pool.query(`UPDATE feed.official_social_sources SET lease_token=gen_random_uuid(),lease_until=clock_timestamp()+interval '5 minutes'
   WHERE id=(SELECT s.id FROM feed.official_social_sources s WHERE s.state='approved' AND s.review_expires_at>clock_timestamp()
    AND s.next_sync_at<=clock_timestamp() AND (s.lease_until IS NULL OR s.lease_until<clock_timestamp()) AND ${sourceEligible('s')}
    AND NOT EXISTS(SELECT 1 FROM feed.official_social_provider_limits l WHERE l.platform=s.platform AND l.not_before>clock_timestamp())
    ORDER BY s.next_sync_at,s.id LIMIT 1 FOR UPDATE SKIP LOCKED) RETURNING *`);
  const source=result.rows[0];if(!source)return {imported:0};
  try{
   const head=await fetchPage(account(source));let imported=0;
   for(const post of head.posts)if(await save(source,post))imported++;
   let next=source.cursor as string|null,complete=source.backfill_complete===true;
   if(!complete){if(source.cursor){const history=await fetchPage(account(source),source.cursor);for(const post of history.posts)if(await save(source,post))imported++;next=history.nextCursor??null;}
    else next=head.nextCursor??null;complete=!next;}
   await pool.query(`UPDATE feed.official_social_sources SET cursor=$3,backfill_complete=$4,last_synced_at=clock_timestamp(),
    next_sync_at=clock_timestamp()+CASE WHEN $4 THEN interval '5 minutes' ELSE interval '1 minute' END,
    lease_until=NULL,lease_token=NULL,last_error_code=NULL WHERE id=$1 AND lease_token=$2`,[source.id,source.lease_token,next,complete]);
   return {imported};
  }catch(error){await failure(source,error);throw error;}
 }
 async function reconcileOnce(){
  if(!inspect)return {checked:0,withdrawn:0};
  const result=await pool.query(`UPDATE feed.official_social_sources SET inspection_lease=gen_random_uuid(),inspection_lease_until=clock_timestamp()+interval '2 minutes',next_inspection_at=clock_timestamp()+interval '1 minute'
   WHERE id=(SELECT s.id FROM feed.official_social_sources s WHERE s.state='approved' AND s.review_expires_at>clock_timestamp()
    AND s.next_inspection_at<=clock_timestamp() AND (s.inspection_lease_until IS NULL OR s.inspection_lease_until<clock_timestamp()) AND ${sourceEligible('s')}
    AND NOT EXISTS(SELECT 1 FROM feed.official_social_provider_limits l WHERE l.platform=s.platform AND l.not_before>clock_timestamp())
    AND EXISTS(SELECT 1 FROM feed.official_social_posts p WHERE p.source_id=s.id AND p.withdrawn_at IS NULL AND p.next_check_at<=clock_timestamp())
    ORDER BY s.next_inspection_at,s.id LIMIT 1 FOR UPDATE SKIP LOCKED) RETURNING *`);
  const source=result.rows[0];if(!source)return {checked:0,withdrawn:0};
  try{
   const rows=await pool.query(`SELECT external_id,provider_id FROM feed.official_social_posts WHERE source_id=$1
    AND withdrawn_at IS NULL AND next_check_at<=clock_timestamp() ORDER BY next_check_at,external_id LIMIT 100`,[source.id]);
   if(!rows.rows.length)return {checked:0,withdrawn:0};
   const records=rows.rows.map(r=>({externalId:r.external_id,providerId:r.provider_id}));const result=await inspect(account(source),records);
   const known=new Set(records.map(r=>r.externalId));
   if(result.checkedIds.some(id=>!known.has(id))||result.withdrawn.some(p=>!known.has(p.externalId))||result.posts.some(p=>!known.has(p.externalId)))throw Error('official_source_binding_changed');
   for(const post of result.posts)await save(source,post,true);
   for(const post of result.withdrawn)await withdraw(source.id,post.externalId,post.reason);
   await pool.query(`UPDATE feed.official_social_posts SET next_check_at=clock_timestamp()+CASE WHEN external_id=ANY($3::text[]) THEN interval '1 hour' ELSE interval '5 minutes' END,
    provider_checked_at=CASE WHEN external_id=ANY($3::text[]) THEN clock_timestamp() ELSE provider_checked_at END
    WHERE source_id=$1 AND external_id=ANY($2::text[])`,[source.id,records.map(r=>r.externalId),result.checkedIds]);
   return {checked:result.checkedIds.length,withdrawn:result.withdrawn.length};
  }catch(error){await failure(source,error,true);throw error;}
  finally{await pool.query(`UPDATE feed.official_social_sources SET inspection_lease=NULL,inspection_lease_until=NULL WHERE id=$1 AND inspection_lease=$2`,[source.id,source.inspection_lease]);}
 }
 return {runOnce,reconcileOnce,withdraw,async runBatch(concurrency=2,budget=8){
  if(!Number.isInteger(concurrency)||concurrency<1||concurrency>4||!Number.isInteger(budget)||budget<1||budget>20)throw Error('invalid_social_worker_concurrency');
  const results:PromiseSettledResult<{imported:number;checked:number;withdrawn:number}>[]=[];let next=0;
  await Promise.all(Array.from({length:concurrency},async()=>{while(next<budget){const index=next++;
   try{const imported=await runOnce();const reconciled=await reconcileOnce();results[index]={status:'fulfilled',value:{...imported,...reconciled}};}
   catch(reason){results[index]={status:'rejected',reason};}
  }}));return results;
 }};
}
