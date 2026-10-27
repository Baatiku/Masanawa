import {statusAuthorOwnership} from "./author_scope.js";
import type {Pool} from "pg";
/** PG18 tenant-scoped implementation. Composition injects the canonical Masana approved-revision check. */
type Row=Record<string,unknown>;
type Cursor={at:string;id:string}|null;
function item(r:Row){
 const human=r.author_type==='human';
 const authorMasanaId=r.author_masana_id==null?'':String(r.author_masana_id);
 const authorName=String(r.author_name??(human?'Member':authorMasanaId));
 const author=human?{
  type:'human' as const,id:String(r.author_user_id),
  displayName:authorName,handle:String(r.author_handle??''),
  avatarUrl:r.author_avatar==null?null:String(r.author_avatar),
 }:{type:'masana' as const,id:authorMasanaId,displayName:authorName};
 return {id:String(r.id),tenantId:String(r.tenant_id),authorMasanaId,authorName,author,
  kind:String(r.kind) as "text"|"image"|"audio",body:String(r.body),media:r.media_ids as string[],transcript:r.transcript===null?null:String(r.transcript),
  publishedAt:r.published_at_exact==null?new Date(String(r.published_at)).toISOString():String(r.published_at_exact),likeCount:Number(r.like_count??0),commentCount:Number(r.comment_count??0),
  verifiedViewCount:Number(r.verified_view_count??0),
  promotionDeliveredViews:Number(r.promotion_delivered_views??0),
  promotionActive:Boolean(r.promotion_active),
  shareEarnEligible:Boolean(r.share_earn_eligible),boostEligible:Boolean(r.boost_eligible),
  viewerLiked:Boolean(r.viewer_liked),viewerSaved:Boolean(r.viewer_saved),
  viewerReaction:r.viewer_reaction==null?null:String(r.viewer_reaction) as "like"|"love"|"care"|"haha"|"wow"|"sad"|"angry",
  reactionCounts:(r.reaction_counts??{}) as Record<string,number>};
}
function comment(r:Row){return {id:String(r.id),postId:String(r.post_id),body:String(r.body),state:String(r.state) as "pending"|"visible",
 createdAt:new Date(String(r.created_at)).toISOString(),parentId:r.parent_comment_id==null?null:String(r.parent_comment_id),
 author:r.author && typeof r.author==="object" && !Array.isArray(r.author)
  ? r.author as {type:"human";id:string;handle:string;displayName:string} : null};}
// Approval alone survives character deactivation/ownership transfer. Recheck
// the canonical identity on every fan-facing read and insert.
const eligibleAuthor=`((p.author_type='masana' AND EXISTS (SELECT 1 FROM masana.character_revisions m
 JOIN identity.characters a ON a.tenant_id=m.tenant_id AND a.character_id=m.character_id
 JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id
 WHERE m.tenant_id=p.tenant_id AND m.character_id=p.author_masana_id
   AND m.state='approved' AND a.state='active' AND ${statusAuthorOwnership}))
 OR (p.author_type='human' AND EXISTS (
  SELECT 1 FROM identity.users hu JOIN talks.public_profiles hp
    ON hp.tenant_id=hu.tenant_id AND hp.user_id=hu.user_id
  WHERE hu.tenant_id=p.tenant_id AND hu.user_id=p.author_user_id
    AND hu.state='active'
    AND hp.handle ~ '^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$'
    AND NOT EXISTS (SELECT 1 FROM talks.safety_enforcement enforcement
      WHERE enforcement.tenant_id=p.tenant_id AND enforcement.target_kind='profile'
        AND enforcement.target_id=hp.handle AND enforcement.visibility<>'public')
    AND EXISTS (SELECT 1 FROM feed.promotion_campaigns paid
      WHERE paid.tenant_id=p.tenant_id AND paid.post_id=p.id
        AND paid.state='active' AND paid.remaining_views>0)
    AND p.paid_purged_at IS NULL
    AND NOT EXISTS (SELECT 1 FROM talks.safety_preferences block
      WHERE block.tenant_id=p.tenant_id AND block.blocked AND
        ((block.viewer_user_id=$2 AND block.subject_user_id=p.author_user_id)
        OR (block.viewer_user_id=p.author_user_id AND block.subject_user_id=$2)))
 )))`;
