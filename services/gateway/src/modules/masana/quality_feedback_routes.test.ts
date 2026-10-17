import {afterEach,describe,expect,it,vi} from "vitest";
import Fastify from "fastify";
import {registerMasanaRoutes} from "./service.js";

const opened:ReturnType<typeof Fastify>[]=[];
afterEach(async()=>Promise.all(opened.splice(0).map(server=>server.close())));
function setup(){
 const app=Fastify();
 app.setErrorHandler((error,_request,reply)=>reply
   .code((error as {statusCode?:number}).statusCode??500)
   .send({code:error.message}));
 const submit=vi.fn(async()=>({accepted:true as const}));
 const summary=vi.fn(async()=>({characterId:"character_amina",windowDays:30 as const,
   counts:{factual_error:1,off_topic:0,repetition:0,unhelpful:0,unprofessional:0}}));
 registerMasanaRoutes(app,{
   auth:{
     optional:async()=>({tenantId:"tenant_one",userId:null}),
     fan:async(header)=>{
       if(header!=="Bearer fan")throw Object.assign(new Error("unauthorized"),{statusCode:401});
       return {tenantId:"tenant_one",userId:"fan_one"};
     },
     staff:async(header)=>{
       if(header!=="Bearer editor")throw Object.assign(new Error("forbidden"),{statusCode:403});
       return {tenantId:"tenant_one",userId:"editor_one"};
     },
   },
   store:{} as never,
   validateProfile:(v)=>v,
   verifyMedia:async()=>({objectKey:"none"}),
   publicMediaUrl:async()=>null,
   qualityFeedback:{submit,summary},
 });
 opened.push(app);return {app,submit,summary};
}
describe("professional answer-quality feedback routes",()=>{
 it("rejects guests and forged fan or tenant fields",async()=>{
   const {app,submit}=setup();
   const url="/v1/masana/character_amina/quality-feedback";
   expect((await app.inject({method:"POST",url,payload:{reason:"unhelpful"}})).statusCode).toBe(401);
   const forged=await app.inject({method:"POST",url,
     headers:{authorization:"Bearer fan"},
     payload:{reason:"unhelpful",fanId:"other_fan"}});
   expect(forged.statusCode).toBe(422);
   expect(submit).not.toHaveBeenCalled();
 });
 it("accepts only a bounded category with resolved fan identity",async()=>{
   const {app,submit}=setup(),url="/v1/masana/character_amina/quality-feedback";
   const response=await app.inject({method:"POST",url,
     headers:{authorization:"Bearer fan"},payload:{reason:"factual_error"}});
   expect(response.statusCode).toBe(200);
   expect(response.json()).toEqual({accepted:true});
   expect(submit).toHaveBeenCalledWith({tenantId:"tenant_one",fanId:"fan_one",
     characterId:"character_amina",reason:"factual_error"});
   expect((await app.inject({method:"POST",url,
     headers:{authorization:"Bearer fan"},payload:{reason:"unsafe_attempt"}})).statusCode).toBe(422);
 });
 it("keeps the aggregate summary behind editor authorization",async()=>{
   const {app,summary}=setup(),url="/v1/admin/masana/character_amina/quality-summary";
   expect((await app.inject({method:"GET",url,
     headers:{authorization:"Bearer fan"}})).statusCode).toBe(403);
   expect(summary).not.toHaveBeenCalled();
   const response=await app.inject({method:"GET",url,
     headers:{authorization:"Bearer editor"}});
   expect(response.statusCode).toBe(200);
   expect(summary).toHaveBeenCalledWith({tenantId:"tenant_one",characterId:"character_amina"});
   expect(response.json().counts.factual_error).toBe(1);
 });
});
