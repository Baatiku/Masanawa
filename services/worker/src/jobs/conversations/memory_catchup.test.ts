import {readFileSync} from "node:fs";
import {PGlite} from "@electric-sql/pglite";
import {createCanonicalId} from "@masanawa/contracts";
import type {Pool} from "@masanawa/postgres";
import {createPostgresConsumerMasanaMemoryStore} from "@masanawa/postgres";
import {describe,expect,it} from "vitest";
import {createConsumerMemoryCatchup} from "./memory_catchup.js";
const migration=(name:string)=>readFileSync(new URL("../../../../../packages/memory/migrations/"+name,import.meta.url),"utf8");
describe("durable Masana memory catch-up after a Gateway interruption",()=>{
  it("recovers completed post-rollout turns once and never learns pending/old/cross-account turns",async()=>{
    const db=new PGlite();
    try {
      for(const name of ["0001_memory_foundation.sql","0002_memory_lifecycle.sql","0008_consumer_masana_memory.sql"])
        await db.exec(migration(name));
      await db.exec("CREATE SCHEMA agents; CREATE TABLE agents.mobile_turn_commands(tenant_id text,user_id text,character_id text,relationship_id text,request_id text,kind text,user_text text,state text,created_at timestamptz)");
      const pool={
        query:(sql:string,values?:unknown[])=>db.query(sql,values),
        connect:async()=>({query:(sql:string,values?:unknown[])=>db.query(sql,values),release:()=>{}}),
      } as unknown as Pool;
      const a={tenantId:createCanonicalId("tenant"),userId:createCanonicalId("user"),
        characterId:createCanonicalId("character"),relationshipId:createCanonicalId("relationship")};
      const b={...a,userId:createCanonicalId("user"),relationshipId:createCanonicalId("relationship")};
      const store=createPostgresConsumerMasanaMemoryStore(pool);
      await store.setPreferences(a,true);
      await store.setPreferences(b,true);
      const insert=async(s:typeof a,text:string,state:string,createdAt=new Date().toISOString())=>{
        await db.query("INSERT INTO agents.mobile_turn_commands VALUES($1,$2,$3,$4,$5,'text',$6,$7,$8)",
          [s.tenantId,s.userId,s.characterId,s.relationshipId,createCanonicalId("request"),text,state,createdAt]);
      };
      await insert(a,"My goal is pass IELTS band seven","completed");
      await insert(a,"My favorite beverage is tea","pending");
      await insert(a,"Hello, how are you?","completed");
      await insert(b,"My goal is learn JavaScript","completed");
      await insert(a,"My goal is an old memory","completed","2020-01-01T00:00:00.000Z");
      const worker=createConsumerMemoryCatchup(pool);
      expect(await worker.runOnce()).toEqual({scanned:3,remembered:2});
      expect(await worker.runOnce()).toEqual({scanned:0,remembered:0});
      expect((await store.list(a)).map(x=>x.content)).toEqual(["My goal is pass IELTS band seven"]);
      expect((await store.list(b)).map(x=>x.content)).toEqual(["My goal is learn JavaScript"]);
      const scans=await db.query("SELECT 1 FROM memory.consumer_turn_scans");
      expect(scans.rows).toHaveLength(1);
    }finally{await db.close();}
  });
});
