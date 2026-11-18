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
