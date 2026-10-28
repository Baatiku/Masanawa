import {createHash} from 'node:crypto';
import type {FastifyInstance} from 'fastify';

type PublicStatusReadPool={query(statement:string,parameters?:unknown[]):Promise<{
 rows:Record<string,unknown>[]}>};

export type PublicStatusPost={id:string;name:string;body:string;kind:'text'|'image';
  imageCount:number;imagePreview?:{id:string;altText:string};gone?:false}|{id:string;gone:true};

/** Public lookup is post-UUID-only and independent of the visitor's account.
 * All content must be editorially eligible, globally public and funded when
 * human. Never expose S3 object keys, raw media URLs, tenant IDs or viewers. */
export class PgPublicStatusLanding {
 constructor(private readonly pool:PublicStatusReadPool){}
 async find(id:string):Promise<PublicStatusPost|null>{
  if(!/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(id))return null;
  const rows=await this.pool.query(`SELECT p.id,p.state,p.kind,p.body,p.media_ids,
   p.paid_purged_at,p.author_type,
   approved_image.media_id AS preview_image_id,
   approved_image.status_alt_text AS preview_alt,
   CASE WHEN p.author_type='human' THEN hp.display_name ELSE (
    SELECT r.profile->>'displayName' FROM masana.character_revisions r
    WHERE r.tenant_id=p.tenant_id AND r.character_id=p.author_masana_id
     AND r.state='approved' LIMIT 1) END AS name
   FROM feed.posts p
   LEFT JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.author_user_id
   LEFT JOIN talks.public_profiles hp ON hp.tenant_id=p.tenant_id AND hp.user_id=p.author_user_id
   LEFT JOIN LATERAL (
     SELECT m.media_id,m.status_alt_text FROM masana.character_media m
     WHERE p.kind='image' AND p.author_type='masana'
       AND m.tenant_id=p.tenant_id AND m.character_id=p.author_masana_id
       AND m.media_id=ANY(p.media_ids)
       AND m.kind IN ('portrait','banner','cover')
       AND length(btrim(m.rights_note))>4 AND length(btrim(m.approved_by))>0
       AND m.status_alt_approved_by IS NOT NULL
       AND m.status_alt_approved_at IS NOT NULL
     ORDER BY array_position(p.media_ids,m.media_id) LIMIT 1
   ) approved_image ON true
   WHERE p.id=$1::uuid
     AND (p.paid_purged_at IS NOT NULL OR (
      p.state='published' AND p.audience='public' AND p.kind IN ('text','image')
      AND ((p.author_type='masana' AND EXISTS (
       SELECT 1 FROM masana.character_revisions r
       JOIN identity.characters a ON a.tenant_id=r.tenant_id AND a.character_id=r.character_id
       JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id
       WHERE r.tenant_id=p.tenant_id AND r.character_id=p.author_masana_id
        AND r.state='approved' AND a.state='active' AND o.kind='platform'))
       OR (p.author_type='human' AND u.state='active' AND
        hp.handle ~ '^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$'
        AND NOT EXISTS(SELECT 1 FROM talks.safety_enforcement e
          WHERE e.tenant_id=p.tenant_id AND e.target_kind='profile'
            AND e.target_id=hp.handle AND e.visibility<>'public')
        AND EXISTS(SELECT 1 FROM feed.promotion_campaigns b
          WHERE b.tenant_id=p.tenant_id AND b.post_id=p.id
            AND b.state='active' AND b.remaining_views>0)))))
   ORDER BY p.tenant_id LIMIT 2`,[id]);
  // An unlikely cross-tenant UUID collision must not select an arbitrary tenant.
  if(rows.rows.length!==1)return null;
  const post=rows.rows[0]!;
  if(post.paid_purged_at)return {id,gone:true};
  return {id,name:String(post.name??'Masanawa member'),body:String(post.body??''),
   kind:post.kind as 'text'|'image',imageCount:Array.isArray(post.media_ids)?post.media_ids.length:0,
   ...(typeof post.preview_image_id==='string'&&typeof post.preview_alt==='string'?
    {imagePreview:{id:post.preview_image_id,altText:post.preview_alt}}:{})};
 }

