import {readFileSync} from "node:fs";
import {PGlite} from "@electric-sql/pglite";
import {createCanonicalId} from "@masanawa/contracts";
import type {Pool} from "pg";
import {describe,expect,it} from "vitest";
import {createPostgresConsumerMasanaMemoryStore,purgeConsumerMasanaMemoriesForAccount} from "./consumer.js";
import {createPostgresConsumerReflectionRuntime} from "./consumer_reflection.js";
const migration=(name:string)=>readFileSync(new URL("../../../../../packages/memory/migrations/"+name,import.meta.url),"utf8");

describe("auditable Masana relationship consolidation",()=>{
  it("reflects only current sources, rejects stale reflections after correction and purges owner derivations",async()=>{
    const db=new PGlite();
    try{
      for(const name of ["0001_memory_foundation.sql","0002_memory_lifecycle.sql","0007_memory_reflections.sql",
        "0008_consumer_masana_memory.sql","0009_consumer_reflection_progress.sql"])
        await db.exec(migration(name));
      await db.exec("CREATE SCHEMA identity; CREATE TABLE identity.users(tenant_id text,user_id text,state text)");
      for(const kind of ["lexical","vector","entity","temporal"])
        await db.exec("CREATE TABLE memory."+kind+"_projections(tenant_id text,memory_record_id text)");
      const pool={
        query:(sql:string,args?:unknown[])=>db.query(sql,args),
        connect:async()=>({query:(sql:string,args?:unknown[])=>db.query(sql,args),release:()=>{}}),
      } as unknown as Pool;
      const scope={tenantId:createCanonicalId("tenant"),userId:createCanonicalId("user"),
        characterId:createCanonicalId("character"),relationshipId:createCanonicalId("relationship")};
      await db.query("INSERT INTO identity.users VALUES($1,$2,'active')",[scope.tenantId,scope.userId]);
      const store=createPostgresConsumerMasanaMemoryStore(pool);
      for(const fact of ["Remember that I enjoy poetry","Remember that I am learning Arabic"]){
        expect(await store.ingest(scope,{requestId:createCanonicalId("request"),text:fact})).toBe(true);
      }
      const reflection=createPostgresConsumerReflectionRuntime(pool);
      expect(await reflection.runOnce()).toEqual({scanned:1,reflected:1});
      const first=(await store.recall(scope,"continue our lessons"))[0]!;
      expect(first).toContain("Current user-stated continuity");
      expect(first).toContain("poetry");
      expect(await reflection.runOnce()).toEqual({scanned:0,reflected:0});
      const one=(await store.list(scope))[0]!;
      await store.correct(scope,one.memoryRecordId,"I am practicing painting",one.revision);
      expect((await store.recall(scope,"continue our lessons")).join(" ")).not.toContain("Current user-stated continuity");
      expect(await reflection.runOnce()).toEqual({scanned:1,reflected:1});
      const newSummary=(await store.recall(scope,"continue our lessons"))[0]!;
      expect(newSummary).toContain("I am practicing painting");
      expect(newSummary).not.toContain(one.content);
      const direct=await db.query<{source_digest:string}>(
        "SELECT source_digest FROM memory.consumer_summaries");
      expect(direct.rows).toHaveLength(1);
      expect(direct.rows[0]?.source_digest).toMatch(/^[0-9a-f]{64}$/u);
      const client={query:(sql:string,args?:unknown[])=>db.query(sql,args)};
      expect(await purgeConsumerMasanaMemoriesForAccount(client as never,scope.tenantId,scope.userId)).toBe(2);
      expect((await db.query("SELECT 1 FROM memory.consumer_summaries")).rows).toHaveLength(0);
      expect((await db.query("SELECT 1 FROM memory.records")).rows).toHaveLength(0);
    }finally{await db.close();}
  });
});
