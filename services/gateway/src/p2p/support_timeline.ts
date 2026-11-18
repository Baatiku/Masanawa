import {createHash} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool} from './service.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
const publicActions=['reserve','buyer_claimed_payment','dispute_opened','escrow_released','cancelled','expired','late_payment_reported','late_payment_escalated','late_payment_closed','evidence_recorded'];
/** Participant-safe summaries only. Cursor timestamps preserve PostgreSQL microseconds. */
export async function supportTimeline(pool:P2pPool,actor:P2pActor,orderId:string,cursor?:string){
 if(!uuid.test(orderId))throw new P2pError('p2p.invalid_id',422);
 const scope=createHash('sha256').update(JSON.stringify(['p2p-support-timeline-v1',actor.tenantId,actor.userId,orderId,50])).digest('hex');
 let time:string|null=null,eventId:string|null=null;
 if(cursor!==undefined){try{
  if(typeof cursor!=='string'||cursor.length>1024)throw Error();
  const v=JSON.parse(Buffer.from(cursor,'base64url').toString('utf8'));
  if(Object.keys(v).sort().join(',')!=='id,scope,time'||v.scope!==scope||typeof v.id!=='string'||!uuid.test(v.id)||typeof v.time!=='string'||!/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{6}Z$/.test(v.time)||!Number.isFinite(Date.parse(v.time))||new Date(v.time).toISOString().slice(0,19)!==v.time.slice(0,19))throw Error();
  time=v.time;eventId=v.id;
 }catch{throw new P2pError('p2p.invalid_cursor',422);}}
 const member=await pool.query(`SELECT seller_id,buyer_id FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2 AND(seller_id=$3 OR buyer_id=$3)`,[actor.tenantId,orderId,actor.userId]);
 const order=member.rows[0];if(!order)throw new P2pError('p2p.not_found',404);
 const result=await pool.query(`SELECT event_id,action,to_state,created_at,
  to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS cursor_time,
  CASE WHEN actor_id=$3 THEN 'you' WHEN actor_id IN($4,$5) THEN 'counterparty' ELSE 'support' END AS actor_role
  FROM commerce.msnw_p2p_events WHERE tenant_id=$1 AND order_id=$2 AND action=ANY($6::text[])
   AND($7::timestamptz IS NULL OR(created_at,event_id)<($7::timestamptz,$8::uuid))
  ORDER BY created_at DESC,event_id DESC LIMIT 51`,[actor.tenantId,orderId,actor.userId,order.seller_id,order.buyer_id,publicActions,time,eventId]);
 const rows=result.rows.slice(0,50),last=rows.at(-1);
 const nextCursor=result.rows.length>50&&last?Buffer.from(JSON.stringify({scope,time:last.cursor_time,id:last.event_id})).toString('base64url'):null;
 return{events:rows.map(({cursor_time,...row})=>row).reverse(),nextCursor,timelineLimit:50};
}
