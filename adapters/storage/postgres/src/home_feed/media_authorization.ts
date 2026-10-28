import type {Pool} from "pg";

/** Reuse feed.posts: never create a second media catalogue or change old media rows. */
export type PublishedPostMedia = {
  tenantId: string;
  postId: string;
  authorMasanaId: string;
  mediaId: string;
  kind: "image"|"audio";
  transcript: string|null;
  /** Descriptive copy appears only after a named content review. */
  altText: string|null;
};
export class PgFeedMediaAuthorization {
  constructor(private readonly pool: Pick<Pool,"query">) {}
  async find(tenantId:string,postId:string,mediaId:string):Promise<PublishedPostMedia|null> {
    // Human paid imagery is owned by the private upload registry, never by
    // Masana characters. Only exact, independently approved and funded source
    // content qualifies for a signed-in short-lived media grant.
    if(/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(mediaId)){
      const paid=await this.pool.query(`SELECT u.alt_text FROM feed.posts p
        JOIN feed.paid_post_media_objects o ON o.tenant_id=p.tenant_id
         AND o.post_id=p.id AND o.media_id=$3::uuid
        JOIN feed.paid_image_uploads u ON u.tenant_id=o.tenant_id
         AND u.id=o.media_id AND u.owner_id=p.author_user_id
        JOIN identity.users author ON author.tenant_id=p.tenant_id
         AND author.user_id=p.author_user_id
        WHERE p.tenant_id=$1 AND p.id=$2::uuid AND p.author_type='human'
         AND p.kind='image' AND p.state='published' AND p.audience='public'
         AND author.state='active' AND p.paid_purged_at IS NULL
         AND $3::text=ANY(p.media_ids) AND o.review_state='approved'
         AND u.state='ready'
         AND EXISTS(SELECT 1 FROM feed.promotion_campaigns campaign
          WHERE campaign.tenant_id=p.tenant_id AND campaign.post_id=p.id
            AND campaign.state='active' AND campaign.remaining_views>0
            AND (campaign.expires_at IS NULL OR campaign.expires_at>statement_timestamp()))`,
       [tenantId,postId,mediaId]);
      if(!paid.rows[0])return null;
      return {tenantId,postId,mediaId,authorMasanaId:'',kind:'image',
       transcript:null,altText:String(paid.rows[0].alt_text)};
    }
    const result=await this.pool.query(
      `SELECT p.author_masana_id,p.kind,p.transcript,
         (SELECT m.status_alt_text FROM masana.character_media m
          WHERE m.tenant_id=p.tenant_id AND m.character_id=p.author_masana_id
            AND m.media_id=$3 AND m.kind IN ('portrait','banner','cover')
            AND m.status_alt_approved_by IS NOT NULL
            AND m.status_alt_approved_at IS NOT NULL
          LIMIT 1) AS status_alt_text
       FROM feed.posts p
       WHERE p.tenant_id=$1 AND p.id=$2::uuid AND p.state='published'
       AND $3::text=ANY(p.media_ids) AND p.kind IN ('image','audio')
       AND EXISTS (SELECT 1 FROM masana.character_revisions m
          JOIN identity.characters c ON c.tenant_id=m.tenant_id AND c.character_id=m.character_id
          JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id
            AND o.character_id=c.character_id
          WHERE m.tenant_id=p.tenant_id AND m.character_id=p.author_masana_id
          AND m.state='approved' AND c.state='active' AND o.kind='platform') LIMIT 1`,[tenantId,postId,mediaId]);
    const row=result.rows[0] as {author_masana_id:string;kind:"image"|"audio";transcript:string|null;status_alt_text:string|null}|undefined;
    return row?{tenantId,postId,mediaId,authorMasanaId:row.author_masana_id,kind:row.kind,transcript:row.transcript,
      altText:row.kind==='image'?row.status_alt_text:null}:null;
  }
}