 /** Only rights-cleared, separately alt-reviewed platform imagery is eligible.
  * A human paid upload additionally needs A07's owner/approval pipeline and
  * cannot become public merely by entering the private-object registry. */
 async findApprovedImage(postId:string,mediaId:string):Promise<{objectKey:string}|null>{
  if(!/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(postId)||
    !/^[A-Za-z0-9_-]{3,160}$/.test(mediaId))return null;
  const r=await this.pool.query(`SELECT m.object_key FROM feed.posts p
   JOIN masana.character_media m ON m.tenant_id=p.tenant_id
     AND m.character_id=p.author_masana_id AND m.media_id=$2
   WHERE p.id=$1::uuid AND p.state='published' AND p.audience='public'
     AND p.kind='image' AND p.author_type='masana'
     AND p.paid_purged_at IS NULL AND $2::text=ANY(p.media_ids)
     AND m.kind IN ('portrait','banner','cover')
     AND length(btrim(m.rights_note))>4 AND length(btrim(m.approved_by))>0
     AND m.status_alt_approved_by IS NOT NULL AND m.status_alt_approved_at IS NOT NULL
     AND EXISTS (SELECT 1 FROM masana.character_revisions revision
       JOIN identity.characters character ON character.tenant_id=revision.tenant_id
        AND character.character_id=revision.character_id
       JOIN identity.character_ownership ownership ON ownership.tenant_id=character.tenant_id
        AND ownership.character_id=character.character_id
       WHERE revision.tenant_id=p.tenant_id AND revision.character_id=p.author_masana_id
        AND revision.state='approved' AND character.state='active'
        AND ownership.kind='platform')
   LIMIT 2`,[postId,mediaId]);
  return r.rows.length===1&&typeof r.rows[0]?.object_key==='string'?
   {objectKey:r.rows[0].object_key as string}:null;
 }

 /** A public unfurl is never a view. This lookup merely determines whether a
  * signed-in sharer's already-issued opaque link may survive the app handoff.
  * Return only a boolean; no sharer, tenant or campaign identity leaves SQL. */
 async validReferral(postId:string,token:string):Promise<boolean>{
  if(!/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(postId)||
     !/^[A-Za-z0-9_-]{20,128}$/.test(token))return false;
  const digest=createHash('sha256').update(token).digest('hex');
  const r=await this.pool.query(`SELECT 1 FROM feed.share_links l
    JOIN feed.promotion_campaigns c ON c.tenant_id=l.tenant_id
      AND c.id=l.campaign_id AND c.post_id=l.post_id
    JOIN feed.posts p ON p.tenant_id=l.tenant_id AND p.id=l.post_id
    WHERE l.post_id=$1::uuid AND l.token_sha256=$2 AND l.revoked_at IS NULL
      AND c.state='active' AND c.remaining_views>0
      AND p.state='published' AND p.audience='public'
      AND p.paid_purged_at IS NULL
    LIMIT 2`,[postId,digest]);
  // A UUID collision between tenants must never pick an arbitrary sharer.
  return r.rows.length===1;
 }
}

const escapeHtml=(value:string)=>value.replace(/[&<>"']/g,c=>({
  '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'
})[c]!);

/** Render a crawler-safe, JS-free preview. Fetching, unfurling and link
 * scanning never invoke view challenges or create commission liabilities. */
