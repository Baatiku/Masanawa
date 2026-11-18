import type {FastifyInstance,FastifyRequest} from 'fastify';
export interface PostSafetyPort {
 hide(t:string,u:string,p:string,h:boolean):Promise<unknown>;
 report(t:string,u:string,p:string,r:string):Promise<unknown>;
 list(t:string):Promise<unknown>;
 resolve(t:string,u:string,id:string,state:'reviewed'|'dismissed'):Promise<unknown>;
}
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const fail=(status:number,code:string):never=>{throw Object.assign(new Error(code),{status,code});};
const body=(r:FastifyRequest)=>{
 if(!r.body||typeof r.body!=='object'||Array.isArray(r.body))return fail(422,'invalid_safety_action');
 return r.body as Record<string,unknown>;
};
export async function registerPostSafetyRoutes(app:FastifyInstance,o:{port:PostSafetyPort;
 principal:(r:FastifyRequest)=>Promise<{tenantId:string;userId:string}>;
 isEditor:(p:{tenantId:string;userId:string})=>Promise<boolean>;enabled:()=>boolean}){
 const actor=async(r:FastifyRequest,admin=false)=>{
  if(!o.enabled())return fail(503,'post_safety_unavailable');
  const p=await o.principal(r);
  if(admin&&!await o.isEditor(p))return fail(403,'editorial_permission_denied');
  return p;
 };
 const id=(r:FastifyRequest)=>{const value=(r.params as {id:string}).id;
  if(!uuid.test(value))return fail(422,'invalid_post_id');return value;};
 app.get('/v1/feed/safety-capabilities',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await actor(r);
  return {canReview:await o.isEditor(p)};
 });
 app.put('/v1/posts/:id/hidden',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await actor(r),b=body(r);
  if(Object.keys(b).length!==1||typeof b.hidden!=='boolean')return fail(422,'invalid_safety_action');
  return o.port.hide(p.tenantId,p.userId,id(r),b.hidden);
 });
 app.post('/v1/posts/:id/reports',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await actor(r),b=body(r);
  if(Object.keys(b).length!==1||typeof b.reason!=='string'||
   !['spam','harassment','hate','violence','fraud','impersonation','privacy','inaccurate','other'].includes(b.reason))
   return fail(422,'invalid_report_reason');
  return o.port.report(p.tenantId,p.userId,id(r),b.reason);
 });
 app.get('/v1/admin/feed/reports',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await actor(r,true);return o.port.list(p.tenantId);
 });
 app.put('/v1/admin/feed/reports/:id',async(r,reply)=>{
  reply.header('Cache-Control','private, no-store');const p=await actor(r,true),b=body(r);
  if(Object.keys(b).length!==1||(b.state!=='reviewed'&&b.state!=='dismissed'))return fail(422,'invalid_report_resolution');
  return o.port.resolve(p.tenantId,p.userId,id(r),b.state);
 });
}
