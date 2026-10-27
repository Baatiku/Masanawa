import type { FastifyInstance } from "fastify";
import Type from "typebox";
import {createStatusTipService,StatusTipError,type StatusTipPorts} from "./tip_review.js";

export function registerGbStatusTipRoutes(app:FastifyInstance,ports:StatusTipPorts){
  const service=createStatusTipService(ports);
  const actor=async(header:string|undefined)=>{
    const a=await ports.authorize(header);
    if(!a?.tenantId||!a.userId)throw new StatusTipError(401,"unauthorized");
    return a;
  };
  const handle=(error:unknown,reply:{code:(n:number)=>unknown})=>{
    if(error instanceof StatusTipError){
      reply.code(error.status);return {error:{code:error.code}};
    }
    if(error instanceof RangeError && error.message==="gb.wallet.insufficient_purchased_mb"){
      reply.code(409);return {error:{code:"insufficient_purchased_mb"}};
    }
    if(error instanceof Error && error.message==="gb.wallet.tip_post_unavailable"){
      reply.code(404);return {error:{code:"tip_post_unavailable"}};
    }
    if(error instanceof Error && error.message==="gb.wallet.idempotency_conflict"){
      reply.code(409);return {error:{code:"tip_idempotency_conflict"}};
    }
    if(typeof error==="object"&&error!==null&&"statusCode" in error &&
      ((error as {statusCode?:unknown}).statusCode===401 ||
       (error as {statusCode?:unknown}).statusCode===403)){
      reply.code((error as {statusCode:401|403}).statusCode);
      return {error:{code:"unauthorized"}};
    }
    reply.code(503);return {error:{code:"tip_unavailable"}};
  };
  app.get("/v1/gb/wallet/tips/receipt/:operationId",async(req,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const owner=await actor(req.headers.authorization);
      const operationId=(req.params as {operationId?:unknown}).operationId;
      if(typeof operationId!=="string"||!/^tip_[A-Za-z0-9_-]{22,128}$/.test(operationId))
        return reply.code(422).send({error:{code:"invalid_tip_operation"}});
      const receipt=await ports.readTip(owner,operationId);
      if(!receipt)return reply.code(404).send({error:{code:"tip_not_confirmed"}});
      if(receipt.operationId!==operationId||receipt.state!=="completed")
        return reply.code(503).send({error:{code:"tip_unavailable"}});
      return {receipt};
    }catch(error){return handle(error,reply);}
  });
  app.post("/v1/gb/wallet/tips/review",{
    schema:{body:Type.Object({
      postId:Type.String({minLength:36,maxLength:36}),
      amountMb:Type.Integer({minimum:1,maximum:1_000_000_000}),
    },{additionalProperties:false})},
  },async(req,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const owner=await actor(req.headers.authorization);
      const body=req.body as {postId:string;amountMb:number};
      return {review:await service.review(owner,body.postId,body.amountMb)};
    }catch(error){return handle(error,reply);}
  });
  app.post("/v1/gb/wallet/tips/confirm",{
    schema:{body:Type.Object({
      reviewToken:Type.String({minLength:40,maxLength:4096}),
      reviewAccepted:Type.Literal(true),
    },{additionalProperties:false})},
  },async(req,reply)=>{
    reply.header("cache-control","no-store");
    try{
      const owner=await actor(req.headers.authorization);
      const body=req.body as {reviewToken:string;reviewAccepted:true};
      return {receipt:await service.confirm(owner,body.reviewToken)};
    }catch(error){return handle(error,reply);}
  });
}
