import {createHash} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';
export interface NgnSpendActor {tenantId:string;userId:string;operationId:string}
export type NgnSpendPurpose='reply'|'connected_call'|'data'|'send'|'request_pay';
export interface NgnSpendInput extends NgnSpendActor {idempotencyKey:string;purpose:NgnSpendPurpose;amountKobo:number;recipientId?:string}
export interface NgnSpendReceipt {operationId:string;state:'reserved'|'completed'|'failed';amountKobo:number;capturedKobo:number}
export interface NgnSpendBalance {balanceKobo:number;heldKobo:number;availableKobo:number;debtKobo:number;frozen:boolean}
const id=(v:string)=>{if(typeof v!=='string'||!/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(v))throw Error('ngn.invalid_identity');};
const positive=(v:number)=>{if(!Number.isSafeInteger(v)||v<=0)throw Error('ngn.invalid_amount');};
const hash=(v:unknown)=>createHash('sha256').update(JSON.stringify(v)).digest('hex');
type Row={operation_id:string;user_id:string;purpose:NgnSpendPurpose;amount_kobo:string;captured_kobo:string;state:NgnSpendReceipt['state'];recipient_id:string|null;request_sha256:string};
const project=(r:Row):NgnSpendReceipt=>({operationId:r.operation_id,state:r.state,amountKobo:Number(r.amount_kobo),capturedKobo:Number(r.captured_kobo)});
/** Internal trusted accounting port. Provider proof and target authorization are
 * established by callers; a client never supplies a capture amount directly. */
