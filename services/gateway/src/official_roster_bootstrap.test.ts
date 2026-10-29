import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {expect,it} from 'vitest';
import {createCanonicalId,nowInstant} from '@masanawa/contracts';
import {withTransaction,createPostgresIdentityRepository,createPostgresAgentPresentationRepository,
 createPostgresCharacterSkillAssignmentRepository,createPostgresPlatformAgentProfileRepository,
 createPostgresCharacterVersionReader} from '@masanawa/postgres';
import {ensureOfficialPlatformAgents,activateAdmittedOfficialRoster,officialRosterVoice,type OfficialRosterSubject} from './official_roster_bootstrap.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
import {admitOfficialDossier} from './official_dossier_admission.js';
import {createPublishedPersonaReader} from './persona_narrative.js';
import {createOfficialKnowledgeReader} from './public_official_knowledge.js';

it('keeps stable separate person IDs for four presidential and 102 reported governorship subjects',()=>{
 expect(OFFICIAL_ROSTER_MANIFEST).toHaveLength(106);
 expect(new Set(OFFICIAL_ROSTER_MANIFEST.map(s=>s.characterId)).size).toBe(106);
 expect(new Set(OFFICIAL_ROSTER_MANIFEST.map(s=>s.characterVersionId)).size).toBe(106);
 expect(OFFICIAL_ROSTER_MANIFEST.filter(s=>s.state===null).map(s=>s.party).sort()).toEqual(['ADC','APC','NDC','PDP']);
 expect(new Set(OFFICIAL_ROSTER_MANIFEST.filter(s=>s.state!==null).map(s=>s.state)).size).toBe(28);
 expect(OFFICIAL_ROSTER_MANIFEST.every(s=>!s.biographyReady)).toBe(true);
 expect(OFFICIAL_ROSTER_MANIFEST.slice(0,4).map(officialRosterVoice)).toEqual(['Algenib','Algieba','Charon','Puck']);
 expect(officialRosterVoice(OFFICIAL_ROSTER_MANIFEST[10]!,10)).toBe('Fola');
});
it('creates real canonical officials, admits an actual reviewed packet, activates and retires public specialists without reassigning history',async()=>{
 const db=new PGlite();const tenantId=createCanonicalId('tenant');
 const query=(sql:string,values?:unknown[])=>db.query(sql,values);
 const client={query,release(){}};
 const pool={query,connect:async()=>client} as never;
 try{
  for(const [root,names] of Object.entries({identity:['0001_identity_foundation.sql','0002_character_ownership.sql'],
   agents:['0001_character_sessions.sql','0002_agent_configurations.sql','0004_platform_agent_preferences.sql','0005_platform_agent_default.sql','0012_masana_country_identity.sql'],
   masana:['0001_masana_profiles.sql','0011_public_official_dossiers.sql','0012_public_official_review_receipts.sql','0013_grokipedia_only_review_scope.sql','0014_public_official_optional_media.sql','0015_attributed_biography_references.sql']}))
   for(const name of names)await db.exec(await readFile(new URL(`../../../packages/${root}/migrations/${name}`,import.meta.url),'utf8'));
  const identity={async provision(input:Parameters<Parameters<typeof ensureOfficialPlatformAgents>[0]['identity']['provision']>[0]){
   await withTransaction(pool,async c=>{
    const repo=createPostgresIdentityRepository(c);
    await repo.createCharacter(input);
    await repo.assignCharacterOwnership({...input,kind:'platform',ownerUserId:null});
    await repo.createCharacterVersion({...input,versionNumber:1});
    await repo.publishCharacterVersion({...input,publishedAt:input.createdAt});
    await repo.activateCharacterVersion({...input,expectedCharacterRevision:1,activatedAt:input.createdAt});
   });
  }};
  await createPostgresIdentityRepository(client as never).createTenant({tenantId,createdAt:nowInstant()});
  const presentations=createPostgresAgentPresentationRepository(pool),profiles=createPostgresPlatformAgentProfileRepository(pool);
  const specialist=createCanonicalId('character'),specialistVersion=createCanonicalId('character-version');
  const base={schemaVersion:1 as const,displayName:'Fictional specialist',biography:'Fictional history',personality:[],boundaries:[],disclosurePolicy:{},languages:['en'],voiceReferences:[],appearanceReferences:[],expertise:[]};
  await identity.provision({tenantId,characterId:specialist,characterVersionId:specialistVersion,createdAt:nowInstant(),constitution:base});
  await presentations.put({expectedRevision:null,presentation:{schemaVersion:1,tenantId,characterId:specialist,characterVersionId:specialistVersion,
   displayName:base.displayName,roleLabel:'Fictional specialist',about:base.biography,greeting:null,visibleInUserApp:true,sortOrder:0,revision:1}});
  const legacyProfile={handle:'masana.amina',displayName:base.displayName,profession:'Specialist',biography:base.biography,lifeStory:base.biography,
   languages:['en'],talents:[],goals:[],roomId:null,portraitMediaId:'fixture-portrait',bannerMediaId:'fixture-banner'};
  await expect(db.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   VALUES($1,$2,1,'approved',$3::jsonb,'fixture',now())`,[tenantId,specialist,
   JSON.stringify({...legacyProfile,portraitMediaId:null,bannerMediaId:null})])).rejects.toThrow('masana_media_unverified');
  for(const kind of ['portrait','banner']) await db.query(`INSERT INTO masana.character_media
   (tenant_id,media_id,character_id,kind,object_key,rights_note,approved_by)
   VALUES($1,$2,$3,$4,$5,'Synthetic test artwork','fixture')`,[tenantId,'fixture-'+kind,specialist,kind,'fixture/'+kind]);
  await db.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   VALUES($1,$2,1,'approved',$3::jsonb,'fixture',now())`,[tenantId,specialist,JSON.stringify(legacyProfile)]);
  const roster:OfficialRosterSubject[]=[0,1].map(i=>({officialName:'Synthetic candidate '+i,party:i===0?'APC':'ADC',office:'Reported candidate',state:null,
   characterId:createCanonicalId('character'),characterVersionId:createCanonicalId('character-version'),rosterSourceUrl:'https://example.test/roster',
   rosterSourceDate:'2026-10-29',rosterCheckedAt:'2026-10-29',biographyReady:false}));
  const input={pool,tenantId,identity,presentations,profiles,skillAssignments:createPostgresCharacterSkillAssignmentRepository(pool),
   skillDistribution:{listForAudience:async()=>[]} as never,legacySpecialists:[specialist],roster};
  expect(await ensureOfficialPlatformAgents(input)).toMatchObject({registered:2,active:0,biographyPending:2});
  expect((await presentations.listVisible({tenantId})).map(p=>p.characterId)).toEqual([specialist]);
  expect(await ensureOfficialPlatformAgents(input)).toMatchObject({registered:0,active:0});
  const subject=roster[0]!,characterId=subject.characterId as typeof specialist,characterVersionId=subject.characterVersionId as typeof specialistVersion;
  const version=await createPostgresCharacterVersionReader(client as never).readCharacterVersion({tenantId,characterId,characterVersionId});
  expect(version?.constitution.publicOfficial).toEqual({officialName:subject.officialName,countryCode:'NG'});
  const draft=(await db.query<{profile:Record<string,unknown>}>(`SELECT profile FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2`,[tenantId,characterId])).rows[0]!.profile;
  await expect(db.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   VALUES($1,$2,2,'approved',$3::jsonb,'fixture',now())`,[tenantId,characterId,
   JSON.stringify({...draft,portraitMediaId:'unverified-portrait'})])).rejects.toThrow('masana_media_unverified');
  const until=new Date(Date.now()+86400000).toISOString();
  const packet={tenantId,characterId,characterVersionId,officialName:subject.officialName,office:subject.office,countryCode:'NG',
   identitySourceUrl:'https://en.wikipedia.org/wiki/Synthetic_fixture',reviewExpiresAt:until,
   publicProfile:{biography:'Synthetic reviewed public biography for the repository test.',lifeStory:'Longer synthetic reviewed public biography for the repository test.',biographicalFacts:{dateOfBirth:'1964-05-14'}},
   evidence:[{sourceUrl:'https://en.wikipedia.org/wiki/Synthetic_fixture',kind:'biographical_reference',title:'Synthetic test evidence',
    content:'Synthetic historical public record; no real candidate biography is claimed.',sourceDate:'2020-01-01',validUntil:until,licenseBasis:'Synthetic test fixture'}]};
  await admitOfficialDossier(pool,packet,'fixture-reviewer');
  const activation={pool,tenantId,presentations,legacySpecialists:[specialist],roster};
  expect(await activateAdmittedOfficialRoster(activation)).toMatchObject({active:1,activated:1,biographyPending:1});
  expect((await presentations.listVisible({tenantId})).map(p=>p.characterId)).toEqual([characterId]);
  expect((await db.query(`SELECT state FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2`,[tenantId,specialist])).rows).toEqual([{state:'retired'}]);
  const narrative=await createPublishedPersonaReader(pool,createOfficialKnowledgeReader(pool)).readPublished({tenantId,characterId,characterVersionId});
  expect(narrative?.publicOfficial?.officialName).toBe(subject.officialName);
  expect(narrative?.publicOfficial?.evidence[0]?.content).toContain('Synthetic historical public record');
  expect((await db.query<{constitution:unknown}>(`SELECT constitution FROM identity.character_versions WHERE tenant_id=$1 AND character_id=$2`,[tenantId,specialist])).rows[0]?.constitution).toMatchObject({biography:'Fictional history'});
  const p=(await presentations.readForCharacter({tenantId,characterId}))!;
  await presentations.put({expectedRevision:p.revision,presentation:{...p,visibleInUserApp:false}});
  expect(await activateAdmittedOfficialRoster(activation)).toMatchObject({active:0,activated:0});
  expect((await presentations.readForCharacter({tenantId,characterId}))?.visibleInUserApp).toBe(false);
  expect(await ensureOfficialPlatformAgents(input)).toMatchObject({registered:0,activated:0});
  // Exercise actual bundled content through the production bootstrap, rather
  // than proving only that a manually admitted synthetic packet works.
  const launch={...input,roster:OFFICIAL_ROSTER_MANIFEST.slice(0,4)};
  expect(await ensureOfficialPlatformAgents(launch)).toMatchObject({registered:4,admitted:4,active:4,biographyPending:0});
  expect(await ensureOfficialPlatformAgents(launch)).toMatchObject({registered:0,admitted:0,active:4});
  const launched=launch.roster[0]!;
  expect((await createOfficialKnowledgeReader(pool).read(tenantId,launched.characterId,launched.characterVersionId))?.evidence[0]?.kind).toBe('biographical_reference');
  await db.query(`UPDATE masana.public_official_dossiers SET state='suspended' WHERE tenant_id=$1 AND character_id=$2`,[tenantId,launched.characterId]);
  expect(await ensureOfficialPlatformAgents(launch)).toMatchObject({admitted:0,active:3});
  expect((await db.query<{state:string}>(`SELECT state FROM masana.public_official_dossiers WHERE tenant_id=$1 AND character_id=$2`,[tenantId,launched.characterId])).rows[0]?.state).toBe('suspended');
 }finally{await db.close();}
},60000);
