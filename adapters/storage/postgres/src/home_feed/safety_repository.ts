import {lockActiveUser} from '../identity/active_user.js';
import {withTransaction} from '../transaction.js';
import type {Pool} from 'pg';
const problem=(status:number,code:string)=>Object.assign(new Error(code),{status,code});
/** Eligibility is the canonical feed read WITHOUT personal hiding; it still checks
 * moderation, blocks, current official-source rights and Masana ownership. */
export class PgPostSafetyRepository {
 constructor(private readonly pool:Pool,
  private readonly visible:(tenant:string,fan:string,id:string)=>Promise<unknown>){}
 async hide(tenant:string,fan:string,post:string,hidden:boolean){
  if(!await this.visible(tenant,fan,post))throw problem(404,'post_not_found');
  return withTransaction(this.pool,async client=>{
  await lockActiveUser(client,tenant,fan);
  if(hidden)await client.query(`INSERT INTO feed.hidden_posts(tenant_id,fan_id,post_id)
   VALUES($1,$2,$3::uuid) ON CONFLICT DO NOTHING`,[tenant,fan,post]);
  else await client.query(`DELETE FROM feed.hidden_posts WHERE tenant_id=$1 AND fan_id=$2 AND post_id=$3::uuid`,[tenant,fan,post]);
  return {hidden};
  });
 }
 async report(tenant:string,fan:string,post:string,reason:string){
  if(!await this.visible(tenant,fan,post))throw problem(404,'post_not_found');
  const client=await this.pool.connect();
  try{
   await client.query('BEGIN');
   await lockActiveUser(client,tenant,fan);
   await client.query(`SELECT pg_advisory_xact_lock(hashtextextended($1,0))`,[JSON.stringify([tenant,fan,'post-report'])]);
   const existing=await client.query(`SELECT id::text,state FROM feed.post_reports
    WHERE tenant_id=$1 AND reporter_id=$2 AND post_id=$3::uuid AND reason=$4`,[tenant,fan,post,reason]);
   if(existing.rows[0]){await client.query('COMMIT');return existing.rows[0];}
   const count=await client.query(`SELECT count(*)::int AS n FROM feed.post_reports
    WHERE tenant_id=$1 AND reporter_id=$2 AND created_at>clock_timestamp()-interval '24 hours'`,[tenant,fan]);
   if(Number(count.rows[0]?.n)>=50)throw problem(429,'report_limit_reached');
   const added=await client.query(`INSERT INTO feed.post_reports(tenant_id,reporter_id,post_id,reason)
    VALUES($1,$2,$3::uuid,$4) RETURNING id::text,state`,[tenant,fan,post,reason]);
   await client.query('COMMIT');return added.rows[0];
  }catch(e){await client.query('ROLLBACK');throw e;}finally{client.release();}
 }
 async list(tenant:string){
  const result=await this.pool.query(`SELECT id::text,post_id::text,reason,state,created_at
   FROM feed.post_reports WHERE tenant_id=$1 AND state='open'
   ORDER BY created_at,id LIMIT 50`,[tenant]);
  return {items:result.rows};
 }
 async resolve(tenant:string,reviewer:string,id:string,state:'reviewed'|'dismissed'){
  return withTransaction(this.pool,async client=>{
  await lockActiveUser(client,tenant,reviewer);
  const result=await client.query(`UPDATE feed.post_reports SET state=$4,reviewed_by=$2,
   reviewed_at=clock_timestamp() WHERE tenant_id=$1 AND id=$3::uuid AND state='open'
   RETURNING id::text,state`,[tenant,reviewer,id,state]);
  if(result.rows[0])return result.rows[0];
  const existing=await client.query(`SELECT id::text,state FROM feed.post_reports
   WHERE tenant_id=$1 AND id=$2::uuid`,[tenant,id]);
  if(existing.rows[0]?.state===state)return existing.rows[0];
  throw problem(existing.rows.length?409:404,'report_not_open');
  });
 }
}
