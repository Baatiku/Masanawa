import {parseCanonicalId} from "@masanawa/contracts";
import {
  claimOutboxBatch,settleOutboxClaim,withTransaction,type Pool,
} from "@masanawa/postgres";
import type {MobilePushSender} from "@masanawa/mobile-push";

const destination="notifications.rooms";
type Stats={claimed:number;acknowledged:number;delivered:number;retried:number;deadLetter:number};
const payload=(raw:unknown):{userId:string;roomId:string;questionId:string}=>{
  if(!raw||typeof raw!=="object"||Array.isArray(raw))
    throw new TypeError("invalid_room_notice");
  const p=raw as Record<string,unknown>;
  if(typeof p.userId!=="string"||typeof p.roomId!=="string"||
     typeof p.questionId!=="string"||
     !/^room_[A-Za-z0-9_-]{3,100}$/u.test(p.roomId)||
     !/^room-question_[A-Za-z0-9_-]{8,120}$/u.test(p.questionId))
    throw new TypeError("invalid_room_notice");
  parseCanonicalId("user",p.userId);
  return {userId:p.userId,roomId:p.roomId,questionId:p.questionId};
};

/** Consume only canonical rooms.answer.approved outbox events. FCM can be
 * delivered at least once if an acknowledgement fails after send; clients
 * can deduplicate on the stable outboxEventId carried in the data payload.
 * A claim cannot authorize an unrelated customer or a revoked Room. */
export function createRoomReplyNoticeRuntime(input:{
 readonly pool:Pool;
 readonly sender:MobilePushSender;
 readonly workerId:string;
}){
 if(!input.workerId.trim()||input.workerId.length>128)
   throw new TypeError("room_notification_worker_id_invalid");
 return Object.freeze({
  async runOnce():Promise<Stats>{
   const claims=await claimOutboxBatch(input.pool,{
     workerId:input.workerId,destination,limit:10,leaseMs:300000,
   });
   const stats:Stats={claimed:claims.length,acknowledged:0,delivered:0,retried:0,deadLetter:0};
   for(const event of claims){
     let state:"acknowledged"|"retry-scheduled"|"dead-letter"="acknowledged";
     let safeErrorCode:string|undefined;
     try{
       if(event.eventType!=="rooms.answer.approved")
         throw new TypeError("invalid_room_notice");
       const p=payload(event.payload);
       // Live access is revalidated at delivery time. Never notify accounts
       // that are disabled, have left the Room, or lost a paid entitlement.
       const auth=await input.pool.query<{allowed:boolean}>(`
         SELECT EXISTS (
           SELECT 1 FROM rooms.questions q
             JOIN rooms.answers a ON a.tenant_id=q.tenant_id
               AND a.question_id=q.question_id AND a.state='approved'
             JOIN rooms.rooms r ON r.tenant_id=q.tenant_id AND r.room_id=q.room_id
             JOIN rooms.memberships m ON m.tenant_id=q.tenant_id
               AND m.room_id=q.room_id AND m.user_id=q.user_id AND m.state='active'
             JOIN identity.users u ON u.tenant_id=q.tenant_id
               AND u.user_id=q.user_id AND u.state='active'
           WHERE q.tenant_id=$1 AND q.room_id=$2 AND q.question_id=$3
             AND q.user_id=$4 AND q.state='answered' AND r.state='published'
             AND (r.plan_mode='free' OR (r.plan_mode='paid' AND EXISTS (
               SELECT 1 FROM rooms.entitlements e
               WHERE e.tenant_id=q.tenant_id AND e.room_id=q.room_id
                 AND e.user_id=q.user_id AND e.state IN ('active','grace')
                 AND e.period_end>now()
             )))
         ) AS allowed`,
         [event.tenantId,p.roomId,p.questionId,p.userId]);
       if(auth.rows[0]?.allowed===true){
         const sent=await input.sender.send({
           scope:{tenantId:event.tenantId,userId:parseCanonicalId("user",p.userId)},
           title:"Your Masana replied",
           body:"Open the Room to hear your teacher's answer.",
           data:{
             type:"room_reply",roomId:p.roomId,questionId:p.questionId,
             eventId:event.outboxEventId,
           },
         });
         stats.delivered+=sent.delivered;
         // No registered devices is a valid terminal result. Partial delivery
         // must retry; the client uses eventId to deduplicate repeated pushes.
         if(sent.attempted>0&&sent.delivered<sent.attempted)
           throw new Error("push_partial_delivery");
       }
     }catch(error){
       const invalid=error instanceof TypeError &&
         error.message==="invalid_room_notice";
       safeErrorCode=invalid?"invalid_room_notice":"room_notification_failed";
       state=invalid||event.attempt>=8?"dead-letter":"retry-scheduled";
     }
     await withTransaction(input.pool,client=>settleOutboxClaim(client,{
       outboxEventId:event.outboxEventId,workerId:input.workerId,fence:event.fence,state,
       ...(safeErrorCode?{safeErrorCode}:{}),
       ...(state==="retry-scheduled"?
         {availableAt:new Date(Date.now()+Math.min(3_600_000,30_000*2**Math.min(event.attempt,7)))
           .toISOString() as NonNullable<Parameters<typeof settleOutboxClaim>[1]["availableAt"]>}
         :{}),
     }));
     if(state==="acknowledged")stats.acknowledged++;
     else if(state==="retry-scheduled")stats.retried++;
     else stats.deadLetter++;
   }
   return stats;
  },
 });
}
