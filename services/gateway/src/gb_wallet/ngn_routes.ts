import type {FastifyInstance} from "fastify";
import Type from "typebox";
import {createNgnExchangeService,NGN_EXCHANGE_RATES,NgnError,type NgnWalletPorts} from "./ngn_exchange.js";
export function registerNgnWalletRoutes(app:FastifyInstance,p:NgnWalletPorts){
 const service=createNgnExchangeService(p);
 const auth=async(header:string|undefined)=>{
  try{const a=await p.authorize(header);if(!a?.tenantId||!a.userId)throw new Error();return a;}
  catch(e){if((e as {statusCode?:number}).statusCode===403)throw new NgnError(403,"account_restricted");throw new NgnError(401,"unauthorized");}
 };
 const error=(e:unknown,reply:{code:(code:number)=>unknown})=>{
  const code=e instanceof NgnError?e.code:e instanceof Error&&/^ngn\.(insufficient_balance|account_frozen|idempotency_conflict|review_expired)$/.test(e.message)?e.message.slice(4):"wallet_unavailable";
  reply.code(e instanceof NgnError?e.status:code==="review_expired"?410:code==="wallet_unavailable"?503:409);
  return {error:{code}};
 };
 app.get("/v1/gb/wallet/ngn/summary",async(req,reply)=>{
  reply.header("cache-control","no-store");try{
   const a=await auth(req.headers.authorization);
   return {balance:{currency:"NGN",unit:"kobo",...await p.read(a)},exchangeEnabled:p.ready()};
  }catch(e){return error(e,reply);}
 });
 app.get("/v1/gb/wallet/exchange/packages",async(req,reply)=>{
  reply.header("cache-control","no-store");try{
   await auth(req.headers.authorization);
   return {version:NGN_EXCHANGE_RATES.version,exchangeEnabled:p.ready(),packages:NGN_EXCHANGE_RATES.tiers.map(t=>({...t,expectedMb:t.sizeGb*1000}))};
  }catch(e){return error(e,reply);}
 });
 app.post("/v1/gb/wallet/exchange/quote",{schema:{body:Type.Object({sizeGb:Type.Integer({minimum:1,maximum:2000})},{additionalProperties:false})}},async(req,reply)=>{
  reply.header("cache-control","no-store");try{return await service.quote(await auth(req.headers.authorization),(req.body as {sizeGb:number}).sizeGb);}catch(e){return error(e,reply);}
 });
 app.post("/v1/gb/wallet/exchange/confirm",{schema:{body:Type.Object({reviewToken:Type.String({minLength:40,maxLength:4096}),reviewAccepted:Type.Literal(true)},{additionalProperties:false})}},async(req,reply)=>{
  reply.header("cache-control","no-store");try{return {receipt:await service.confirm(await auth(req.headers.authorization),(req.body as {reviewToken:string}).reviewToken)};}catch(e){return error(e,reply);}
 });
 app.get("/v1/gb/wallet/exchange/:id",{schema:{params:Type.Object({id:Type.String({pattern:"^ngnx_[a-f0-9]{48}$"})})}},async(req,reply)=>{
  reply.header("cache-control","no-store");try{
   const a=await auth(req.headers.authorization);const receipt=await p.receipt(a,(req.params as {id:string}).id);
   if(!receipt){reply.code(404);return {error:{code:"receipt_not_found"}};}return {receipt};
  }catch(e){return error(e,reply);}
 });
}
