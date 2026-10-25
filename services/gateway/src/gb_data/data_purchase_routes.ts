import type {FastifyInstance} from "fastify";
import Type from "typebox";
import {createDataRedemptionService,type DataRedemptionActor,type DataRedemptionPorts} from "./data_purchase_service.js";
export interface GbDataPurchaseRoutes {
 authorize:(header:string|undefined)=>Promise<DataRedemptionActor>;
 service:DataRedemptionPorts;
}
export function registerGbDataPurchaseRoutes(app:FastifyInstance,ports:GbDataPurchaseRoutes) {
 const service=createDataRedemptionService(ports.service);
 const authorize=async(header:string|undefined)=>{
   const actor=await ports.authorize(header);
   if(!actor?.tenantId||!actor.userId)throw Error("unauthorized");
   return actor;
 };
 const error=(e:unknown,reply:{code:(n:number)=>unknown})=>{
   if(e instanceof Error&&e.message==="unauthorized"){reply.code(401);return {error:{code:"unauthorized"}};}
   if(e instanceof Error&&e.message==="data_redemption_not_found"){reply.code(404);return {error:{code:"not_found"}};}
   if(e instanceof Error&&e.message.includes("insufficient")){reply.code(409);return {error:{code:"insufficient_purchased_mb"}};}
   if(e instanceof Error&&e.message.includes("idempotency")){reply.code(409);return {error:{code:"conflicting_request"}};}
   if(e instanceof Error&&e.message==="invalid_idempotency"){reply.code(422);return {error:{code:"invalid_idempotency"}};}
   reply.code(503);return {error:{code:"data_purchase_unavailable"}};
 };
 app.post("/v1/gb/data/redeem",{
   schema:{body:Type.Object({
     bundleId:Type.String({minLength:3,maxLength:260}),
     version:Type.String({minLength:1,maxLength:128}),
     recipientPhone:Type.String({minLength:7,maxLength:24}),
     idempotencyKey:Type.String({minLength:8,maxLength:128}),
   },{additionalProperties:false})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const body=request.body as {bundleId:string;version:string;recipientPhone:string;idempotencyKey:string};
     // No frontend-supplied price/allowance or paid flag.
     return await service.purchase(user,body);
   }catch(e){return error(e,reply);}
 });
 app.post("/v1/gb/data/purchases/:operationId/reconcile",{
   schema:{params:Type.Object({operationId:Type.String({minLength:1,maxLength:160})})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const {operationId}=request.params as {operationId:string};
     return await service.reconcile(user,operationId);
   }catch(e){return error(e,reply);}
 });
 app.get("/v1/gb/data/purchases/:operationId",{
   schema:{params:Type.Object({operationId:Type.String({minLength:1,maxLength:160})})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const {operationId}=request.params as {operationId:string};
     const row=await ports.service.read(user,operationId);
     if(!row){reply.code(404);return {error:{code:"not_found"}};}
     return {operationId:row.operationId,state:row.state,costMb:row.costMb};
   }catch(e){return error(e,reply);}
 });
}
