import {parseCanonicalId,nowInstant,type TenantId,type CharacterId} from '@masanawa/contracts';
import type {AgentPresentationRepository,PlatformAgentProfileRepository,CharacterSkillAssignmentRepository} from '@masanawa/agents';
import type {SkillDistributionRepository} from '@masanawa/skills';
import type {Pool} from '@masanawa/postgres';
import {withTransaction} from '@masanawa/postgres';
import {validateMasanaProfile} from '@masanawa/masana';
import type {PlatformAgentIdentityProvisioner} from './platform_agent_bootstrap.js';
import {createOfficialKnowledgeReader} from './public_official_knowledge.js';
import {OFFICIAL_ROSTER_MANIFEST,type OfficialRosterSubject} from './official_roster_manifest.js';
import {PROFESSIONAL_MASANA_CATALOG} from './platform_agent_bootstrap.js';
import {APPROVED_MASANA_VOICES} from './masana_voice_catalog.js';
import {admitBundledOfficialLaunch} from './official_launch_admission.js';
import {OFFICIAL_LAUNCH_BIOGRAPHIES} from './official_launch_biographies.js';

export type {OfficialRosterSubject} from './official_roster_manifest.js';
export function officialRosterIntroduction(name:string){return `Independent AI simulation based on ${name}. Not the official or their office.`;}
/** Called inside the existing tenant catalogue advisory lock. Register new
 * canonical subjects first; do not advertise an incomplete biography as a
 * working official. No fictional identity, conversation or money is reassigned. */
export async function ensureOfficialPlatformAgents(input:{
 tenantId:TenantId;pool:Pool;identity:PlatformAgentIdentityProvisioner;
 presentations:AgentPresentationRepository;profiles:PlatformAgentProfileRepository;
 skillAssignments:CharacterSkillAssignmentRepository;skillDistribution:SkillDistributionRepository;
 legacySpecialists:readonly CharacterId[];
 roster?:readonly OfficialRosterSubject[];
}){
 const roster=input.roster??OFFICIAL_ROSTER_MANIFEST;
 const all=[...await input.presentations.listAll({tenantId:input.tenantId})];
 const voices=APPROVED_MASANA_VOICES;
 const skills=(await input.skillDistribution.listForAudience('platform-support')).filter(s=>s.installMode!=='hidden').map(s=>s.skillVersionId);
 let registered=0;
 for(const [index,subject] of roster.entries()){
  const displayName=OFFICIAL_LAUNCH_BIOGRAPHIES.find(b=>b.characterId===subject.characterId&&b.officialName===subject.officialName)?.displayName??subject.officialName;
  const characterId=parseCanonicalId('character',subject.characterId);
  const characterVersionId=parseCanonicalId('character-version',subject.characterVersionId);
  const found=await input.pool.query(`SELECT v.constitution,o.kind FROM identity.characters c
   JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_version_id=c.active_character_version_id
   LEFT JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id
   WHERE c.tenant_id=$1 AND c.character_id=$2`,[input.tenantId,characterId]);
  if(found.rows[0]){
   if(found.rows[0].kind!=='platform'||found.rows[0].constitution?.publicOfficial?.officialName!==subject.officialName||
    found.rows[0].constitution?.publicOfficial?.countryCode!=='NG')throw Error('official_roster_identity_conflict');
  }else{
   // A failed earlier run may have created a non-active identity. Never
   // overwrite it or turn another canonical subject into this official.
   const exists=await input.pool.query('SELECT 1 FROM identity.characters WHERE tenant_id=$1 AND character_id=$2',[input.tenantId,characterId]);
   if(exists.rows.length)throw Error('official_roster_identity_incomplete');
   await input.identity.provision({tenantId:input.tenantId,characterId,characterVersionId,createdAt:nowInstant(),
    constitution:{schemaVersion:1,displayName:subject.officialName,
     publicOfficial:{officialName:subject.officialName,countryCode:'NG'},
     biography:officialRosterIntroduction(subject.officialName),personality:['Clear','Conversational','Evidence-grounded'],
     boundaries:['Clearly identify as an independent AI simulation.','Use only the separately admitted biography evidence; never invent an official position, quotation or personal encounter.'],
     disclosurePolicy:{representation:'ai_simulation'},languages:['en','ha'],voiceReferences:[],appearanceReferences:[],
     expertise:['Documented public service','Civic questions']}});
   registered++;
  }
  let presentation=all.find(p=>p.characterId===characterId);
  if(!presentation){
   presentation=await input.presentations.put({expectedRevision:null,presentation:{schemaVersion:1,tenantId:input.tenantId,
    characterId,characterVersionId,displayName,
    roleLabel:[subject.office,subject.state,subject.party].filter(Boolean).join(' · '),
    about:officialRosterIntroduction(subject.officialName),greeting:`Hello. I'm an AI persona based on ${subject.officialName}, not the official or their office. What would you like to discuss?`,
    countryCode:'NG',countryName:'Nigeria',visibleInUserApp:false,sortOrder:100+index,revision:1}});
   all.push(presentation);
  }
  if(!await input.profiles.readForCharacter({tenantId:input.tenantId,characterId})){
   await input.profiles.put({expectedRevision:null,profile:{schemaVersion:1,tenantId:input.tenantId,characterId,
    supportAgent:false,defaultForNewUsers:false,voiceProvider:'gemini',voiceName:voices[index%voices.length]!,revision:1}});
  }
  if(!await input.skillAssignments.readForCharacter({tenantId:input.tenantId,characterId})){
   await input.skillAssignments.put({expectedRevision:null,assignment:{schemaVersion:1,tenantId:input.tenantId,characterId,
    skillVersionIds:Object.freeze([...skills]),revision:1}});
  }
  const profile=validateMasanaProfile({handle:'ng.'+subject.characterId.slice(10).replaceAll('-',''),
   displayName,profession:subject.office,biography:officialRosterIntroduction(subject.officialName),
   lifeStory:officialRosterIntroduction(subject.officialName),languages:['en','ha'],talents:['Civic questions'],
   goals:['Explain documented public history and views'],roomId:null,portraitMediaId:null,bannerMediaId:null});
  await input.pool.query(`INSERT INTO masana.character_revisions
   (tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   SELECT $1,$2,1,'draft',$3::jsonb,NULL,NULL
   WHERE NOT EXISTS(SELECT 1 FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2)
   ON CONFLICT DO NOTHING`,[input.tenantId,characterId,JSON.stringify(profile)]);
 }
 const admitted=await admitBundledOfficialLaunch(input.pool,input.tenantId,roster);
 const activation=await activateAdmittedOfficialRoster({tenantId:input.tenantId,pool:input.pool,
  presentations:input.presentations,legacySpecialists:input.legacySpecialists,roster});
 return {registered,admitted,...activation};
}

