import {randomUUID} from 'node:crypto';
import type {Pool} from '@masanawa/postgres';
import {WalletActivityError} from './wallet_activity.js';
type Owner={tenantId:string;userId:string};
export function createWalletSupport(pool:Pick<Pool,'query'>,readOperation:(owner:Owner,id:string)=>Promise<unknown>){
  async function admitted(owner:Owner,operation:unknown){
    if(typeof operation!=='string'||operation.length<1||operation.length>180)throw new WalletActivityError('wallet.operation_invalid');
    await readOperation(owner,operation);return operation;
  }
  function result(row:Record<string,unknown>){return {caseId:row.case_id,operationId:row.operation_id,reason:row.reason,state:row.state,
    createdAt:row.created_at instanceof Date?row.created_at.toISOString():row.created_at};}
  return Object.freeze({
    async read(owner:Owner,operation:unknown){
      const id=await admitted(owner,operation);
      const row=await pool.query('SELECT case_id,operation_id,reason,state,created_at FROM commerce.wallet_support_cases WHERE tenant_id=$1 AND user_id=$2 AND operation_id=$3',[owner.tenantId,owner.userId,id]);
      if(!row.rows[0])throw new WalletActivityError('wallet.support_not_found',404);return result(row.rows[0]);
    },
    async open(owner:Owner,operation:unknown,reason:unknown){
      const id=await admitted(owner,operation);
      if(typeof reason!=='string'||!['pending','not_received','incorrect_amount','other'].includes(reason))throw new WalletActivityError('wallet.support_reason_invalid');
      const row=await pool.query(`INSERT INTO commerce.wallet_support_cases(case_id,tenant_id,user_id,operation_id,reason)
       VALUES($1,$2,$3,$4,$5) ON CONFLICT(tenant_id,user_id,operation_id)
       DO UPDATE SET operation_id=EXCLUDED.operation_id RETURNING case_id,operation_id,reason,state,created_at`,[randomUUID(),owner.tenantId,owner.userId,id,reason]);
      return result(row.rows[0]!);
    },
  });
}
