import { readFileSync } from "node:fs";
import { PGlite } from "@electric-sql/pglite";
import { createCanonicalId } from "@masanawa/contracts";
import type { CharacterSessionScope } from "@masanawa/agents";
import type { Pool } from "pg";
import { describe,expect,it } from "vitest";
import { createPostgresConsumerMasanaMemoryStore } from "./consumer.js";

const migration = (name:string) => readFileSync(
  new URL("../../../../../packages/memory/migrations/"+name,import.meta.url),"utf8");
async function setup() {
  const db=new PGlite();
  for(const name of ["0001_memory_foundation.sql","0002_memory_lifecycle.sql","0007_memory_reflections.sql",
    "0008_consumer_masana_memory.sql","0009_consumer_reflection_progress.sql"])
    await db.exec(migration(name));
  for(const kind of ["lexical","vector","entity","temporal"]){
    await db.exec("CREATE TABLE memory."+kind+"_projections(tenant_id text NOT NULL,memory_record_id text NOT NULL)");
  }
  const pool={connect:async()=>({
    query:(text:string,values?:unknown[])=>db.query(text,values),
    release:()=>{},
  })} as unknown as Pool;
  return {db,store:createPostgresConsumerMasanaMemoryStore(pool)};
}
function scope(): CharacterSessionScope {
  return {tenantId:createCanonicalId("tenant"),userId:createCanonicalId("user"),
    characterId:createCanonicalId("character"),relationshipId:createCanonicalId("relationship")};
}
describe("consumer Masana memory PostgreSQL contract",()=>{
  it("durable opt-in, replay safety, correction, forgetting and isolation",async()=>{
    const {db,store}=await setup();
    try{
      const a=scope(), b=scope();
      const requestId=createCanonicalId("request");
      expect(await store.preferences(a)).toEqual({automaticLearning:false});
      expect(await store.ingest(a,{requestId,text:"My goal is IELTS band seven"})).toBe(false);
      await store.setPreferences(a,true);
      const permittedRequestId=createCanonicalId("request");
      expect(await store.ingest(a,{requestId:permittedRequestId,text:"My goal is IELTS band seven"})).toBe(true);
      expect(await store.ingest(a,{requestId:permittedRequestId,text:"My goal is IELTS band seven"})).toBe(false);
      expect(await store.list(b)).toEqual([]);
      expect(await store.recall(b,"IELTS")).toEqual([]);
      const first=(await store.list(a))[0]!;
      expect(first.content).toContain("IELTS");
      expect(await store.recall(a,"IELTS goal")).toEqual(["My goal is IELTS band seven"]);
      await expect(store.correct(b,first.memoryRecordId,"Wrong owner",first.revision)).rejects.toThrow();
      await store.correct(a,first.memoryRecordId,"My goal is IELTS band eight",first.revision);
      expect(await store.recall(a,"IELTS goal")).toEqual(["My goal is IELTS band eight"]);
      await expect(store.correct(a,first.memoryRecordId,"Stale update",first.revision)).rejects.toThrow();
      const second=(await store.list(a))[0]!;
      await expect(store.forget(b,second.memoryRecordId,second.lifecycleRevision)).rejects.toThrow();
      await store.forget(a,second.memoryRecordId,second.lifecycleRevision);
      expect(await store.recall(a,"IELTS goal")).toEqual([]);
      expect(await store.list(a)).toEqual([]);
      const changes=await db.query<{action:string}>("SELECT action FROM memory.consumer_changes ORDER BY occurred_at");
      expect(changes.rows.map(r=>r.action)).toEqual(["correct","forget"]);
    }finally{await db.close();}
  });
  it("stores episodic provenance and independent upserted preference topics",async()=>{
    const {db,store}=await setup();
    try {
      const a=scope();
      await store.setPreferences(a,true);
      for(const statement of [
        "I prefer short explanations","I prefer black tea",
        "I prefer detailed explanations",
        "On 2026-10-17 I completed module four",
      ])expect(await store.ingest(a,{requestId:createCanonicalId("request"),text:statement})).toBe(true);
      const memories=await store.list(a);
      expect(memories).toHaveLength(3);
      expect(memories.map(m=>m.content)).toContain("I prefer detailed explanations");
      expect(memories.map(m=>m.content)).toContain("I prefer black tea");
      const episode=memories.find(m=>m.type==="event");
      expect(episode).toMatchObject({sourceKind:"message",confidence:0.9});
      expect(episode?.observedAt).toBeTruthy();
      const record=await db.query<{event_time:Date}>(
        "SELECT event_time FROM memory.revisions WHERE tenant_id=$1 AND memory_record_id=$2",
        [a.tenantId,episode!.memoryRecordId]);
      expect(new Date(record.rows[0]!.event_time).toISOString().slice(0,10)).toBe("2026-10-17");
    }finally{await db.close();}
  });

  it("explicit memory works without auto-learning and never mixes distinct Masana",async()=>{
    const {db,store}=await setup();
    try{
      const a=scope();
      const other={...a,characterId:createCanonicalId("character"),relationshipId:createCanonicalId("relationship")};
      expect(await store.ingest(a,{requestId:createCanonicalId("request"),text:"Remember that I enjoy poetry"})).toBe(true);
      expect((await store.list(a)).length).toBe(1);
      expect(await store.list(other)).toEqual([]);
      expect(await store.ingest(a,{requestId:createCanonicalId("request"),text:"Remember that my password is 123456"})).toBe(false);
    }finally{await db.close();}
  });
});
describe("consumer Masana account removal",()=>{
  it("purges just the deleted owner's derived memories, leaving other owners unchanged",async()=>{
    const {db,store}=await setup();
    try{
      const a=scope(),b=scope();
      await store.ingest(a,{requestId:createCanonicalId("request"),text:"Remember that I enjoy poetry"});
      await store.ingest(b,{requestId:createCanonicalId("request"),text:"Remember that I enjoy geometry"});
      const id=(await store.list(a))[0]!.memoryRecordId;
      const {purgeConsumerMasanaMemoriesForAccount}=await import("./consumer.js");
      const client={query:(sql:string,values?:unknown[])=>db.query(sql,values)};
      expect(await purgeConsumerMasanaMemoriesForAccount(client as never,a.tenantId,a.userId)).toBe(1);
      expect(await store.list(a)).toEqual([]);
      expect(await store.list(b)).toHaveLength(1);
      const eliminated=await db.query("SELECT 1 FROM memory.records WHERE memory_record_id=$1",[id]);
      expect(eliminated.rows).toHaveLength(0);
      expect(await store.preferences(a)).toEqual({automaticLearning:false});
    }finally{await db.close();}
  });
});
describe("disabled account replay fence",()=>{
  it("refuses re-ingestion and learning preference changes after account disablement",async()=>{
    const {db,store}=await setup();
    try{
      const a=scope();
      await db.exec("CREATE SCHEMA identity; CREATE TABLE identity.users(tenant_id text,user_id text,state text)");
      await db.query("INSERT INTO identity.users VALUES($1,$2,'active')",[a.tenantId,a.userId]);
      await store.setPreferences(a,true);
      await db.query("UPDATE identity.users SET state='disabled' WHERE tenant_id=$1 AND user_id=$2",[a.tenantId,a.userId]);
      await expect(store.ingest(a,{requestId:createCanonicalId("request"),text:"Remember that I like jazz"}))
        .rejects.toThrow();
      await expect(store.setPreferences(a,true)).rejects.toThrow();
    }finally{await db.close();}
  });
});
