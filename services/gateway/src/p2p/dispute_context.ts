import {supportTimeline} from './support_timeline.js';
import {randomUUID} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool,type P2pQuery} from './service.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
export function disputeInput(category:unknown,details:unknown){
 if(typeof category!=='string'||!['no_payment','asset_not_received','wrong_amount','wrong_recipient','abuse','other'].includes(category))throw new P2pError('p2p.invalid_dispute_category',422);
 if(typeof details!=='string')throw new P2pError('p2p.reason_required',422);
 const text=details.trim();if([...text].length<10||[...text].length>2000||/[\u0000-\u0008\u000b\u000c\u000e-\u001f\u007f\u202a-\u202e\u2066-\u2069]/.test(text))throw new P2pError('p2p.reason_required',422);
 return{category,details:text};
}
export async function originalDispute(tx:P2pQuery,actor:P2pActor,orderId:string){
 const rows=await tx.query(`SELECT submission_id,order_id,category,created_at FROM commerce.msnw_p2p_dispute_submissions WHERE tenant_id=$1 AND order_id=$2 AND opened_by=$3`,[actor.tenantId,orderId,actor.userId]);return rows.rows[0];
}
export async function recordDispute(tx:P2pQuery,actor:P2pActor,orderId:string,input:ReturnType<typeof disputeInput>){
 const rows=await tx.query(`INSERT INTO commerce.msnw_p2p_dispute_submissions(submission_id,tenant_id,order_id,opened_by,category,details) VALUES($1,$2,$3,$4,$5,$6) RETURNING submission_id,order_id,category,created_at`,[randomUUID(),actor.tenantId,orderId,actor.userId,input.category,input.details]);return rows.rows[0]!;
}
export function createDisputeContext(pool:P2pPool){return{
 async orderSupport(actor:P2pActor,orderId:string){
  if(!uuid.test(orderId))throw new P2pError('p2p.invalid_id',422);
  const result=await pool.query(`SELECT order_id,state,version,seller_id,buyer_id FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2 AND(seller_id=$3 OR buyer_id=$3)`,[actor.tenantId,orderId,actor.userId]);
  const order=result.rows[0];if(!order)throw new P2pError('p2p.not_found',404);
  const report=await pool.query(`SELECT submission_id,category,created_at,opened_by=$3 AS is_own,CASE WHEN opened_by=$3 THEN details ELSE NULL END AS details FROM commerce.msnw_p2p_dispute_submissions WHERE tenant_id=$1 AND order_id=$2`,[actor.tenantId,orderId,actor.userId]);
  // Only public transition summaries; original explanations, operator notes,
  // bank records and raw actor IDs never enter the shared timeline.
  const timeline=await supportTimeline(pool,actor,orderId);
  return{orderId,state:order.state,version:order.version,canOpenDispute:['awaiting_payment','payment_claimed','release_pending'].includes(String(order.state)),submission:report.rows[0]??null,...timeline};
 },
};}
