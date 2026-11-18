import {createHash,randomUUID} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool,type P2pQuery} from './service.js';
import {disputeInput} from './dispute_context.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
export function createSupportRequests(pool:P2pPool){
 async function transaction<T>(fn:(tx:P2pQuery)=>Promise<T>){const tx=await pool.connect();try{await tx.query('BEGIN');const result=await fn(tx);await tx.query('COMMIT');return result;}catch(e){await tx.query('ROLLBACK').catch(()=>undefined);throw e;}finally{tx.release();}}
 async function order(tx:P2pQuery,actor:P2pActor,orderId:string,staff:boolean,lock=false){
  if(!uuid.test(orderId))throw new P2pError('p2p.invalid_id',422);
  const row=(await tx.query(`SELECT order_id,state,buyer_id,seller_id FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2 AND($3::boolean OR seller_id=$4 OR buyer_id=$4) ${lock?'FOR UPDATE':''}`,[actor.tenantId,orderId,staff,actor.userId])).rows[0];
  if(!row)throw new P2pError('p2p.not_found',404);return row;
 }
 return{
  async supportRequests(actor:P2pActor,orderId:string,staff=false){
   const o=await order(pool,actor,orderId,staff);
   const rows=await pool.query(`SELECT r.request_id,r.instruction,r.window_hours,r.created_at,r.due_at,r.requested_by=$5 AS is_own,
    CASE WHEN r.target_id=$4 THEN 'buyer' ELSE 'seller' END AS recipient_role,
    (r.due_at<statement_timestamp() AND s.response_id IS NULL) AS overdue,
    s.response_id,s.details AS response_details,s.created_at AS responded_at,(s.created_at>r.due_at) AS responded_late
    FROM commerce.msnw_p2p_support_requests r LEFT JOIN commerce.msnw_p2p_support_responses s ON s.tenant_id=r.tenant_id AND s.order_id=r.order_id AND s.request_id=r.request_id
    WHERE r.tenant_id=$1 AND r.order_id=$2 AND($3::boolean OR r.target_id=$5) ORDER BY r.created_at DESC,r.request_id DESC LIMIT 20`,[actor.tenantId,orderId,staff,o.buyer_id,actor.userId]);
   return{orderId,state:o.state,items:rows.rows,deadlineIsInformational:true};
  },
  async requestSupportEvidence(actor:P2pActor,orderId:string,input:{recipient:unknown;instruction:unknown;windowHours:unknown}){
   if(typeof input.recipient!=='string'||!['buyer','seller'].includes(input.recipient)||![24,48,72].includes(input.windowHours as number))throw new P2pError('p2p.invalid_support_request',422);
   const instruction=disputeInput('other',input.instruction).details;
   const identity=createHash('sha256').update(JSON.stringify([input.recipient,instruction,input.windowHours])).digest('hex');
   return transaction(async tx=>{
    const o=await order(tx,actor,orderId,true,true);
    const existing=(await tx.query(`SELECT request_id FROM commerce.msnw_p2p_support_requests WHERE tenant_id=$1 AND order_id=$2 AND requested_by=$3 AND identity_sha256=$4`,[actor.tenantId,orderId,actor.userId,identity])).rows[0];
    if(existing)return{requestId:existing.request_id,replay:true};
    if(o.state!=='disputed')throw new P2pError('p2p.support_request_closed',409);
    const target=input.recipient==='buyer'?o.buyer_id:o.seller_id;
    const count=(await tx.query(`SELECT count(*)::int AS total,count(*) FILTER(WHERE target_id=$3 AND NOT EXISTS(SELECT 1 FROM commerce.msnw_p2p_support_responses s WHERE s.tenant_id=r.tenant_id AND s.order_id=r.order_id AND s.request_id=r.request_id))::int AS pending FROM commerce.msnw_p2p_support_requests r WHERE tenant_id=$1 AND order_id=$2`,[actor.tenantId,orderId,target])).rows[0]!;
    if(Number(count.total)>=20)throw new P2pError('p2p.support_request_limit',429);
    if(Number(count.pending)>0)throw new P2pError('p2p.support_response_pending',409);
    const requestId=randomUUID();
    await tx.query(`INSERT INTO commerce.msnw_p2p_support_requests(request_id,tenant_id,order_id,requested_by,target_id,instruction,identity_sha256,window_hours,due_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8,statement_timestamp()+($8::integer*interval '1 hour'))`,[requestId,actor.tenantId,orderId,actor.userId,target,instruction,identity,input.windowHours]);
    return{requestId,replay:false};
   });
  },
  async respondSupportEvidence(actor:P2pActor,orderId:string,requestId:string,raw:unknown){
   if(!uuid.test(requestId))throw new P2pError('p2p.invalid_id',422);const details=disputeInput('other',raw).details;
   return transaction(async tx=>{
    const o=await order(tx,actor,orderId,false,true);
    const request=(await tx.query(`SELECT request_id FROM commerce.msnw_p2p_support_requests WHERE tenant_id=$1 AND order_id=$2 AND request_id=$3 AND target_id=$4`,[actor.tenantId,orderId,requestId,actor.userId])).rows[0];
    if(!request)throw new P2pError('p2p.not_found',404);
    const original=(await tx.query(`SELECT response_id FROM commerce.msnw_p2p_support_responses WHERE tenant_id=$1 AND order_id=$2 AND request_id=$3`,[actor.tenantId,orderId,requestId])).rows[0];
    if(original)return{responseId:original.response_id,replay:true};
    if(o.state!=='disputed')throw new P2pError('p2p.support_request_closed',409);
    // A late response is retained for human review, never an escrow decision.
    const responseId=randomUUID();await tx.query(`INSERT INTO commerce.msnw_p2p_support_responses(response_id,tenant_id,order_id,request_id,responded_by,details) VALUES($1,$2,$3,$4,$5,$6)`,[responseId,actor.tenantId,orderId,requestId,actor.userId,details]);return{responseId,replay:false};
   });
  },
 };
}
