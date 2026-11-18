import {it,expect} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {createCanonicalId,nowInstant} from '@masanawa/contracts';
import {withTransaction,createPostgresIdentityRepository,createPostgresAgentPresentationRepository,
 createPostgresCharacterSkillAssignmentRepository,createPostgresPlatformAgentProfileRepository} from '@masanawa/postgres';
import {CIVIC_AGENCY_CATALOG,ensureCivicAgencyAgents} from './civic_agency_bootstrap.js';
import type {PlatformAgentIdentityProvisioner} from './platform_agent_bootstrap.js';

it('recovers civic startup interrupted by the stock-media guard while retaining media provenance',async()=>{
 const db=new PGlite(),tenantId=createCanonicalId('tenant');
 const query=(sql:string,values?:unknown[])=>db.query(sql,values);
 const client={query,release(){}};
 const pool={query,connect:async()=>client} as never;
 try{
  for(const [root,names] of Object.entries({
   identity:['0001_identity_foundation.sql','0002_character_ownership.sql'],
   agents:['0001_character_sessions.sql','0002_agent_configurations.sql','0004_platform_agent_preferences.sql','0005_platform_agent_default.sql','0012_masana_country_identity.sql'],
   masana:['0001_masana_profiles.sql','0011_public_official_dossiers.sql','0012_public_official_review_receipts.sql','0013_grokipedia_only_review_scope.sql','0014_public_official_optional_media.sql','0015_attributed_biography_references.sql'],
  }))for(const name of names)await db.exec(await readFile(new URL(`../../../packages/${root}/migrations/${name}`,import.meta.url),'utf8'));
  const identity:PlatformAgentIdentityProvisioner={async provision(input){
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
  const args={tenantId,pool,identity,presentations:createPostgresAgentPresentationRepository(pool),
   profiles:createPostgresPlatformAgentProfileRepository(pool),skillAssignments:createPostgresCharacterSkillAssignmentRepository(pool),
   skillDistribution:{listForAudience:async()=>[]} as never};
  await expect(ensureCivicAgencyAgents(args)).rejects.toThrow('masana_media_unverified');
  const interrupted=(await db.query<{character_id:string}>('SELECT character_id FROM identity.characters WHERE tenant_id=$1',[tenantId])).rows;
  expect(interrupted).toHaveLength(1);
  await db.exec(await readFile(new URL('../../../packages/masana/migrations/0017_civic_agency_optional_media.sql',import.meta.url),'utf8'));
  expect(await ensureCivicAgencyAgents(args)).toEqual({prepared:CIVIC_AGENCY_CATALOG.length,created:CIVIC_AGENCY_CATALOG.length-1});
  expect(await ensureCivicAgencyAgents(args)).toEqual({prepared:CIVIC_AGENCY_CATALOG.length,created:0});
  const approved=(await db.query<{character_id:string;profile:Record<string,unknown>}>(
   "SELECT character_id,profile FROM masana.character_revisions WHERE tenant_id=$1 AND state='approved'",[tenantId])).rows;
  expect(approved).toHaveLength(CIVIC_AGENCY_CATALOG.length);
  expect(approved.some(row=>row.character_id===interrupted[0]!.character_id)).toBe(true);
  expect(approved.every(row=>row.profile.portraitMediaId===null&&row.profile.bannerMediaId===null)).toBe(true);
  const guide=approved.find(row=>row.profile.civicAgencyId==='inec')!;
  for(const change of [{portraitMediaId:'unreviewed-photo'},{civicAgencyId:'nimc',handle:'civic.nimc'},{handle:'masana.lookalike'}]){
   await expect(db.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
    VALUES($1,$2,2,'approved',$3::jsonb,'test',now())`,[tenantId,guide.character_id,JSON.stringify({...guide.profile,...change})]))
    .rejects.toThrow('masana_media_unverified');
  }
  const characterId=createCanonicalId('character'),characterVersionId=createCanonicalId('character-version');
  await identity.provision({tenantId,characterId,characterVersionId,createdAt:nowInstant(),constitution:{
   schemaVersion:1,displayName:'Fictional test character',biography:'Fictional fixture',personality:[],boundaries:[],
   disclosurePolicy:{},languages:['en'],voiceReferences:[],appearanceReferences:[],expertise:[],
  }});
  await expect(db.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   VALUES($1,$2,1,'approved',$3::jsonb,'test',now())`,[tenantId,characterId,JSON.stringify(guide.profile)]))
   .rejects.toThrow('masana_media_unverified');
 }finally{await db.close();}
},60000);
