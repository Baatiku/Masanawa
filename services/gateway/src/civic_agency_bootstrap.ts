import {contactVoice,isCustomContactVoice,type ContactVoiceGender} from './masana_voice_catalog.js';
import {createCanonicalId,nowInstant,type CharacterId,type TenantId} from '@masanawa/contracts';
import type {Pool} from '@masanawa/postgres';
import type {AgentPresentationRepository,PlatformAgentProfileRepository,CharacterSkillAssignmentRepository} from '@masanawa/agents';
import type {SkillDistributionRepository} from '@masanawa/skills';
import {validateMasanaProfile} from '@masanawa/masana';
import type {PlatformAgentIdentityProvisioner} from './platform_agent_bootstrap.js';

/** Independently operated civic AI guides. They explain public functions and
 * never claim to be the named ministry/agency, accept applications or payments,
 * or access government/private records. URLs are public provenance, not APIs. */
export const CIVIC_AGENCY_CATALOG = Object.freeze(([
 {id:'inec',name:'Independent National Electoral Commission',short:'INEC',topic:'elections and voter registration',source:'https://www.inecnigeria.org/'},
 {id:'nimc',name:'National Identity Management Commission',short:'NIMC',topic:'national identity, enrolment and NIN guidance',source:'https://nimc.gov.ng/'},
 {id:'nafdac',name:'National Agency for Food and Drug Administration and Control',short:'NAFDAC',topic:'food, drug and product safety regulation',source:'https://nafdac.gov.ng/'},
 {id:'ncdc',name:'Nigeria Centre for Disease Control and Prevention',short:'NCDC',topic:'public health surveillance and outbreak response',source:'https://ncdc.gov.ng/'},
 {id:'frsc',name:'Federal Road Safety Corps',short:'FRSC',topic:'road traffic rules and safety',source:'https://frsc.gov.ng/'},
 {id:'cac',name:'Corporate Affairs Commission',short:'CAC',topic:'business-name and corporate registration',source:'https://www.cac.gov.ng/'},
 {id:'cbn',name:'Central Bank of Nigeria',short:'CBN',topic:'monetary policy and central banking',source:'https://www.cbn.gov.ng/'},
 {id:'efcc',name:'Economic and Financial Crimes Commission',short:'EFCC',topic:'economic and financial crimes',source:'https://www.efcc.gov.ng/'},
 {id:'icpc',name:'Independent Corrupt Practices and Other Related Offences Commission',short:'ICPC',topic:'corruption prevention and investigations',source:'https://icpc.gov.ng/'},
 {id:'ndlea',name:'National Drug Law Enforcement Agency',short:'NDLEA',topic:'drug-law enforcement and prevention',source:'https://ndlea.gov.ng/'},
 {id:'nis',name:'Nigeria Immigration Service',short:'NIS',topic:'passports, migration and border procedures',source:'https://immigration.gov.ng/'},
 {id:'nema',name:'National Emergency Management Agency',short:'NEMA',topic:'disaster management and emergency preparedness',source:'https://nema.gov.ng/'},
 {id:'ncc',name:'Nigerian Communications Commission',short:'NCC',topic:'telecommunications regulation and consumer rights',source:'https://www.ncc.gov.ng/'},
 {id:'nitda',name:'National Information Technology Development Agency',short:'NITDA',topic:'information technology policy and digital development',source:'https://nitda.gov.ng/'},
 {id:'npa',name:'Nigerian Ports Authority',short:'NPA',topic:'port management and marine services',source:'https://nigerianports.gov.ng/'},
 {id:'faan',name:'Federal Airports Authority of Nigeria',short:'FAAN',topic:'airport facilities and services',source:'https://faan.gov.ng/'},
] as const).map((seed,index)=>Object.freeze({...seed,gender:(index%2===0?'female':'male') as ContactVoiceGender})));

export function approvedCivicAgencyId(value:unknown):string|null {
 return typeof value==='string'&&CIVIC_AGENCY_CATALOG.some(s=>s.id===value)?value:null;
}

/** Idempotently provisions independent AI guides. A canonical civic ID lives
 * in the approved Masana profile and constitutional disclosure policy; a mere
 * matching display name cannot bind another Character to an institution.
 * Staff-hidden records are never republished or overwritten on restart. */
