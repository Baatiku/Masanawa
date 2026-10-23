import {createHash,randomBytes,randomUUID} from 'node:crypto';
import type {FastifyInstance} from 'fastify';
import type {Pool,PoolClient} from '@masanawa/postgres';
import {incomingInvitationPage,managerInvitationPage,invitationMetadata} from './invitation_pagination.js';
import {roomListPage} from './room_list_pages.js';
import {roomTimelinePage} from './timeline_pages.js';
import {roomMediaPage} from './media_pages.js';
import {roomContentModeration} from './content_moderation.js';
import {roomOwnershipTransfer,cancelRoomOwnershipTransfers} from './ownership_transfer.js';
export type RoomCommunityActor={tenantId:string;userId:string};
type Row=Record<string,any>;
type Sql=Pick<PoolClient,'query'>;
export interface RoomCommunityOptions {
 pool:Pool;
 authorize:(input:{authorizationHeader:string|undefined})=>Promise<RoomCommunityActor>;
 isApprovedMasana?:(tenantId:string,characterId:string)=>Promise<boolean>;
}
function fail(statusCode:number,message:string):never{throw Object.assign(new Error(message),{statusCode});}
function text(v:unknown,max=200,empty=false):string{if(typeof v!=='string'||v.length>max||(!empty&&!v.trim()))fail(422,'invalid_input');return v.trim();}
const hash=(v:string)=>createHash('sha256').update(v).digest('hex');
const iso=(v:any)=>v?new Date(v).toISOString():null;
const manager=(r:Row)=>['owner','admin','moderator'].includes(r.member_role);
export function createRoomCommunityService(o:RoomCommunityOptions){
 async function active(q:Sql,a:RoomCommunityActor){const u=await q.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active'",[a.tenantId,a.userId]);if(!u.rows.length)fail(401,'account_inactive');}
 async function unblocked(q:Sql,a:RoomCommunityActor,other:string){if(other===a.userId)return;const b=await q.query('SELECT 1 FROM talks.safety_preferences WHERE tenant_id=$1 AND blocked AND ((viewer_user_id=$2 AND subject_user_id=$3) OR (viewer_user_id=$3 AND subject_user_id=$2))',[a.tenantId,a.userId,other]);if(b.rows.length)fail(403,'contact_unavailable');}
 async function notice(q:Sql,a:RoomCommunityActor,roomId:string,type:string,userId:string,extra:Row={}){await q.query(`INSERT INTO events.outbox(outbox_event_id,tenant_id,event_id,event_type,schema_version,aggregate_type,aggregate_id,correlation_id,destination,payload) VALUES($1,$2,$3,$4,1,'room',$5,$6,'notifications.rooms',$7::jsonb)`,['outbox-event_'+randomUUID(),a.tenantId,'event_'+randomUUID(),type,roomId,'correlation_'+randomUUID(),JSON.stringify({userId,roomId,...extra})]);}
 const mediaView=(m:Row)=>({id:m.media_id,kind:m.kind,mimeType:m.mime_type,name:m.name,sizeBytes:m.size_bytes,durationMs:m.duration_ms});
 const inviteView=(r:Row)=>({inviteId:r.invite_id,expiresAt:iso(r.expires_at),revoked:!!r.revoked_at,accepted:!!r.accepted_by,status:r.revoked_at?'revoked':r.accepted_by?'accepted':r.expired?'expired':'active'});
 async function enrich(q:Sql,a:RoomCommunityActor,p:Row){const media=await q.query('SELECT * FROM rooms.media WHERE tenant_id=$1 AND (lesson_id=$2 OR reply_id=$2)',[a.tenantId,p.id]);const react=await q.query('SELECT emoji,count(*)::int AS count,bool_or(user_id=$3) AS mine FROM rooms.reactions WHERE tenant_id=$1 AND lesson_id=$2 GROUP BY emoji ORDER BY emoji',[a.tenantId,p.id,a.userId]);return {...p,attachments:media.rows.map(mediaView),reactions:react.rows};}
 async function mention(q:Sql,a:RoomCommunityActor,id:string,postId:string,body:string,raw:unknown,sourceId=postId){if(raw===undefined)return;if(!Array.isArray(raw)||raw.length>3)fail(422,'invalid_mentions');for(const v of [...new Set(raw)]){const characterId=text(v,160);const participant=(await q.query('SELECT * FROM rooms.masana_participants WHERE tenant_id=$1 AND room_id=$2 AND character_id=$3 AND active',[a.tenantId,id,characterId])).rows[0];if(!participant||!o.isApprovedMasana||!await o.isApprovedMasana(a.tenantId,characterId))fail(403,'masana_not_active');
   const questionId='room-question_'+randomUUID(),key='mention_'+hash(sourceId+characterId).slice(0,48);const context=('Room participant instructions: '+participant.instructions+'\nRespond only to this Room post; no access to private chats.\nPost: '+body).slice(0,2000);
   await q.query('INSERT INTO rooms.questions(tenant_id,question_id,room_id,user_id,body,idempotency_key,target_character_id,source_lesson_id) VALUES($1,$2,$3,$4,$5,$6,$7,$8)',[a.tenantId,questionId,id,a.userId,context,key,characterId,postId]);
   await q.query(`INSERT INTO events.outbox(outbox_event_id,tenant_id,event_id,event_type,schema_version,aggregate_type,aggregate_id,correlation_id,destination,payload) VALUES($1,$2,$3,'rooms.question.queued',1,'room_question',$4,$5,'rooms.teacher',$6::jsonb)`,['outbox-event_'+randomUUID(),a.tenantId,'event_'+randomUUID(),questionId,'correlation_'+randomUUID(),JSON.stringify({roomId:id,questionId})]);
  }}
 async function bindMedia(q:Sql,a:RoomCommunityActor,id:string,postId:string,refs:unknown,reply=false){if(refs===undefined)return;if(!Array.isArray(refs)||refs.length>4)fail(422,'invalid_attachments');for(const ref of refs){const mediaId=text(ref?.id,160);const m=await q.query('SELECT * FROM rooms.media WHERE tenant_id=$1 AND room_id=$2 AND media_id=$3 AND user_id=$4 AND lesson_id IS NULL AND reply_id IS NULL',[a.tenantId,id,mediaId,a.userId]);if(!m.rows.length)fail(403,'attachment_unavailable');await q.query('UPDATE rooms.media SET '+(reply?'reply_id':'lesson_id')+'=$3 WHERE tenant_id=$1 AND media_id=$2',[a.tenantId,mediaId,postId]);}}

 async function tx<T>(fn:(q:PoolClient)=>Promise<T>){const q=await o.pool.connect();try{await q.query('BEGIN');const r=await fn(q);await q.query('COMMIT');return r;}catch(e){await q.query('ROLLBACK');throw e;}finally{q.release();}}
 async function room(q:Sql,a:RoomCommunityActor,id:string,member=false,management=false){
  const r=(await q.query(`SELECT r.*,m.role AS member_role,m.state AS member_state,m.muted,m.pinned FROM rooms.rooms r
   LEFT JOIN rooms.memberships m ON m.tenant_id=r.tenant_id AND m.room_id=r.room_id AND m.user_id=$3
   WHERE r.tenant_id=$1 AND r.room_id=$2 AND r.state='published' FOR UPDATE OF r`,[a.tenantId,id,a.userId])).rows[0];
  if(!r||(r.visibility==='private'&&r.member_state!=='active'))fail(404,'room_not_found');
  if(r.member_state==='banned')fail(403,'room_banned');
  if(member&&r.member_state!=='active')fail(403,'room_membership_required');
  if(member&&r.plan_mode==='paid'&&!(management&&manager(r))){
   const e=await q.query("SELECT 1 FROM rooms.entitlements WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3 AND state IN ('active','grace') AND period_end>now()",[a.tenantId,id,a.userId]);
   if(!e.rows.length)fail(403,'subscription_not_verified');
  }
  return r;
 }
 async function project(q:Sql,a:RoomCommunityActor,r:Row){
  const n=(await q.query("SELECT count(*)::int AS n FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND state='active'",[a.tenantId,r.room_id])).rows[0]?.n??0;
  return {id:r.room_id,roomId:r.room_id,name:r.profession_title,title:r.profession_title,description:r.description,photoUrl:r.photo_url,visibility:r.visibility,postingPolicy:r.posting_policy,commentsEnabled:r.comments_enabled,joinApproval:r.join_approval,ownerId:r.owner_user_id,ownerUserId:r.owner_user_id,memberCount:Number(n),role:r.member_state==='active'?r.member_role:null,isMember:r.member_state==='active',isOwner:r.owner_user_id===a.userId,muted:!!r.muted,pinned:!!r.pinned,planMode:r.plan_mode};
 }
 async function owned(q:Sql,a:RoomCommunityActor,id:string,owner=false){const r=await room(q,a,id,true,true);if(owner?r.owner_user_id!==a.userId:!manager(r))fail(403,'room_owner_or_admin_required');return r;}
 const postView=(r:Row)=>({id:r.lesson_id??r.reply_id,body:r.body,authorId:r.author_user_id??r.user_id,parentId:r.parent_reply_id??(r.reply_id?r.lesson_id:null),createdAt:iso(r.created_at),pinned:!!r.pinned,commentsEnabled:r.comments_enabled??true});
 async function dispatch(a:RoomCommunityActor,method:string,path:string,input:Row={}):Promise<any>{
  if(!a.tenantId||!a.userId)fail(401,'authentication_required');
  await active(o.pool,a);
  const parts=path.replace(/^\/+|\/+$/g,'').split('/').filter(Boolean);
  if(!parts.length&&method==='POST'){
   const name=text(input.name??input.title,140);if(name.length<3)fail(422,'invalid_room_name');
   const visibility=input.visibility??'public',posting=input.postingPolicy??'admins';
   if(!['public','private'].includes(visibility)||!['admins','members'].includes(posting))fail(422,'invalid_room_policy');
   const payload={name,description:text(input.description??'',2000,true),photoUrl:input.photoUrl?text(input.photoUrl,2000):null,visibility,postingPolicy:posting};
   if(payload.photoUrl&&!/^https:\/\//.test(payload.photoUrl))fail(422,'invalid_photo_url');
   const key=text(input.requestId,160);
   return tx(async q=>{await active(q,a);
    // Serialize account creation retries even when the room does not exist yet.
    const user=await q.query('SELECT user_id FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE',[a.tenantId,a.userId]);if(!user.rows.length)fail(401,'account_not_found');
    const old=(await q.query('SELECT * FROM rooms.rooms WHERE tenant_id=$1 AND owner_user_id=$2 AND create_request_id=$3',[a.tenantId,a.userId,key])).rows[0];
    if(old){if(JSON.stringify(old.create_payload)!==JSON.stringify(payload)&&hash(JSON.stringify(Object.entries(old.create_payload).sort()))!==hash(JSON.stringify(Object.entries(payload).sort())))fail(409,'idempotency_conflict');return project(q,a,await room(q,a,old.room_id,true));}
    const id='room_'+randomUUID();
    await q.query(`INSERT INTO rooms.rooms(tenant_id,room_id,slug,profession_title,owner_user_id,description,photo_url,visibility,posting_policy,state,create_request_id,create_payload)
     VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,'published',$10,$11::jsonb)`,[a.tenantId,id,'room-'+randomUUID(),name,a.userId,payload.description,payload.photoUrl,visibility,posting,key,JSON.stringify(payload)]);
    await q.query("INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role) VALUES($1,$2,$3,'owner')",[a.tenantId,id,a.userId]);
    return project(q,a,await room(q,a,id,true));
   });
  }
  if(parts[0]==='invitations'&&method==='GET')return tx(async q=>{await active(q,a);return incomingInvitationPage(q,a,input);});
  if(['mine','discover'].includes(parts[0]??'')&&method==='GET')return tx(async q=>{await active(q,a);return roomListPage(q,a,parts[0]!,input,r=>project(q,a,r));});
  const id=parts[0];if(!id||parts[1]!=='community')fail(404,'not_found');
  const operation=parts[2]??'';
  return tx(async q=>{await active(q,a);
   // A recipient can decline without first joining or reading a private Room.
   // Use the same Room lock as accept/revoke/retire so only one outcome wins.
   if(operation==='invitations'&&parts[4]==='decline'&&method==='POST'){
    const invitationId=text(parts[3],160);
    const visible=await q.query("SELECT room_id FROM rooms.rooms WHERE tenant_id=$1 AND room_id=$2 AND state='published' FOR UPDATE",[a.tenantId,id]);
    if(!visible.rows.length)fail(404,'invitation_not_found');
    const invite=(await q.query('SELECT * FROM rooms.membership_invites WHERE tenant_id=$1 AND room_id=$2 AND invite_id=$3 AND recipient_user_id=$4 FOR UPDATE',[a.tenantId,id,invitationId,a.userId])).rows[0];
    if(!invite)fail(404,'invitation_not_found');
    if(invite.accepted_by)fail(409,'invitation_already_accepted');
    await q.query('UPDATE rooms.membership_invites SET revoked_at=COALESCE(revoked_at,clock_timestamp()) WHERE tenant_id=$1 AND room_id=$2 AND invite_id=$3',[a.tenantId,id,invitationId]);
    return {declined:true};
   }
   // Invite acceptance may inspect private metadata only after a valid token.
   if(operation==='join'&&method==='POST'){
    const r=(await q.query("SELECT * FROM rooms.rooms WHERE tenant_id=$1 AND room_id=$2 AND state='published' FOR UPDATE",[a.tenantId,id])).rows[0];if(!r)fail(404,'room_not_found');
    const m=(await q.query('SELECT state FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',[a.tenantId,id,a.userId])).rows[0];if(m?.state==='banned')fail(403,'room_banned');
    if(r.owner_user_id)await unblocked(q,a,r.owner_user_id);
    if(r.plan_mode==='paid'){const e=await q.query("SELECT 1 FROM rooms.entitlements WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3 AND state IN ('active','grace') AND period_end>now()",[a.tenantId,id,a.userId]);if(!e.rows.length)fail(403,'subscription_not_verified');}
    if(input.token||input.inviteId){const i=(await q.query("SELECT * FROM rooms.membership_invites WHERE tenant_id=$1 AND room_id=$2 AND (($3::text IS NOT NULL AND token_hash=$3) OR ($4::text IS NOT NULL AND invite_id=$4 AND recipient_user_id=$5)) AND revoked_at IS NULL AND expires_at>now() FOR UPDATE",[a.tenantId,id,input.token?hash(text(input.token,200)):null,input.inviteId?text(input.inviteId,160):null,a.userId])).rows[0];if(!i||(i.accepted_by&&(i.accepted_by!==a.userId||m?.state!=='active'))||(i.recipient_user_id&&i.recipient_user_id!==a.userId))fail(403,'invalid_invite');await unblocked(q,a,i.created_by);
     const sender=await q.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active'",[a.tenantId,i.created_by]);if(!sender.rows.length)fail(403,'invalid_invite');
     await q.query('UPDATE rooms.membership_invites SET accepted_by=$4,accepted_at=COALESCE(accepted_at,now()) WHERE tenant_id=$1 AND room_id=$2 AND invite_id=$3',[a.tenantId,id,i.invite_id,a.userId]);
    }else if(m?.state!=='active'&&(r.visibility==='private'||r.join_approval))fail(403,'invitation_required');
    await q.query(`INSERT INTO rooms.memberships AS m(tenant_id,room_id,user_id) VALUES($1,$2,$3) ON CONFLICT(tenant_id,room_id,user_id) DO UPDATE SET state='active',role=CASE WHEN m.state='active' THEN m.role ELSE 'member' END,updated_at=now()`,[a.tenantId,id,a.userId]);
    return project(q,a,await room(q,a,id,true));
   }
   const management=['members','invites','participants','masana'].includes(operation)||(!operation&&method!=='GET');
   const r=await room(q,a,id,operation!==''||method!=='GET',management);
   if(operation==='ownership-transfer')return roomOwnershipTransfer(q,a,r,method,parts,input,unblocked);
   if(!operation&&method==='GET')return project(q,a,r);
   if(!operation&&method==='PATCH'){
    await owned(q,a,id);
    if(input.ownerId!==undefined){await owned(q,a,id,true);fail(409,'ownership_acceptance_required');}
    const name=input.name??input.title??r.profession_title,description=input.description??r.description,photo=input.photoUrl===undefined?r.photo_url:input.photoUrl;
    const visibility=input.visibility??r.visibility,posting=input.postingPolicy??r.posting_policy;
    if(!['public','private'].includes(visibility)||!['admins','members'].includes(posting)||text(name,140).length<3)fail(422,'invalid_room_policy');
    if(photo!==null&&(typeof photo!=='string'||!/^https:\/\//.test(photo)||photo.length>2000))fail(422,'invalid_photo_url');
    if(input.commentsEnabled!==undefined&&typeof input.commentsEnabled!=='boolean'||input.joinApproval!==undefined&&typeof input.joinApproval!=='boolean')fail(422,'invalid_room_policy');
    await q.query('UPDATE rooms.rooms SET profession_title=$3,description=$4,photo_url=$5,visibility=$6,posting_policy=$7,comments_enabled=$8,join_approval=$9,updated_at=now() WHERE tenant_id=$1 AND room_id=$2',[a.tenantId,id,text(name,140),text(description,2000,true),photo,visibility,posting,input.commentsEnabled??r.comments_enabled,input.joinApproval??r.join_approval]);
    return project(q,a,await room(q,a,id,true));
   }
   if(!operation&&method==='DELETE'){await owned(q,a,id,true);await q.query("UPDATE rooms.rooms SET state='retired',updated_at=now() WHERE tenant_id=$1 AND room_id=$2",[a.tenantId,id]);await q.query('UPDATE rooms.membership_invites SET revoked_at=COALESCE(revoked_at,now()) WHERE tenant_id=$1 AND room_id=$2',[a.tenantId,id]);await q.query('UPDATE rooms.masana_participants SET active=false,updated_at=now() WHERE tenant_id=$1 AND room_id=$2',[a.tenantId,id]);await cancelRoomOwnershipTransfers(q,a,id,null,'room_retired');return {deleted:true};}
   if(operation==='leave'&&method==='POST'){if(r.owner_user_id===a.userId)fail(409,'transfer_ownership_before_leaving');await q.query("UPDATE rooms.memberships SET state='left',role='member',updated_at=now() WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3",[a.tenantId,id,a.userId]);await q.query('UPDATE rooms.membership_invites SET revoked_at=COALESCE(revoked_at,clock_timestamp()) WHERE tenant_id=$1 AND room_id=$2 AND created_by=$3',[a.tenantId,id,a.userId]);await cancelRoomOwnershipTransfers(q,a,id,a.userId,'participant_left');return {left:true};}
   if(operation==='preferences'&&method==='PATCH'){if(input.muted!==undefined&&typeof input.muted!=='boolean'||input.pinned!==undefined&&typeof input.pinned!=='boolean')fail(422,'invalid_preferences');await q.query('UPDATE rooms.memberships SET muted=$4,pinned=$5 WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',[a.tenantId,id,a.userId,input.muted??r.muted,input.pinned??r.pinned]);return project(q,a,await room(q,a,id,true));}
   if(operation==='read'&&method==='POST'){await q.query('UPDATE rooms.memberships SET read_at=now() WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',[a.tenantId,id,a.userId]);return {read:true};}
   if(operation==='participants'&&method==='POST'){
    await owned(q,a,id);const handle=text(input.handle,80).replace(/^@/,'');const target=(await q.query("SELECT p.user_id FROM talks.public_profiles p JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id WHERE p.tenant_id=$1 AND lower(p.handle)=lower($2) AND u.state='active'",[a.tenantId,handle])).rows[0]?.user_id;if(!target)fail(404,'person_not_found');await unblocked(q,a,target);
    const prior=(await q.query('SELECT state FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',[a.tenantId,id,target])).rows[0];if(prior?.state==='banned')fail(403,'room_banned');if(prior?.state==='active')return {status:'added',userId:target};
    const key=text(input.requestId,160);const previous=(await q.query('SELECT * FROM rooms.membership_invites WHERE tenant_id=$1 AND room_id=$2 AND created_by=$3 AND request_id=$4',[a.tenantId,id,a.userId,key])).rows[0];if(previous){if(previous.recipient_user_id!==target)fail(409,'idempotency_conflict');return {status:'invited',userId:target};}
    const allowed=(await q.query("SELECT talks.human_contact_allowed($1,$2,$3,'roomInvites') AS allowed",[a.tenantId,a.userId,target])).rows[0]?.allowed;
    if(allowed&&r.plan_mode==='free'){await q.query("INSERT INTO rooms.memberships(tenant_id,room_id,user_id) VALUES($1,$2,$3) ON CONFLICT(tenant_id,room_id,user_id) DO UPDATE SET state='active',role='member',updated_at=now()",[a.tenantId,id,target]);await notice(q,a,id,'rooms.member.added',target);return {status:'added',userId:target};}
    const inviteId='room-invite_'+randomUUID();await q.query("INSERT INTO rooms.membership_invites(tenant_id,room_id,invite_id,token_hash,created_by,recipient_user_id,request_id,expires_at) VALUES($1,$2,$3,$4,$5,$6,$7,now()+interval '24 hours')",[a.tenantId,id,inviteId,hash(randomBytes(32).toString('base64url')),a.userId,target,key]);await notice(q,a,id,'rooms.member.invited',target,{inviteId});return {status:'invited',userId:target};
   }
   if(operation==='media'){
    if(method==='GET'){
     if(parts[3]){const m=(await q.query(`SELECT m.* FROM rooms.media m LEFT JOIN rooms.lessons l ON l.tenant_id=m.tenant_id AND l.lesson_id=m.lesson_id LEFT JOIN rooms.discussion_replies d ON d.tenant_id=m.tenant_id AND d.reply_id=m.reply_id LEFT JOIN rooms.lessons parent ON parent.tenant_id=d.tenant_id AND parent.room_id=d.room_id AND parent.lesson_id=d.lesson_id WHERE m.tenant_id=$1 AND m.room_id=$2 AND m.media_id=$3 AND ((m.user_id=$4 AND m.lesson_id IS NULL AND m.reply_id IS NULL) OR (l.state='published' AND (l.publish_at IS NULL OR l.publish_at<=now())) OR (d.moderation_state='visible' AND parent.state='published' AND (parent.publish_at IS NULL OR parent.publish_at<=now())))`,[a.tenantId,id,parts[3],a.userId])).rows[0];if(!m)fail(404,'media_not_found');return {...mediaView(m),dataBase64:m.data_base64};}
     return roomMediaPage(q,a,id,input,mediaView);
    }
    if(method==='POST'){
     const key=text(input.requestId,160),kind=text(input.kind,20),mime=text(input.mimeType,100),name=text(input.name,180),data=text(input.dataBase64,11000000);if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(data))fail(422,'invalid_base64');const bytes=Buffer.from(data,'base64'),sig=bytes.subarray(0,16);if(!bytes.length||bytes.length>8000000)fail(422,'media_too_large');
     const valid=kind==='image'&&((mime==='image/png'&&sig.subarray(0,8).equals(Buffer.from([137,80,78,71,13,10,26,10])))||(mime==='image/jpeg'&&sig[0]===255&&sig[1]===216&&sig[2]===255)||(mime==='image/webp'&&sig.toString('ascii',0,4)==='RIFF'&&sig.toString('ascii',8,12)==='WEBP'))||kind==='doc'&&mime==='application/pdf'&&sig.toString('ascii',0,5)==='%PDF-'||kind==='video'&&mime==='video/mp4'&&sig.toString('ascii',4,8)==='ftyp'||kind==='voice'&&((['audio/mp4','audio/m4a','audio/aac'].includes(mime)&&sig.toString('ascii',4,8)==='ftyp')||(mime==='audio/ogg'&&sig.toString('ascii',0,4)==='OggS')||(mime==='audio/webm'&&sig.subarray(0,4).equals(Buffer.from([26,69,223,163]))));if(!valid)fail(422,'unsupported_media_signature');
     if(input.durationMs!==undefined&&(!Number.isSafeInteger(input.durationMs)||input.durationMs<0||input.durationMs>3600000))fail(422,'invalid_duration');
     const old=(await q.query('SELECT * FROM rooms.media WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3 AND request_id=$4',[a.tenantId,id,a.userId,key])).rows[0];if(old){if(old.kind!==kind||old.mime_type!==mime||old.name!==name||old.data_base64!==data||(old.duration_ms??null)!==(input.durationMs??null))fail(409,'idempotency_conflict');return mediaView(old);}
     const count=(await q.query('SELECT count(*)::int AS n,COALESCE(sum(size_bytes),0)::bigint AS bytes FROM rooms.media WHERE tenant_id=$1 AND user_id=$2 AND lesson_id IS NULL AND reply_id IS NULL',[a.tenantId,a.userId])).rows[0];if(Number(count.n)>=20||Number(count.bytes)+bytes.length>32000000)fail(429,'unsent_media_limit');
     const m=(await q.query('INSERT INTO rooms.media(tenant_id,media_id,room_id,user_id,kind,mime_type,name,size_bytes,duration_ms,data_base64,request_id) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11) RETURNING *',[a.tenantId,'room-media_'+randomUUID(),id,a.userId,kind,mime,name,bytes.length,input.durationMs??null,data,key])).rows[0];return mediaView(m);
    }
   }
   if(['reports','reply-reports','moderation'].includes(operation))return roomContentModeration(q,a,r,method,parts,input,()=>owned(q,a,id));
   if(operation==='members'&&method==='GET'){const members=await q.query("SELECT user_id AS \"userId\",role,state FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND state='active' ORDER BY role,user_id LIMIT 200",[a.tenantId,id]);return {items:members.rows};}
   if(operation==='members'&&method==='PATCH'){
    await owned(q,a,id);const target=text(parts[3],160);if(target===r.owner_user_id)fail(403,'cannot_modify_owner');
    const old=(await q.query('SELECT * FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',[a.tenantId,id,target])).rows[0];if(!old)fail(404,'member_not_found');
    if((input.role!==undefined||old.role==='admin')&&r.owner_user_id!==a.userId)fail(403,'room_owner_required');
    const role=input.role??old.role,state=input.state??old.state;
    if(!['admin','member'].includes(role)||!['active','left','banned'].includes(state))fail(422,'invalid_member');
    // Removed/banned people must consent to rejoin; management may unban to left.
    if(state==='active'&&old.state!=='active')fail(409,'member_must_rejoin');
    await q.query('UPDATE rooms.memberships SET role=$4,state=$5,updated_at=now() WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',[a.tenantId,id,target,state==='active'?role:'member',state]);
    if(state!=='active')await q.query('UPDATE rooms.membership_invites SET revoked_at=COALESCE(revoked_at,clock_timestamp()) WHERE tenant_id=$1 AND room_id=$2 AND recipient_user_id=$3',[a.tenantId,id,target]);
    if(state!=='active')await cancelRoomOwnershipTransfers(q,a,id,target,'participant_removed');
    if(state!=='active'||!['admin','moderator'].includes(role))await q.query('UPDATE rooms.membership_invites SET revoked_at=COALESCE(revoked_at,clock_timestamp()) WHERE tenant_id=$1 AND room_id=$2 AND created_by=$3',[a.tenantId,id,target]);
    return {updated:true};
   }
   if(operation==='invites'){
    await owned(q,a,id);
    if(method==='GET'){
     if(parts[3]==='request'){const key=text(input.requestId,160);const row=(await q.query('SELECT *,expires_at<=clock_timestamp() AS expired FROM rooms.membership_invites WHERE tenant_id=$1 AND room_id=$2 AND created_by=$3 AND request_id=$4',[a.tenantId,id,a.userId,key])).rows[0];return {issuanceVersion:1,item:row?invitationMetadata(row,a):null};}
     return managerInvitationPage(q,a,id,input);
    }
    if(method==='DELETE'){const v=await q.query('UPDATE rooms.membership_invites SET revoked_at=COALESCE(revoked_at,now()) WHERE tenant_id=$1 AND room_id=$2 AND invite_id=$3 RETURNING invite_id',[a.tenantId,id,parts[3]]);if(!v.rows.length)fail(404,'invite_not_found');return {revoked:true};}
    if(method==='POST'){
     // Older clients without a key retain one-time issuance. Keyed retries never
     // mint a second grant, and the raw code is intentionally not recoverable.
     const key=input.requestId===undefined?null:text(input.requestId,160);
     if(parts[3]==='issue'&&!key)fail(422,'request_id_required');
     if(key){
      const old=(await q.query('SELECT *,expires_at<=clock_timestamp() AS expired FROM rooms.membership_invites WHERE tenant_id=$1 AND room_id=$2 AND created_by=$3 AND request_id=$4',[a.tenantId,id,a.userId,key])).rows[0];
      if(old){if(old.recipient_user_id)fail(409,'idempotency_conflict');return {...inviteView(old),replayed:true};}
     }
     const token=randomBytes(32).toString('base64url'),inviteId='room-invite_'+randomUUID();
     const v=await q.query("INSERT INTO rooms.membership_invites(tenant_id,room_id,invite_id,token_hash,created_by,request_id,expires_at) VALUES($1,$2,$3,$4,$5,$6,now()+interval '24 hours') RETURNING *,false AS expired",[a.tenantId,id,inviteId,hash(token),a.userId,key]);
     return {...inviteView(v.rows[0]),token,replayed:false};
    }
   }
   if(operation==='timeline'&&method==='GET')return roomTimelinePage(q,a,id,input,async(kind,row)=>{
    const value=kind==='answer'?{id:row.answer_id,body:row.body,authorId:row.teacher_character_id,parentId:row.source_lesson_id,createdAt:iso(row.created_at),pinned:false,commentsEnabled:false,authorKind:'masana'}:kind==='reply'?{...postView({...row,lesson_id:undefined}),parentId:row.parent_reply_id??row.lesson_id}:postView(row);
    return enrich(q,a,value);
   });
   if(operation==='timeline'&&method==='POST'){
    const hasMedia=Array.isArray(input.attachments)&&input.attachments.length>0;const body=text(input.body??'',6000,hasMedia),key=text(input.requestId,160),parent=input.parentId??null;const fingerprint=JSON.stringify([body,parent,input.attachments??[],input.mentions??[]]);
    if(input.media!==undefined||input.mediaUrl!==undefined)fail(422,'room_media_upload_required');
    if(parent){
     if(!r.comments_enabled)fail(403,'comments_disabled');
     const p=(await q.query("SELECT * FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND state='published' AND (publish_at IS NULL OR publish_at<=now())",[a.tenantId,id,text(parent,160)])).rows[0];if(!p)fail(404,'post_not_found');if(!p.comments_enabled)fail(403,'comments_disabled');if(body.length>2000)fail(422,'comment_too_long');
     const old=(await q.query('SELECT * FROM rooms.discussion_replies WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3 AND idempotency_key=$4',[a.tenantId,id,a.userId,key])).rows[0];
     if(old){if(old.body!==body||old.lesson_id!==parent||old.community_payload!==fingerprint)fail(409,'idempotency_conflict');if(old.moderation_state!=='visible')return {id:old.reply_id,parentId:parent,removed:true,body:'',attachments:[],reactions:[]};return enrich(q,a,{...postView({...old,lesson_id:undefined}),parentId:parent});}
     const v=(await q.query("INSERT INTO rooms.discussion_replies(tenant_id,reply_id,room_id,user_id,lesson_id,body,idempotency_key,moderation_state) VALUES($1,$2,$3,$4,$5,$6,$7,'visible') RETURNING *",[a.tenantId,'room-reply_'+randomUUID(),id,a.userId,parent,body,key])).rows[0];await q.query('UPDATE rooms.discussion_replies SET community_payload=$3::jsonb WHERE tenant_id=$1 AND reply_id=$2',[a.tenantId,v.reply_id,JSON.stringify(fingerprint)]);await bindMedia(q,a,id,v.reply_id,input.attachments,true);if(input.mentions?.length)await mention(q,a,id,parent,body,input.mentions,v.reply_id);return enrich(q,a,{...postView({...v,lesson_id:undefined}),parentId:parent});
    }
    if(r.posting_policy==='admins'&&!manager(r))fail(403,'room_posting_restricted');
    const old=(await q.query('SELECT *, (publish_at IS NULL OR publish_at<=statement_timestamp()) AS visible_now FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND author_user_id=$3 AND idempotency_key=$4',[a.tenantId,id,a.userId,key])).rows[0];
    if(old){if(old.body!==body||old.community_payload!==fingerprint)fail(409,'idempotency_conflict');if(old.state!=='published'||old.visible_now!==true)return {id:old.lesson_id,parentId:null,removed:true,body:'',attachments:[],reactions:[]};return enrich(q,a,postView(old));}
    const v=(await q.query("INSERT INTO rooms.lessons(tenant_id,lesson_id,room_id,kind,body,state,author_user_id,idempotency_key,comments_enabled) VALUES($1,$2,$3,'announcement',$4,'published',$5,$6,$7) RETURNING *",[a.tenantId,'room-post_'+randomUUID(),id,body,a.userId,key,r.comments_enabled])).rows[0];
    await q.query('UPDATE rooms.rooms SET updated_at=now() WHERE tenant_id=$1 AND room_id=$2',[a.tenantId,id]);await q.query('UPDATE rooms.lessons SET community_payload=$3::jsonb WHERE tenant_id=$1 AND lesson_id=$2',[a.tenantId,v.lesson_id,JSON.stringify(fingerprint)]);await bindMedia(q,a,id,v.lesson_id,input.attachments);await mention(q,a,id,v.lesson_id,body,input.mentions);const recipients=await q.query("SELECT user_id FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND user_id<>$3 AND state='active' AND NOT muted",[a.tenantId,id,a.userId]);for(const m of recipients.rows)await notice(q,a,id,'rooms.post.created',m.user_id,{postId:v.lesson_id});return enrich(q,a,postView(v));
   }
   if(operation==='posts'&&parts[4]==='reactions'&&['POST','DELETE'].includes(method)){const emoji=text(input.emoji,16);if(!['👍','❤️','😂','🎉','🙏','👎','😢','🔥'].includes(emoji))fail(422,'unsupported_reaction');const post=await q.query("SELECT 1 FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND state='published' AND (publish_at IS NULL OR publish_at<=now())",[a.tenantId,id,parts[3]]);if(!post.rows.length)fail(404,'post_not_found');if(method==='POST')await q.query('INSERT INTO rooms.reactions(tenant_id,room_id,lesson_id,user_id,emoji) VALUES($1,$2,$3,$4,$5) ON CONFLICT DO NOTHING',[a.tenantId,id,parts[3],a.userId,emoji]);else await q.query('DELETE FROM rooms.reactions WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND user_id=$4 AND emoji=$5',[a.tenantId,id,parts[3],a.userId,emoji]);return {updated:true};}
   if(operation==='posts'&&method==='PATCH'){
    await owned(q,a,id);if(input.pinned!==undefined&&typeof input.pinned!=='boolean'||input.commentsEnabled!==undefined&&typeof input.commentsEnabled!=='boolean')fail(422,'invalid_post');
    const v=await q.query("UPDATE rooms.lessons SET pinned=COALESCE($4,pinned),comments_enabled=COALESCE($5,comments_enabled) WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND state='published' RETURNING *",[a.tenantId,id,parts[3],input.pinned??null,input.commentsEnabled??null]);if(!v.rows.length)fail(404,'post_not_found');return postView(v.rows[0]);
   }
   if(operation==='posts'&&method==='DELETE'){await owned(q,a,id);await q.query("UPDATE rooms.lessons SET state='retired',moderation_revision=moderation_revision+1,removed_by_review_id=NULL WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3",[a.tenantId,id,parts[3]]);await q.query("UPDATE rooms.discussion_replies SET moderation_state='removed',moderation_revision=moderation_revision+1,removed_by_review_id=NULL WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3",[a.tenantId,id,parts[3]]);return {removed:true};}
   if(operation==='masana'&&method==='GET'){return {items:(await q.query('SELECT character_id AS "characterId",instructions,active,reply_mode AS "replyMode" FROM rooms.masana_participants WHERE tenant_id=$1 AND room_id=$2 ORDER BY character_id',[a.tenantId,id])).rows};}
   if(operation==='masana'&&method==='POST'){
    await owned(q,a,id,true);const characterId=text(input.characterId,160);if(!o.isApprovedMasana||!await o.isApprovedMasana(a.tenantId,characterId))fail(403,'approved_masana_required');
    if(input.replyMode==='automatic')fail(409,'automatic_reply_agreement_required');
    if(input.active!==undefined&&typeof input.active!=='boolean')fail(422,'invalid_masana');
    await q.query("INSERT INTO rooms.masana_participants(tenant_id,room_id,character_id,instructions,active) VALUES($1,$2,$3,$4,$5) ON CONFLICT(tenant_id,room_id,character_id) DO UPDATE SET instructions=excluded.instructions,active=excluded.active,updated_at=now()",[a.tenantId,id,characterId,text(input.instructions??'',2000,true),input.active??false]);return {updated:true};
   }
   if(operation==='masana'&&method==='DELETE'){await owned(q,a,id,true);await q.query('DELETE FROM rooms.masana_participants WHERE tenant_id=$1 AND room_id=$2 AND character_id=$3',[a.tenantId,id,parts[3]]);await q.query("UPDATE rooms.questions SET state='rejected',updated_at=now() WHERE tenant_id=$1 AND room_id=$2 AND target_character_id=$3 AND state IN ('queued','answering','needs_staff')",[a.tenantId,id,parts[3]]);return {removed:true};}
   fail(404,'not_found');
  });
 }
 return {dispatch,authorize:o.authorize};
}
export function registerRoomCommunityRoutes(app:FastifyInstance,service:ReturnType<typeof createRoomCommunityService>){
 const handler=async(request:any,reply:any)=>{reply.header('Cache-Control','no-store');try{const a=await service.authorize({authorizationHeader:request.headers.authorization});const path=request.url.split('?')[0].replace(/^\/v1\/rooms\/?/,'');return await service.dispatch(a,request.method,path,request.method==='GET'?request.query??{}:request.body??{});}catch(e){const err=e as any;return reply.code(err.statusCode??500).send({error:err.statusCode?err.message:'room_request_failed'});}};
 app.post('/v1/rooms',handler);app.get('/v1/rooms/mine',handler);app.get('/v1/rooms/invitations',handler);app.get('/v1/rooms/discover',handler);
 for(const method of ['GET','PATCH','DELETE'] as const)app.route({method,url:'/v1/rooms/:roomId/community',handler});
 for(const [suffix,methods] of [['timeline',['GET','POST']],['media',['GET','POST']],['media/:mediaId',['GET']],['participants',['POST']],['reports',['POST']],['reply-reports',['POST']],['reply-reports/summary',['GET']],['reply-reports/reviews',['GET']],['reply-reports/:replyId/review',['POST']],['moderation/operations',['GET']],['moderation/cases',['GET']],['moderation/cases/:reviewId',['GET']],['moderation/cases/:reviewId/appeal',['POST']],['moderation/appeals',['GET']],['moderation/appeals/:appealId',['GET']],['moderation/appeals/:appealId/review',['POST']],['reports/summary',['GET']],['reports/reviews',['GET']],['reports/:postId/review',['POST']],['read',['POST']],['posts/:postId/reactions',['POST','DELETE']],['members',['GET']],['members/:userId',['PATCH']],['invites',['GET','POST']],['invites/issue',['POST']],['invites/request',['GET']],['invites/:inviteId',['DELETE']],['invitations/:inviteId/decline',['POST']],['join',['POST']],['leave',['POST']],['preferences',['PATCH']],['ownership-transfer',['GET','POST']],['ownership-transfer/:transferId/accept',['POST']],['ownership-transfer/:transferId/decline',['POST']],['ownership-transfer/:transferId/cancel',['POST']],['posts/:postId',['PATCH','DELETE']],['masana',['GET','POST']],['masana/:characterId',['DELETE']]] as const)for(const method of methods)app.route({method,url:'/v1/rooms/:roomId/community/'+suffix,handler,...(suffix==='media'?{bodyLimit:12000000}:{})});
}
