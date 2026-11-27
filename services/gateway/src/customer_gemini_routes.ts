import type {FastifyInstance} from 'fastify';
import {CustomerGeminiError,type createCustomerGeminiVault} from './customer_gemini_vault.js';
type Actor={tenantId:string;userId:string};
export type CustomerGeminiPorts={vault:ReturnType<typeof createCustomerGeminiVault>;authorize:(header:string|undefined)=>Promise<Actor>;beforeWrite:(header:string|undefined)=>Promise<unknown>};
export function validCustomerGeminiEnrollment(body:unknown):body is {apiKey:string;consentVersion:1}{
 if(!body||typeof body!=='object'||Array.isArray(body))return false;
 const b=body as Record<string,unknown>;
 return Object.keys(b).length===2&&typeof b.apiKey==='string'&&b.consentVersion===1;
}
/** Do not compose in production until every intended runtime is scoped and
 * Google terms, privacy and age controls are accepted. */
export function registerCustomerGeminiRoutes(app:FastifyInstance,p:CustomerGeminiPorts){
 const run=async(reply:{header:(k:string,v:string)=>unknown;code:(n:number)=>unknown},work:()=>Promise<unknown>)=>{
  reply.header('Cache-Control','private, no-store');
  try{return await work();}catch(e){
   const n=(e as {statusCode?:number})?.statusCode;
   reply.code(n&&n>=400&&n<500?n:503);
   return {error:e instanceof CustomerGeminiError?e.code:'gemini_key_service_unavailable'};
  }
 };
 app.get('/v1/account/gemini-key',async(q,r)=>run(r,async()=>p.vault.status(await p.authorize(q.headers.authorization))));
 app.post<{Body:unknown}>('/v1/account/gemini-key',{bodyLimit:1024},async(q,r)=>run(r,async()=>{
  const actor=await p.authorize(q.headers.authorization);await p.beforeWrite(q.headers.authorization);
  if(!validCustomerGeminiEnrollment(q.body))throw new CustomerGeminiError(400,'invalid_gemini_enrollment');
  return p.vault.save(actor,q.body.apiKey);
 }));
 app.delete('/v1/account/gemini-key',async(q,r)=>run(r,async()=>{
  const actor=await p.authorize(q.headers.authorization);await p.beforeWrite(q.headers.authorization);
  return p.vault.remove(actor);
 }));
}
