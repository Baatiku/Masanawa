import type {FastifyInstance} from "fastify";
import type {CreatorPool} from "./store.js";
import {CreatorAgentError} from "./store.js";

type Identity={tenantId:string;userId:string};
export interface CreatorPolicyView {
  revision:number;
  creationMsnw:string;
  firstFreeCount:number;
  freeSubstantiveEdits:number;
  paidEditMsnw:string;
  revenueShareBps:number;
  maxPostsWeekly:number;
  effectiveAt:string;
}
const defaults:CreatorPolicyView=Object.freeze({
 revision:1,creationMsnw:"5000",firstFreeCount:1,freeSubstantiveEdits:3,
 paidEditMsnw:"100",revenueShareBps:3000,maxPostsWeekly:2,effectiveAt:"1970-01-01T00:00:00.000Z",
});
function num(n:unknown,name:string,limit:number):number {
 if(typeof n!=="number"||!Number.isSafeInteger(n)||n<0||n>limit)
  throw new CreatorAgentError("creator.invalid_"+name,400);
 return n;
}
function amount(v:unknown,name:string):string {
 if(typeof v!=="string"||!/^(0|[1-9][0-9]{0,35})$/u.test(v))
  throw new CreatorAgentError("creator.invalid_"+name,400);
 return v;
}
function asPolicy(row:Record<string,unknown>|undefined):CreatorPolicyView {
 if(!row)return defaults;
 return Object.freeze({
  revision:Number(row.revision),creationMsnw:String(row.creation_msnw),
  firstFreeCount:Number(row.first_free_count),
  freeSubstantiveEdits:Number(row.free_substantive_edits),
  paidEditMsnw:String(row.paid_edit_msnw),
  revenueShareBps:Number(row.revenue_share_bps),
  maxPostsWeekly:Number(row.max_posts_weekly),
  effectiveAt:row.effective_at instanceof Date?row.effective_at.toISOString():String(row.effective_at),
 });
}
function body(v:unknown):Record<string,unknown> {
 if(!v||typeof v!=="object"||Array.isArray(v))throw new CreatorAgentError("creator.invalid_policy",400);
 const value=v as Record<string,unknown>;
 const names=Object.keys(value).sort().join(",");
 if(names!=="creationMsnw,firstFreeCount,freeSubstantiveEdits,maxPostsWeekly,paidEditMsnw,reason,revenueShareBps")
  throw new CreatorAgentError("creator.invalid_policy",400);
 return value;
}
export function createCreatorPolicyService(pool:CreatorPool) {
 const projection="SELECT revision,creation_msnw::text,first_free_count,free_substantive_edits,"+
  "paid_edit_msnw::text,revenue_share_bps,max_posts_weekly,effective_at FROM creator.fee_policies "+
  "WHERE tenant_id=$1 AND effective_at<=statement_timestamp() ORDER BY effective_at DESC,revision DESC LIMIT 1";
 return Object.freeze({
  async read(tenantId:string):Promise<CreatorPolicyView>{
   const r=await pool.query(projection,[tenantId]);return asPolicy(r.rows[0]);
  },
  async update(actor:Identity,raw:unknown):Promise<CreatorPolicyView>{
   const v=body(raw);
   const creationMsnw=amount(v.creationMsnw,"creation_fee");
   const paidEditMsnw=amount(v.paidEditMsnw,"edit_fee");
   const firstFreeCount=num(v.firstFreeCount,"free_count",10),
    freeSubstantiveEdits=num(v.freeSubstantiveEdits,"free_edits",100),
    revenueShareBps=num(v.revenueShareBps,"revenue_share",10000),
    maxPostsWeekly=num(v.maxPostsWeekly,"post_cap",21);
   // The canonical lifetime entitlement table grants exactly one free Masana.
   // Keep the UI and policy coherent until a reviewed multi-slot migration exists.
   if (firstFreeCount !== 1) throw new CreatorAgentError("creator.first_free_count_fixed",400);
   if(typeof v.reason!=="string"||v.reason.trim().length<8||v.reason.length>300)
    throw new CreatorAgentError("creator.invalid_policy_reason",400);
   const client=await pool.connect();let active=false;
   try{
    await client.query("BEGIN");active=true;
    // Cross-device and multi-admin policy revisions serialize per tenant.
    await client.query("SELECT tenant_id FROM identity.tenants WHERE tenant_id=$1 FOR UPDATE",[actor.tenantId]);
    const next=await client.query("SELECT coalesce(max(revision),0)+1 AS revision FROM creator.fee_policies WHERE tenant_id=$1",[actor.tenantId]);
    const revision=Number(next.rows[0]?.revision??1);
    const saved=await client.query(
     "INSERT INTO creator.fee_policies(tenant_id,revision,creation_msnw,first_free_count,free_substantive_edits,"+
     "paid_edit_msnw,revenue_share_bps,max_posts_weekly,effective_at,actor_user_id,reason) "+
     "VALUES($1,$2,$3::numeric,$4,$5,$6::numeric,$7,$8,statement_timestamp(),$9,$10) "+
     "RETURNING revision,creation_msnw::text,first_free_count,free_substantive_edits,paid_edit_msnw::text,revenue_share_bps,max_posts_weekly,effective_at",
     [actor.tenantId,revision,creationMsnw,firstFreeCount,freeSubstantiveEdits,paidEditMsnw,revenueShareBps,maxPostsWeekly,actor.userId,v.reason.trim()]);
    await client.query("COMMIT");active=false;
    return asPolicy(saved.rows[0]);
   }catch(e){if(active)await client.query("ROLLBACK").catch(()=>{});throw e;}
   finally{client.release();}
  }
 });
}
export function registerCreatorPolicyRoutes(app:FastifyInstance,deps:{
 readonly service:ReturnType<typeof createCreatorPolicyService>;
 readonly fan:(header:string|undefined)=>Promise<Identity>;
 readonly staff:(header:string|undefined)=>Promise<Identity>;
}):void {
 app.get("/v1/creator/policy",async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  const actor=await deps.fan(request.headers.authorization);
  return deps.service.read(actor.tenantId);
 });
 app.put("/v1/admin/creator/policy",{bodyLimit:1024},async(request,reply)=>{
  reply.header("Cache-Control","private, no-store");
  const actor=await deps.staff(request.headers.authorization);
  try{return await deps.service.update(actor,request.body);}
  catch(e){
   if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}
   throw e;
  }
 });
}
