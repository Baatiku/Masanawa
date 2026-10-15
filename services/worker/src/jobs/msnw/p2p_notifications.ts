import { parseCanonicalId } from "@masanawa/contracts";
import { claimOutboxBatch,settleOutboxClaim,withTransaction,type Pool } from "@masanawa/postgres";
import type { MobilePushSender } from "@masanawa/mobile-push";

const destination="notifications.p2p";
type Stats={claimed:number;acknowledged:number;delivered:number;retried:number;deadLetter:number};
function decode(payload:unknown){
  if(!payload||typeof payload!=="object"||Array.isArray(payload))
    throw new TypeError("invalid_p2p_notice");
  const p=payload as Record<string,unknown>;
  if(typeof p.userId!=="string"||typeof p.orderId!=="string"||
    typeof p.state!=="string"||typeof p.sourceEventId!=="string"||
    !/^[0-9a-f-]{36}$/i.test(p.orderId)||
    !/^[0-9a-f-]{36}$/i.test(p.sourceEventId))
    throw new TypeError("invalid_p2p_notice");
  try { parseCanonicalId("user",p.userId); }
  catch { throw new TypeError("invalid_p2p_notice"); }
  return {userId:p.userId,orderId:p.orderId};
}

/** P2P notifications are independent of the custody money movement.
 * Retries use existing events.outbox lease fencing and do NOT replay ledger
 * state transitions. A stable eventId enables clients to deduplicate FCM.
 */
export function createP2pNoticeRuntime(input:Readonly<{
  pool:Pool;sender:MobilePushSender;workerId:string;
}>) {
  if(!input.workerId.trim()||input.workerId.length>128)
    throw new TypeError("p2p_notice_worker_id_invalid");
  return Object.freeze({
    async runOnce():Promise<Stats>{
      const claims=await claimOutboxBatch(input.pool,{
        workerId:input.workerId,destination,limit:10,leaseMs:300000,
      });
      const stats:Stats={claimed:claims.length,acknowledged:0,delivered:0,retried:0,deadLetter:0};
      for(const event of claims) {
        let state:"acknowledged"|"retry-scheduled"|"dead-letter"="acknowledged";
        let safeErrorCode:string|undefined;
        try {
          if(event.eventType!=="p2p.order.transition")
            throw new TypeError("invalid_p2p_notice");
          const p=decode(event.payload);
          // No cross-tenant disclosure. A disabled or unrelated account never
          // receives push; in-app historical entries remain for later audit.
          const check=await input.pool.query<{allowed:boolean}>(`
            SELECT EXISTS (
              SELECT 1 FROM commerce.msnw_p2p_orders o
              JOIN identity.users u ON u.tenant_id=o.tenant_id AND u.user_id=$3
              WHERE o.tenant_id=$1 AND o.order_id=$2
                AND (o.seller_id=$3 OR o.buyer_id=$3)
                AND u.state='active'
            ) AS allowed`,[event.tenantId,p.orderId,p.userId]);
          if(check.rows[0]?.allowed===true) {
            const sent=await input.sender.send({
              scope:{tenantId:event.tenantId,userId:parseCanonicalId("user",p.userId)},
              title:"MSNW P2P order update",
              body:"Open Wallet to review your current order status.",
              data:{type:"p2p_order",orderId:p.orderId,eventId:event.outboxEventId,
                deepLink:"masanawa://wallet"},
            });
            stats.delivered+=sent.delivered;
            if(sent.attempted>0&&sent.delivered<sent.attempted)
              throw new Error("p2p_push_partial_delivery");
          }
        } catch(error) {
          const invalid=error instanceof TypeError&&error.message==="invalid_p2p_notice";
          safeErrorCode=invalid?"invalid_p2p_notice":"p2p_notice_failed";
          state=invalid||event.attempt>=8?"dead-letter":"retry-scheduled";
        }
        await withTransaction(input.pool,client=>settleOutboxClaim(client,{
          outboxEventId:event.outboxEventId,workerId:input.workerId,
          fence:event.fence,state,
          ...(safeErrorCode?{safeErrorCode}:{}),
          ...(state==="retry-scheduled"?{
            availableAt:new Date(Date.now()+Math.min(3600000,30000*2**Math.min(event.attempt,7)))
              .toISOString() as NonNullable<Parameters<typeof settleOutboxClaim>[1]["availableAt"]>,
          }:{}),
        }));
        if(state==="acknowledged")stats.acknowledged++;
        else if(state==="retry-scheduled")stats.retried++;
        else stats.deadLetter++;
      }
      return stats;
    },
  });
}
