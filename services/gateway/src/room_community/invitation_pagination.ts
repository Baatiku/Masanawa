import {createHash} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
type Sql=Pick<PoolClient,'query'>;
function fail():never{throw Object.assign(new Error('invalid_invitation_page'),{statusCode:422});}
const iso=(v:any)=>v?new Date(v).toISOString():null;
const stamp=(alias:string)=>`to_char(${alias}.created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS page_time`;
function page(a:RoomCommunityActor,roomId:string,input:Row){
 const scope=createHash('sha256').update(JSON.stringify([a.tenantId,a.userId,roomId])).digest('hex');
 const rawLimit=input.limit??100;
 if(typeof rawLimit!=='number'&&(typeof rawLimit!=='string'||!/^\d{1,3}$/.test(rawLimit)))fail();
 const limit=Number(rawLimit);if(!Number.isInteger(limit)||limit<1||limit>100)fail();
 let time:string|null=null,id:string|null=null;
 if(input.cursor!==undefined&&input.cursor!==null){
  const raw=input.cursor;if(typeof raw!=='string'||!raw.length||raw.length>1200||!/^[\w-]+$/.test(raw))fail();
  try{
   if(Buffer.from(raw,'base64url').toString('base64url')!==raw)fail();
   const value=JSON.parse(Buffer.from(raw,'base64url').toString('utf8'));
   if(value.v!==1||value.scope!==scope||typeof value.time!=='string'||!/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{6}Z$/.test(value.time)||typeof value.id!=='string'||!value.id.length||value.id.length>160)fail();
   if(value.time.startsWith('0000')||new Date(value.time).toISOString().slice(0,19)!==value.time.slice(0,19))fail();
   time=value.time;id=value.id;
  }catch{fail();}
 }
 return {limit,time,id,finish(rows:Row[],view:(v:Row)=>Row){
  const selected=rows.slice(0,limit),last=selected.at(-1);
  const nextCursor=rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,scope,time:last.page_time,id:last.invite_id??last.inviteId})).toString('base64url'):null;
  return {paginationVersion:1,items:selected.map(view),nextCursor};
 }};
}
export function invitationMetadata(v:Row,a:RoomCommunityActor){
 return {inviteId:v.invite_id,expiresAt:iso(v.expires_at),revoked:!!v.revoked_at,accepted:!!v.accepted_by,status:v.revoked_at?'revoked':v.accepted_by?'accepted':v.expired?'expired':'active',kind:v.recipient_user_id?'targeted':'code',requestId:v.created_by===a.userId?v.request_id:null};
}
export async function managerInvitationPage(q:Sql,a:RoomCommunityActor,roomId:string,input:Row){
 const p=page(a,roomId,input);
 const rows=(await q.query(`SELECT i.*,i.expires_at<=clock_timestamp() AS expired,${stamp('i')}
  FROM rooms.membership_invites i WHERE tenant_id=$1 AND room_id=$2 AND ($3::timestamptz IS NULL OR (created_at,invite_id)<($3::timestamptz,$4::text))
  ORDER BY created_at DESC,invite_id DESC LIMIT $5`,[a.tenantId,roomId,p.time,p.id,p.limit+1])).rows;
 return {issuanceVersion:1,...p.finish(rows,v=>invitationMetadata(v,a))};
}
export async function incomingInvitationPage(q:Sql,a:RoomCommunityActor,input:Row){
 const p=page(a,'incoming-invitations',input);
 const rows=(await q.query(`SELECT i.invite_id AS "inviteId",r.room_id AS "roomId",r.profession_title AS name,i.expires_at AS "expiresAt",${stamp('i')}
  FROM rooms.membership_invites i JOIN rooms.rooms r ON r.tenant_id=i.tenant_id AND r.room_id=i.room_id
  JOIN identity.users sender ON sender.tenant_id=i.tenant_id AND sender.user_id=i.created_by AND sender.state='active'
  LEFT JOIN rooms.memberships m ON m.tenant_id=i.tenant_id AND m.room_id=i.room_id AND m.user_id=$2
  WHERE i.tenant_id=$1 AND i.recipient_user_id=$2 AND i.revoked_at IS NULL AND i.accepted_by IS NULL AND i.expires_at>statement_timestamp() AND r.state='published'
  AND COALESCE(m.state,'') NOT IN ('active','banned')
  AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=i.tenant_id AND b.blocked
   AND ((b.viewer_user_id=$2 AND b.subject_user_id IN (i.created_by,r.owner_user_id)) OR (b.subject_user_id=$2 AND b.viewer_user_id IN (i.created_by,r.owner_user_id))))
  AND ($3::timestamptz IS NULL OR (i.created_at,i.invite_id)<($3::timestamptz,$4::text))
  ORDER BY i.created_at DESC,i.invite_id DESC LIMIT $5`,[a.tenantId,a.userId,p.time,p.id,p.limit+1])).rows;
 return p.finish(rows,v=>({inviteId:v.inviteId,roomId:v.roomId,name:v.name,expiresAt:iso(v.expiresAt)}));
}
