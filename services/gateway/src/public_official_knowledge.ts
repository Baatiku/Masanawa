import type {Pool} from '@masanawa/postgres';
import type {PublicOfficialPersona} from '@masanawa/agents';
function evidenceExcerpt(content:string,query:string){
 const terms=(query.match(/[\p{L}\p{N}]+/gu)??[]).filter(x=>x.length>=4).sort((a,b)=>b.length-a.length);
 const lower=content.toLowerCase();const hit=terms.map(term=>lower.indexOf(term.toLowerCase())).find(index=>index>=0)??0;
 const excerpt=content.slice(Math.max(0,hit-160));
 return Buffer.from(excerpt,'utf8').subarray(0,1000).toString('utf8').replace(/\uFFFD$/u,'');
}
/** Public evidence is deliberately separate from per-citizen conversational memory. */
export function createOfficialKnowledgeReader(pool:Pick<Pool,'query'>){
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
   const e=await pool.query(`SELECT id,source_url,title,content,source_date,source_kind
    FROM (SELECT *,row_number() OVER(PARTITION BY source_kind ORDER BY source_date DESC,id) AS kind_rank
     FROM masana.public_official_evidence WHERE tenant_id=$1 AND character_id=$2
     AND state='approved' AND valid_until>clock_timestamp()) e
    ORDER BY CASE WHEN source_kind IN ('official_record','grokipedia') AND kind_rank=1 THEN 0 ELSE 1 END,CASE WHEN $3='' THEN 0 ELSE ts_rank(to_tsvector('english',content),to_tsquery('english',$3)) END DESC,
     source_date DESC,id LIMIT 6`,[tenantId,characterId,terms]);
   // A lone encyclopedia page cannot verify a public official's identity/record.
   if(!e.rows.some(x=>x.source_kind==='official_record')||!e.rows.some(x=>x.source_kind==='grokipedia'))
    throw Object.assign(new Error('official_evidence_incomplete'),{statusCode:409});
   let bytes=0;
   const evidence=e.rows.map(x=>({id:String(x.id),sourceUrl:x.source_url,title:x.title,
    content:evidenceExcerpt(x.content,query),sourceDate:new Date(x.source_date).toISOString().slice(0,10),kind:x.source_kind}))
    .filter(value=>{const size=Buffer.byteLength(JSON.stringify(value),'utf8');if(bytes+size>14000)return false;bytes+=size;return true;});
   if(d.identity_source_url.length>2048||!evidence.some(x=>x.kind==='grokipedia')||!evidence.some(x=>x.kind==='official_record'))
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
    d.reviewed_at,LEAST(d.review_expires_at,
     (SELECT max(valid_until) FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id AND e.character_id=d.character_id AND e.state='approved' AND e.source_kind='grokipedia'),
     (SELECT max(valid_until) FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id AND e.character_id=d.character_id AND e.state='approved' AND e.source_kind='official_record')) AS review_expires_at FROM masana.public_official_dossiers d
    JOIN identity.characters c ON c.tenant_id=d.tenant_id AND c.character_id=d.character_id
     AND c.active_character_version_id=d.character_version_id AND c.state='active'
    WHERE d.tenant_id=$1 AND d.character_id=ANY($2::text[]) AND d.state='approved'
     AND d.review_expires_at>clock_timestamp()
     AND EXISTS(SELECT 1 FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id
      AND e.character_id=d.character_id AND e.state='approved' AND e.source_kind='official_record' AND e.valid_until>clock_timestamp())
     AND EXISTS(SELECT 1 FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id
      AND e.character_id=d.character_id AND e.state='approved' AND e.source_kind='grokipedia' AND e.valid_until>clock_timestamp())`,[tenantId,ids]);
   return new Map(r.rows.map(x=>[x.character_id,{officialName:x.official_name,office:x.office,
    identitySourceUrl:x.identity_source_url,reviewedAt:new Date(x.reviewed_at).toISOString(),
    reviewExpiresAt:new Date(x.review_expires_at).toISOString(),verification:'source_reviewed' as const,
    representation:'ai_simulation' as const}]));
  },
 };
}
