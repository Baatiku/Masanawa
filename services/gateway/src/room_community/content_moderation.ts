import {createHash,randomUUID} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
type Sql=Pick<PoolClient,'query'>;
function fail(statusCode:number,message:string):never{throw Object.assign(new Error(message),{statusCode});}
function text(value:unknown,max=160){if(typeof value!=='string'||!value.trim()||value.length>max)fail(422,'invalid_moderation_input');return value.trim();}
const iso=(v:any)=>v?new Date(v).toISOString():null;

// All calls run inside the caller's transaction and canonical Room row lock.
export async function roomContentModeration(q:Sql,a:RoomCommunityActor,room:Row,method:string,parts:string[],input:Row,requireManager:()=>Promise<unknown>){
 const roomId=room.room_id,resource=parts[2],kind=resource==='reply-reports'?'reply':'post';
 const params=[a.tenantId,roomId];
 const pending=`NOT EXISTS(SELECT 1 FROM rooms.report_reviews v WHERE v.tenant_id=r.tenant_id AND v.room_id=r.room_id AND v.target_kind=r.target_kind AND v.target_id=r.target_id AND v.reviewed_at>=r.created_at)`;
 async function target(id:string,visible=true){
  const row=kind==='post'
   ?(await q.query('SELECT lesson_id AS id,author_user_id AS author,body,state,(publish_at IS NULL OR publish_at<=statement_timestamp()) AS due,moderation_revision FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 FOR UPDATE',[...params,id])).rows[0]
   :(await q.query(`SELECT d.reply_id AS id,d.user_id AS author,d.body,d.moderation_state AS state,d.moderation_revision,p.state AS parent_state,(p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AS due
     FROM rooms.discussion_replies d JOIN rooms.lessons p ON p.tenant_id=d.tenant_id AND p.room_id=d.room_id AND p.lesson_id=d.lesson_id
     WHERE d.tenant_id=$1 AND d.room_id=$2 AND d.reply_id=$3 FOR UPDATE OF d`,[...params,id])).rows[0];
  if(!row||(visible&&((kind==='post'?row.state!=='published':row.state!=='visible'||row.parent_state!=='published')||row.due!==true)))fail(404,kind==='reply'?'reply_not_found':'post_not_found');
  return row;
 }
 const reviewReceipt=(v:Row)=>({reviewed:true,decision:v.decision,reportCount:Number(v.report_count)});
 if(resource==='reports'||resource==='reply-reports'){
  if(method==='GET'&&parts[3]==='summary'){
   await requireManager();
   const sql=kind==='post'
    ? `SELECT p.lesson_id AS "postId",LEFT(p.body,180) AS excerpt,COUNT(DISTINCT r.user_id)::int AS "reportCount" FROM rooms.reports r JOIN rooms.lessons p ON p.tenant_id=r.tenant_id AND p.room_id=r.room_id AND p.lesson_id=r.target_id WHERE r.tenant_id=$1 AND r.room_id=$2 AND r.target_kind='post' AND p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AND ${pending} GROUP BY p.lesson_id,p.body,p.created_at ORDER BY COUNT(DISTINCT r.user_id) DESC,p.created_at DESC LIMIT 100`
    : `SELECT d.reply_id AS "replyId",p.lesson_id AS "postId",LEFT(d.body,180) AS excerpt,COUNT(DISTINCT r.user_id)::int AS "reportCount" FROM rooms.reports r JOIN rooms.discussion_replies d ON d.tenant_id=r.tenant_id AND d.room_id=r.room_id AND d.reply_id=r.target_id JOIN rooms.lessons p ON p.tenant_id=d.tenant_id AND p.room_id=d.room_id AND p.lesson_id=d.lesson_id WHERE r.tenant_id=$1 AND r.room_id=$2 AND r.target_kind='reply' AND d.moderation_state='visible' AND p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AND ${pending} GROUP BY d.reply_id,d.body,d.created_at,p.lesson_id ORDER BY COUNT(DISTINCT r.user_id) DESC,d.created_at DESC LIMIT 100`;
   return {items:(await q.query(sql,params)).rows};
  }
  if(method==='GET'&&parts[3]==='reviews'){
   await requireManager();
   const rows=(await q.query('SELECT target_id,decision,report_count,reviewed_at FROM rooms.report_reviews WHERE tenant_id=$1 AND room_id=$2 AND target_kind=$3 ORDER BY reviewed_at DESC,review_id DESC LIMIT 30',[...params,kind])).rows;
   return {items:rows.map(v=>({[kind==='post'?'postId':'replyId']:v.target_id,decision:v.decision,reportCount:Number(v.report_count),reviewedAt:iso(v.reviewed_at)}))};
  }
  if(method==='POST'&&parts[4]==='review'){
   await requireManager();
   const id=text(parts[3]),decision=text(input.decision,20),key=text(input.requestId);
   if(!['dismissed','removed'].includes(decision))fail(422,'invalid_report_decision');
   const reason=text(input.publicReason??(decision==='removed'?'Content removed by Room moderation.':'Reported concerns dismissed.'),2000);
   const old=(await q.query('SELECT * FROM rooms.report_reviews WHERE tenant_id=$1 AND room_id=$2 AND reviewer_user_id=$3 AND request_id=$4',[...params,a.userId,key])).rows[0];
   if(old){if(old.target_id!==id||old.target_kind!==kind||old.decision!==decision||(old.public_reason!==reason&&!(old.public_reason===null&&input.publicReason===undefined)))fail(409,'idempotency_conflict');return reviewReceipt(old);}
   const content=await target(id);
   const count=Number((await q.query(`SELECT COUNT(DISTINCT r.user_id)::int AS count FROM rooms.reports r WHERE tenant_id=$1 AND room_id=$2 AND target_id=$3 AND target_kind=$4 AND ${pending}`,[...params,id,kind])).rows[0]?.count??0);
   if(!count)fail(409,'no_pending_reports');
   const reviewId='room-review_'+randomUUID();let revision:number|null=null;
   if(decision==='removed'){
    if(kind==='post'){
     revision=(await q.query("UPDATE rooms.lessons SET state='retired',moderation_revision=moderation_revision+1,removed_by_review_id=$4 WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 RETURNING moderation_revision",[...params,id,reviewId])).rows[0].moderation_revision;
     // Only replies hidden by this removal are eligible for its later reversal.
     await q.query("UPDATE rooms.discussion_replies SET moderation_state='removed',moderation_revision=moderation_revision+1,removed_by_review_id=$4 WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND moderation_state='visible'",[...params,id,reviewId]);
    }else {
     revision=(await q.query("UPDATE rooms.discussion_replies SET moderation_state='removed',moderation_revision=moderation_revision+1,removed_by_review_id=$4 WHERE tenant_id=$1 AND room_id=$2 AND reply_id=$3 RETURNING moderation_revision",[...params,id,reviewId])).rows[0].moderation_revision;
     // Existing mention identity binds the reply and target agent. Suppress its
     // queued/completed derivative replies too; appeals never restart providers.
     const agents=(await q.query('SELECT DISTINCT target_character_id FROM rooms.questions WHERE tenant_id=$1 AND room_id=$2 AND target_character_id IS NOT NULL',params)).rows;
     const keys=agents.map(v=>'mention_'+createHash('sha256').update(id+v.target_character_id).digest('hex').slice(0,48));
     if(keys.length)await q.query("UPDATE rooms.questions SET state='rejected',updated_at=clock_timestamp() WHERE tenant_id=$1 AND room_id=$2 AND idempotency_key=ANY($3::text[])",[...params,keys]);
    }
   }
   await q.query(`INSERT INTO rooms.report_reviews(tenant_id,review_id,room_id,target_id,target_kind,target_author_user_id,target_revision,public_reason,reviewer_user_id,request_id,decision,report_count,reviewed_at)
    VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,clock_timestamp())`,[a.tenantId,reviewId,roomId,id,kind,content.author,revision,reason,a.userId,key,decision,count]);
   return {reviewed:true,decision,reportCount:count};
  }
  if(method==='POST'&&!parts[3]){
   const id=text(input.targetId??roomId),reason=text(input.reason,2000),key=text(input.requestId),reportKind=kind==='post'&&id===roomId?'room':kind;
   const old=(await q.query('SELECT * FROM rooms.reports WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3 AND request_id=$4',[...params,a.userId,key])).rows[0];
   if(old){if(old.target_id!==id||old.target_kind!==reportKind||old.reason!==reason)fail(409,'idempotency_conflict');return {reported:true};}
   if(reportKind!=='room')await target(id);
   const prior=(await q.query(`SELECT 1 FROM rooms.reports r WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3 AND target_id=$4 AND target_kind=$5 AND ${pending} LIMIT 1`,[...params,a.userId,id,reportKind])).rows;
   if(prior.length)return {reported:true};
   await q.query('INSERT INTO rooms.reports(tenant_id,report_id,room_id,user_id,target_id,target_kind,reason,request_id,created_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8,clock_timestamp())',[a.tenantId,'room-report_'+randomUUID(),roomId,a.userId,id,reportKind,reason,key]);
   return {reported:true};
  }
  fail(404,'not_found');
 }
 const appealView=(v:Row)=>({appealId:v.appeal_id,reviewId:v.review_id,status:v.state,createdAt:iso(v.created_at),decidedAt:iso(v.decided_at),publicReason:v.public_reason});
 if(resource==='moderation'&&parts[3]==='cases'){
  if(method==='GET'&&!parts[4]){
   const rows=(await q.query(`SELECT v.*,ap.appeal_id,ap.state AS appeal_state,ap.created_at AS appeal_created,ap.decided_at,ap.public_reason AS appeal_reason,
    CASE WHEN v.target_kind='post' THEN p.state='retired' AND p.moderation_revision=v.target_revision AND p.removed_by_review_id=v.review_id
      ELSE d.moderation_state='removed' AND d.moderation_revision=v.target_revision AND d.removed_by_review_id=v.review_id END AS current_removal
    FROM rooms.report_reviews v LEFT JOIN rooms.moderation_appeals ap ON ap.tenant_id=v.tenant_id AND ap.review_id=v.review_id AND ap.author_user_id=$3
    LEFT JOIN rooms.lessons p ON p.tenant_id=v.tenant_id AND p.room_id=v.room_id AND p.lesson_id=v.target_id AND v.target_kind='post'
    LEFT JOIN rooms.discussion_replies d ON d.tenant_id=v.tenant_id AND d.room_id=v.room_id AND d.reply_id=v.target_id AND v.target_kind='reply'
    WHERE v.tenant_id=$1 AND v.room_id=$2 AND v.target_author_user_id=$3 AND v.decision='removed'
    ORDER BY v.reviewed_at DESC,v.review_id DESC LIMIT 30`,[...params,a.userId])).rows;
   return {moderationVersion:1,items:rows.map(v=>({reviewId:v.review_id,targetId:v.target_id,targetKind:v.target_kind,reviewedAt:iso(v.reviewed_at),publicReason:v.public_reason,
    canAppeal:v.current_removal===true&&!v.appeal_id,appeal:v.appeal_id?{appealId:v.appeal_id,status:v.appeal_state,createdAt:iso(v.appeal_created),decidedAt:iso(v.decided_at),publicReason:v.appeal_reason}:null}))};
  }
  if(method==='POST'&&parts[5]==='appeal'){
   const reviewId=text(parts[4]),reason=text(input.reason,2000),key=text(input.requestId);
   const review=(await q.query("SELECT * FROM rooms.report_reviews WHERE tenant_id=$1 AND room_id=$2 AND review_id=$3 AND target_author_user_id=$4 AND decision='removed' AND target_revision IS NOT NULL",[...params,reviewId,a.userId])).rows[0];
   if(!review)fail(404,'moderation_case_not_found');
   const old=(await q.query('SELECT * FROM rooms.moderation_appeals WHERE tenant_id=$1 AND room_id=$2 AND author_user_id=$3 AND (review_id=$4 OR request_id=$5)',[...params,a.userId,reviewId,key])).rows;
   if(old.length){if(old.length!==1||old[0].review_id!==reviewId||old[0].reason!==reason)fail(409,'appeal_already_submitted');return {moderationVersion:1,appeal:appealView(old[0])};}
   const current=review.target_kind==='post'
    ?await q.query("SELECT 1 FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND state='retired' AND moderation_revision=$4 AND removed_by_review_id=$5",[...params,review.target_id,review.target_revision,reviewId])
    :await q.query("SELECT 1 FROM rooms.discussion_replies WHERE tenant_id=$1 AND room_id=$2 AND reply_id=$3 AND moderation_state='removed' AND moderation_revision=$4 AND removed_by_review_id=$5",[...params,review.target_id,review.target_revision,reviewId]);
   if(!current.rows.length)fail(409,'removal_changed');
   const row=(await q.query(`INSERT INTO rooms.moderation_appeals(tenant_id,room_id,appeal_id,review_id,author_user_id,request_id,reason) VALUES($1,$2,$3,$4,$5,$6,$7) RETURNING *`,[...params,'room-appeal_'+randomUUID(),reviewId,a.userId,key,reason])).rows[0];
   return {moderationVersion:1,appeal:appealView(row)};
  }
 }
 if(resource==='moderation'&&parts[3]==='appeals'){
  await requireManager();
  if(method==='GET'&&!parts[4]){
   const rows=(await q.query(`SELECT ap.*,v.target_id,v.target_kind,v.public_reason AS removal_reason FROM rooms.moderation_appeals ap JOIN rooms.report_reviews v ON v.tenant_id=ap.tenant_id AND v.review_id=ap.review_id
    WHERE ap.tenant_id=$1 AND ap.room_id=$2 ORDER BY (ap.state='pending') DESC,ap.created_at DESC,ap.appeal_id DESC LIMIT 30`,params)).rows;
   return {moderationVersion:1,items:rows.map(v=>({...appealView(v),targetId:v.target_id,targetKind:v.target_kind,reason:v.reason,removalReason:v.removal_reason,canReview:v.state==='pending'&&v.author_user_id!==a.userId}))};
  }
  if(method==='POST'&&parts[5]==='review'){
   const id=text(parts[4]),decision=text(input.decision,20),reason=text(input.publicReason,2000),key=text(input.requestId);
   if(!['upheld','restored'].includes(decision))fail(422,'invalid_appeal_decision');
   const oldKey=(await q.query('SELECT appeal_id FROM rooms.moderation_appeals WHERE tenant_id=$1 AND room_id=$2 AND decided_by_user_id=$3 AND decision_request_id=$4',[...params,a.userId,key])).rows[0];
   if(oldKey&&oldKey.appeal_id!==id)fail(409,'idempotency_conflict');
   const appeal=(await q.query('SELECT * FROM rooms.moderation_appeals WHERE tenant_id=$1 AND room_id=$2 AND appeal_id=$3',[...params,id])).rows[0];
   if(!appeal)fail(404,'appeal_not_found');
   if(appeal.author_user_id===a.userId)fail(403,'independent_reviewer_required');
   if(appeal.state!=='pending'){
    if(appeal.state===decision&&appeal.public_reason===reason&&appeal.decided_by_user_id===a.userId&&appeal.decision_request_id===key)return {moderationVersion:1,appeal:appealView(appeal)};
    fail(409,'appeal_already_reviewed');
   }
   const review=(await q.query('SELECT * FROM rooms.report_reviews WHERE tenant_id=$1 AND room_id=$2 AND review_id=$3',[...params,appeal.review_id])).rows[0];
   if(!review)fail(409,'removal_changed');
   if(decision==='restored'){
    const active=(await q.query("SELECT user_id FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active' FOR SHARE",[a.tenantId,review.target_author_user_id])).rows;
    if(!active.length)fail(409,'author_unavailable');
    if(review.target_kind==='post'){
     const restored=await q.query(`UPDATE rooms.lessons SET state='published',moderation_revision=moderation_revision+1,removed_by_review_id=NULL
      WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND state='retired' AND moderation_revision=$4 AND removed_by_review_id=$5 AND (publish_at IS NULL OR publish_at<=statement_timestamp()) RETURNING lesson_id`,[...params,review.target_id,review.target_revision,review.review_id]);
     if(!restored.rows.length)fail(409,'removal_changed');
     await q.query("UPDATE rooms.discussion_replies SET moderation_state='visible',moderation_revision=moderation_revision+1,removed_by_review_id=NULL WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND moderation_state='removed' AND removed_by_review_id=$4",[...params,review.target_id,review.review_id]);
    }else{
     const restored=await q.query(`UPDATE rooms.discussion_replies d SET moderation_state='visible',moderation_revision=d.moderation_revision+1,removed_by_review_id=NULL
      FROM rooms.lessons p WHERE d.tenant_id=$1 AND d.room_id=$2 AND d.reply_id=$3 AND d.moderation_state='removed' AND d.moderation_revision=$4 AND d.removed_by_review_id=$5
      AND p.tenant_id=d.tenant_id AND p.room_id=d.room_id AND p.lesson_id=d.lesson_id AND p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) RETURNING d.reply_id`,[...params,review.target_id,review.target_revision,review.review_id]);
     if(!restored.rows.length)fail(409,'removal_changed');
    }
   }
   const row=(await q.query("UPDATE rooms.moderation_appeals SET state=$4,decided_at=clock_timestamp(),decided_by_user_id=$5,decision_request_id=$6,public_reason=$7 WHERE tenant_id=$1 AND room_id=$2 AND appeal_id=$3 RETURNING *",[...params,id,decision,a.userId,key,reason])).rows[0];
   return {moderationVersion:1,appeal:appealView(row)};
  }
 }
 fail(404,'not_found');
}