export function createNgnSpending(pool:Pool,transactionClient?:PoolClient){
 const tx=<T>(run:(c:PoolClient)=>Promise<T>)=>transactionClient?run(transactionClient):withTransaction(pool,run);
 const check=(a:NgnSpendActor)=>{id(a.tenantId);id(a.userId);id(a.operationId);};
 const lockAccount=async(c:PoolClient,tenant:string,user:string)=>{
  await c.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id) VALUES($1,$2) ON CONFLICT DO NOTHING',[tenant,user]);
  const r=await c.query('SELECT * FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE',[tenant,user]);return r.rows[0]!;
 };
 const lockOperation=async(c:PoolClient,a:NgnSpendActor)=>{
  await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['ngn-spend:'+a.tenantId+':'+a.operationId]);
  const r=await c.query<Row>('SELECT * FROM gb_wallet.ngn_spends WHERE tenant_id=$1 AND operation_id=$2 AND user_id=$3 FOR UPDATE',[a.tenantId,a.operationId,a.userId]);return r.rows[0]??null;
 };
 const read=async(tenantId:string,operationId:string,userId:string)=>{
  check({tenantId,operationId,userId});const r=await (transactionClient??pool).query<Row>('SELECT * FROM gb_wallet.ngn_spends WHERE tenant_id=$1 AND operation_id=$2 AND user_id=$3',[tenantId,operationId,userId]);return r.rows[0]?project(r.rows[0]):null;
 };
 const reserve=async(input:NgnSpendInput):Promise<NgnSpendReceipt>=>{
  check(input);id(input.idempotencyKey);positive(input.amountKobo);
  if(!['reply','connected_call','data','send','request_pay'].includes(input.purpose))throw Error('ngn.invalid_purpose');
  if(['send','request_pay'].includes(input.purpose)!==!!input.recipientId)throw Error('ngn.invalid_recipient');
  if(input.recipientId){id(input.recipientId);if(input.recipientId===input.userId)throw Error('ngn.self_send');}
  const fingerprint=hash(['NGN',input.userId,input.purpose,input.amountKobo,input.recipientId??null]);
  return tx(async c=>{
   const old=await lockOperation(c,input);
   if(old){if(old.request_sha256!==fingerprint)throw Error('ngn.idempotency_conflict');return project(old);}
   const wallet=await lockAccount(c,input.tenantId,input.userId);
   const priorKey=await c.query('SELECT operation_id FROM gb_wallet.ngn_spends WHERE tenant_id=$1 AND user_id=$2 AND idempotency_key=$3',[input.tenantId,input.userId,input.idempotencyKey]);
   if(priorKey.rows[0])throw Error('ngn.idempotency_conflict');
   if(wallet.frozen||BigInt(wallet.debt_kobo)>0n)throw Error('ngn.account_frozen');
   if(BigInt(wallet.balance_kobo)-BigInt(wallet.held_kobo)<BigInt(input.amountKobo))throw Error('ngn.insufficient_balance');
   const r=await c.query<Row>(`INSERT INTO gb_wallet.ngn_spends(tenant_id,operation_id,user_id,idempotency_key,request_sha256,purpose,amount_kobo,state,recipient_id)
    VALUES($1,$2,$3,$4,$5,$6,$7,'reserved',$8) RETURNING *`,[input.tenantId,input.operationId,input.userId,input.idempotencyKey,fingerprint,input.purpose,input.amountKobo,input.recipientId??null]);
   await c.query('UPDATE gb_wallet.ngn_accounts SET held_kobo=held_kobo+$3,version=version+1 WHERE tenant_id=$1 AND account_id=$2',[input.tenantId,input.userId,input.amountKobo]);return project(r.rows[0]!);
  });
 };
 const settle=async(a:NgnSpendActor,actual:number|null):Promise<NgnSpendReceipt>=>{
  check(a);if(actual!==null)positive(actual);
  return tx(async c=>{
   const row=await lockOperation(c,a);if(!row)throw Error('ngn.reservation_missing');
   const target=actual===null?'failed':'completed';
   if(row.state!=='reserved'){
    if(row.state!==target||(actual!==null&&Number(row.captured_kobo)!==actual))throw Error('ngn.settlement_conflict');return project(row);
   }
   if(actual!==null&&actual>Number(row.amount_kobo))throw Error('ngn.exceeds_reservation');
   // Transfer callers prelock the same ordered accounts before reserve. Stable
   // order is also maintained here for direct settlement/recovery consumers.
   const users=[a.userId,...(row.recipient_id?[row.recipient_id]:[])].sort();
   const accounts=[];for(const user of users)accounts.push(await lockAccount(c,a.tenantId,user));
   const from=accounts.find(r=>r.account_id===a.userId)!;
   if(actual!==null){
    if(row.recipient_id){const to=accounts.find(r=>r.account_id===row.recipient_id)!;if(to.frozen||BigInt(to.debt_kobo)>0n||from.frozen||BigInt(from.debt_kobo)>0n)throw Error('ngn.account_frozen');}
    // Already delivered service remains an obligation after a deposit reversal;
    // settle original proof into debt instead of discarding/duplicating its charge.
    await c.query(`UPDATE gb_wallet.ngn_accounts SET balance_kobo=GREATEST(balance_kobo-$3::bigint,0),debt_kobo=debt_kobo+GREATEST($3::bigint-balance_kobo,0),held_kobo=held_kobo-$4,version=version+1 WHERE tenant_id=$1 AND account_id=$2`,[a.tenantId,a.userId,actual,row.amount_kobo]);
    await c.query('INSERT INTO gb_wallet.ngn_spend_entries(tenant_id,operation_id,account_id,delta_kobo,purpose) VALUES($1,$2,$3,$4,$5)',[a.tenantId,a.operationId,a.userId,-actual,row.purpose]);
    if(row.recipient_id){
     await c.query('UPDATE gb_wallet.ngn_accounts SET balance_kobo=balance_kobo+$3,version=version+1 WHERE tenant_id=$1 AND account_id=$2',[a.tenantId,row.recipient_id,actual]);
     await c.query('INSERT INTO gb_wallet.ngn_spend_entries(tenant_id,operation_id,account_id,delta_kobo,purpose) VALUES($1,$2,$3,$4,$5)',[a.tenantId,a.operationId,row.recipient_id,actual,row.purpose]);
    }
   }else await c.query('UPDATE gb_wallet.ngn_accounts SET held_kobo=held_kobo-$3,version=version+1 WHERE tenant_id=$1 AND account_id=$2',[a.tenantId,a.userId,row.amount_kobo]);
   const r=await c.query<Row>('UPDATE gb_wallet.ngn_spends SET state=$4,captured_kobo=$5,resolved_at=clock_timestamp() WHERE tenant_id=$1 AND operation_id=$2 AND user_id=$3 RETURNING *',[a.tenantId,a.operationId,a.userId,target,actual??0]);return project(r.rows[0]!);
  });
 };
 return {read,reserve,capture:(a:NgnSpendActor,n:number)=>settle(a,n),release:(a:NgnSpendActor)=>settle(a,null),
  async balance(a:{tenantId:string;userId:string}):Promise<NgnSpendBalance>{id(a.tenantId);id(a.userId);const r=await (transactionClient??pool).query('SELECT * FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2',[a.tenantId,a.userId]);const row=r.rows[0];const balanceKobo=Number(row?.balance_kobo??0),heldKobo=Number(row?.held_kobo??0),debtKobo=Number(row?.debt_kobo??0);return {balanceKobo,heldKobo,availableKobo:Math.max(0,balanceKobo-heldKobo),debtKobo,frozen:row?.frozen===true||debtKobo>0};},
 };
}
