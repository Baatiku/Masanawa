import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';

export interface UsageBillingPolicy {
  billingEnabled:boolean;
  replyKobo:number;
  callKoboPerStartedSecond:number;
  revision:number;
}
const DEFAULT:UsageBillingPolicy=Object.freeze({
  billingEnabled:true,replyKobo:200,callKoboPerStartedSecond:100,revision:0,
});
type Reader=Pick<Pool|PoolClient,'query'>;
function policy(row:any):UsageBillingPolicy {
  return row?{billingEnabled:row.billing_enabled===true,
    replyKobo:Number(row.reply_kobo),callKoboPerStartedSecond:Number(row.call_kobo_per_started_second),
    revision:Number(row.revision)}:DEFAULT;
}
export async function readUsageBilling(db:Reader,tenantId:string):Promise<UsageBillingPolicy>{
  if(!/^tenant_[A-Za-z0-9_:.-]{1,160}$/.test(tenantId))throw new TypeError('Invalid usage-billing tenant');
  const result=await db.query('SELECT billing_enabled,reply_kobo,call_kobo_per_started_second,revision FROM gb_wallet.platform_usage_billing WHERE tenant_id=$1',[tenantId]);
  return policy(result.rows[0]);
}
export function createUsageBillingRepository(pool:Pool) {
  return Object.freeze({
    read:(tenantId:string)=>readUsageBilling(pool,tenantId),
    async write(input:{tenantId:string;actorId:string;expectedRevision:number;billingEnabled:boolean;replyKobo:number;callKoboPerStartedSecond:number}){
      if(!/^tenant_[A-Za-z0-9_:.-]{1,160}$/.test(input.tenantId)||
         !/^[A-Za-z0-9_:.-]{1,160}$/.test(input.actorId)||
         !Number.isSafeInteger(input.expectedRevision)||input.expectedRevision<0||
         typeof input.billingEnabled!=='boolean'||
         !Number.isSafeInteger(input.replyKobo)||input.replyKobo<1||input.replyKobo>100000||
         !Number.isSafeInteger(input.callKoboPerStartedSecond)||input.callKoboPerStartedSecond<1||input.callKoboPerStartedSecond>100000)
        throw Object.assign(new Error('invalid_billing_policy'),{statusCode:422});
      return withTransaction(pool,async client=>{
        await client.query('SELECT pg_advisory_xact_lock(hashtext($1))',['usage-pricing:'+input.tenantId]);
        const old=await readUsageBilling(client,input.tenantId);
        if(old.revision!==input.expectedRevision)throw Object.assign(new Error('billing_revision_conflict'),{statusCode:409});
        const next={billingEnabled:input.billingEnabled,replyKobo:input.replyKobo,
          callKoboPerStartedSecond:input.callKoboPerStartedSecond,revision:old.revision+1};
        await client.query(`INSERT INTO gb_wallet.platform_usage_billing
         (tenant_id,billing_enabled,reply_kobo,call_kobo_per_started_second,revision,updated_by)
         VALUES($1,$2,$3,$4,$5,$6)
         ON CONFLICT(tenant_id) DO UPDATE SET billing_enabled=EXCLUDED.billing_enabled,
           reply_kobo=EXCLUDED.reply_kobo,call_kobo_per_started_second=EXCLUDED.call_kobo_per_started_second,
           revision=EXCLUDED.revision,updated_by=EXCLUDED.updated_by,updated_at=clock_timestamp()`,
         [input.tenantId,next.billingEnabled,next.replyKobo,next.callKoboPerStartedSecond,next.revision,input.actorId]);
        await client.query(`INSERT INTO gb_wallet.platform_usage_billing_audit
          (tenant_id,revision,actor_id,old_policy,new_policy) VALUES($1,$2,$3,$4::jsonb,$5::jsonb)`,
          [input.tenantId,next.revision,input.actorId,JSON.stringify(old),JSON.stringify(next)]);
        return next;
      });
    },
  });
}