/** Reused after trusted dossier admission so activation needs no service restart. */
export async function activateAdmittedOfficialRoster(input:{tenantId:TenantId;pool:Pool;
 presentations:AgentPresentationRepository;legacySpecialists?:readonly CharacterId[];
 roster?:readonly OfficialRosterSubject[]}){
 const roster=input.roster??OFFICIAL_ROSTER_MANIFEST;
 const all=[...await input.presentations.listAll({tenantId:input.tenantId})];
 const ids=roster.map(s=>s.characterId),knowledge=createOfficialKnowledgeReader(input.pool);
 const ready=await knowledge.directory(input.tenantId,ids);
 const approved=await input.pool.query(`SELECT character_id,profile FROM masana.character_revisions
  WHERE tenant_id=$1 AND character_id=ANY($2::text[]) AND state='approved'`,[input.tenantId,ids]);
 const profiles=new Map(approved.rows.map(row=>[String(row.character_id),validateMasanaProfile(row.profile)]));
 let activated=0,active=0;
 for(const subject of roster){
  const p=all.find(value=>value.characterId===subject.characterId);
  if(!p)continue;
  const profile=profiles.get(subject.characterId);
  // A roster registration/disclosure is not a biography. Only reviewed content
  // and an actual published profile can make an official selectable.
  if(!ready.has(subject.characterId)||!profile||profile.biography===officialRosterIntroduction(subject.officialName))continue;
  if(p.visibleInUserApp){active++;continue;}
  // Revision > 1 can be an intentional staff hide. Never undo it on restart.
  if(p.revision!==1)continue;
  await input.presentations.put({expectedRevision:1,presentation:{...p,about:profile.biography.slice(0,500),visibleInUserApp:true}});
  activated++;active++;
 }
 if(active){
  const legacyHandles=PROFESSIONAL_MASANA_CATALOG.filter(seed=>!seed.supportAgent).map(seed=>seed.handle);
  const legacySpecialists=input.legacySpecialists??(await input.pool.query(`SELECT r.character_id FROM masana.character_revisions r
   JOIN identity.character_ownership o ON o.tenant_id=r.tenant_id AND o.character_id=r.character_id AND o.kind='platform'
   WHERE r.tenant_id=$1 AND r.state='approved' AND r.profile->>'handle'=ANY($2::text[])`,[input.tenantId,legacyHandles])).rows
   .map(row=>parseCanonicalId('character',String(row.character_id)));
  // Existing finance and private conversation rows remain untouched. Retire
  // only the specialist public profiles; account-support agents stay available.
  await withTransaction(input.pool,async c=>{
   await c.query(`UPDATE masana.character_revisions SET state='retired',updated_at=clock_timestamp()
    WHERE tenant_id=$1 AND character_id=ANY($2::text[]) AND state='approved'`,[input.tenantId,legacySpecialists]);
   await c.query(`UPDATE agents.agent_presentations SET visible_in_user_app=false,revision=revision+1
    WHERE tenant_id=$1 AND character_id=ANY($2::text[]) AND visible_in_user_app=true`,[input.tenantId,legacySpecialists]);
  });
 }
 return {prepared:roster.length,active,activated,biographyPending:roster.length-active};
}
