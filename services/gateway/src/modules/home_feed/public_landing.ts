import {createHash} from 'node:crypto';
import type {FastifyInstance} from 'fastify';

type PublicStatusReadPool={query(statement:string,parameters?:unknown[]):Promise<{
 rows:Record<string,unknown>[]}>};

export type PublicStatusPost={id:string;name:string;body:string;kind:'text'|'image';
  imageCount:number;gone?:false}|{id:string;gone:true};

/** Public lookup is post-UUID-only and independent of the visitor's account.
 * All content must be editorially eligible, globally public and funded when
 * human. Never expose S3 object keys, raw media URLs, tenant IDs or viewers. */
export class PgPublicStatusLanding {
 constructor(private readonly pool:PublicStatusReadPool){}
 async find(id:string):Promise<PublicStatusPost|null>{
  if(!/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(id))return null;
  const rows=await this.pool.query(`SELECT p.id,p.state,p.kind,p.body,p.media_ids,
   p.paid_purged_at,p.author_type,
   CASE WHEN p.author_type='human' THEN hp.display_name ELSE (
    SELECT r.profile->>'displayName' FROM masana.character_revisions r
    WHERE r.tenant_id=p.tenant_id AND r.character_id=p.author_masana_id
     AND r.state='approved' LIMIT 1) END AS name
   FROM feed.posts p
   LEFT JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.author_user_id
   LEFT JOIN talks.public_profiles hp ON hp.tenant_id=p.tenant_id AND hp.user_id=p.author_user_id
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
   kind:post.kind as 'text'|'image',imageCount:Array.isArray(post.media_ids)?post.media_ids.length:0};
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
  referral?:string,publicBaseUrl='https://masanawa.com'):string {
 const name=escapeHtml(post.name.slice(0,130));
 const description=escapeHtml(post.body.replace(/\s+/g,' ').slice(0,240));
 const body=escapeHtml(post.body).replace(/\r?\n/g,'<p></p>');
 const source=new URL(`/status/${encodeURIComponent(post.id)}`,publicBaseUrl).toString();
 const valid=referral&&/^[A-Za-z0-9_-]{20,128}$/.test(referral)?referral:null;
 const href=escapeHtml(source+(valid?`?r=${encodeURIComponent(valid)}`:''));
 const canonical=escapeHtml(source);
 return `<!doctype html><html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta property="og:type" content="article"><meta property="og:title" content="${name} on Masanawa">
<meta property="og:description" content="${description}">
<meta property="og:url" content="${canonical}">
<link rel="canonical" href="${canonical}">
<meta name="description" content="${description}">
<title>${name} · Masanawa</title><style>
body{background:#f4f5f2;color:#1b2c23;font:16px/1.55 system-ui,sans-serif;margin:0}
main{max-width:600px;margin:32px auto;padding:22px;border-radius:16px;background:white}
h1{font-size:21px;margin:0 0 12px}article{white-space:pre-wrap;overflow-wrap:anywhere}
a{display:inline-block;margin-top:16px;padding:11px 20px;border-radius:10px;background:#167346;color:white;text-decoration:none}
.fine{color:#5c6961;font-size:13px;margin-top:24px}
</style></head><body><main><h1>${name}</h1><article>${body}</article>
${post.imageCount>0?'<p class="fine">Approved image media is viewable in the app.</p>':''}
<a rel="nofollow noopener" href="${href}">Open in Masanawa</a>
<p class="fine">Viewing a shared page or link preview does not automatically earn rewards.
Qualified views require a verified in-app or consented web session. No app installation is required to read this text.</p>
</main></body></html>`;
}

export async function registerPublicStatusLanding(app:FastifyInstance,options:{
  port:{find(id:string):Promise<PublicStatusPost|null>;
    validReferral?(postId:string,token:string):Promise<boolean>};
  enabled:()=>boolean;publicBaseUrl?:string;
}){
 app.get('/status/:postId',async(req,reply)=>{
  reply.header('Cache-Control','no-store');
  reply.header('Referrer-Policy','no-referrer');
  reply.header('X-Content-Type-Options','nosniff');
  reply.header('X-Frame-Options','DENY');
  reply.header('Permissions-Policy','camera=(), microphone=(), geolocation=()');
  reply.header('Content-Security-Policy',"default-src 'none'; style-src 'unsafe-inline'; base-uri 'none'; form-action 'none'; frame-ancestors 'none'");
  if(!options.enabled())return reply.code(404).type('text/plain').send('Post unavailable');
  const raw=req.params as Record<string,unknown>,id=String(raw.postId??'');
  const post=await options.port.find(id);
  if(!post)return reply.code(404).type('text/plain').send('Post unavailable');
  if(post.gone)return reply.code(410).type('text/plain').send('Post removed');
  const token=(req.query as Record<string,unknown>)?.r;
  const referral=typeof token==='string'&&/^[A-Za-z0-9_-]{20,128}$/.test(token)&&
    await options.port.validReferral?.(id,token)?token:undefined;
  return reply.type('text/html; charset=utf-8').send(renderPublicStatusPage(post,
    referral,options.publicBaseUrl));
 });
}
