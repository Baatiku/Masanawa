import {parseCanonicalId} from "@masanawa/contracts";
import {
  claimOutboxBatch,settleOutboxClaim,withTransaction,type Pool,
} from "@masanawa/postgres";
import type {MobilePushSender} from "@masanawa/mobile-push";

const destination="notifications.rooms";
type Stats={claimed:number;acknowledged:number;delivered:number;retried:number;deadLetter:number};
const payload=(raw:unknown,type:string):{userId:string;roomId:string;questionId?:string;postId?:string}=>{
 if(!raw||typeof raw!=="object"||Array.isArray(raw))throw new TypeError("invalid_room_notice");
 const p=raw as Record<string,unknown>;
 if(typeof p.userId!=="string"||typeof p.roomId!=="string"||!/^room_[A-Za-z0-9_-]{3,100}$/u.test(p.roomId))throw new TypeError("invalid_room_notice");
 try{parseCanonicalId("user",p.userId);}catch{throw new TypeError("invalid_room_notice");}
 if(type==="rooms.answer.approved"){
  if(typeof p.questionId!=="string"||!/^room-question_[A-Za-z0-9_-]{8,120}$/u.test(p.questionId))throw new TypeError("invalid_room_notice");
  return {userId:p.userId,roomId:p.roomId,questionId:p.questionId};
 }
 if(type==="rooms.post.created"){
  if(typeof p.postId!=="string"||!/^[-_A-Za-z0-9]{8,160}$/u.test(p.postId))throw new TypeError("invalid_room_notice");
  return {userId:p.userId,roomId:p.roomId,postId:p.postId};
 }
 if(type!=="rooms.member.invited")throw new TypeError("invalid_room_notice");
 return {userId:p.userId,roomId:p.roomId};
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
       const p=payload(event.payload,event.eventType);
       // Live access is revalidated at delivery time. Never notify accounts
       // that are disabled, have left the Room, or lost a paid entitlement.
       const auth=event.eventType==="rooms.answer.approved" ? await input.pool.query<{allowed:boolean}>(`
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
             AND q.user_id=$4 AND q.state='answered' AND r.state='published' AND NOT m.muted
             AND (r.plan_mode='free' OR (r.plan_mode='paid' AND EXISTS (
               SELECT 1 FROM rooms.entitlements e
               WHERE e.tenant_id=q.tenant_id AND e.room_id=q.room_id
                 AND e.user_id=q.user_id AND e.state IN ('active','grace')
                 AND e.period_end>now()
             )))
         ) AS allowed`,
         [event.tenantId,p.roomId,p.questionId,p.userId]) : event.eventType==="rooms.post.created" ? await input.pool.query<{allowed:boolean}>(`
           SELECT EXISTS (SELECT 1 FROM rooms.rooms r
             JOIN rooms.memberships m ON m.tenant_id=r.tenant_id AND m.room_id=r.room_id
             JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id
             JOIN rooms.lessons l ON l.tenant_id=r.tenant_id AND l.room_id=r.room_id
             WHERE r.tenant_id=$1 AND r.room_id=$2 AND l.lesson_id=$3 AND m.user_id=$4
               AND r.state='published' AND l.state='published' AND m.state='active' AND NOT m.muted AND u.state='active'
               AND (r.plan_mode='free' OR EXISTS(SELECT 1 FROM rooms.entitlements e WHERE e.tenant_id=r.tenant_id AND e.room_id=r.room_id AND e.user_id=m.user_id AND e.state IN ('active','grace') AND e.period_end>now()))
           ) AS allowed`,[event.tenantId,p.roomId,p.postId,p.userId]) : await input.pool.query<{allowed:boolean}>(`
           SELECT EXISTS (SELECT 1 FROM rooms.membership_invites i
             JOIN rooms.rooms r ON r.tenant_id=i.tenant_id AND r.room_id=i.room_id
             JOIN identity.users u ON u.tenant_id=i.tenant_id AND u.user_id=i.recipient_user_id
             WHERE i.tenant_id=$1 AND i.room_id=$2 AND i.recipient_user_id=$3
               AND i.revoked_at IS NULL AND i.accepted_at IS NULL AND i.expires_at>now()
               AND r.state='published' AND u.state='active'
               AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=i.tenant_id AND b.blocked AND ((b.viewer_user_id=i.created_by AND b.subject_user_id=i.recipient_user_id) OR (b.viewer_user_id=i.recipient_user_id AND b.subject_user_id=i.created_by)))
           ) AS allowed`,[event.tenantId,p.roomId,p.userId]);
       if(auth.rows[0]?.allowed===true){
         const sent=await input.sender.send({
           scope:{tenantId:event.tenantId,userId:parseCanonicalId("user",p.userId)},
           title:p.questionId?"Your Masana replied":p.postId?"New Room post":"Room invitation",
           body:p.questionId?"Open the Room to hear your teacher's answer.":p.postId?"Open the Room to view the post.":"Open Rooms to review your invitation.",
           data:{
             type:p.questionId?"room_reply":p.postId?"room_post":"room_invite",roomId:p.roomId,
             ...(p.questionId?{questionId:p.questionId}:{}),...(p.postId?{postId:p.postId}:{}),
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
