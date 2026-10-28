import type {Pool} from "pg";
import {statusAuthorOwnership} from "./author_scope.js";
// Structural DTO equivalent to the canonical packages/feed/src/saved.ts port.
type SavedCursor={at:string;kind:"post";id:string};
type SavedItem={kind:"post";id:string;savedAt:string;post?:Record<string,unknown>};

/** One fan-private projection of the same eligible public Home posts as the feed. */
export class PgSavedLibraryRepository {
  constructor(private readonly pool:Pool){}
  async list(tenant:string,fan:string,before:SavedCursor|null,limit:number):Promise<readonly SavedItem[]> {
    const sql=String.raw`WITH saved_items AS (
      SELECT 'post'::text AS kind, s.post_id AS id, s.created_at AS saved_at,
        jsonb_build_object('id',p.id,'authorMasanaId',COALESCE(p.author_masana_id,''),
          'author',CASE WHEN p.author_type='human' THEN
            (SELECT jsonb_build_object('type','human','id',hp.user_id,
              'handle',hp.handle,'displayName',hp.display_name,'avatarUrl',hp.avatar_url)
              FROM talks.public_profiles hp WHERE hp.tenant_id=p.tenant_id
                AND hp.user_id=p.author_user_id)
            ELSE jsonb_build_object('type','masana','id',p.author_masana_id,
              'displayName',COALESCE((SELECT r.profile->>'displayName'
                FROM masana.character_revisions r WHERE r.tenant_id=p.tenant_id
                AND r.character_id=p.author_masana_id AND r.state='approved'
                LIMIT 1),p.author_masana_id)) END,
          'kind',p.kind,'body',p.body,'media',p.media_ids,'transcript',p.transcript,
          'publishedAt',p.published_at,'likeCount',
            (SELECT count(*)::int FROM feed.likes l WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id AND l.reaction_kind='like'),
          'reactionCounts',COALESCE((SELECT jsonb_object_agg(rc.reaction_kind,rc.n)
            FROM (SELECT l.reaction_kind,count(*)::int AS n FROM feed.likes l
              WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id
              GROUP BY l.reaction_kind) rc),'{}'::jsonb),
          'viewerReaction',(SELECT l.reaction_kind FROM feed.likes l
            WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id AND l.fan_id=$2 LIMIT 1),
          'commentCount',(SELECT count(*)::int FROM feed.comments c
            WHERE c.tenant_id=p.tenant_id AND c.post_id=p.id AND c.state='visible'),
          'viewerLiked',EXISTS(SELECT 1 FROM feed.likes l
            WHERE l.tenant_id=p.tenant_id AND l.post_id=p.id AND l.fan_id=$2
              AND l.reaction_kind='like'),
          'verifiedViewCount',(SELECT count(*)::int FROM feed.qualified_views v
            WHERE v.tenant_id=p.tenant_id AND v.post_id=p.id),
          'promotionDeliveredViews',(SELECT count(*)::int FROM feed.promotion_view_charges c
            JOIN feed.promotion_campaigns b ON b.tenant_id=c.tenant_id AND b.id=c.campaign_id
            WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id),
          'promotionActive',EXISTS(SELECT 1 FROM feed.promotion_campaigns b
            WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id
              AND b.state='active' AND b.remaining_views>0 AND (b.expires_at IS NULL OR b.expires_at>statement_timestamp())),
          'shareEarnEligible',EXISTS(SELECT 1 FROM feed.promotion_campaigns b
            WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id AND b.state='active'
              AND b.remaining_views>0 AND b.sponsor_id<>$2
              AND (p.author_type='masana' OR p.author_user_id<>$2)),
          'boostEligible',(p.paid_purged_at IS NULL AND p.state='published'),
          'viewerSaved',true) AS payload
      FROM feed.saves s JOIN feed.posts p ON p.tenant_id=s.tenant_id AND p.id=s.post_id
      WHERE s.tenant_id=$1 AND s.fan_id=$2 AND p.state='published'
        AND ((p.author_type='masana' AND EXISTS(
          SELECT 1 FROM masana.character_revisions r
          JOIN identity.characters a ON a.tenant_id=r.tenant_id AND a.character_id=r.character_id
          JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id
          WHERE r.tenant_id=p.tenant_id AND r.character_id=p.author_masana_id
            AND r.state='approved' AND a.state='active' AND ${statusAuthorOwnership}))
          OR (p.author_type='human' AND p.paid_purged_at IS NULL
            AND EXISTS(SELECT 1 FROM identity.users hu
              JOIN talks.public_profiles hp ON hp.tenant_id=hu.tenant_id AND hp.user_id=hu.user_id
              WHERE hu.tenant_id=p.tenant_id AND hu.user_id=p.author_user_id
                AND hu.state='active'
                AND hp.handle ~ '^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$'
                AND NOT EXISTS(SELECT 1 FROM talks.safety_enforcement e
                  WHERE e.tenant_id=p.tenant_id AND e.target_kind='profile'
                    AND e.target_id=hp.handle AND e.visibility<>'public')
                AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences block
                  WHERE block.tenant_id=p.tenant_id AND block.blocked
                    AND ((block.viewer_user_id=$2 AND block.subject_user_id=p.author_user_id)
                     OR (block.viewer_user_id=p.author_user_id AND block.subject_user_id=$2))))
            AND EXISTS(SELECT 1 FROM feed.promotion_campaigns paid
              WHERE paid.tenant_id=p.tenant_id AND paid.post_id=p.id AND paid.state='active'
                AND paid.remaining_views>0)))
    )
    SELECT kind,id,saved_at,
      to_char(saved_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS saved_at_exact,
      payload FROM saved_items
    WHERE ($3::timestamptz IS NULL OR (saved_at,kind,id)<($3::timestamptz,$4::text,$5::uuid))
    ORDER BY saved_at DESC,kind DESC,id DESC LIMIT $6`;
    const result=await this.pool.query<{
      kind:"post";id:string;saved_at:Date|string;saved_at_exact?:string;payload:Record<string,unknown>;
    }>(sql,[tenant,fan,before?.at??null,before?.kind??null,before?.id??null,limit]);
    return result.rows.map(r=>({
      kind:r.kind,id:String(r.id),savedAt:r.saved_at_exact??new Date(r.saved_at).toISOString(),
      post:r.payload
    }));
  }
}
