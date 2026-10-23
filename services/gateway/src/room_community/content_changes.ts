import {createHash,randomUUID} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
function fail(statusCode:number,message:string):never{throw Object.assign(new Error(message),{statusCode});}
function text(value:unknown,max:number,empty=false):string{
 if(typeof value!=='string'||value.length>max||(!empty&&!value.trim()))fail(422,'invalid_content_change');
 return value.trim();
}
function receipt(row:Row){return {requestId:row.request_id,targetKind:row.target_kind,targetId:row.target_id,action:row.action,
 previousRevision:row.previous_revision,revision:row.revision,committedAt:new Date(row.created_at).toISOString()};}

// The dispatcher holds the canonical current Room/member/entitlement lock.
// This journal is actor-bound recovery and restricted immutable application
// audit; original bodies are never projected by this endpoint.
export async function roomContentChange(q:Pick<PoolClient,'query'>,a:RoomCommunityActor,room:Row,method:string,parts:string[],input:Row,
 project:(kind:'post'|'reply',row:Row)=>Promise<Row>){
 const params=[a.tenantId,room.room_id];
 const lookup=parts[2]==='content-operations';
 if(lookup&&parts.length!==3)fail(404,'not_found');
 const kind=lookup?input.targetKind:parts[2]==='posts'?'post':'reply';
 if(!['post','reply'].includes(kind))fail(422,'invalid_content_change');
 const id=text(lookup?input.targetId:parts[3],160),requestId=text(input.requestId,160);
 const action=method==='PATCH'?'edit':'delete';
 const previous=(await q.query('SELECT * FROM rooms.content_changes WHERE tenant_id=$1 AND room_id=$2 AND actor_user_id=$3 AND request_id=$4',
  [...params,a.userId,requestId])).rows[0];
 async function current(){
  if(kind==='post')return (await q.query(`SELECT *, (publish_at IS NULL OR publish_at<=statement_timestamp()) AS due FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 FOR UPDATE`,[...params,id])).rows[0];
  return (await q.query(`SELECT d.*,p.state AS parent_state,p.comments_enabled AS parent_comments_enabled,
   (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AS parent_due FROM rooms.discussion_replies d
   JOIN rooms.lessons p ON p.tenant_id=d.tenant_id AND p.room_id=d.room_id AND p.lesson_id=d.lesson_id
   WHERE d.tenant_id=$1 AND d.room_id=$2 AND d.reply_id=$3 AND d.question_id IS NULL FOR UPDATE OF d`,[...params,id])).rows[0];
 }
 async function result(row:Row){
  const value=await current();
  const visible=value&&(kind==='post'?value.state==='published'&&value.due===true:
   value.moderation_state==='visible'&&value.parent_state==='published'&&value.parent_due===true);
  return {changeVersion:1,found:true,receipt:receipt(row),currentItem:visible?await project(kind,value):null};
 }
 if(lookup){
  if(method!=='GET')fail(404,'not_found');
  if(!previous||previous.target_kind!==kind||previous.target_id!==id)return {changeVersion:1,found:false,receipt:null,currentItem:null};
  return result(previous);
 }
 if(!['PATCH','DELETE'].includes(method)||parts.length!==5||parts[4]!=='content')fail(404,'not_found');
 if(Object.keys(input).some(key=>!['requestId','expectedRevision',...(method==='PATCH'?['body']:[])].includes(key)))fail(422,'invalid_content_change');
 const expected=input.expectedRevision;
 if(!Number.isInteger(expected)||expected<0||expected>2147483646)fail(422,'invalid_content_revision');
 const body=action==='edit'?text(input.body,kind==='post'?6000:2000,true):null;
 const fingerprint=createHash('sha256').update(JSON.stringify([kind,id,action,expected,body])).digest('hex');
 if(previous){
  if(previous.fingerprint!==fingerprint)fail(409,'idempotency_conflict');
  return result(previous);
 }
 const target=await current();
 if(!target||(kind==='post'?target.author_user_id:target.user_id)!==a.userId)fail(404,'content_not_found');
 const visible=kind==='post'?target.state==='published'&&target.due===true:
  target.moderation_state==='visible'&&target.parent_state==='published'&&target.parent_due===true;
 if(!visible)fail(404,'content_not_found');
 if(target.moderation_revision!==expected)fail(409,'content_revision_conflict');
 if(action==='edit'){
  if(kind==='post'&&room.posting_policy==='admins'&&!['owner','admin','moderator'].includes(room.member_role))fail(403,'room_posting_restricted');
  if(kind==='reply'&&(!room.comments_enabled||!target.parent_comments_enabled))fail(403,'comments_disabled');
  if(body===target.body)fail(422,'content_unchanged');
  if(!body){
   const media=await q.query(`SELECT 1 FROM rooms.media WHERE tenant_id=$1 AND room_id=$2 AND ${kind==='post'?'lesson_id':'reply_id'}=$3 LIMIT 1`,[...params,id]);
   if(!media.rows.length)fail(422,'content_body_required');
  }
 }
 const table=kind==='post'?'lessons':'discussion_replies',column=kind==='post'?'lesson_id':'reply_id';
 if(action==='edit')await q.query(`UPDATE rooms.${table} SET body=$4,edited_at=clock_timestamp(),moderation_revision=moderation_revision+1 WHERE tenant_id=$1 AND room_id=$2 AND ${column}=$3`,[...params,id,body]);
 else {
  await q.query(`UPDATE rooms.${table} SET ${kind==='post'?"state='retired'":"moderation_state='removed'"},moderation_revision=moderation_revision+1,removed_by_review_id=NULL WHERE tenant_id=$1 AND room_id=$2 AND ${column}=$3`,[...params,id]);
  if(kind==='post')await q.query("UPDATE rooms.discussion_replies SET moderation_state='removed',moderation_revision=moderation_revision+1,removed_by_review_id=NULL WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3",[...params,id]);
 }
 const row=(await q.query(`INSERT INTO rooms.content_changes(tenant_id,room_id,change_id,actor_user_id,request_id,target_kind,target_id,action,fingerprint,previous_revision,revision,before_body,after_body)
  VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13) RETURNING *`,[...params,'room-change_'+randomUUID(),a.userId,requestId,kind,id,action,fingerprint,expected,expected+1,target.body,body])).rows[0];
 return result(row);
}