// A JS Date discards PostgreSQL microseconds and can skip tied older rows.
// Serialize UTC in SQL before the driver parses timestamptz into a Date.
const projection=`p.*,
 to_char(p.published_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS published_at_exact,
 CASE WHEN p.author_type='human'
  THEN (SELECT hp.display_name FROM talks.public_profiles hp WHERE hp.tenant_id=p.tenant_id AND hp.user_id=p.author_user_id)
  ELSE (SELECT r.profile->>'displayName' FROM masana.character_revisions r WHERE r.tenant_id=p.tenant_id AND r.character_id=p.author_masana_id AND r.state='approved' LIMIT 1)
 END AS author_name,
 (SELECT hp.handle FROM talks.public_profiles hp WHERE hp.tenant_id=p.tenant_id AND hp.user_id=p.author_user_id) AS author_handle,
 (SELECT hp.avatar_url FROM talks.public_profiles hp WHERE hp.tenant_id=p.tenant_id AND hp.user_id=p.author_user_id) AS author_avatar, (SELECT count(*)::int FROM feed.likes l WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id AND l.reaction_kind='like') AS like_count,
 COALESCE((SELECT jsonb_object_agg(rc.reaction_kind,rc.n) FROM (SELECT l.reaction_kind,count(*)::int AS n
  FROM feed.likes l WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id GROUP BY l.reaction_kind) rc),'{}'::jsonb) AS reaction_counts,
 (SELECT l.reaction_kind FROM feed.likes l WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id AND l.fan_id=$2 LIMIT 1) AS viewer_reaction,
 (SELECT count(*)::int FROM feed.comments c WHERE c.tenant_id=p.tenant_id AND c.post_id=p.id AND c.state='visible') AS comment_count,
 (SELECT count(*)::int FROM feed.qualified_views v WHERE v.tenant_id=p.tenant_id AND v.post_id=p.id) AS verified_view_count,
 (SELECT count(*)::int FROM feed.promotion_view_charges c JOIN feed.promotion_campaigns b
  ON b.tenant_id=c.tenant_id AND b.id=c.campaign_id
  WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id) AS promotion_delivered_views,
 EXISTS (SELECT 1 FROM feed.promotion_campaigns b WHERE b.tenant_id=p.tenant_id
  AND b.post_id=p.id AND b.state='active' AND b.remaining_views>0) AS promotion_active,
 EXISTS (SELECT 1 FROM feed.promotion_campaigns b WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id
   AND b.state='active' AND b.remaining_views>0 AND b.sponsor_id IS DISTINCT FROM $2
   AND (p.author_type='masana' OR p.author_user_id IS DISTINCT FROM $2)) AS share_earn_eligible,
 (p.paid_purged_at IS NULL AND p.state='published') AS boost_eligible,
 EXISTS(SELECT 1 FROM feed.likes l WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id AND l.fan_id=$2 AND l.reaction_kind='like') AS viewer_liked,
 EXISTS(SELECT 1 FROM feed.saves s WHERE s.tenant_id=p.tenant_id AND s.post_id=p.id AND s.fan_id=$2) AS viewer_saved`;
// Resolve comment authors only through tenant-matched active user public profiles.
// Comments bind $2 as the post UUID; the signed-in viewer is $3, unlike
// list/detail/reaction endpoints. Never compare a UUID slot with a human ID.
const commentEligibleAuthor=eligibleAuthor.replace(/\$2\b/g,"$3");
const resolvedCommentAuthor=`CASE WHEN person.user_id IS NOT NULL
 AND person.handle ~ '^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$'
 THEN jsonb_build_object('type','human','id',person.user_id,
   'handle',person.handle,'displayName',person.display_name)
 ELSE NULL END AS author`;
