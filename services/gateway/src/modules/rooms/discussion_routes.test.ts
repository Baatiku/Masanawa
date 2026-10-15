import {describe,it,expect,vi} from "vitest";
import Fastify from "fastify";
import {registerRoomDiscussionRoutes} from "./discussion_routes.js";
const actor={tenantId:"tenant_a",userId:"fan_1",roles:[]};
function setup(enabled=true,roles:readonly string[]=[]){
 const app=Fastify();
 const store={list:vi.fn(async()=>({items:[],nextCursor:null})),
 create:vi.fn(async()=>({replyId:"room-reply_12345678",state:"held"})),
 staffQueue:vi.fn(async()=>[]),decide:vi.fn(async()=>{})};
 const authorize=vi.fn(async()=>({...actor,roles}));
 registerRoomDiscussionRoutes(app,{store:store as any,authorize,enabled:()=>enabled});
 return {app,store,authorize};
}
const parent="room-question_12345678";
describe("Room discussion routes deny privilege and replay abuse",()=>{
 it("keeps all entrypoints off, without authenticating or reaching storage",async()=>{
  const x=setup(false);
  const r=await x.app.inject({method:"GET",url:"/v1/rooms/room_a/discussion?kind=question&parentId="+parent});
  expect(r.statusCode).toBe(410);expect(x.authorize).not.toHaveBeenCalled();
  expect(x.store.list).not.toHaveBeenCalled();
 });
 it("rejects client actor overrides and absent replay header",async()=>{
  const x=setup();
  const r=await x.app.inject({method:"POST",url:"/v1/rooms/room_a/discussion",payload:{
   parentKind:"question",parentId:parent,body:"Hello",tenantId:"victim"}});
  expect(r.statusCode).toBe(422);expect(x.store.create).not.toHaveBeenCalled();
 });
 it("requires staff moderation role on queue/review",async()=>{
  const x=setup();
  const r=await x.app.inject({method:"GET",url:"/v1/admin/rooms/discussion"});
  expect(r.statusCode).toBe(403);expect(x.store.staffQueue).not.toHaveBeenCalled();
 });
 it("permits only server-issued room editor authority to review held replies",async()=>{
  const x=setup(true,["rooms_editor"]);
  const list=await x.app.inject({method:"GET",url:"/v1/admin/rooms/discussion",
    headers:{"x-role":"fan","x-tenant":"forged"}});
  expect(list.statusCode).toBe(200);
  expect(list.json()).toEqual({items:[]});
  const reviewed=await x.app.inject({method:"POST",
    url:"/v1/admin/rooms/discussion/room-reply_12345678/review",
    payload:{decision:"approve",role:"fan"}});
  expect(reviewed.statusCode).toBe(200);
  expect(x.store.decide).toHaveBeenCalledWith(
    expect.objectContaining({roles:["rooms_editor"]}),"room-reply_12345678","approve");
  const bad=await x.app.inject({method:"POST",
    url:"/v1/admin/rooms/discussion/room-reply_12345678/review",
    payload:{decision:"publish_everything"}});
  expect(bad.statusCode).toBe(422);
  expect(x.store.decide).toHaveBeenCalledTimes(1);
  await x.app.close();
 });
 it("accepts a held reply but never renders it as approved",async()=>{
  const x=setup();
  const r=await x.app.inject({method:"POST",url:"/v1/rooms/room_a/discussion",
   headers:{"idempotency-key":"abcdefghijklmno123"},payload:{parentKind:"question",parentId:parent,body:"A reply"}});
  expect(r.statusCode).toBe(202);expect(r.json().state).toBe("held");
  expect(x.store.create).toHaveBeenCalledWith(actor,"room_a","question",parent,"A reply","abcdefghijklmno123",null);
 });
});
