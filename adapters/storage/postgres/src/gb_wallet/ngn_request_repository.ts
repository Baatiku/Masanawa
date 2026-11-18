import {createHash,randomBytes} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';
import {createNgnSpending,type NgnSpendReceipt} from './ngn_spending.js';

export interface NgnRequestActor {tenantId:string;userId:string}
export interface NgnTransferRequest extends NgnRequestActor {recipientId:string;amountKobo:number;operationId:string;idempotencyKey:string}
export interface NgnTransferReceipt {operationId:string;amountKobo:number;state:'completed';currency:'NGN';unit:'kobo'}
export interface NgnPaymentRequest {
 requestId:string;requesterId:string;payerId:string;requesterUsername:string|null;payerUsername:string|null;
 amountKobo:number;currency:'NGN';unit:'kobo';state:'open'|'paid'|'cancelled'|'declined'|'expired';
 createdAt:string;expiresAt:string;operationId:string|null;
}
export class NgnRequestStoreError extends Error {constructor(readonly status:400|403|404|409|410|422|503,readonly code:string){super(code);}}
const validId=(x:string)=>typeof x==='string'&&/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(x);
const validKey=(x:string)=>typeof x==='string'&&/^[A-Za-z0-9_-]{12,128}$/.test(x);
const amount=(n:number)=>{if(!Number.isSafeInteger(n)||n<1||n>1_000_000_000)throw new NgnRequestStoreError(422,'invalid_ngn_amount');return n;};
const actor=(a:NgnRequestActor)=>{if(!validId(a.tenantId)||!validId(a.userId))throw new NgnRequestStoreError(403,'unauthorized');};
const digest=(v:unknown)=>createHash('sha256').update(JSON.stringify(v)).digest('hex');
async function retry<T>(work:()=>Promise<T>):Promise<T>{for(let i=0;;i++)try{return await work();}catch(e){if(i>=3||!['40001','40P01'].includes((e as {code:string}).code))throw e;}}
async function partiesEligible(c:PoolClient,tenantId:string,requesterId:string,payerId:string){
 const rows=await c.query<{user_id:string}>(`SELECT user_id FROM identity.users u
 WHERE u.tenant_id=$1 AND u.user_id IN ($2,$3) AND u.state='active'
 AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=$1 AND b.blocked
  AND ((b.viewer_user_id=$2 AND b.subject_user_id=$3) OR (b.viewer_user_id=$3 AND b.subject_user_id=$2)))
 AND NOT EXISTS(SELECT 1 FROM talks.public_profiles p JOIN talks.safety_enforcement e ON e.tenant_id=p.tenant_id
  AND e.target_kind='profile' AND e.target_id=p.handle WHERE p.tenant_id=$1 AND p.user_id IN ($2,$3)
  AND e.visibility IN ('blocked','restricted')) ORDER BY user_id FOR SHARE OF u`,[tenantId,requesterId,payerId]);
 return rows.rowCount===2;
}
async function lockAccounts(c:PoolClient,a:NgnRequestActor,other:string){
 for(const user of [a.userId,other].sort()){
  await c.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id) VALUES($1,$2) ON CONFLICT DO NOTHING',[a.tenantId,user]);
  await c.query('SELECT account_id FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE',[a.tenantId,user]);
 }
}
function transferReceipt(row:NgnSpendReceipt):NgnTransferReceipt {
 if(row.state!=='completed'||row.capturedKobo!==row.amountKobo)throw Error('ngn.transfer_unconfirmed');
 return {operationId:row.operationId,state:'completed',amountKobo:row.capturedKobo,currency:'NGN',unit:'kobo'};
}
async function transferInside(pool:Pool,c:PoolClient,input:NgnTransferRequest,purpose:'send'|'request_pay'){
 const spending=createNgnSpending(pool,c);
 const old=await spending.read(input.tenantId,input.operationId,input.userId);
 if(old?.state==='completed'){await spending.reserve({...input,purpose});return transferReceipt(old);}
 if(!await partiesEligible(c,input.tenantId,input.userId,input.recipientId))throw Error('ngn.parties_unavailable');
 await lockAccounts(c,input,input.recipientId);
 await spending.reserve({...input,purpose});
 return transferReceipt(await spending.capture(input,input.amountKobo));
}
export function createPostgresNgnTransferRepository(pool:Pool){return {
 async transfer(input:NgnTransferRequest):Promise<NgnTransferReceipt>{
  actor(input);amount(input.amountKobo);
  if(!validId(input.recipientId)||input.userId===input.recipientId||!validId(input.operationId)||!validId(input.idempotencyKey))throw Error('ngn.invalid_transfer');
  return retry(()=>withTransaction(pool,c=>transferInside(pool,c,input,'send'),{isolation:'serializable'}));
 },
 async readTransfer(a:NgnRequestActor,operationId:string):Promise<NgnTransferReceipt|null>{
  actor(a);if(!/^send_[A-Za-z0-9_-]{22,128}$/.test(operationId))return null;
  const result=await pool.query<{amount_kobo:string;captured_kobo:string;state:string}>(`SELECT amount_kobo,captured_kobo,state FROM gb_wallet.ngn_spends
   WHERE tenant_id=$1 AND operation_id=$2 AND user_id=$3 AND purpose='send'`,[a.tenantId,operationId,a.userId]);
  const r=result.rows[0];return r?.state==='completed'?transferReceipt({operationId,state:'completed',amountKobo:Number(r.amount_kobo),capturedKobo:Number(r.captured_kobo)}):null;
 },
};}
type Row={request_id:string;requester_id:string;payer_id:string;requester_username:string|null;payer_username:string|null;amount_kobo:string;state:'open'|'paid'|'cancelled'|'declined';created_at:Date|string;expires_at:Date|string;operation_id:string|null;request_sha256:string};
const project=(r:Row):NgnPaymentRequest=>({requestId:r.request_id,requesterId:r.requester_id,payerId:r.payer_id,requesterUsername:r.requester_username,payerUsername:r.payer_username,amountKobo:amount(Number(r.amount_kobo)),currency:'NGN',unit:'kobo',state:r.state==='open'&&new Date(r.expires_at).getTime()<=Date.now()?'expired':r.state,createdAt:new Date(r.created_at).toISOString(),expiresAt:new Date(r.expires_at).toISOString(),operationId:r.operation_id});
const select=`SELECT r.*,p.handle AS requester_username,t.handle AS payer_username FROM gb_wallet.ngn_payment_requests r
 LEFT JOIN talks.public_profiles p ON p.tenant_id=r.tenant_id AND p.user_id=r.requester_id
 LEFT JOIN talks.public_profiles t ON t.tenant_id=r.tenant_id AND t.user_id=r.payer_id`;