export class PgHomeFeedRepository {
 constructor(private readonly pool:Pool){}
 async list(tenant:string,viewer:string|null,mode:"for_you"|"following"|"mine",before:Cursor,limit:number,authorMasanaId?:string,search?:string,masanaOnly=true) {
  const rows=await this.pool.query(`SELECT ${projection} FROM feed.posts p WHERE p.tenant_id=$1 AND p.state='published' AND ${eligibleAuthor}
   AND ($3::text='for_you'
    OR ($3::text='mine' AND p.author_type='human' AND p.author_user_id=$2)
    OR ($3::text='following' AND (
      (p.author_type='masana' AND EXISTS (
        SELECT 1 FROM masana.follows f WHERE f.tenant_id=p.tenant_id
          AND f.fan_user_id=$2 AND f.character_id=p.author_masana_id))
      OR (p.author_type='human' AND EXISTS (
        SELECT 1 FROM talks.follows f WHERE f.tenant_id=p.tenant_id
          AND f.follower_user_id=$2 AND f.followed_user_id=p.author_user_id)))))
   AND ($4::timestamptz IS NULL OR (p.published_at,p.id)<($4::timestamptz,$5::uuid))
   AND ($7::text IS NULL OR p.author_masana_id=$7)
   AND ($8::text IS NULL OR p.body ILIKE $8 ESCAPE E'\\\\')
   AND (NOT $9::boolean OR p.author_type='masana')
   ORDER BY p.published_at DESC,p.id DESC LIMIT $6`,
   [tenant,viewer,mode,before?.at??null,before?.id??null,limit,authorMasanaId??null,
    search===undefined?null:`%${search.replace(/[\\%_]/g,"\\$&")}%`,masanaOnly]);
  return rows.rows.map(item);
 }
 async find(tenant:string,viewer:string|null,id:string,masanaOnly=true){
  const rows=await this.pool.query(`SELECT ${projection} FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$3::uuid AND p.state='published' AND ${eligibleAuthor}
   AND (NOT $4::boolean OR p.author_type='masana')`,[tenant,viewer,id,masanaOnly]);
  return rows.rows[0]?item(rows.rows[0]):null;
 }
 async publish(tenant:string,publisher:string,v:{authorMasanaId:string;kind:string;body:string;media:readonly string[];transcript:string|null;idempotencyKey:string}){
  const added=await this.pool.query(`INSERT INTO feed.posts
   (tenant_id,author_masana_id,kind,body,media_ids,transcript,idempotency_key,published_by)
   SELECT $1,$3,$4,$5,$6,$7,$8,$2
   FROM identity.characters a
   JOIN identity.character_ownership o USING(tenant_id,character_id)
   JOIN masana.character_revisions m USING(tenant_id,character_id)
   WHERE a.tenant_id=$1 AND a.character_id=$3 AND $2=$3
     AND a.state='active' AND o.kind='platform' AND m.state='approved'
   ON CONFLICT(tenant_id,published_by,idempotency_key) DO NOTHING
   RETURNING id`,[tenant,publisher,v.authorMasanaId,v.kind,v.body,v.media,v.transcript,v.idempotencyKey]);
  const existing=await this.pool.query(`SELECT id,author_masana_id,kind,body,media_ids,transcript FROM feed.posts
    WHERE tenant_id=$1 AND published_by=$2 AND idempotency_key=$3`,[tenant,publisher,v.idempotencyKey]);
  const row=existing.rows[0] as Row|undefined;
  if(!row)throw Object.assign(new Error("masana_not_approved"),{status:403,code:"masana_not_approved"});
  // A reused idempotency key must never silently overwrite or reinterpret a post.
  if(row.author_masana_id!==v.authorMasanaId||row.kind!==v.kind||row.body!==v.body||row.transcript!==v.transcript||
    JSON.stringify(row.media_ids)!==JSON.stringify(v.media))throw Object.assign(new Error("idempotency_conflict"),{status:409,code:"idempotency_conflict"});
  const post=await this.find(tenant,null,String(row.id));
  if(!post)throw Object.assign(new Error("post_not_found"),{status:404,code:"post_not_found"});
  void added;
  return post;
 }
 async setLike(tenant:string,fan:string,id:string,enabled:boolean){
  if(enabled){
   const result=await this.pool.query(`WITH eligible AS (
    SELECT p.id FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$3::uuid
     AND p.state='published' AND ${eligibleAuthor}
   ), inserted AS (
    INSERT INTO feed.likes(tenant_id,post_id,fan_id,reaction_kind)
    SELECT $1,id,$2,'like' FROM eligible
     ON CONFLICT (tenant_id,post_id,fan_id) DO UPDATE SET reaction_kind='like' RETURNING post_id
   ) SELECT EXISTS(SELECT 1 FROM eligible) AS admitted`,[tenant,fan,id]);
   if(result.rows[0]?.admitted!==true)throw Object.assign(new Error("post_not_found"),{status:404,code:"post_not_found"});
  }
  else await this.pool.query("DELETE FROM feed.likes WHERE tenant_id=$1 AND fan_id=$2 AND post_id=$3::uuid AND reaction_kind='like'",[tenant,fan,id]);
  return enabled;
 }
 async setReaction(tenant:string,fan:string,id:string,kind:"like"|"love"|"care"|"haha"|"wow"|"sad"|"angry"|null){
  // One row per account in feed.likes. Update/clear it atomically after a
  // fresh visibility/author check: no copied counters or client-owned actor.
  if(kind!==null){
   const result=await this.pool.query(` WITH eligible AS (
    SELECT p.id FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$3::uuid
     AND p.state='published' AND ${eligibleAuthor}
   ), changed AS (
    INSERT INTO feed.likes(tenant_id,post_id,fan_id,reaction_kind)
    SELECT $1,id,$2,$4 FROM eligible
    ON CONFLICT (tenant_id,post_id,fan_id)
      DO UPDATE SET reaction_kind=EXCLUDED.reaction_kind RETURNING post_id
   ) SELECT EXISTS(SELECT 1 FROM eligible) AS admitted `,[tenant,fan,id,kind]);
   if(result.rows[0]?.admitted!==true)throw Object.assign(new Error("post_not_found"),{status:404,code:"post_not_found"});
  }else{
   const result=await this.pool.query(` WITH eligible AS (
    SELECT p.id FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$3::uuid
     AND p.state='published' AND ${eligibleAuthor}
   ), deleted AS (
    DELETE FROM feed.likes l USING eligible e
    WHERE l.tenant_id=$1 AND l.post_id=e.id AND l.fan_id=$2
    RETURNING l.post_id
   ) SELECT EXISTS(SELECT 1 FROM eligible) AS admitted `,[tenant,fan,id]);
   if(result.rows[0]?.admitted!==true)throw Object.assign(new Error("post_not_found"),{status:404,code:"post_not_found"});
  }
  return kind;
 }
 async setSave(tenant:string,fan:string,id:string,enabled:boolean){
  if(enabled){
   const result=await this.pool.query(`WITH eligible AS (
    SELECT p.id FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$3::uuid
     AND p.state='published' AND ${eligibleAuthor}
   ), inserted AS (
    INSERT INTO feed.saves(tenant_id,post_id,fan_id)
    SELECT $1,id,$2 FROM eligible WHERE true ON CONFLICT DO NOTHING RETURNING post_id
   ) SELECT EXISTS(SELECT 1 FROM eligible) AS admitted`,[tenant,fan,id]);
   if(result.rows[0]?.admitted!==true)throw Object.assign(new Error("post_not_found"),{status:404,code:"post_not_found"});
  }
  else await this.pool.query("DELETE FROM feed.saves WHERE tenant_id=$1 AND fan_id=$2 AND post_id=$3::uuid",[tenant,fan,id]);
  return enabled;
 }
 async comment(tenant:string,fan:string,post:string,body:string,key:string,pending:boolean,parentId:string|null=null){
  const rows=await this.pool.query(`WITH inserted AS (
   INSERT INTO feed.comments(tenant_id,post_id,fan_id,body,state,idempotency_key,parent_comment_id)
   SELECT $1,p.id,$2,$4,$5,$6,$7::uuid FROM feed.posts p WHERE p.tenant_id=$1 AND p.id=$3::uuid AND p.state='published' AND ${eligibleAuthor} AND ($7::uuid IS NULL OR EXISTS (SELECT 1 FROM feed.comments parent WHERE parent.tenant_id=$1 AND parent.post_id=p.id AND parent.id=$7::uuid AND parent.state='visible' AND parent.parent_comment_id IS NULL))
   ON CONFLICT(tenant_id,fan_id,idempotency_key) DO UPDATE
   SET idempotency_key=EXCLUDED.idempotency_key
   WHERE feed.comments.post_id=EXCLUDED.post_id AND feed.comments.body=EXCLUDED.body AND feed.comments.parent_comment_id IS NOT DISTINCT FROM EXCLUDED.parent_comment_id
   RETURNING id,post_id,fan_id,body,state,created_at,parent_comment_id
  ), queued AS (
   INSERT INTO events.outbox(outbox_event_id,tenant_id,event_id,event_type,schema_version,
     aggregate_type,aggregate_id,correlation_id,destination,payload)
   SELECT 'outbox-event_feed-comment_'||replace(i.id::text,'-',''),$1,
     'event_feed-comment_'||replace(i.id::text,'-',''),'feed.comment.pending',1,
     'feed_comment',i.id::text,'correlation_feed-comment_'||replace(i.id::text,'-',''),
     'feed.comment_review',
     jsonb_build_object('tenantId',$1::text,'postId',$3::text,'commentId',i.id::text,'fanId',$2::text,
       'outboxEventId','outbox-event_feed-comment_'||replace(i.id::text,'-',''))
   FROM inserted i WHERE i.state='pending'
   ON CONFLICT DO NOTHING RETURNING outbox_event_id
  )
  SELECT i.*, ${resolvedCommentAuthor} FROM inserted i
   LEFT JOIN identity.users actor ON actor.tenant_id=$1
    AND actor.user_id=i.fan_id AND actor.state='active'
   LEFT JOIN talks.public_profiles person ON person.tenant_id=$1
    AND person.user_id=actor.user_id`,[tenant,fan,post,body,pending?"pending":"visible",key,parentId]);
  const row=rows.rows[0] as Row|undefined;
  if(!row)throw Object.assign(new Error("idempotency_conflict_or_post_unavailable"),{status:409,code:"idempotency_conflict"});
  if(row.post_id!==post||row.body!==body||(row.parent_comment_id??null)!==(parentId??null))throw Object.assign(new Error("idempotency_conflict"),{status:409,code:"idempotency_conflict"});
  return comment(row);
 }
 async comments(tenant:string,post:string,viewer:string|null,before:string|null,limit:number,sort:"newest"|"oldest"="newest"){
  const rows=await this.pool.query(`SELECT c.id,c.post_id,c.body,c.state,c.created_at,c.parent_comment_id,
   ${resolvedCommentAuthor} FROM feed.comments c
   LEFT JOIN identity.users actor ON actor.tenant_id=c.tenant_id
     AND actor.user_id=c.fan_id AND actor.state='active'
   LEFT JOIN talks.public_profiles person ON person.tenant_id=c.tenant_id
     AND person.user_id=actor.user_id
   WHERE c.tenant_id=$1 AND c.post_id=$2::uuid
   AND EXISTS (SELECT 1 FROM feed.posts p WHERE p.tenant_id=c.tenant_id AND p.id=c.post_id AND p.state='published' AND ${commentEligibleAuthor})
   AND (c.state='visible' OR (c.state='pending' AND c.fan_id=$3))
   AND ($4::uuid IS NULL OR (CASE WHEN $6::text='newest' THEN (c.created_at,c.id)<(SELECT c2.created_at,c2.id FROM feed.comments c2 WHERE c2.tenant_id=$1 AND c2.post_id=$2::uuid AND c2.id=$4::uuid) ELSE (c.created_at,c.id)>(SELECT c2.created_at,c2.id FROM feed.comments c2 WHERE c2.tenant_id=$1 AND c2.post_id=$2::uuid AND c2.id=$4::uuid) END))
   ORDER BY CASE WHEN $6::text='newest' THEN c.created_at END DESC, CASE WHEN $6::text='oldest' THEN c.created_at END ASC, CASE WHEN $6::text='newest' THEN c.id END DESC, CASE WHEN $6::text='oldest' THEN c.id END ASC LIMIT $5`,[tenant,post,viewer,before,limit,sort]);
  return rows.rows.map(comment);
 }
}

