import type { FastifyInstance } from "fastify";
import Type from "typebox";
import { createNgnSendReviewService, NgnSendError, type NgnSendPorts } from "./send_review.js";

export function registerNgnSendReviewRoutes(app: FastifyInstance,ports:NgnSendPorts) {
  const service=createNgnSendReviewService(ports);
  const only=(body:unknown,keys:readonly string[])=>{if(body&&typeof body==='object'&&!Array.isArray(body)&&Object.keys(body).some(k=>!keys.includes(k)))throw Object.assign(new NgnSendError(422,'invalid_request'),{statusCode:422});};
  const errorResponse=(error:unknown,reply:{code:(n:number)=>unknown})=>{
    if(error instanceof NgnSendError){
      reply.code(error.status);
      return {error:{code:error.code,message:error.code}};
    }
    // The atomic NGN ledger is authoritative for concurrent cash spending.
    // A 409 is retriable by ORIGINAL operation receipt, never new key.
    if(error instanceof Error &&
       error.message==="ngn.insufficient_balance") {
      reply.code(409);return {error:{code:"insufficient_balance"}};
    }
    if(error instanceof Error && error.message==="ngn.idempotency_conflict"){
      reply.code(409);return {error:{code:"idempotency_conflict"}};
    }
    if(typeof error==="object"&&error!==null&&"statusCode" in error&&
      ((error as {statusCode?:unknown}).statusCode===401 ||
       (error as {statusCode?:unknown}).statusCode===403)){
      const status=(error as {statusCode:401|403}).statusCode;
      reply.code(status);return {error:{code:"unauthorized"}};
    }
    reply.code(503);return {error:{code:"send_unavailable"}};
  };
  const actor=async(header:string|undefined)=>{
    const identity=await ports.authorize(header);
    if(!identity?.tenantId || !identity.userId) {
      throw new NgnSendError(401,"unauthorized");
    }
    return identity;
  };
  app.get("/v1/ngn/wallet/send/receipt/:operationId",async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const user=await actor(request.headers.authorization);
      const operationId=(request.params as {operationId?:unknown}).operationId;
      if(typeof operationId!=="string"||
         !/^send_[A-Za-z0-9_-]{22,128}$/.test(operationId))
        return reply.code(422).send({error:{code:"invalid_send_operation"}});
      const receipt=await ports.readTransfer(user,operationId);
      if(!receipt)return reply.code(404).send({error:{code:"send_not_confirmed"}});
      if(receipt.operationId!==operationId||receipt.state!=="completed")
        return reply.code(503).send({error:{code:"send_unavailable"}});
      return {receipt};
    }catch(error){return errorResponse(error,reply);}
  });
  const searches=new Map<string,{at:number;count:number}>();
  app.post('/v1/ngn/wallet/recipients/search',async(request,reply)=>{
    reply.header('cache-control','no-store');
    try{
      const user=await actor(request.headers.authorization);
      const body=request.body as {q?:unknown}|null;
      const q=body?.q;
      if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).some(k=>k!=='q'))
        return reply.code(422).send({error:{code:'invalid_recipient_search'}});
      if(typeof q!=='string'||q.length<2||q.length>320)return reply.code(422).send({error:{code:'invalid_recipient_search'}});
      if(!ports.searchRecipients)return reply.code(503).send({error:{code:'search_unavailable'}});
      const key=JSON.stringify([user.tenantId,user.userId]),now=Date.now();
      const previous=searches.get(key),window=previous&&now-previous.at<60000?previous:{at:now,count:0};
      if(window.count>=60)return reply.code(429).header('retry-after','60').send({error:{code:'search_rate_limited'}});
      if(searches.size>=10000&&!searches.has(key))searches.delete(searches.keys().next().value!);
      window.count++;searches.set(key,window);
      const found=await ports.searchRecipients(user,q);
      return {recipients:found.filter(r=>r.active&&r.userId!==user.userId).slice(0,8).map(r=>({
       id:r.userId,username:r.username,displayName:r.displayName,...(r.avatarUrl?{avatarUrl:r.avatarUrl}:{})}))};
    }catch(error){return errorResponse(error,reply);}
  });
  // Legacy exact-handle preview remains compatible. The same active,
  // self-excluding and bilateral-blocked resolver backs signed Send review.
  app.get("/v1/ngn/wallet/recipients/:username",async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const user=await actor(request.headers.authorization);
      const raw=(request.params as {username?:unknown}).username;
      const handle=typeof raw==="string"?raw.trim().replace(/^@/,"").toLowerCase():"";
      if(!/^[a-z0-9_][a-z0-9_.-]{1,63}$/.test(handle))
        return reply.code(422).send({error:{code:"invalid_recipient_handle"}});
      const recipient=await ports.resolveRecipient(user,handle);
      if(!recipient?.active || recipient.userId===user.userId ||
          recipient.username!==handle)
        return reply.code(404).send({error:{code:"recipient_unavailable"}});
      return {recipient:{id:recipient.userId,username:recipient.username,
        displayName:recipient.displayName,
        ...(recipient.avatarUrl?{avatarUrl:recipient.avatarUrl}:{})}};
    }catch(error){return errorResponse(error,reply);}
  });
  app.post("/v1/ngn/wallet/send/quote",{
    preValidation:async request=>only(request.body,["username","amountKobo"]),
    schema:{body:Type.Object({
      username:Type.String({minLength:2,maxLength:80}),
      amountKobo:Type.Integer({minimum:1,maximum:1_000_000_000}),
    },{additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const user=await actor(request.headers.authorization);
      const body=request.body as {username:string;amountKobo:number};
      return await service.quote(user,body.username,body.amountKobo);
    }catch(error){return errorResponse(error,reply);}
  });
  app.post("/v1/ngn/wallet/send/confirm",{
    preValidation:async request=>only(request.body,["reviewToken","reviewAccepted"]),
    schema:{body:Type.Object({
      reviewToken:Type.String({minLength:40,maxLength:4096}),
      reviewAccepted:Type.Literal(true),
    },{additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const user=await actor(request.headers.authorization);
      const body=request.body as {reviewToken:string;reviewAccepted:true};
      return {receipt:await service.confirm(user,body.reviewToken)};
    }catch(error){return errorResponse(error,reply);}
  });
}
