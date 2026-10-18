import type {FastifyInstance} from "fastify";
import {CreatorAgentError,createPostgresCreatorAgentService} from "./store.js";
import {CreatorGenerationError} from "./generator.js";

type CreatorService=ReturnType<typeof createPostgresCreatorAgentService>;
function obj(x:unknown):Record<string,unknown> {
 if(!x || typeof x!=="object" || Array.isArray(x))throw new CreatorAgentError("creator.invalid_payload",400);
 return x as Record<string,unknown>;
}
function ident(x:unknown):string{
 if(typeof x!=="string"||!/^[a-zA-Z0-9_-]{8,160}$/u.test(x))
  throw new CreatorAgentError("creator.id_invalid",400);
 return x;
}
function rev(x:unknown):number{
 if(typeof x!=="number"||!Number.isSafeInteger(x)||x<1)
  throw new CreatorAgentError("creator.invalid_revision",400);
 return x;
}
function report(reply:{code(status:number):unknown},error:unknown) {
 if(error instanceof CreatorAgentError || error instanceof CreatorGenerationError){
  reply.code(error.statusCode);
  return {code:error.code};
 }
 if(error instanceof TypeError || error instanceof RangeError){
  reply.code(400);return {code:"creator.invalid_input"};
 }
 throw error;
}
/** All mutating routes bind the actor exclusively to authenticated session. */
export function registerCreatorAgentRoutes(app:FastifyInstance,deps:{
 readonly auth:{fan(header:string|undefined):Promise<{tenantId:string;userId:string}>};
 readonly service:CreatorService;
}):void {
 app.get("/v1/creator/masana",async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try {
   const owner=await deps.auth.fan(request.headers.authorization);
   return {items:await deps.service.list(owner)};
  } catch(error) {return report(reply,error);}
 });
 app.post("/v1/creator/masana/drafts",{bodyLimit:4096},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try {
   const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
   if(Object.keys(body).sort().join(",")!=="idempotencyKey,seed")throw new CreatorAgentError("creator.invalid_payload",400);
   const value=await deps.service.createDraft(owner,body.seed,body.idempotencyKey);
   reply.code(201);return value;
  }catch(error){return report(reply,error);}
 });
 app.get("/v1/creator/masana/:id",async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try{
   const owner=await deps.auth.fan(request.headers.authorization);
   return await deps.service.read(owner,ident(obj(request.params).id));
  }catch(error){return report(reply,error);}
 });
 app.patch("/v1/creator/masana/:id/draft",{bodyLimit:4096},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try{
   const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
   if(Object.keys(body).sort().join(",")!=="expectedRevision,seed")throw new CreatorAgentError("creator.invalid_payload",400);
   return await deps.service.updateDraft(owner,ident(obj(request.params).id),body.seed,rev(body.expectedRevision));
  }catch(error){return report(reply,error);}
 });
 app.post("/v1/creator/masana/:id/generate",{bodyLimit:256},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try{
   const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
   if(Object.keys(body).join(",")!=="expectedRevision")throw new CreatorAgentError("creator.invalid_payload",400);
   return await deps.service.generate(owner,ident(obj(request.params).id),rev(body.expectedRevision));
  }catch(error){return report(reply,error);}
 });
 app.post("/v1/creator/masana/:id/publish-free",{bodyLimit:256},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try{
   const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
   if(Object.keys(body).join(",")!=="expectedRevision")throw new CreatorAgentError("creator.invalid_payload",400);
   return await deps.service.publishFirstFree(owner,ident(obj(request.params).id),rev(body.expectedRevision));
  }catch(error){return report(reply,error);}
 });
 app.post("/v1/creator/masana/:id/publish-quote",{bodyLimit:512},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try{
   const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
   if(Object.keys(body).sort().join(",")!=="expectedRevision,idempotencyKey")
    throw new CreatorAgentError("creator.invalid_payload",400);
   return await deps.service.quoteAdditionalPublication(owner,ident(obj(request.params).id),
     rev(body.expectedRevision),body.idempotencyKey);
  }catch(error){return report(reply,error);}
 });
 app.post("/v1/creator/masana/:id/publish-paid",{bodyLimit:512},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  try{
   const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
   if(Object.keys(body).sort().join(",")!=="authorizationRef,expectedRevision,idempotencyKey,operationId")
    throw new CreatorAgentError("creator.invalid_payload",400);
   return await deps.service.confirmAdditionalPublication(owner,ident(obj(request.params).id),
     rev(body.expectedRevision),body.operationId,body.authorizationRef,body.idempotencyKey);
  }catch(error){return report(reply,error);}
 });
 for(const [action,active] of [["pause",false],["resume",true]] as const){
  app.post("/v1/creator/masana/:id/"+action,{bodyLimit:256},async(request,reply)=>{
   reply.header("Cache-Control","private, no-store");
   try{
    const owner=await deps.auth.fan(request.headers.authorization),body=obj(request.body);
    if(Object.keys(body).join(",")!=="expectedRevision")throw new CreatorAgentError("creator.invalid_payload",400);
    return await deps.service.setActive(owner,ident(obj(request.params).id),active,rev(body.expectedRevision));
   }catch(error){return report(reply,error);}
  });
 }
}
