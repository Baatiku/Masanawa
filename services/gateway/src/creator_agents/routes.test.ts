import {describe,it,expect} from "vitest";
import Fastify from "fastify";
import {registerCreatorAgentRoutes} from "./routes.js";
import type {CreatorAgentView} from "./store.js";

const result:CreatorAgentView={
 characterId:"character_test123",state:"draft",revision:1,handle:"prof-amina-1",
 seed:{name:"Professor Amina",profession:"Physics tutor",languages:["en"],gender:"female",ageRange:"40-59",portraitMediaId:null},
 generated:null,voiceName:"Fora",statusEnabled:false,publishedAt:null,
};
type Service=Parameters<typeof registerCreatorAgentRoutes>[1]["service"];
function fixture(){
 const events:string[]=[];
 const service={
  async list(owner:{userId:string}){events.push("list:"+owner.userId);return [result];},
  async read(owner:{userId:string}){events.push("read:"+owner.userId);return result;},
  async createDraft(owner:{userId:string}){events.push("create:"+owner.userId);return result;},
  async updateDraft(owner:{userId:string}){events.push("edit:"+owner.userId);return result;},
  async generate(owner:{userId:string}){events.push("generate:"+owner.userId);return result;},
  async publishFirstFree(owner:{userId:string}){events.push("publish:"+owner.userId);return result;},
  async setActive(owner:{userId:string}){events.push("state:"+owner.userId);return result;},
  async earnings(owner:{userId:string},id:string,cursor?:unknown){
   events.push("earnings:"+owner.userId+":"+id+":"+String(cursor));
   return {asset:"MSNW",atomicDecimals:6,settledAtomic:"1000000",pendingAtomic:"0",
    reversedAtomic:"0",items:[],nextCursor:null};
  },
 } as unknown as Service;
 const server=Fastify();
 registerCreatorAgentRoutes(server,{
  auth:{async fan(header){if(header!=="Bearer owner")throw Object.assign(new Error("unauthorized"),{statusCode:401});return {tenantId:"tenant_test",userId:"owner_test"};}},
  service,
 });
 return {server,events};
}
describe("creator agent owner-scoped routes",()=>{
 it("denies guest reads and never calls store",async()=>{
  const {server,events}=fixture();
  const r=await server.inject({method:"GET",url:"/v1/creator/masana"});
  expect(r.statusCode).toBe(401);expect(events).toEqual([]);await server.close();
 });
 it("rejects injected account authority and malformed fields",async()=>{
  const {server,events}=fixture();
  const a=await server.inject({method:"POST",url:"/v1/creator/masana/drafts",headers:{authorization:"Bearer owner"},
   payload:{seed:result.seed,idempotencyKey:"key-123456789012345",userId:"other"}});
  expect(a.statusCode).toBe(400);expect(events).toEqual([]);await server.close();
 });
 it("routes publication through the authenticated owner",async()=>{
  const {server,events}=fixture();
  const r=await server.inject({method:"POST",url:"/v1/creator/masana/character_test123/publish-free",headers:{authorization:"Bearer owner"},
   payload:{expectedRevision:1}});
  expect(r.statusCode).toBe(200);expect(r.json().voiceName).toBe("Fora");expect(events).toEqual(["publish:owner_test"]);await server.close();
 });
 it("scopes the earnings statement to the session and rejects unauthorized queries",async()=>{
  const {server,events}=fixture();
  const guest=await server.inject({method:"GET",url:"/v1/creator/masana/character_test123/earnings"});
  expect(guest.statusCode).toBe(401);expect(events).toEqual([]);
  const invalid=await server.inject({method:"GET",url:"/v1/creator/masana/character_test123/earnings?userId=other",
    headers:{authorization:"Bearer owner"}});
  expect(invalid.statusCode).toBe(400);expect(events).toEqual([]);
  const ok=await server.inject({method:"GET",url:"/v1/creator/masana/character_test123/earnings",
    headers:{authorization:"Bearer owner"}});
  expect(ok.statusCode).toBe(200);expect(ok.headers["cache-control"]).toBe("private, no-store");
  expect(ok.json().settledAtomic).toBe("1000000");
  expect(events).toEqual(["earnings:owner_test:character_test123:undefined"]);
  await server.close();
 });
 it("refuses missing revision without publishing",async()=>{
  const {server,events}=fixture();
  const r=await server.inject({method:"POST",url:"/v1/creator/masana/character_test123/publish-free",headers:{authorization:"Bearer owner"},payload:{}});
  expect(r.statusCode).toBe(400);expect(events).toEqual([]);await server.close();
 });
});