export function renderPublicStatusPage(post:Extract<PublicStatusPost,{gone?:false}>,
  referral?:string,publicBaseUrl='https://masanawa.com',imagesEnabled=false):string {
 const name=escapeHtml(post.name.slice(0,130));
 const description=escapeHtml(post.body.replace(/\s+/g,' ').slice(0,240));
 const body=escapeHtml(post.body).replace(/\r?\n/g,'<p></p>');
 const source=new URL(`/status/${encodeURIComponent(post.id)}`,publicBaseUrl).toString();
 const valid=referral&&/^[A-Za-z0-9_-]{20,128}$/.test(referral)?referral:null;
 const href=escapeHtml(source+(valid?`?r=${encodeURIComponent(valid)}`:''));
 const canonical=escapeHtml(source);
 const approved=imagesEnabled?post.imagePreview:undefined;
 const imageUrl=approved?escapeHtml(new URL(
  `/status/${encodeURIComponent(post.id)}/image/${encodeURIComponent(approved.id)}`,
  publicBaseUrl).toString()):null;
 const imageAlt=approved?escapeHtml(approved.altText):'';
 return `<!doctype html><html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta property="og:type" content="article"><meta property="og:title" content="${name} on Masanawa">
<meta property="og:description" content="${description}">
<meta property="og:url" content="${canonical}">
${imageUrl?`<meta property="og:image" content="${imageUrl}">
<meta property="og:image:type" content="image/webp">
<meta property="og:image:alt" content="${imageAlt}">
<meta name="twitter:card" content="summary_large_image">`:''}
<link rel="canonical" href="${canonical}">
<meta name="description" content="${description}">
<title>${name} · Masanawa</title><style>
body{background:#f4f5f2;color:#1b2c23;font:16px/1.55 system-ui,sans-serif;margin:0}
main{max-width:600px;margin:32px auto;padding:22px;border-radius:16px;background:white}
h1{font-size:21px;margin:0 0 12px}article{white-space:pre-wrap;overflow-wrap:anywhere}
.post-image{display:block;max-width:100%;height:auto;margin:16px 0;border-radius:12px}
a{display:inline-block;margin-top:16px;padding:11px 20px;border-radius:10px;background:#167346;color:white;text-decoration:none}
a.secondary{margin-left:8px;background:#eef3f0;color:#1b2c23}
.fine{color:#5c6961;font-size:13px;margin-top:24px}
</style></head><body><main><h1>${name}</h1><article>${body}</article>
${imageUrl?`<img class="post-image" src="${imageUrl}" alt="${imageAlt}" loading="lazy">`:
  post.imageCount>0?'<p class="fine">This image is available only after media approval in the app.</p>':''}
<p class="fine">This public page does not set cookies, run visitor analytics, record a paid view, or initiate a reward.
The server may retain necessary security request logs. Reading this page does not require an app installation.</p>
${valid?`<p class="fine">This shared link includes an opaque referral code. If you choose referral attribution
and later complete an eligible verified view, the original sharer may earn a pending reward.
The code is not your identity; you can choose to open without referral attribution.</p>`:''}
<a rel="nofollow noopener" href="${href}">${valid?'Open with referral attribution':'Open in Masanawa'}</a>
${valid?`<a class="secondary" rel="nofollow noopener" href="${canonical}">Open without referral attribution</a>`:''}
<p class="fine">A qualified view requires a verified in-app or separately consented web session;
link previews, crawlers and this page alone never count.</p>
</main></body></html>`;
}

export async function registerPublicStatusLanding(app:FastifyInstance,options:{
  port:{find(id:string):Promise<PublicStatusPost|null>;
    validReferral?(postId:string,token:string):Promise<boolean>;
    readApprovedImage?(postId:string,mediaId:string):Promise<{
      bytes:Buffer;contentType:'image/webp'}|null>};
  enabled:()=>boolean;imagesEnabled?:()=>boolean;publicBaseUrl?:string;
}){
 app.get('/status/:postId/image/:mediaId',async(req,reply)=>{
  reply.header('Cache-Control','no-store');
  reply.header('Referrer-Policy','no-referrer');
  reply.header('X-Content-Type-Options','nosniff');
  reply.header('Content-Security-Policy',"default-src 'none'; frame-ancestors 'none'");
  if(!options.enabled()||!options.imagesEnabled?.()||!options.port.readApprovedImage)
   return reply.code(404).type('text/plain').send('Image unavailable');
  const p=req.params as Record<string,unknown>;
  if(typeof p.postId!=='string'||typeof p.mediaId!=='string')
   return reply.code(404).type('text/plain').send('Image unavailable');
  const image=await options.port.readApprovedImage(p.postId,p.mediaId);
  if(!image)return reply.code(404).type('text/plain').send('Image unavailable');
  return reply.type('image/webp').send(image.bytes);
 });
 app.get('/status/:postId',async(req,reply)=>{
  reply.header('Cache-Control','no-store');
  reply.header('Referrer-Policy','no-referrer');
  reply.header('X-Content-Type-Options','nosniff');
  reply.header('X-Frame-Options','DENY');
  reply.header('Permissions-Policy','camera=(), microphone=(), geolocation=()');
  reply.header('Content-Security-Policy',"default-src 'none'; img-src 'self'; style-src 'unsafe-inline'; base-uri 'none'; form-action 'none'; frame-ancestors 'none'");
  if(!options.enabled())return reply.code(404).type('text/plain').send('Post unavailable');
  const raw=req.params as Record<string,unknown>,id=String(raw.postId??'');
  const post=await options.port.find(id);
  if(!post)return reply.code(404).type('text/plain').send('Post unavailable');
  if(post.gone)return reply.code(410).type('text/plain').send('Post removed');
  const token=(req.query as Record<string,unknown>)?.r;
  const referral=typeof token==='string'&&/^[A-Za-z0-9_-]{20,128}$/.test(token)&&
    await options.port.validReferral?.(id,token)?token:undefined;
  return reply.type('text/html; charset=utf-8').send(renderPublicStatusPage(post,
    referral,options.publicBaseUrl,options.imagesEnabled?.()===true));
 });
}
