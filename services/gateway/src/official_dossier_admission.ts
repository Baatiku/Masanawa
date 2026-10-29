import {createHash,randomUUID} from 'node:crypto';
import {validateMasanaProfile,validateMasanaBiographicalFacts,type MasanaBiographicalFacts} from '@masanawa/masana';
import {isApprovedBiographySourceUrl,isApprovedBiographyEvidence} from '@masanawa/agents';
import {parseCanonicalId} from '@masanawa/contracts';
import {withTransaction,type Pool} from '@masanawa/postgres';

type EvidenceKind='grokipedia'|'biographical_reference';
export interface OfficialDossierPacket {
 tenantId:string;characterId:string;characterVersionId:string;
 officialName:string;office:string;countryCode:'NG';identitySourceUrl:string;reviewExpiresAt:string;
 publicProfile?:{biography:string;lifeStory:string;biographicalFacts?:MasanaBiographicalFacts};
 socialSource?:{platform:'x'|'facebook';accountId:string;handle:string;rightsBasis:string;reviewExpiresAt:string};
 evidence:readonly {sourceUrl:string;kind:EvidenceKind;title:string;content:string;sourceDate:string;validUntil:string;licenseBasis:string}[];
}
const reject=():never=>{throw Error('invalid_official_dossier_packet');};
function text(value:unknown,min:number,max:number):string{
 if(typeof value!=='string'||value.trim().length<min||value.length>max||value.includes('\0'))return reject();return value;
}
function url(value:unknown):string{
 const raw=text(value,10,2048);let u:URL;try{u=new URL(raw);}catch{return reject();}
 if(u.protocol!=='https:'||!u.hostname.includes('.')||u.username||u.password||u.hash||u.port)return reject();return u.href;
}
/** Validation never fetches a URL or grants publication. Only the trusted operator
 * command may pass a reviewed packet to admitOfficialDossier; no customer route. */
