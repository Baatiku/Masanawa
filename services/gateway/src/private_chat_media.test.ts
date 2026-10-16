import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type { Pool } from "@masanawa/postgres";
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import { createPrivateChatMediaService } from "./private_chat_media.js";

const tenantId = createCanonicalId("tenant");
const alice = createCanonicalId("user");
const bob = createCanonicalId("user");
const characterId = createCanonicalId("character");
const requestId = createCanonicalId("request");

function fixture() {
  type RecordValue = {
    tenant_id:string;user_id:string;character_id:string;request_id:string;
    slot:number;kind:string;mime_type:string;filename:string|null;
    payload:Buffer;sha256:string;
  };
  const rows:RecordValue[] = [];
  const queries:string[] = [];
  const query = vi.fn(async (sql:string, params:unknown[] = []) => {
    queries.push(sql);
    if (sql.startsWith("SELECT slot,sha256")) {
      const [tenant,user,character,request]=params;
      return {rows:rows.filter(x=>x.tenant_id===tenant&&x.user_id===user&&
        x.character_id===character&&x.request_id===request)
        .map(x=>({slot:x.slot,sha256:x.sha256,kind:x.kind,
          mime_type:x.mime_type,filename:x.filename,size:x.payload.length}))};
    }
    if (sql.startsWith("SELECT COALESCE(SUM")) {
      const [tenant,user]=params;
      return {rows:[{total: String(rows.filter(x=>
        x.tenant_id===tenant&&x.user_id===user)
          .reduce((acc,x)=>acc+x.payload.length,0))}]};
    }
    if (sql.startsWith("INSERT INTO agents.private_chat_media")) {
      const [tenant,user,character,request,slot,kind,mime,name,data,hash]=params;
      rows.push({tenant_id:String(tenant),user_id:String(user),
        character_id:String(character),request_id:String(request),
        slot:Number(slot),kind:String(kind),mime_type:String(mime),
        filename:name==null?null:String(name),payload:data as Buffer,
        sha256:String(hash)});
      return {rows:[]};
    }
    if (sql.startsWith("SELECT kind,mime_type,filename,payload")) {
      const [tenant,user,character,request,slot]=params;
      const row=rows.find(x=>x.tenant_id===tenant&&x.user_id===user&&
        x.character_id===character&&x.request_id===request&&x.slot===slot);
      return {rows:row?[row]:[]};
    }
    if (sql.startsWith("SELECT request_id,slot,kind,mime_type,filename")) {
      const [tenant,user,character,requestIds]=params;
      return {rows:rows.filter(x=>x.tenant_id===tenant&&x.user_id===user&&
        x.character_id===character&&(requestIds as string[]).includes(x.request_id))
        .map(x=>({...x,size_bytes:x.payload.length}))};
    }
    return {rows:[]};
  });
  const release=vi.fn();
  const pool = {
    connect: async () => ({ query, release }),
    query,
  } as unknown as Pool;
  const authorize=vi.fn(async ({authorizationHeader}:{authorizationHeader?:string})=>({
    scope:{
      tenantId,
      userId:authorizationHeader==="Bearer bob"?bob:alice,
      characterId,
      relationshipId:createCanonicalId("relationship"),
    },
  }));
  const service=createPrivateChatMediaService({
    pool,authorizer:{authorize} as unknown as AgentConversationAuthorizer,
  });
  const file=(value:string,owner="Bearer alice")=>service.put(owner,{
    characterId,requestId,slot:0,kind:"voice",mimeType:"audio/ogg",
    name:"greeting.ogg",dataBase64:Buffer.from(value).toString("base64"),
  });
  return {service,file,rows,queries,query,authorize,release};
}

describe("private Masana cross-device media",()=>{
  it("restores exact original bytes and metadata to the authenticated owner",async()=>{
    const f=fixture();
    const saved=await f.file("hello from phone A");
    expect(saved.slot).toBe(0);
    const manifest=await f.service.list("Bearer alice",characterId,[requestId]);
    expect(manifest).toEqual([expect.objectContaining({
      requestId,slot:0,kind:"voice",name:"greeting.ogg",
      sizeBytes:18,
    })]);
    const record=await f.service.get("Bearer alice",characterId,requestId,0);
    expect(Buffer.from(record!.dataBase64,"base64").toString())
      .toBe("hello from phone A");
    expect(f.release).toHaveBeenCalled();
  });

  it("never allows another account to retrieve the same requestId",async()=>{
    const f=fixture();
    await f.file("private audio");
    expect(await f.service.get("Bearer bob",characterId,requestId,0))
      .toBeNull();
    expect(await f.service.list("Bearer bob",characterId,[requestId]))
      .toEqual([]);
  });

  it("retries identical media idempotently and blocks byte substitution",async()=>{
    const f=fixture();
    await f.file("same bytes");
    await f.file("same bytes");
    expect(f.rows).toHaveLength(1);
    await expect(f.file("different bytes")).rejects.toThrow(
      "chat.media.idempotency_conflict",
    );
    expect(f.rows).toHaveLength(1);
    expect(f.queries).toContain("ROLLBACK");
  });

  it("rejects invalid base64, empty media and oversized input before touching the DB",async()=>{
    const f=fixture();
    for(const data of ["",":bad",Buffer.alloc(8*1024*1024+1).toString("base64")]){
      await expect(f.service.put("Bearer alice",{
        characterId,requestId,slot:0,kind:"audio",mimeType:"audio/ogg",
        dataBase64:data,
      })).rejects.toThrow();
    }
    expect(f.query).not.toHaveBeenCalled();
  });

  it("does not permit a foreign character scoped to a signed-in customer",async()=>{
    const f=fixture();
    await expect(f.service.get("Bearer alice",createCanonicalId("character"),
      requestId,0)).rejects.toThrow("chat.media.character_denied");
  });
});
