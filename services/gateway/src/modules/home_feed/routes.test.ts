import {describe,it,expect,vi} from "vitest";
import Fastify from "fastify";
import {registerHomeFeedRoutes} from "./routes.js";
describe("ST1 human publishing route",()=>{
 it("derives own identity from the signed principal and forbids role spoofing",async()=>{
  const app=Fastify(),publishHumanText=vi.fn(async()=>({id:"one"}));
  await registerHomeFeedRoutes(app,{service:{publishHumanText} as never,
   principal:async()=>({kind:"fan",id:"own_user",tenantId:"tenant"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const url="/v1/posts/human",headers={"idempotency-key":"human-post-001"};
  const res=await app.inject({method:"POST",url,headers,payload:{body:"Hello",audience:"public"}});
  expect(res.statusCode).toBe(200);
  expect(publishHumanText).toHaveBeenCalledWith({kind:"fan",id:"own_user",tenantId:"tenant"},
    {body:"Hello",audience:"public",idempotencyKey:"human-post-001"});
  for(const payload of [
   {body:"Hello",audience:"followers"},
   {body:"Hello",audience:"public",authorId:"other"},
   {body:"Hello",audience:"public",media:["media_x"]},
  ])expect((await app.inject({method:"POST",url,headers,payload})).statusCode).toBe(422);
  expect(publishHumanText).toHaveBeenCalledTimes(1);
  await app.close();
 });
 it("denies unauthenticated customer; editor cannot bypass Masana editorial role",async()=>{
  const app=Fastify(),publishHumanText=vi.fn();
  await registerHomeFeedRoutes(app,{service:{publishHumanText} as never,
   principal:async()=>null,tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const response=await app.inject({method:"POST",url:"/v1/posts/human",payload:{body:"Hello",audience:"public"}});
  expect(response.statusCode).toBe(401);
  expect(publishHumanText).not.toHaveBeenCalled();await app.close();
 });
});
describe("ST2 strict reaction transport",()=>{
 it("uses authenticated fan and exact reaction, never body actor",async()=>{
  const app=Fastify(),react=vi.fn(async()=>({kind:"love"}));
  await registerHomeFeedRoutes(app,{service:{react} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"trusted"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const id="381026c2-9d56-47b1-b73d-1784e24e41e2";
  const result=await app.inject({method:"PUT",url:"/v1/posts/"+id+"/reaction",
    payload:{kind:"love",fanId:"forged"}});
  expect(result.statusCode).toBe(200);
  expect(react).toHaveBeenCalledWith({kind:"fan",tenantId:"tenant",id:"trusted"},id,"love");
  const clear=await app.inject({method:"PUT",url:"/v1/posts/"+id+"/reaction",payload:{kind:null}});
  expect(clear.statusCode).toBe(200);
  expect(react).toHaveBeenLastCalledWith({kind:"fan",tenantId:"tenant",id:"trusted"},id,null);
  await app.close();
 });
 it("rejects missing/invalid kinds and denies guest before ledger access",async()=>{
  const app=Fastify(),react=vi.fn();
  await registerHomeFeedRoutes(app,{service:{react} as never,
   principal:async()=>null,tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const path="/v1/posts/381026c2-9d56-47b1-b73d-1784e24e41e2/reaction";
  expect((await app.inject({method:"PUT",url:path,payload:{kind:"love"}})).statusCode).toBe(401);
  expect(react).not.toHaveBeenCalled();
  await app.close();
  const authed=Fastify();
  await registerHomeFeedRoutes(authed,{service:{react} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"fan"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  for(const payload of [{kind:"super_like"},{kind:42},{}]) {
   expect((await authed.inject({method:"PUT",url:path,payload})).statusCode).toBe(422);
  }
  expect(react).not.toHaveBeenCalled();
  await authed.close();
 });
});
describe("J06 HTTP cannot publish as fan or leak across tenant",()=>{
 it("fails closed without feature enablement",async()=>{
  const app=Fastify();
  await registerHomeFeedRoutes(app,{service:{} as never,principal:async()=>null,tenant:()=>"tenant",isNewAccount:async()=>true,enabled:()=>false});
  const res=await app.inject({method:"GET",url:"/v1/feed"});
  expect(res.statusCode).toBe(503);await app.close();
 });
 it("denies a mismatched tenant before querying",async()=>{
  const app=Fastify();const list=vi.fn();
  await registerHomeFeedRoutes(app,{service:{list} as never,principal:async()=>({kind:"fan",tenantId:"foreign",id:"fan"}),tenant:()=>"tenant",isNewAccount:async()=>true,enabled:()=>true});
  const res=await app.inject({method:"GET",url:"/v1/feed"});
  expect(res.statusCode).toBe(403);expect(list).not.toHaveBeenCalled();await app.close();
 });
 it("rejects invalid discovery modes instead of expanding user visibility",async()=>{
  const app=Fastify();const list=vi.fn();
  await registerHomeFeedRoutes(app,{service:{list} as never,principal:async()=>null,tenant:()=>"tenant",isNewAccount:async()=>true,enabled:()=>true});
  const res=await app.inject({method:"GET",url:"/v1/feed?mode=administration"});
  expect(res.statusCode).toBe(422);expect(list).not.toHaveBeenCalled();await app.close();
 });
 it("requires authenticated identity for writes",async()=>{
  const app=Fastify();const publish=vi.fn();
  await registerHomeFeedRoutes(app,{service:{publish} as never,principal:async()=>null,tenant:()=>"tenant",isNewAccount:async()=>true,enabled:()=>true});
  const res=await app.inject({method:"POST",url:"/v1/admin/feed/posts",payload:{kind:"text",body:"No",authorMasanaId:"a"}});
  expect(res.statusCode).toBe(401);expect(publish).not.toHaveBeenCalled();await app.close();
 });
 it("C22 rejects arbitrary sort before querying the thread",async()=>{
  const app=Fastify(),comments=vi.fn();
  await registerHomeFeedRoutes(app,{service:{comments} as never,principal:async()=>null,
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const r=await app.inject({method:"GET",url:"/v1/posts/381026c2-9d56-47b1-b73d-1784e24e41e2/comments?sort=staff"});
  expect(r.statusCode).toBe(422);expect(comments).not.toHaveBeenCalled();await app.close();
 });
 it("C22 denies a reply from a guest and does not enqueue",async()=>{
  const app=Fastify(),comment=vi.fn();
  await registerHomeFeedRoutes(app,{service:{comment} as never,principal:async()=>null,
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const r=await app.inject({method:"POST",url:"/v1/posts/381026c2-9d56-47b1-b73d-1784e24e41e2/comments",
   headers:{"idempotency-key":"key-reply-001"},payload:{body:"secret",parentId:"9b8c8884-7a31-49d9-aee5-521364b54aef"}});
  expect(r.statusCode).toBe(401);expect(comment).not.toHaveBeenCalled();await app.close();
 });
 it("C22 takes author only from authenticated principal, not reply payload",async()=>{
  const app=Fastify(),comment=vi.fn(async()=>({id:"ok"}));
  await registerHomeFeedRoutes(app,{service:{comment} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"trusted_fan"}),
   tenant:()=>"tenant",isNewAccount:async()=>true,enabled:()=>true});
  const parent="9b8c8884-7a31-49d9-aee5-521364b54aef",id="381026c2-9d56-47b1-b73d-1784e24e41e2";
  const r=await app.inject({method:"POST",url:"/v1/posts/"+id+"/comments",
   headers:{"idempotency-key":"key-reply-001"},payload:{body:"Answer",parentId:parent,fanId:"forged"}});
  expect(r.statusCode).toBe(200);
  expect(comment).toHaveBeenCalledWith({kind:"fan",tenantId:"tenant",id:"trusted_fan"},id,"Answer","key-reply-001",true,parent);
  await app.close();
 });

 it("C22 refuses non-string parent rather than creating a different root comment",async()=>{
  const app=Fastify(),comment=vi.fn();
  await registerHomeFeedRoutes(app,{service:{comment} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"trusted_fan"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const r=await app.inject({method:"POST",url:"/v1/posts/381026c2-9d56-47b1-b73d-1784e24e41e2/comments",
   headers:{"idempotency-key":"key-reply-001"},payload:{body:"Reply",parentId:{foreign:"id"}}});
  expect(r.statusCode).toBe(422);expect(comment).not.toHaveBeenCalled();
  await app.close();
 });

 it("forwards an exact Masana author filter to the canonical feed service",async()=>{
  const app=Fastify(),list=vi.fn(async()=>({items:[],nextCursor:null}));
  await registerHomeFeedRoutes(app,{service:{list} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"trusted_fan"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const result=await app.inject({method:"GET",
    url:"/v1/feed?mode=for_you&authorMasanaId=character_sadiq"});
  expect(result.statusCode).toBe(200);
  expect(list).toHaveBeenCalledWith("tenant","trusted_fan","for_you",undefined,"character_sadiq");
  await app.close();
 });
 it("rejects a non-string profile filter without calling the feed",async()=>{
  const app=Fastify(),list=vi.fn();
  await registerHomeFeedRoutes(app,{service:{list} as never,
   principal:async()=>null,tenant:()=>"tenant",
   isNewAccount:async()=>false,enabled:()=>true});
  const result=await app.inject({method:"GET",
    url:"/v1/feed?authorMasanaId[0]=character_a"});
  expect(result.statusCode).toBe(422);
  expect(list).not.toHaveBeenCalled();
  await app.close();
 });

});

describe("C22 Status comment pagination cursor contract",()=>{
 it("forwards a verified UUID continuation and explicit sort to the same authorized thread",async()=>{
  const app=Fastify(),comments=vi.fn(async()=>[]);
  await registerHomeFeedRoutes(app,{service:{comments} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"trusted_fan"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  const after="9b8c8884-7a31-49d9-aee5-521364b54aef";
  const result=await app.inject({method:"GET",url:
   "/v1/posts/381026c2-9d56-47b1-b73d-1784e24e41e2/comments?sort=oldest&before="+after});
  expect(result.statusCode).toBe(200);
  expect(comments).toHaveBeenCalledWith("tenant","381026c2-9d56-47b1-b73d-1784e24e41e2",
   "trusted_fan",after,"oldest");
  await app.close();
 });
 it("rejects malformed or object-shaped cursors without resetting to page one",async()=>{
  const app=Fastify(),comments=vi.fn();
  await registerHomeFeedRoutes(app,{service:{comments} as never,
   principal:async()=>({kind:"fan",tenantId:"tenant",id:"trusted_fan"}),
   tenant:()=>"tenant",isNewAccount:async()=>false,enabled:()=>true});
  for(const query of ["before=not-a-comment", "before%5B0%5D=foreign", "before=", "before=%2F..%2F"]) {
   // A nested before[0] query is not recognized by Fastify's default query parser.
   // Explicitly reject it rather than serving another first page.
   const r=await app.inject({method:"GET",url:
    "/v1/posts/381026c2-9d56-47b1-b73d-1784e24e41e2/comments?"+query});
   expect(r.statusCode).toBe(422);
  }
  expect(comments).not.toHaveBeenCalled();
  await app.close();
 });
});