export async function ensureCivicAgencyAgents(input:{
 tenantId:TenantId;pool:Pool;identity:PlatformAgentIdentityProvisioner;
 presentations:AgentPresentationRepository;profiles:PlatformAgentProfileRepository;
 skillAssignments:CharacterSkillAssignmentRepository;skillDistribution:SkillDistributionRepository;
}) {
 const old=await input.pool.query<{character_id:string;civic_id:string}>(`
  SELECT c.character_id, v.constitution->'disclosurePolicy'->>'civicAgencyId' AS civic_id
  FROM identity.characters c
  JOIN identity.character_ownership owner ON owner.tenant_id=c.tenant_id AND owner.character_id=c.character_id AND owner.kind='platform'
  JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_version_id=c.active_character_version_id
  WHERE c.tenant_id=$1 AND v.constitution->'disclosurePolicy'->>'representation'='independent_civic_ai_guide'`,[input.tenantId]);
 const byId=new Map<string,CharacterId>();
 for(const row of old.rows){
  const id=approvedCivicAgencyId(row.civic_id);
  if(!id||byId.has(id))throw Error('civic_guide_identity_conflict');
  byId.set(id,row.character_id as CharacterId);
 }
 const existing=await input.presentations.listAll({tenantId:input.tenantId});
 const skills=(await input.skillDistribution.listForAudience('platform-support'))
  .filter(s=>s.installMode!=='hidden').map(s=>s.skillVersionId);
 let created=0;
 for(const [index,seed] of CIVIC_AGENCY_CATALOG.entries()){
  const characterId=byId.get(seed.id)??createCanonicalId('character');
  const characterVersionId=createCanonicalId('character-version');
  const intro=`Independent Masanawa AI guide to ${seed.name} (${seed.short}). Not the agency or its staff.`;
  if(!byId.has(seed.id)) {
   await input.identity.provision({tenantId:input.tenantId,characterId,characterVersionId,createdAt:nowInstant(),
    constitution:{schemaVersion:1,displayName:`${seed.short} · AI Guide`,biography:`${intro} Explains ${seed.topic}. Reference: ${seed.source}`,
      personality:['Helpful','Clear','Politically neutral','Evidence-grounded'],
      boundaries:[
       'Always state that this is an independent Masanawa AI guide, not a government account or authorised officer.',
       `Discuss ${seed.topic} from publicly attributable information; distinguish law from commentary and uncertainty.`,
       `Direct citizens to ${seed.source} for current official forms, advice, fees and decisions.`,
       'Never ask for NIN, BVN, passwords, passport details, OTPs, or payment to the AI.',
       'Do not claim access to official case files, live applications, appointments, government systems or personal records.',
       'Do not invent service eligibility, statutes, current officials, promises, or approvals.',
      ],
      disclosurePolicy:{representation:'independent_civic_ai_guide',civicAgencyId:seed.id,sourceUrl:seed.source},
      languages:['en','ha'],voiceReferences:[],appearanceReferences:[],expertise:[seed.topic,'Nigerian civic education'],
    }});
   created++;
  }
  const presentation=existing.find(p=>p.characterId===characterId);
  if(!presentation){
   await input.presentations.put({expectedRevision:null,presentation:{schemaVersion:1,tenantId:input.tenantId,
    characterId,characterVersionId:byId.has(seed.id)
      ? (await input.pool.query<{active_character_version_id:string}>(`SELECT active_character_version_id FROM identity.characters WHERE tenant_id=$1 AND character_id=$2`,[input.tenantId,characterId])).rows[0]!.active_character_version_id as import('@masanawa/contracts').CharacterVersionId
      : characterVersionId,
    displayName:`${seed.short} · AI Guide`,roleLabel:`Civic AI guide · ${seed.name}`,
    about:`${intro} Public education about ${seed.topic}.`,
    greeting:`Hello! I'm an independent Masanawa AI guide to ${seed.short}, not the agency. What would you like to understand?`,
    countryCode:'NG',countryName:'Nigeria',visibleInUserApp:true,sortOrder:200+index,revision:1}});
  }
  const existingProfile=await input.profiles.readForCharacter({tenantId:input.tenantId,characterId});
  const voiceName=contactVoice(seed.gender,index);
  if(!existingProfile){
   await input.profiles.put({expectedRevision:null,profile:{schemaVersion:1,tenantId:input.tenantId,
    characterId,supportAgent:false,defaultForNewUsers:false,voiceProvider:'gemini',voiceName,revision:1}});
  }else if(existingProfile.voiceProvider.toLowerCase()==='gemini'&&!isCustomContactVoice(existingProfile.voiceName)&&existingProfile.voiceName!==voiceName){
   await input.profiles.put({expectedRevision:existingProfile.revision,profile:{...existingProfile,voiceName,revision:existingProfile.revision+1}});
  }
  if(!await input.skillAssignments.readForCharacter({tenantId:input.tenantId,characterId})){
   await input.skillAssignments.put({expectedRevision:null,assignment:{schemaVersion:1,tenantId:input.tenantId,
    characterId,skillVersionIds:Object.freeze([...skills]),revision:1}});
  }
  const approved=validateMasanaProfile({handle:`civic.${seed.id}`,displayName:`${seed.short} · AI Guide`,
    profession:'Independent civic AI guide',biography:intro,lifeStory:`${intro} Information source: ${seed.source}.`,
    languages:['en','ha'],talents:[seed.topic],goals:['Explain public information accurately'],
    roomId:null,portraitMediaId:null,bannerMediaId:null});
  await input.pool.query(`INSERT INTO masana.character_revisions
   (tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   SELECT $1,$2,1,'approved',$3::jsonb,'masanawa-civic-seed-v1',clock_timestamp()
   WHERE NOT EXISTS(SELECT 1 FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2)
   ON CONFLICT DO NOTHING`,[input.tenantId,characterId,JSON.stringify({...approved,civicAgencyId:seed.id})]);
 }
 return {prepared:CIVIC_AGENCY_CATALOG.length,created};
}
