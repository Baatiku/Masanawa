import {randomUUID} from "node:crypto";
import {afterAll,beforeAll,describe,expect,it} from "vitest";
import {Pool} from "pg";
import {createCanonicalId} from "@masanawa/contracts";
import {runMigrations} from "../migrations.js";
import {platformProductMigrationRoots} from "../readiness.js";
import {ensureMasanaCatalogProfiles} from "./catalog_seed.js";

const url=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!url)("Masana catalog without retired Room seeding on real PostgreSQL18",()=>{
 const dbName="masana_catalog_"+randomUUID().replaceAll("-","").slice(0,12);
 const tenant=createCanonicalId("tenant"),other=createCanonicalId("tenant");
 let admin:Pool,pool:Pool;
 let roster:Array<{seed:{
 key:string;displayName:string;roleLabel:string;roomName:string;
 expertise:string[];languages:string[];roomId:string;handle:string;illustrationIndex:number;
 };characterId:ReturnType<typeof createCanonicalId<"character">>}>;
 beforeAll(async()=>{
  const source=new URL(url!);
  if(!["127.0.0.1","localhost"].includes(source.hostname))
   throw Error("catalog_tests_require_disposable_local_postgresql");
  admin=new Pool({connectionString:url!});
  await admin.query('CREATE DATABASE "'+dbName+'"');
  source.pathname="/"+dbName;
  pool=new Pool({connectionString:source.toString(),max:8});
  await runMigrations(pool,platformProductMigrationRoots());
  roster=[];
  await pool.query("INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,now(),now()),($2,now(),now())",[tenant,other]);
  await pool.query("INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,'fan_one',now(),now())",[tenant]);
  const data=[
   ["gwani","Mallam Gwani Bodi","Masanawa General Support","en"],
   ["gwana","Malamah Gwana Sulafat","Masanawa General Support","ha"],
   ["amina","Dr. Amina Yusuf","Medicine & Surgery","en"],
   ["sadiq","Prof. Sadiq Musa","Computer Science","en"],
   ["layla","Ustazah Layla Hassan","Arabic Language","ar"],
   ["grace","Prof. Grace Okonkwo","English Language","en"],
   ["asha","Madam Asha Verma","Hindi Language","hi"],
   ["mei","Prof. Mei Lin","Mandarin Chinese","zh"],
  ];
  for(let i=0;i<data.length;i++){
   const [key,name,role,language]=data[i]!,id=createCanonicalId("character");
   await pool.query("INSERT INTO identity.characters(tenant_id,character_id,created_at,updated_at) VALUES($1,$2,now(),now())",[tenant,id]);
   await pool.query("INSERT INTO identity.character_ownership(tenant_id,character_id,kind,created_at) VALUES($1,$2,'platform',now())",[tenant,id]);
   roster.push({characterId:id,seed:{key:key!,displayName:name!,roleLabel:role!,
    roomName:name!+"'s Room",expertise:["Teaching","Practice"],
    languages:[language!],roomId:"room_masana_"+String(i).padStart(2,"0")+"_"+key,
    handle:"masana."+key,illustrationIndex:i}});
  }
 },90_000);
 afterAll(async()=>{
   if(pool)await pool.end();
   if(admin){await admin.query('DROP DATABASE IF EXISTS "'+dbName+'"');await admin.end();}
 },30_000);
 it("publishes approved persona media without creating Rooms or lesson history",async()=>{
   expect(await ensureMasanaCatalogProfiles({pool,tenantId:tenant,catalog:roster})).toEqual({approved:roster.length,rooms:0});
   const items=await pool.query("SELECT character_id,profile FROM masana.character_revisions WHERE tenant_id=$1 AND state='approved'",[tenant]);
   expect(items.rows).toHaveLength(roster.length);
   expect(items.rows.every(r=>r.profile.roomId===undefined)).toBe(true);
   expect((await pool.query('SELECT * FROM rooms.rooms')).rows).toEqual([]);
   expect((await pool.query('SELECT * FROM rooms.lessons')).rows).toEqual([]);
 });
 it("repairs only the legacy stock portrait and preserves curator media",async()=>{
   const first=roster[0]!, second=roster[1]!;
   await pool.query(`UPDATE masana.character_media SET object_key=$1
       WHERE tenant_id=$2 AND media_id=$3`,[
     "https://raw.githubusercontent.com/weavewellindustrieslimited/masanawa/main/apps/mobile/assets/masana/avatars/portrait_00.svg",
     tenant,"masana_portrait_"+first.seed.key,
   ]);
   await pool.query(`UPDATE masana.character_media
     SET object_key='approved/private/custom_portrait.webp',approved_by='approved-curator'
     WHERE tenant_id=$1 AND media_id=$2`,[tenant,"masana_portrait_"+second.seed.key]);
   expect(await ensureMasanaCatalogProfiles({pool,tenantId:tenant,catalog:roster}))
     .toEqual({approved:0,rooms:0});
   const firstKey=(await pool.query(`SELECT object_key FROM masana.character_media
     WHERE tenant_id=$1 AND media_id=$2`,[tenant,"masana_portrait_"+first.seed.key])).rows[0]?.object_key;
   const secondKey=(await pool.query(`SELECT object_key FROM masana.character_media
     WHERE tenant_id=$1 AND media_id=$2`,[tenant,"masana_portrait_"+second.seed.key])).rows[0]?.object_key;
   expect(firstKey).toContain("/portraits/gwani.webp");
   expect(secondKey).toBe("approved/private/custom_portrait.webp");
 });
 it("restart never recreates retired Rooms or lessons",async()=>{
   expect(await ensureMasanaCatalogProfiles({pool,tenantId:tenant,catalog:roster})).toEqual({approved:0,rooms:0});
   expect((await pool.query('SELECT * FROM rooms.rooms')).rows).toEqual([]);
   expect((await pool.query('SELECT * FROM rooms.lessons')).rows).toEqual([]);
 });
});
