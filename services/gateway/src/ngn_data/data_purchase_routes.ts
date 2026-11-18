import type {FastifyInstance} from "fastify";
import Type from "typebox";
import {NgnDataCatalogueError} from "./data_catalogue.js";
import {createNgnDataPurchaseService,type NgnDataPurchaseActor,type NgnDataPurchasePorts} from "./data_purchase_service.js";
export interface NgnDataPurchaseRoutes {
 authorize:(header:string|undefined)=>Promise<NgnDataPurchaseActor>;
 service:NgnDataPurchasePorts;
}
export function registerNgnDataPurchaseRoutes(app:FastifyInstance,ports:NgnDataPurchaseRoutes) {
 const service=createNgnDataPurchaseService(ports.service);
 const authorize=async(header:string|undefined)=>{
   const actor=await ports.authorize(header);
   if(!actor?.tenantId||!actor.userId)throw Error("unauthorized");
   return actor;
 };
 const error=(e:unknown,reply:{code:(n:number)=>unknown})=>{
   if(e instanceof NgnDataCatalogueError){reply.code(e.code==='invalid_phone'?422:e.code==='stale_selection'?409:e.code==='bundle_unavailable'?404:503);return {error:{code:e.code}};}
   if(e instanceof Error&&e.message==='ngn.account_frozen'){reply.code(403);return {error:{code:'wallet_restricted'}};}
   if(e instanceof Error&&e.message==="unauthorized"){reply.code(401);return {error:{code:"unauthorized"}};}
   if(e instanceof Error&&e.message==="data_redemption_not_found"){reply.code(404);return {error:{code:"not_found"}};}
   if(e instanceof Error&&e.message.includes("insufficient")){reply.code(409);return {error:{code:"insufficient_balance"}};}
   if(e instanceof Error&&e.message==="invalid_idempotency"){reply.code(422);return {error:{code:"invalid_idempotency"}};}
   if(e instanceof Error&&e.message.includes("idempotency")){reply.code(409);return {error:{code:"conflicting_request"}};}
   if(e instanceof Error&&e.message==="price_changed"){reply.code(409);return {error:{code:"price_changed"}};}
   if(e instanceof Error&&e.message==="invalid_reviewed_price"){reply.code(422);return {error:{code:"invalid_reviewed_price"}};}
   reply.code(503);return {error:{code:"data_purchase_unavailable"}};
 };
 app.post("/v1/ngn/data/buy",{
   preValidation:async(request,reply)=>{
     const b=request.body;
     if(b&&typeof b==='object'&&!Array.isArray(b)&&Object.keys(b).some(k=>!['bundleId','version','recipientPhone','idempotencyKey','reviewedCostKobo'].includes(k)))
       return reply.code(422).send({error:{code:'invalid_purchase_fields'}});
   },
   schema:{body:Type.Object({
     bundleId:Type.String({minLength:3,maxLength:260}),
     version:Type.String({minLength:1,maxLength:128}),
     recipientPhone:Type.String({minLength:7,maxLength:24}),
     idempotencyKey:Type.String({minLength:8,maxLength:128}),
     reviewedCostKobo:Type.Integer({minimum:1,maximum:Number.MAX_SAFE_INTEGER}),
   },{additionalProperties:false})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const body=request.body as {bundleId:string;version:string;recipientPhone:string;idempotencyKey:string;reviewedCostKobo:number};
     // reviewedCostKobo is only a price-change assertion, never debit authority.
     return {currency:"NGN",unit:"kobo",...await service.purchase(user,body)};
   }catch(e){return error(e,reply);}
 });
 app.post("/v1/ngn/data/purchases/:operationId/reconcile",{
   schema:{params:Type.Object({operationId:Type.String({minLength:1,maxLength:160})})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const {operationId}=request.params as {operationId:string};
     return {currency:"NGN",unit:"kobo",...await service.reconcile(user,operationId)};
   }catch(e){return error(e,reply);}
 });
 app.get("/v1/ngn/data/purchases/intent/:idempotencyKey",{
   schema:{params:Type.Object({idempotencyKey:Type.String({minLength:8,maxLength:128})})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const {idempotencyKey}=request.params as {idempotencyKey:string};
     return {currency:"NGN",unit:"kobo",...await service.readOriginal(user,idempotencyKey)};
   }catch(e){return error(e,reply);}
 });
 app.get("/v1/ngn/data/purchases/:operationId",{
   schema:{params:Type.Object({operationId:Type.String({minLength:1,maxLength:160})})},
 },async(request,reply)=>{
   reply.header("cache-control","no-store");
   try{
     const user=await authorize(request.headers.authorization);
     const {operationId}=request.params as {operationId:string};
     const row=await ports.service.read(user,operationId);
     if(!row){reply.code(404);return {error:{code:"not_found"}};}
     return {currency:"NGN",unit:"kobo",operationId:row.operationId,state:row.state,costKobo:row.costKobo};
   }catch(e){return error(e,reply);}
 });
}
