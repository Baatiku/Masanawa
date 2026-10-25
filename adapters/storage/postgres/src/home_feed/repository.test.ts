import {describe,it,expect,vi} from "vitest";
import type {Pool} from "pg";
import {PgHomeFeedRepository} from "./repository.js";
describe("ST1 canonical human publish guards",()=>{
 it("inserts only when active canonical account and public handle match tenant",async()=>{
  const query=vi.fn(async(sql:string,_binds:unknown[])=>{
   if(sql.includes("SELECT id,author_type"))return {rows:[{
    id:"381026c2-9d56-47b1-b73d-1784e24e41e2",
    author_type:"human",author_user_id:"fan",author_masana_id:null,
    audience:"public",kind:"text",body:"Hello",media_ids:[],transcript:null}]};
   return {rows:[]};
  });
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  // Stub the following projection; the SQL source still must reauthorize it.
  repo.find=async()=>({id:"a",author:{type:"human",id:"fan",handle:"musa"}} as never);
  await repo.publishHumanText("tenant","fan",{
    body:"Hello",audience:"public",idempotencyKey:"human-post-001"});
  const sql=String(query.mock.calls[0]?.[0]);
  expect(sql).toContain("FROM identity.users u JOIN talks.public_profiles profile");
  expect(sql).toContain("u.state='active'");
  expect(sql).toContain("profile.tenant_id=u.tenant_id");
  expect(sql).toContain("ON CONFLICT(tenant_id,published_by,idempotency_key) DO NOTHING");
 });
 it("reused idempotency key with changed content is a hard conflict",async()=>{
  const query=vi.fn(async(sql:string)=>{
    if(sql.includes("SELECT id,author_type"))return {rows:[{
     id:"381026c2-9d56-47b1-b73d-1784e24e41e2",
     author_type:"human",author_user_id:"fan",author_masana_id:null,
     audience:"public",kind:"text",body:"Original",media_ids:[],transcript:null,
    }]};
    return {rows:[]};
  });
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await expect(repo.publishHumanText("tenant","fan",{body:"Changed",audience:"public",
    idempotencyKey:"human-post-001"})).rejects.toMatchObject({status:409,code:"idempotency_conflict"});
 });
});
describe("ST2 canonical one-actor reaction row",()=>{
 it("upserts the same tenant/post/fan row rather than appending reactions",async()=>{
  const query=vi.fn(async(_sql:string,_binds:unknown[])=>({rows:[{admitted:true}]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  const id="381026c2-9d56-47b1-b73d-1784e24e41e2";
  expect(await repo.setReaction("tenant","fan",id,"angry")).toBe("angry");
  const sql=String(query.mock.calls[0]?.[0]);
  expect(sql).toContain("ON CONFLICT (tenant_id,post_id,fan_id)");
  expect(sql).toContain("SET reaction_kind=EXCLUDED.reaction_kind");
  expect(sql).toContain("p.state='published'");
  expect(query.mock.calls[0]?.[1]).toEqual(["tenant","fan",id,"angry"]);
  await repo.setReaction("tenant","fan",id,null);
  const clear=String(query.mock.calls[1]?.[0]);
  expect(clear).toContain("DELETE FROM feed.likes l USING eligible e");
  expect(clear).toContain("l.fan_id=$2");
 });
 it("denies reactions whose author ceased to be public",async()=>{
  const query=vi.fn(async()=>({rows:[{admitted:false}]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  const id="381026c2-9d56-47b1-b73d-1784e24e41e2";
  await expect(repo.setReaction("tenant","fan",id,"love")).rejects.toMatchObject({status:404});
  await expect(repo.setReaction("tenant","fan",id,null)).rejects.toMatchObject({status:404});
 });
});
describe("J06 tenant-scoped SQL and no duplicate follower registry",()=>{
 it("passes viewer, tenant and follows mode via SQL binds",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await repo.list("tenantA","fanA","following",null,21);
  expect(query.mock.calls[0]?.[0]).toContain("FROM masana.follows");
  expect(query.mock.calls[0]?.[1]).toEqual(["tenantA","fanA","following",null,null,21,null,null,false]);
 });
 it("never allows a reaction write without matching published post",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[{admitted:true}]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await repo.setLike("tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2",true);
  expect(query.mock.calls[0]?.[0]).toContain("p.state='published'");
  expect(query.mock.calls[0]?.[0]).toContain("p.tenant_id=$1");
 });
 it("C22 uses tenant, post, visible top-level parent for reply admission",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await expect(repo.comment("tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2",
   "Reply","reply-key-001",true,"9b8c8884-7a31-49d9-aee5-521364b54aef")).rejects.toMatchObject({status:409});
  const sql=String(query.mock.calls[0]?.[0]);
  expect(sql).toContain("parent.tenant_id=$1");
  expect(sql).toContain("parent.post_id=p.id");
  expect(sql).toContain("parent.state='visible'");
  expect(sql).toContain("parent.parent_comment_id IS NULL");
  expect(sql).toContain("IS NOT DISTINCT FROM EXCLUDED.parent_comment_id");
  expect(query.mock.calls[0]?.[1]).toEqual(["tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2","Reply","pending","reply-key-001","9b8c8884-7a31-49d9-aee5-521364b54aef"]);
 });
 it("C22 selects deterministic oldest-first without a raw SQL order injection",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await repo.comments("tenantA","381026c2-9d56-47b1-b73d-1784e24e41e2","fanA",null,30,"oldest");
  const sql=String(query.mock.calls[0]?.[0]);
  expect(sql).toContain("CASE WHEN $6::text='oldest'");
  expect(sql).toContain("c.tenant_id=$1");
  expect(query.mock.calls[0]?.[1]).toEqual(["tenantA","381026c2-9d56-47b1-b73d-1784e24e41e2","fanA",null,30,"oldest"]);
 });

 it("public comment identity is server-derived, tenant scoped and gated on active users",async()=>{
  const query=vi.fn(async(_sql:string,_binds:unknown[])=>({rows:[{
   id:"c1",post_id:"p1",body:"Hello",state:"visible",
   created_at:"2026-10-22T09:01:00Z",parent_comment_id:null,
   author:{type:"human",id:"fan1",handle:"musa",displayName:"Musa"},
  }]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  const result=await repo.comments("tenant1","381026c2-9d56-47b1-b73d-1784e24e41e2","fan1",null,30);
  expect(result[0]?.author).toEqual({type:"human",id:"fan1",handle:"musa",displayName:"Musa"});
  const sql=String(query.mock.calls[0]?.[0]);
  expect(sql).toContain("actor.state='active'");
  expect(sql).toContain("actor.tenant_id=c.tenant_id");
  expect(sql).toContain("person.tenant_id=c.tenant_id");
  expect(sql).toContain("person.user_id=actor.user_id");
 });
 it("legacy Masana projection remains readable with typed author",async()=>{
  const query=vi.fn(async()=>({rows:[{
   id:"381026c2-9d56-47b1-b73d-1784e24e41e2",
   tenant_id:"tenant1",author_masana_id:"agent1",author_name:"Amina",
   kind:"text",body:"Hi",media_ids:[],transcript:null,
   published_at:"2026-10-22T09:00:00Z",like_count:0,comment_count:0,
   viewer_liked:false,viewer_saved:false,
  }]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  const result=await repo.find("tenant1","fan1","381026c2-9d56-47b1-b73d-1784e24e41e2");
  expect(result?.author).toEqual({type:"masana",id:"agent1",displayName:"Amina"});
  expect(result?.authorMasanaId).toBe("agent1");
 });
 it("Status fails closed if author is revoked between read and reaction insert",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[{admitted:false}]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await expect(repo.setLike("tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2",true)).rejects.toMatchObject({status:404});
  await expect(repo.setSave("tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2",true)).rejects.toMatchObject({status:404});
  for(const [sql,binds] of query.mock.calls){
   expect(sql).toContain("a.state='active'");expect(sql).toContain("o.kind='platform'");
   expect(sql).toContain("m.state='approved'");expect(sql).toContain("o.tenant_id=a.tenant_id");
   expect(binds).toEqual(["tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2"]);
  }
 });
 it("Status list and detail recheck canonical character after approval",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await repo.list("tenantA","fanA","for_you",null,21);
  await repo.find("tenantA","fanA","381026c2-9d56-47b1-b73d-1784e24e41e2");
  for(const [sql] of query.mock.calls){
   expect(sql).toContain("a.state='active'");expect(sql).toContain("o.kind='platform'");
   expect(sql).toContain("m.tenant_id=p.tenant_id");expect(sql).toContain("m.character_id=p.author_masana_id");
  }
 });
 it("author-scoped Status binds canonical agent identity without SQL interpolation",async()=>{
  const query=vi.fn(async(_sql:string,_args:unknown[])=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await repo.list("tenantA","fanA","for_you",null,21,"character_professional");
  const [sql,args]=query.mock.calls[0]!;
  expect(sql).toContain("p.tenant_id=$1");
  expect(sql).toContain("p.state='published'");
  expect(sql).toContain("p.author_masana_id=$7");
  expect(sql).toContain("m.state='approved'");
  expect(args).toEqual(["tenantA","fanA","for_you",null,null,21,"character_professional",null,false]);
 });

});

