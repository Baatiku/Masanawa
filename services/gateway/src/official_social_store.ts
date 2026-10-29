import {randomUUID} from 'node:crypto';
import {withTransaction,type Pool} from '@masanawa/postgres';
import {createOfficialSocialFetcher,type OfficialSourcePost} from './official_social_import.js';
/** Only a reviewed account bound to an active reviewed public-official identity
 * can supply a Status post. No social credentials are stored in customer data. */
export function createOfficialSocialSync(pool:Pool,fetchPage:ReturnType<typeof createOfficialSocialFetcher>){
 async function save(source:Record<string,any>,post:OfficialSourcePost){
  if(post.accountId!==source.account_id||post.platform!==source.platform)throw Error('official_source_binding_changed');
  await withTransaction(pool,async c=>{
   const eligible=await c.query(`SELECT s.id FROM feed.official_social_sources s
    JOIN masana.public_official_dossiers d ON d.tenant_id=s.tenant_id AND d.character_id=s.character_id
    JOIN identity.characters a ON a.tenant_id=d.tenant_id AND a.character_id=d.character_id
    JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id AND o.kind='platform'
    WHERE s.id=$1 AND s.lease_token=$2 AND s.state='approved' AND s.review_expires_at>clock_timestamp()
     AND d.state='approved' AND d.review_expires_at>clock_timestamp()
     AND a.state='active' AND a.active_character_version_id=d.character_version_id
     AND EXISTS(SELECT 1 FROM masana.character_revisions m WHERE m.tenant_id=a.tenant_id
      AND m.character_id=a.character_id AND m.state='approved') FOR UPDATE OF s`,[source.id,source.lease_token]);
   if(!eligible.rows[0])throw Error('official_source_review_required');
   const previous=await c.query(`SELECT * FROM feed.official_social_posts WHERE source_id=$1 AND external_id=$2 FOR UPDATE`,[source.id,post.externalId]);
   const old=previous.rows[0];if(old?.withdrawn_at)return;
   if(old?.content_sha256===post.contentSha256)return;
   const postId=old?.post_id??randomUUID(),revision=old?old.revision+1:1;
   const provenance={platform:post.platform,externalId:post.externalId,url:post.sourceUrl,
    originalPublishedAt:post.publishedAt,contentSha256:post.contentSha256,revision};
   if(old)await c.query(`UPDATE feed.posts SET body=$3,source_provenance=$4::jsonb
     WHERE tenant_id=$1 AND id=$2 AND state='published'`,[source.tenant_id,postId,post.originalText,JSON.stringify(provenance)]);
   else await c.query(`INSERT INTO feed.posts(tenant_id,id,author_masana_id,kind,body,media_ids,
    published_by,idempotency_key,published_at,source_provenance)
    VALUES($1,$2,$3,'text',$4,'{}',$5,$6,$7,$8::jsonb)`,[source.tenant_id,postId,source.character_id,
     post.originalText,'official-source-import',`source-${source.id}-${post.externalId}`,post.publishedAt,JSON.stringify(provenance)]);
   await c.query(`INSERT INTO feed.official_social_posts(source_id,external_id,tenant_id,post_id,
    content_sha256,original_published_at,source_url,revision) VALUES($1,$2,$3,$4,$5,$6,$7,$8)
    ON CONFLICT(source_id,external_id) DO UPDATE SET content_sha256=EXCLUDED.content_sha256,
      revision=EXCLUDED.revision,imported_at=clock_timestamp(),source_url=EXCLUDED.source_url`,
    [source.id,post.externalId,source.tenant_id,postId,post.contentSha256,post.publishedAt,post.sourceUrl,revision]);
   await c.query(`INSERT INTO feed.official_social_revisions(source_id,external_id,revision,content_sha256)
    VALUES($1,$2,$3,$4)`,[source.id,post.externalId,revision,post.contentSha256]);
  });
 }
 return {
  async runOnce(){
   const result=await pool.query(`UPDATE feed.official_social_sources SET lease_token=gen_random_uuid(),
    lease_until=clock_timestamp()+interval '5 minutes' WHERE id=(SELECT id FROM feed.official_social_sources
     WHERE state='approved' AND review_expires_at>clock_timestamp() AND next_sync_at<=clock_timestamp()
      AND (lease_until IS NULL OR lease_until<clock_timestamp()) ORDER BY next_sync_at,id LIMIT 1
      FOR UPDATE SKIP LOCKED) RETURNING *`);
   const source=result.rows[0];if(!source)return {imported:0};
   try{
    const page=await fetchPage({platform:source.platform,accountId:source.account_id,handle:source.handle,
     rightsBasis:source.rights_basis,reviewExpiresAt:new Date(source.review_expires_at).toISOString()},source.cursor??undefined);
    for(const post of page.posts)await save(source,post);
    await pool.query(`UPDATE feed.official_social_sources SET cursor=$3,last_synced_at=clock_timestamp(),
     next_sync_at=clock_timestamp()+interval '5 minutes',lease_until=NULL,lease_token=NULL
     WHERE id=$1 AND lease_token=$2`,[source.id,source.lease_token,page.nextCursor??null]);
    return {imported:page.posts.length};
   }catch(error){
    await pool.query(`UPDATE feed.official_social_sources SET lease_until=NULL,lease_token=NULL,
     next_sync_at=clock_timestamp()+interval '15 minutes' WHERE id=$1 AND lease_token=$2`,[source.id,source.lease_token]);
    throw error;
   }
  },
  async withdraw(sourceId:string,externalId:string){
   await withTransaction(pool,async c=>{
    const row=await c.query(`UPDATE feed.official_social_posts SET withdrawn_at=clock_timestamp()
     WHERE source_id=$1 AND external_id=$2 RETURNING tenant_id,post_id`,[sourceId,externalId]);
    if(row.rows[0])await c.query(`UPDATE feed.posts SET state='removed',body='',media_ids='{}'
     WHERE tenant_id=$1 AND id=$2`,[row.rows[0].tenant_id,row.rows[0].post_id]);
   });
  },
 };
}
