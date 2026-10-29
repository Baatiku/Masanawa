import {createHash} from 'node:crypto';
import type {Pool} from '@masanawa/postgres';
import {isGrokipediaArticleUrl,type PublicOfficialPersona} from '@masanawa/agents';
function evidenceExcerpt(content:string,query:string){
 const terms=(query.match(/[\p{L}\p{N}]+/gu)??[]).filter(x=>x.length>=4).sort((a,b)=>b.length-a.length);
 const lower=content.toLowerCase();const hit=terms.map(term=>lower.indexOf(term.toLowerCase())).find(index=>index>=0)??0;
 const excerpt=content.slice(Math.max(0,hit-160));
 return Buffer.from(excerpt,'utf8').subarray(0,1000).toString('utf8').replace(/\uFFFD$/u,'');
}
const grokipediaSql="^https://(www[.])?grokipedia[.]com/page/[^/?#[:space:]]+$";
/** Public evidence is deliberately separate from per-citizen conversational memory. */
export function createOfficialKnowledgeReader(pool:Pick<Pool,'query'>,options:{includeSocial?:boolean}={}){
 return {
  async read(tenantId:string,characterId:string,characterVersionId:string,query=''):Promise<PublicOfficialPersona|null>{
   const r=await pool.query(`SELECT d.*,c.active_character_version_id,c.state AS character_state,o.kind AS owner_kind FROM masana.public_official_dossiers d
    JOIN identity.characters c ON c.tenant_id=d.tenant_id AND c.character_id=d.character_id
    LEFT JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id
    WHERE d.tenant_id=$1 AND d.character_id=$2`,[tenantId,characterId]);
   const d=r.rows[0];if(!d)return null;
   if(d.owner_kind!=='platform'||d.character_state!=='active'||d.active_character_version_id!==characterVersionId||d.character_version_id!==characterVersionId||d.state!=='approved'||Date.parse(d.review_expires_at)<=Date.now())
    throw Object.assign(new Error('official_dossier_review_required'),{statusCode:409});
   const terms=(query.slice(0,500).match(/[\p{L}\p{N}]+/gu)??[]).slice(0,24).map(x=>x.slice(0,40)).join(' | ');
   const social=options.includeSocial?`UNION ALL (SELECT 'social:'||p.id::text||':'||sp.content_sha256 AS id,
    sp.source_url,'Original '||s.platform||' post' AS title,p.body AS content,sp.original_published_at::date AS source_date,
    'official_social'::text AS source_kind,sp.content_sha256
    FROM feed.official_social_posts sp JOIN feed.official_social_sources s ON s.id=sp.source_id AND s.tenant_id=sp.tenant_id
    JOIN feed.posts p ON p.tenant_id=sp.tenant_id AND p.id=sp.post_id AND p.author_masana_id=s.character_id
    WHERE s.tenant_id=$1 AND s.character_id=$2 AND s.state='approved' AND s.review_expires_at>clock_timestamp()
    AND sp.withdrawn_at IS NULL AND p.state='published' AND p.source_provenance->>'contentSha256'=sp.content_sha256
    AND ($3='' OR to_tsvector('english',p.body)@@to_tsquery('english',$3))
    ORDER BY CASE WHEN $3='' THEN 0 ELSE ts_rank(to_tsvector('english',p.body),to_tsquery('english',$3)) END DESC,sp.original_published_at DESC LIMIT 200)`:'';
   const e=await pool.query(`WITH corpus AS (
    SELECT id::text,source_url,title,content,source_date,source_kind,content_sha256 FROM masana.public_official_evidence
    WHERE tenant_id=$1 AND character_id=$2 AND state='approved' AND valid_until>clock_timestamp()
     AND source_kind='grokipedia' AND source_url ~ '${grokipediaSql}'
    ${social}
   ) SELECT id,source_url,title,content,source_date,source_kind,content_sha256 FROM (
    SELECT *,row_number() OVER(PARTITION BY source_kind ORDER BY source_date DESC,id) AS kind_rank FROM corpus) e
    ORDER BY CASE WHEN source_kind='grokipedia' AND kind_rank=1 THEN 0 ELSE 1 END,
    CASE WHEN $3='' THEN 0 ELSE ts_rank(to_tsvector('english',content),to_tsquery('english',$3)) END DESC,
    source_date DESC,id LIMIT 6`,[tenantId,characterId,terms]);
   // The owner selected Grokipedia as the sole biography corpus; social statements remain separate.
   if(!e.rows.some(x=>x.source_kind==='grokipedia'&&isGrokipediaArticleUrl(x.source_url)))
    throw Object.assign(new Error('official_evidence_incomplete'),{statusCode:409});
   let bytes=0;
   const evidence=e.rows.filter(x=>x.source_kind==='grokipedia'?isGrokipediaArticleUrl(x.source_url):x.source_kind==='official_social'&&createHash('sha256').update(x.content).digest('hex')===x.content_sha256).map(x=>({id:String(x.id),sourceUrl:x.source_url,title:x.title,
    content:evidenceExcerpt(x.content,query),sourceDate:new Date(x.source_date).toISOString().slice(0,10),kind:x.source_kind}))
    .filter(value=>{const size=Buffer.byteLength(JSON.stringify(value),'utf8');if(bytes+size>14000)return false;bytes+=size;return true;});
   if(!isGrokipediaArticleUrl(d.identity_source_url)||!evidence.some(x=>x.kind==='grokipedia'))
    throw Object.assign(new Error('official_evidence_incomplete'),{statusCode:409});
   return {officialName:d.official_name,office:d.office,countryCode:'NG',
    identitySourceUrl:d.identity_source_url,reviewedAt:new Date(d.reviewed_at).toISOString(),
    reviewExpiresAt:new Date(d.review_expires_at).toISOString(),
    evidence};
  },
  async simulations(tenantId:string,ids:readonly string[]){
   if(!ids.length)return new Set<string>();
   const r=await pool.query('SELECT character_id FROM masana.public_official_dossiers WHERE tenant_id=$1 AND character_id=ANY($2::text[])',[tenantId,ids]);
   return new Set<string>(r.rows.map(x=>String(x.character_id)));
  },
  async directory(tenantId:string,ids:readonly string[]){
   if(!ids.length)return new Map();
   const r=await pool.query(`SELECT d.character_id,d.official_name,d.office,d.identity_source_url,
    d.reviewed_at,d.review_expires_at,
    (SELECT jsonb_agg(jsonb_build_object('url',e.source_url,'until',e.valid_until))
     FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id AND e.character_id=d.character_id
      AND e.state='approved' AND e.source_kind='grokipedia' AND e.valid_until>clock_timestamp()) AS biography_sources
    FROM masana.public_official_dossiers d
    JOIN identity.characters c ON c.tenant_id=d.tenant_id AND c.character_id=d.character_id
     AND c.active_character_version_id=d.character_version_id AND c.state='active'
    JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id AND o.kind='platform'
    WHERE d.tenant_id=$1 AND d.character_id=ANY($2::text[]) AND d.state='approved'
     AND d.review_expires_at>clock_timestamp()`,[tenantId,ids]);
   return new Map(r.rows.flatMap(x=>{
    const valid=(Array.isArray(x.biography_sources)?x.biography_sources:[])
     .filter((e:{url?:unknown;until?:string})=>isGrokipediaArticleUrl(e.url)&&Number.isFinite(Date.parse(e.until??''))&&Date.parse(e.until!)>Date.now());
    if(!isGrokipediaArticleUrl(x.identity_source_url)||!valid.length)return [];
    const expiry=Math.min(Date.parse(x.review_expires_at),Math.max(...valid.map((e:{until:string})=>Date.parse(e.until))));
    return [[x.character_id,{officialName:x.official_name,office:x.office,
     identitySourceUrl:x.identity_source_url,reviewedAt:new Date(x.reviewed_at).toISOString(),
     reviewExpiresAt:new Date(expiry).toISOString(),verification:'source_reviewed' as const,
     representation:'ai_simulation' as const}]] as const;
   }));
  },
 };
}
