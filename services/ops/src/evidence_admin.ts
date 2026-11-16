import {admitOfficialDossier,type Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
import {PersonaAdminError} from './persona_admin.js';
export function createEvidenceAdmin(input:{pool:Pool;authorize:OpsAdminDashboardService['authorize']}){return{
 async read(auth:string|undefined,characterId:string){const actor=await input.authorize({authorizationHeader:auth,capability:'agents.presentation.read'});
  const result=(await input.pool.query(`SELECT c.active_character_version_id AS "characterVersionId",v.constitution->'publicOfficial' AS identity,d.office AS office,d.identity_source_url AS "identitySourceUrl",d.review_expires_at AS "reviewExpiresAt",
   (SELECT id::text FROM masana.public_official_review_receipts WHERE tenant_id=c.tenant_id AND character_id=c.character_id ORDER BY reviewed_at DESC,id DESC LIMIT 1) AS "reviewId",
   (SELECT jsonb_build_object('biography',r.profile->>'biography','lifeStory',r.profile->>'lifeStory','biographicalFacts',COALESCE(r.profile->'biographicalFacts','{}'::jsonb)) FROM masana.character_revisions r WHERE r.tenant_id=c.tenant_id AND r.character_id=c.character_id AND r.state IN('approved','draft') ORDER BY (r.state='approved') DESC,r.revision DESC LIMIT 1) AS "publicProfile"
   FROM identity.characters c JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_id=c.character_id AND v.character_version_id=c.active_character_version_id JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id AND o.kind='platform' LEFT JOIN masana.public_official_dossiers d ON d.tenant_id=c.tenant_id AND d.character_id=c.character_id WHERE c.tenant_id=$1 AND c.character_id=$2 AND c.state='active'`,[actor.tenantId,characterId])).rows[0];
  if(!result?.identity)throw new PersonaAdminError(409,'official_identity_not_admitted');
  const evidence=(await input.pool.query(`SELECT source_url AS "sourceUrl",source_kind AS kind,title,content,source_date::text AS "sourceDate",valid_until AS "validUntil",license_basis AS "licenseBasis" FROM masana.public_official_evidence WHERE tenant_id=$1 AND character_id=$2 AND state='approved' ORDER BY source_date DESC,id LIMIT 100`,[actor.tenantId,characterId])).rows;
  return {...result,identity:{...(result.identity as Record<string,unknown>),office:result.office??(result.identity as Record<string,unknown>).office??'Public official'},evidence};
 },
 async publish(auth:string|undefined,p:{characterId:string;expectedReviewId:string|null;packet:Record<string,unknown>;confirmed:boolean}){const actor=await input.authorize({authorizationHeader:auth,capability:'agents.evidence.write'});
  if(p.confirmed!==true||!p.packet||typeof p.packet!=='object'||Array.isArray(p.packet)||!/^[a-zA-Z0-9_-]{1,128}$/.test(p.characterId)||(p.expectedReviewId!==null&&!/^[0-9a-f-]{36}$/i.test(p.expectedReviewId)))throw new PersonaAdminError(422,'invalid_evidence_review');
  if(Object.hasOwn(p.packet,'socialSource'))throw new PersonaAdminError(422,'social_source_requires_separate_review');
  const current=(await input.pool.query(`SELECT active_character_version_id FROM identity.characters WHERE tenant_id=$1 AND character_id=$2 AND state='active'`,[actor.tenantId,p.characterId])).rows[0];
  if(!current)throw new PersonaAdminError(404,'persona_not_found');
  try{return await admitOfficialDossier(input.pool,{...p.packet,tenantId:actor.tenantId,characterId:p.characterId,characterVersionId:current.active_character_version_id},actor.actorId,{expectedReviewId:p.expectedReviewId,syncBiography:true});}
  catch(error){const message=error instanceof Error?error.message:'';throw new PersonaAdminError(message==='official_review_revision_changed'||message==='official_review_superseded'?409:422,['official_review_revision_changed','official_review_superseded','official_identity_reassignment_forbidden','official_canonical_admission_required','official_profile_review_required'].includes(message)?message:'invalid_official_dossier_packet');}
 }
};}