export function validateOfficialDossierPacket(raw:unknown,now=new Date()):OfficialDossierPacket{
 if(!raw||typeof raw!=='object'||Array.isArray(raw))return reject();const r=raw as Record<string,unknown>;
 const expires=Date.parse(String(r.reviewExpiresAt));
 if(r.countryCode!=='NG'||!Number.isFinite(expires)||expires<=+now||expires>+now+90*86400000||
  !Array.isArray(r.evidence)||r.evidence.length<1||r.evidence.length>100)return reject();
 const evidence=r.evidence.map(value=>{
  if(!value||typeof value!=='object'||Array.isArray(value))return reject();const e=value as Record<string,unknown>;
  if(e.kind!=='grokipedia'&&e.kind!=='biographical_reference')return reject();
  const sourceUrl=url(e.sourceUrl),kind=e.kind as EvidenceKind;
  if(!isApprovedBiographyEvidence({kind,sourceUrl}))return reject();
  const sourceDate=text(e.sourceDate,10,10),date=Date.parse(sourceDate+'T00:00:00Z'),until=Date.parse(String(e.validUntil));
  if(!/^\d{4}-\d{2}-\d{2}$/.test(sourceDate)||!Number.isFinite(date)||new Date(date).toISOString().slice(0,10)!==sourceDate||
   date>+now||!Number.isFinite(until)||until<=+now||until>expires)return reject();
  return {sourceUrl,kind,title:text(e.title,1,240),content:text(e.content,1,4000),sourceDate,
   validUntil:new Date(until).toISOString(),licenseBasis:text(e.licenseBasis,5,500)};
 });
 if(!isApprovedBiographySourceUrl(r.identitySourceUrl))return reject();
 if(new Set(evidence.map(e=>JSON.stringify([e.sourceUrl,e.content]))).size!==evidence.length)return reject();
 let publicProfile:OfficialDossierPacket['publicProfile'];
 if(r.publicProfile!==undefined){
  if(!r.publicProfile||typeof r.publicProfile!=='object'||Array.isArray(r.publicProfile))return reject();
  const p=r.publicProfile as Record<string,unknown>;
  publicProfile={biography:text(p.biography,20,500),lifeStory:text(p.lifeStory,20,8000),
   ...(p.biographicalFacts!==undefined?{biographicalFacts:validateMasanaBiographicalFacts(p.biographicalFacts)}:{})};
 }
 let socialSource:OfficialDossierPacket['socialSource'];
 if(r.socialSource!==undefined){
  if(!r.socialSource||typeof r.socialSource!=='object'||Array.isArray(r.socialSource))return reject();
  const s=r.socialSource as Record<string,unknown>,until=Date.parse(String(s.reviewExpiresAt));
  if(s.platform!=='x'&&s.platform!=='facebook'||typeof s.accountId!=='string'||!/^\d{1,30}$/.test(s.accountId)||
   typeof s.handle!=='string'||!(s.platform==='x'?/^[A-Za-z0-9_]{1,15}$/:/^[A-Za-z0-9._-]{1,80}$/).test(s.handle)||
   !Number.isFinite(until)||until<=+now||until>expires)return reject();
  socialSource={platform:s.platform,accountId:s.accountId,handle:s.handle,rightsBasis:text(s.rightsBasis,5,500),reviewExpiresAt:new Date(until).toISOString()};
 }
 try{return {tenantId:parseCanonicalId('tenant',String(r.tenantId)),characterId:parseCanonicalId('character',String(r.characterId)),
  characterVersionId:parseCanonicalId('character-version',String(r.characterVersionId)),officialName:text(r.officialName,2,160),
  office:text(r.office,2,240),countryCode:'NG',identitySourceUrl:url(r.identitySourceUrl),reviewExpiresAt:new Date(expires).toISOString(),evidence,...(publicProfile?{publicProfile}:{}),...(socialSource?{socialSource}:{})};
 }catch{return reject();}
}
export async function admitOfficialDossier(pool:Pool,raw:unknown,reviewedBy:string){
 const packet=validateOfficialDossierPacket(raw);text(reviewedBy,2,160);
 const packetSha256=createHash('sha256').update(JSON.stringify(packet)).digest('hex');
 return withTransaction(pool,async c=>{
  const found=await c.query(`SELECT a.character_id FROM identity.characters a
   JOIN identity.character_versions v ON v.tenant_id=a.tenant_id AND v.character_id=a.character_id
    AND v.character_version_id=a.active_character_version_id
   JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id
   WHERE a.tenant_id=$1 AND a.character_id=$2 AND a.active_character_version_id=$3
    AND a.state='active' AND v.state='published' AND o.kind='platform'
    AND v.constitution->'publicOfficial'->>'officialName'=$4
    AND v.constitution->'publicOfficial'->>'countryCode'='NG'
    AND NOT EXISTS(SELECT 1 FROM identity.character_versions previous WHERE previous.tenant_id=a.tenant_id
     AND previous.character_id=a.character_id AND previous.state='published'
     AND (previous.constitution->'publicOfficial'->>'officialName' IS DISTINCT FROM $4
       OR previous.constitution->'publicOfficial'->>'countryCode' IS DISTINCT FROM 'NG'))
    AND EXISTS(SELECT 1 FROM masana.character_revisions m WHERE m.tenant_id=a.tenant_id
      AND m.character_id=a.character_id AND (m.state='approved' OR ($5 AND m.state='draft')))
   FOR UPDATE OF a`,[packet.tenantId,packet.characterId,packet.characterVersionId,packet.officialName,packet.publicProfile!==undefined]);
  if(!found.rows[0])throw Error('official_canonical_admission_required');
  const old=await c.query(`SELECT official_name,state FROM masana.public_official_dossiers
   WHERE tenant_id=$1 AND character_id=$2 FOR UPDATE`,[packet.tenantId,packet.characterId]);
  if(old.rows[0]&&old.rows[0].official_name!==packet.officialName)throw Error('official_identity_reassignment_forbidden');
  const prior=await c.query(`SELECT id,packet_sha256,evidence_count FROM masana.public_official_review_receipts
   WHERE tenant_id=$1 AND character_id=$2 ORDER BY reviewed_at DESC,id DESC`,[packet.tenantId,packet.characterId]);
  const matching=prior.rows.find(row=>row.packet_sha256===packetSha256);
  if(matching){
   if(matching.id!==prior.rows[0]?.id||old.rows[0]?.state!=='approved')throw Error('official_review_superseded');
   return {reviewId:String(matching.id),packetSha256,evidenceCount:Number(matching.evidence_count)};
  }
  if(packet.publicProfile){
   const current=await c.query(`SELECT revision,profile FROM masana.character_revisions
    WHERE tenant_id=$1 AND character_id=$2 AND state IN ('approved','draft')
    ORDER BY (state='approved') DESC,revision DESC LIMIT 1 FOR UPDATE`,[packet.tenantId,packet.characterId]);
   if(current.rows.length!==1)throw Error('official_profile_review_required');
   const profile=validateMasanaProfile({...current.rows[0].profile,...packet.publicProfile});
   const latest=await c.query(`SELECT COALESCE(MAX(revision),0)::int AS revision FROM masana.character_revisions
    WHERE tenant_id=$1 AND character_id=$2`,[packet.tenantId,packet.characterId]);
   await c.query(`UPDATE masana.character_revisions SET state='retired',updated_at=clock_timestamp()
    WHERE tenant_id=$1 AND character_id=$2 AND state='approved'`,[packet.tenantId,packet.characterId]);
   await c.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
    VALUES($1,$2,$3,'approved',$4::jsonb,$5,clock_timestamp())`,
    [packet.tenantId,packet.characterId,Number(latest.rows[0].revision)+1,JSON.stringify(profile),reviewedBy]);
  }
  await c.query(`INSERT INTO masana.public_official_dossiers(tenant_id,character_id,character_version_id,official_name,
   office,country_code,identity_source_url,reviewed_by,reviewed_at,review_expires_at,state)
   VALUES($1,$2,$3,$4,$5,'NG',$6,$7,clock_timestamp(),$8,'approved')
   ON CONFLICT(tenant_id,character_id) DO UPDATE SET character_version_id=EXCLUDED.character_version_id,
    office=EXCLUDED.office,identity_source_url=EXCLUDED.identity_source_url,reviewed_by=EXCLUDED.reviewed_by,
    reviewed_at=EXCLUDED.reviewed_at,review_expires_at=EXCLUDED.review_expires_at,state='approved'`,
   [packet.tenantId,packet.characterId,packet.characterVersionId,packet.officialName,packet.office,packet.identitySourceUrl,reviewedBy,packet.reviewExpiresAt]);
  await c.query(`UPDATE masana.public_official_evidence SET state='withdrawn'
   WHERE tenant_id=$1 AND character_id=$2 AND state='approved'`,[packet.tenantId,packet.characterId]);
  for(const e of packet.evidence)await c.query(`INSERT INTO masana.public_official_evidence
   (tenant_id,character_id,id,source_url,source_kind,title,content,content_sha256,source_date,valid_until,state,license_basis,reviewed_by)
   VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,'approved',$11,$12)`,[packet.tenantId,packet.characterId,randomUUID(),e.sourceUrl,e.kind,
    e.title,e.content,createHash('sha256').update(e.content).digest('hex'),e.sourceDate,e.validUntil,e.licenseBasis,reviewedBy]);
  if(packet.socialSource){
   const s=packet.socialSource;
   // Preserve stable account bindings and old-source history on platform changes.
   await c.query(`UPDATE feed.official_social_sources SET state='suspended',lease_token=NULL,lease_until=NULL,inspection_lease=NULL,inspection_lease_until=NULL
    WHERE tenant_id=$1 AND character_id=$2 AND state='approved'`,[packet.tenantId,packet.characterId]);
   const source=await c.query(`INSERT INTO feed.official_social_sources(tenant_id,character_id,platform,account_id,handle,
    rights_basis,state,reviewed_by,review_expires_at) VALUES($1,$2,$3,$4,$5,$6,'approved',$7,$8)
    ON CONFLICT(tenant_id,platform,account_id) DO UPDATE SET handle=EXCLUDED.handle,rights_basis=EXCLUDED.rights_basis,
     state='approved',reviewed_by=EXCLUDED.reviewed_by,review_expires_at=EXCLUDED.review_expires_at,
     cursor=NULL,next_sync_at=clock_timestamp(),next_inspection_at=clock_timestamp(),lease_token=NULL,lease_until=NULL,inspection_lease=NULL,inspection_lease_until=NULL
    WHERE feed.official_social_sources.character_id=EXCLUDED.character_id RETURNING id`,
    [packet.tenantId,packet.characterId,s.platform,s.accountId,s.handle,s.rightsBasis,reviewedBy,s.reviewExpiresAt]);
   if(!source.rows[0])throw Error('official_social_identity_reassignment_forbidden');
  }
  const receipt=await c.query(`INSERT INTO masana.public_official_review_receipts(tenant_id,character_id,character_version_id,
   packet_sha256,reviewed_by,review_expires_at,evidence_count) VALUES($1,$2,$3,$4,$5,$6,$7) RETURNING id`,
   [packet.tenantId,packet.characterId,packet.characterVersionId,packetSha256,reviewedBy,packet.reviewExpiresAt,packet.evidence.length]);
  return {reviewId:String(receipt.rows[0]!.id),packetSha256,evidenceCount:packet.evidence.length};
 });
}
