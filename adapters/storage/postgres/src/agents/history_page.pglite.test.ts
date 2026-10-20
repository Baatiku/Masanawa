import {PGlite} from "@electric-sql/pglite";
import {createCanonicalId} from "@masanawa/contracts";
import {describe,expect,it} from "vitest";
import type {Pool} from "pg";
import {createPostgresMobileShellRepository} from "./mobile-shell.js";
import {encodeMobileHistoryCursor} from "./history_cursor.js";

describe("bounded Masana history seeks",()=>{
  it("paginates equal timestamps deterministically without leaking another user's turns",async()=>{
    const db=new PGlite();
    try {
      await db.exec("CREATE SCHEMA agents; CREATE TABLE agents.mobile_turn_commands("+
        "tenant_id text,user_id text,character_id text,relationship_id text,character_session_id text,"+
        "request_id text,kind text,user_text text,payload_hash text,state text,"+
        "agent_run_id text,reply text,parts jsonb,failure_code text,created_at timestamptz,updated_at timestamptz)");
      const scope={tenantId:createCanonicalId("tenant"),userId:createCanonicalId("user"),
        characterId:createCanonicalId("character"),relationshipId:createCanonicalId("relationship")};
      const other={...scope,userId:createCanonicalId("user"),relationshipId:createCanonicalId("relationship")};
      const ids=[createCanonicalId("request"),createCanonicalId("request"),createCanonicalId("request")].sort();
      const insert=async (s:typeof scope,id:string,text:string)=>{
        await db.query("INSERT INTO agents.mobile_turn_commands VALUES($1,$2,$3,$4,$5,$6,'text',$7,$8,'completed',NULL,'response','[]'::jsonb,NULL,$9,$9)",
          [s.tenantId,s.userId,s.characterId,s.relationshipId,createCanonicalId("character-session"),
          id,text,"a".repeat(64),"2026-10-19T12:00:00.000Z"]);
      };
      for(const [i,id] of ids.entries())await insert(scope,id,"Message "+i);
      await insert(other,createCanonicalId("request"),"Intruder memory");
      const repository=createPostgresMobileShellRepository({
        query:(sql:string,args?:unknown[])=>db.query(sql,args),
      } as unknown as Pool);
      const first=await repository.listHistory({scope,limit:2});
      expect(first).toHaveLength(4);
      const firstIds=first.filter(x=>x.direction==="user").map(x=>x.requestId);
      expect(firstIds).toEqual([ids[1],ids[2]]);
      const before=encodeMobileHistoryCursor(first[0]!.createdAt,first[0]!.requestId);
      const second=await repository.listHistory({scope,limit:2,before});
      expect(second.filter(x=>x.direction==="user").map(x=>x.requestId)).toEqual([ids[0]]);
      expect([...first,...second].every(x=>x.text!=="Intruder memory")).toBe(true);
    }finally{await db.close();}
  });
});
