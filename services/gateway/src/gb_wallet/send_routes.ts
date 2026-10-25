import type { FastifyInstance } from "fastify";
import Type from "typebox";
import { createGbSendReviewService, GbSendError, type GbSendPorts } from "./send_review.js";

export function registerGbSendReviewRoutes(app: FastifyInstance,ports:GbSendPorts) {
  const service=createGbSendReviewService(ports);
  const errorResponse=(error:unknown,reply:{code:(n:number)=>unknown})=>{
    if(error instanceof GbSendError){
      reply.code(error.status);
      return {error:{code:error.code,message:error.code}};
    }
    // The atomic PG ledger is authoritative for concurrent purchased MB.
    // A 409 is retriable by ORIGINAL operation receipt, never new key.
    if(error instanceof RangeError &&
       error.message==="gb.wallet.insufficient_purchased_mb") {
      reply.code(409);return {error:{code:"insufficient_purchased_mb"}};
    }
    if(error instanceof Error && error.message==="gb.wallet.idempotency_conflict"){
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
      throw new GbSendError(401,"unauthorized");
    }
    return identity;
  };
  app.get("/v1/gb/wallet/send/receipt/:operationId",async(request,reply)=>{
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
  // An exact public handle is required: never enumerate profiles by display
  // name, phone, partial prefix or private contact list. The same active,
  // self-excluding and bilateral-blocked resolver backs signed Send review.
  app.get("/v1/gb/wallet/recipients/:username",async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const user=await actor(request.headers.authorization);
      const raw=(request.params as {username?:unknown}).username;
      const handle=typeof raw==="string"?raw.trim().replace(/^@/,"").toLowerCase():"";
      if(!/^[a-z0-9_][a-z0-9_.-]{2,63}$/.test(handle))
        return reply.code(422).send({error:{code:"invalid_recipient_handle"}});
      const recipient=await ports.resolveRecipient(user,handle);
      if(!recipient?.active || recipient.userId===user.userId ||
          recipient.username!==handle)
        return reply.code(404).send({error:{code:"recipient_unavailable"}});
      return {recipient:{id:recipient.userId,username:recipient.username,
        displayName:recipient.displayName}};
    }catch(error){return errorResponse(error,reply);}
  });
  app.post("/v1/gb/wallet/send/quote",{
    schema:{body:Type.Object({
      username:Type.String({minLength:3,maxLength:80}),
      amountMb:Type.Integer({minimum:1,maximum:1_000_000_000}),
    },{additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const user=await actor(request.headers.authorization);
      const body=request.body as {username:string;amountMb:number};
      return await service.quote(user,body.username,body.amountMb);
    }catch(error){return errorResponse(error,reply);}
  });
  app.post("/v1/gb/wallet/send/confirm",{
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
