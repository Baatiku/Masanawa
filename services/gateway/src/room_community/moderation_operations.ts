import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
function invalid():never{throw Object.assign(new Error('invalid_moderation_operation'),{statusCode:422});}
export async function moderationOperation(q:Pick<PoolClient,'query'>,a:RoomCommunityActor,roomId:string,input:Row){
 const {action,requestId,targetId}=input;
 if(!['report-review','appeal','appeal-review'].includes(action)||typeof requestId!=='string'||!requestId.trim()||requestId.length>160||typeof targetId!=='string'||!targetId.trim()||targetId.length>160)invalid();
 const params=[a.tenantId,roomId,a.userId,requestId,targetId];
 if(action==='report-review'){
  const kind=input.targetKind;if(!['post','reply'].includes(kind))invalid();
  const row=(await q.query(`SELECT review_id,target_id,target_kind,decision,report_count FROM rooms.report_reviews
   WHERE tenant_id=$1 AND room_id=$2 AND reviewer_user_id=$3 AND request_id=$4 AND target_id=$5 AND target_kind=$6`,[...params,kind])).rows[0];
  return {operationVersion:1,item:row?{action,reviewId:row.review_id,targetId:row.target_id,targetKind:row.target_kind,decision:row.decision,reportCount:Number(row.report_count)}:null};
 }
 const row=(await q.query(`SELECT appeal_id,review_id,state,public_reason FROM rooms.moderation_appeals
  WHERE tenant_id=$1 AND room_id=$2 AND ${action==='appeal'?'author_user_id=$3 AND request_id=$4 AND review_id=$5':'decided_by_user_id=$3 AND decision_request_id=$4 AND appeal_id=$5'}`,params)).rows[0];
 return {operationVersion:1,item:row?{action,appealId:row.appeal_id,reviewId:row.review_id,status:row.state,publicReason:row.public_reason}:null};
}
