import {afterAll,beforeAll,expect,it} from "vitest";
import {readFile} from "node:fs/promises";
import {PGlite} from "@electric-sql/pglite";
import {createCanonicalId} from "@masanawa/contracts";
import {createPostgresAgentPresentationRepository} from "../../../adapters/storage/postgres/src/agents/configuration.js";
import {createAgentDirectoryService} from "./agent_directory.js";
import {createPgAgentMasanaIdentityReader} from "./agent_identity.js";
import {PROFESSIONAL_MASANA_CATALOG} from "./platform_agent_bootstrap.js";

const db=new PGlite();
const tenant=createCanonicalId("tenant"),otherTenant=createCanonicalId("tenant");
const user=createCanonicalId("user"),otherUser=createCanonicalId("user");
const ids=PROFESSIONAL_MASANA_CATALOG.map(()=>createCanonicalId("character"));
const query=(sql:string,params:unknown[])=>db.query(sql,params);
const pool={query,async connect(){return {query,release(){}};}} as never;
const presentations=createPostgresAgentPresentationRepository(pool);
const identities=createPgAgentMasanaIdentityReader({query});
beforeAll(async()=>{
 await db.exec(`CREATE SCHEMA identity;
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text,PRIMARY KEY(tenant_id,character_id));
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 CREATE TABLE identity.users(tenant_id text,user_id text,state text DEFAULT 'active',PRIMARY KEY(tenant_id,user_id));
 CREATE SCHEMA agents;
 CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,character_version_id text,schema_version smallint DEFAULT 1,display_name text,role_label text,about text,greeting text,visible_in_user_app boolean,sort_order integer,revision bigint,PRIMARY KEY(tenant_id,character_id));`);
 await db.exec(await readFile(new URL("../../../packages/masana/migrations/0001_masana_profiles.sql",import.meta.url),"utf8"));
 await db.exec(await readFile(new URL("../../../packages/agents/migrations/0012_masana_country_identity.sql",import.meta.url),"utf8"));
 await db.query("INSERT INTO identity.users(tenant_id,user_id) VALUES($1,$2),($1,$3)",[tenant,user,otherUser]);
 for(const [index,seed] of PROFESSIONAL_MASANA_CATALOG.entries()){
  const id=ids[index]!;
  await db.query("INSERT INTO identity.characters VALUES($1,$2,'active')",[tenant,id]);
  await db.query("INSERT INTO identity.character_ownership VALUES($1,$2,'platform')",[tenant,id]);
  for(const kind of ["portrait","banner"]){
   await db.query(`INSERT INTO masana.character_media(tenant_id,media_id,character_id,kind,object_key,rights_note,approved_by)
    VALUES($1,$2,$3,$4,$5,'Platform original artwork','masanawa-platform-catalog-v1')`,
    [tenant,`masana_${kind}_${seed.key}`,id,kind,`assets/${seed.key}`]);
  }
  const profile={handle:seed.handle,displayName:"Staff renamed "+seed.key,profession:seed.roleLabel,
   portraitMediaId:"masana_portrait_"+seed.key,bannerMediaId:"masana_banner_"+seed.key};
  await db.query(`INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at)
   VALUES($1,$2,1,'approved',$3::jsonb,'staff',now()),($1,$2,2,'draft',$4::jsonb,NULL,NULL)`,
   [tenant,id,JSON.stringify(profile),JSON.stringify({...profile,portraitMediaId:"masana_portrait_mei"})]);
  await presentations.put({expectedRevision:null,presentation:{schemaVersion:1,tenantId:tenant,characterId:id,
   characterVersionId:createCanonicalId("character-version"),displayName:profile.displayName,
   roleLabel:seed.roleLabel,about:"Fictional educator",greeting:null,visibleInUserApp:true,
   sortOrder:index,revision:1,countryCode:seed.countryCode,countryName:seed.countryName}});
 }
 await db.query("INSERT INTO masana.follows(tenant_id,character_id,fan_user_id) VALUES($1,$2,$3)",[tenant,ids[2],user]);
},30_000);
afterAll(async()=>db.close());
it("projects all 26 renamed stock portraits and authored countries through real SQL and the directory",async()=>{
 const service=createAgentDirectoryService({presentations,identities,
  authorizer:{authorize:async()=>({tenantId:tenant,userId:user,characterIds:ids})}});
 const entries=await service.list({authorizationHeader:"Bearer owner"});
 expect(entries).toHaveLength(26);
 for(const [index,seed] of PROFESSIONAL_MASANA_CATALOG.entries()){
  expect(entries[index]).toMatchObject({characterId:ids[index],portraitKey:seed.key,
   displayName:"Staff renamed "+seed.key,countryCode:seed.countryCode,countryName:seed.countryName,
   following:index===2});
 }
});
it("fences approved identity by tenant and follows by user",async()=>{
 expect((await identities.read({tenantId:otherTenant,userId:user,characterIds:ids})).size).toBe(0);
 expect((await identities.read({tenantId:tenant,userId:otherUser,characterIds:ids})).get(ids[2]!)?.following).toBe(false);
});
it("same-name characters keep distinct approved portraits by canonical ID",async()=>{
 await db.query(`UPDATE agents.agent_presentations SET display_name='Same doctor'
  WHERE tenant_id=$1 AND character_id=ANY($2::text[])`,[tenant,[ids[0],ids[1]]]);
 const service=createAgentDirectoryService({presentations,identities,
  authorizer:{authorize:async()=>({tenantId:tenant,userId:user,characterIds:ids})}});
 const rows=await service.list({authorizationHeader:'Bearer owner'});
 expect(rows.find(row=>row.characterId===ids[0])).toMatchObject({displayName:'Same doctor',portraitKey:'gwani'});
 expect(rows.find(row=>row.characterId===ids[1])).toMatchObject({displayName:'Same doctor',portraitKey:'gwana'});
});
it("does not bind a stock portrait from media approved by another source",async()=>{
 // The canonical media ID alone cannot establish the platform stock binding.
 await db.query("UPDATE masana.character_media SET approved_by='custom-staff' WHERE tenant_id=$1 AND media_id='masana_portrait_amina'",[tenant]);
 expect((await identities.read({tenantId:tenant,userId:user,characterIds:[ids[2]!]})).get(ids[2]!)?.portraitKey).toBeNull();
});
it("rejects cross-character media and inactive or creator-owned stock lookalikes",async()=>{
 const id=ids[3]!;
 const read=()=>identities.read({tenantId:tenant,userId:user,characterIds:[id]});
 await db.query("UPDATE masana.character_media SET character_id=$2 WHERE tenant_id=$1 AND media_id='masana_portrait_fatima'",[tenant,ids[4]]);
 expect((await read()).get(id)?.portraitKey).toBeNull();
 await db.query("UPDATE masana.character_media SET character_id=$2 WHERE tenant_id=$1 AND media_id='masana_portrait_fatima'",[tenant,id]);
 expect((await read()).get(id)?.portraitKey).toBe("fatima");
 await db.query("UPDATE identity.characters SET state='inactive' WHERE tenant_id=$1 AND character_id=$2",[tenant,id]);
 expect((await read()).has(id)).toBe(false);
 await db.query("UPDATE identity.characters SET state='active' WHERE tenant_id=$1 AND character_id=$2",[tenant,id]);
 await db.query("UPDATE identity.character_ownership SET kind='creator' WHERE tenant_id=$1 AND character_id=$2",[tenant,id]);
 expect((await read()).has(id)).toBe(false);
});