export function createPostgresNgnRequestRepository(pool:Pool){
 const close=async(a:NgnRequestActor,requestId:string,target:'declined'|'cancelled')=>{
  actor(a);if(!validId(requestId)||!requestId.startsWith('ngnreq_'))throw new NgnRequestStoreError(422,'invalid_request');
  return withTransaction(pool,async c=>{
   const found=await c.query<Row>(`SELECT *,NULL::text AS requester_username,NULL::text AS payer_username FROM gb_wallet.ngn_payment_requests WHERE tenant_id=$1 AND request_id=$2 FOR UPDATE`,[a.tenantId,requestId]);
   const r=found.rows[0];if(!r||(target==='cancelled'?r.requester_id:r.payer_id)!==a.userId)throw new NgnRequestStoreError(404,'request_not_found');
   if(r.state===target)return project(r);
   if(r.state!=='open')throw new NgnRequestStoreError(409,'request_already_closed');
   if(new Date(r.expires_at).getTime()<=Date.now())throw new NgnRequestStoreError(410,'request_expired');
   await c.query('UPDATE gb_wallet.ngn_payment_requests SET state=$3 WHERE tenant_id=$1 AND request_id=$2',[a.tenantId,requestId,target]);
   return project({...r,state:target});
  });
 };
 return {
 async create(a:NgnRequestActor,input:{payerId:string;amountKobo:number;idempotencyKey:string}):Promise<NgnPaymentRequest>{
  actor(a);amount(input.amountKobo);if(!validId(input.payerId)||input.payerId===a.userId||!validKey(input.idempotencyKey))throw new NgnRequestStoreError(422,'invalid_request');
  const fingerprint=digest(['NGN',a.userId,input.payerId,input.amountKobo]);
  return retry(()=>withTransaction(pool,async c=>{
   const prior=await c.query<Row>(select+' WHERE r.tenant_id=$1 AND r.requester_id=$2 AND r.idempotency_key=$3',[a.tenantId,a.userId,input.idempotencyKey]);
   if(prior.rows[0]){if(prior.rows[0].request_sha256!==fingerprint)throw new NgnRequestStoreError(409,'request_idempotency_conflict');return project(prior.rows[0]);}
   if(!await partiesEligible(c,a.tenantId,a.userId,input.payerId))throw new NgnRequestStoreError(404,'recipient_unavailable');
   const requestId='ngnreq_'+randomBytes(18).toString('base64url');
   await c.query(`INSERT INTO gb_wallet.ngn_payment_requests(tenant_id,request_id,requester_id,payer_id,amount_kobo,idempotency_key,request_sha256)
    VALUES($1,$2,$3,$4,$5,$6,$7) ON CONFLICT(tenant_id,requester_id,idempotency_key) DO NOTHING`,[a.tenantId,requestId,a.userId,input.payerId,input.amountKobo,input.idempotencyKey,fingerprint]);
   const result=await c.query<Row>(select+' WHERE r.tenant_id=$1 AND r.requester_id=$2 AND r.idempotency_key=$3',[a.tenantId,a.userId,input.idempotencyKey]);
   const row=result.rows[0];if(!row||row.request_sha256!==fingerprint)throw new NgnRequestStoreError(409,'request_idempotency_conflict');return project(row);
  },{isolation:'serializable'}));
 },
 async get(a:NgnRequestActor,requestId:string):Promise<NgnPaymentRequest|null>{actor(a);if(!validId(requestId)||!requestId.startsWith('ngnreq_'))return null;const result=await pool.query<Row>(select+' WHERE r.tenant_id=$1 AND r.request_id=$2 AND (r.requester_id=$3 OR r.payer_id=$3)',[a.tenantId,requestId,a.userId]);return result.rows[0]?project(result.rows[0]):null;},
 async list(a:NgnRequestActor):Promise<readonly NgnPaymentRequest[]>{actor(a);const r=await pool.query<Row>(select+' WHERE r.tenant_id=$1 AND (r.requester_id=$2 OR r.payer_id=$2) ORDER BY r.created_at DESC,r.request_id DESC LIMIT 75',[a.tenantId,a.userId]);return r.rows.map(project);},
 async pay(a:NgnRequestActor,requestId:string):Promise<NgnTransferReceipt>{
  actor(a);if(!validId(requestId)||!requestId.startsWith('ngnreq_'))throw new NgnRequestStoreError(422,'invalid_request');
  try{return await retry(()=>withTransaction(pool,async c=>{
   const found=await c.query<Row>('SELECT *,NULL::text AS requester_username,NULL::text AS payer_username FROM gb_wallet.ngn_payment_requests WHERE tenant_id=$1 AND request_id=$2 FOR UPDATE',[a.tenantId,requestId]);
   const r=found.rows[0];if(!r||r.payer_id!==a.userId)throw new NgnRequestStoreError(404,'request_not_found');
   const operationId='ngnpay_'+requestId;
   if(r.state==='paid'){
    if(r.operation_id!==operationId)throw new NgnRequestStoreError(503,'request_receipt_unavailable');
    const old=await createNgnSpending(pool,c).read(a.tenantId,operationId,a.userId);if(!old)throw new NgnRequestStoreError(503,'request_receipt_unavailable');return transferReceipt(old);
   }
   if(r.state!=='open')throw new NgnRequestStoreError(409,'request_already_closed');
   if(new Date(r.expires_at).getTime()<=Date.now())throw new NgnRequestStoreError(410,'request_expired');
   const receipt=await transferInside(pool,c,{...a,recipientId:r.requester_id,operationId,idempotencyKey:operationId,amountKobo:amount(Number(r.amount_kobo))},'request_pay');
   await c.query("UPDATE gb_wallet.ngn_payment_requests SET state='paid',paid_at=clock_timestamp(),operation_id=$3 WHERE tenant_id=$1 AND request_id=$2",[a.tenantId,requestId,operationId]);return receipt;
  },{isolation:'serializable'}));}catch(e){
   if(e instanceof Error&&e.message==='ngn.insufficient_balance')throw new NgnRequestStoreError(409,'insufficient_balance');
   if(e instanceof Error&&['ngn.account_frozen','ngn.parties_unavailable'].includes(e.message))throw new NgnRequestStoreError(409,'wallet_unavailable');throw e;
  }
 },
 cancel:(a:NgnRequestActor,id:string)=>close(a,id,'cancelled'),
 decline:(a:NgnRequestActor,id:string)=>close(a,id,'declined'),
 };
}
