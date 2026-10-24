import {createHash} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';

type Sql=Pick<PoolClient,'query'>;
type Input=Record<string,unknown>;
function invalid():never{throw Object.assign(new Error('invalid_member_page'),{statusCode:422});}
function decode(value:unknown,scope:string):{role:string;userId:string}|null{
 if(value===undefined||value===null)return null;
 if(typeof value!=='string'||!value.length||value.length>1000||!/^[A-Za-z0-9_-]+$/.test(value))invalid();
 try{
  if(Buffer.from(value,'base64url').toString('base64url')!==value)invalid();
  const v=JSON.parse(Buffer.from(value,'base64url').toString('utf8'));
  if(v.v!==1||v.scope!==scope||!['owner','admin','moderator','member'].includes(v.role)
   ||typeof v.userId!=='string'||!v.userId.length||v.userId.length>160)invalid();
  return {role:v.role,userId:v.userId};
 }catch{invalid();}
}
export async function roomMemberPage(q:Sql,a:RoomCommunityActor,roomId:string,input:Input){
 const state=input.state??'active';
 if(state!=='active'&&state!=='banned')invalid();
 const raw=input.search??'';
 if(typeof raw!=='string'||raw.length>100)invalid();
 const query=raw.trim(),scope=createHash('sha256').update(JSON.stringify([a.tenantId,a.userId,roomId,query,...(state==='banned'?['banned']:[])])).digest('hex');
 const size=input.limit??50;
 if(typeof size!=='number'&&(typeof size!=='string'||!/^\d{1,3}$/.test(size)))invalid();
 const limit=Number(size);if(!Number.isInteger(limit)||limit<1||limit>100)invalid();
 const cursor=decode(input.cursor,scope);
 // Wildcards are literal in both handle and public display-name search.
 const pattern='%'+query.replace(/[!%_]/g,character=>'!'+character)+'%';
 const rows=(await q.query(`SELECT m.user_id AS "userId",m.role,m.state,
    to_char(m.updated_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS "membershipVersion",
    NULLIF(btrim(p.display_name),'') AS "displayName",p.handle
   FROM rooms.memberships m
   JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active'
   LEFT JOIN talks.public_profiles p ON p.tenant_id=m.tenant_id AND p.user_id=m.user_id
   WHERE m.tenant_id=$1 AND m.room_id=$2 AND m.state=$9
    AND (m.user_id=$3 OR NOT EXISTS (
     SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=m.tenant_id AND b.blocked
      AND ((b.viewer_user_id=$3 AND b.subject_user_id=m.user_id)
       OR (b.viewer_user_id=m.user_id AND b.subject_user_id=$3))))
    AND ($4::text='' OR p.display_name ILIKE $8 ESCAPE '!' OR p.handle ILIKE $8 ESCAPE '!')
    AND ($6::text IS NULL OR (m.role,m.user_id)>($6::text,$7::text))
   ORDER BY m.role ASC,m.user_id ASC LIMIT $5`,
  [a.tenantId,roomId,a.userId,query,limit+1,cursor?.role??null,cursor?.userId??null,pattern,state])).rows;
 const items=rows.slice(0,limit).map((row:Record<string,unknown>)=>({
  userId:row.userId,role:row.role,state:row.state,
  ...(state==='banned'?{membershipVersion:row.membershipVersion}:{}),
  displayName:typeof row.displayName==='string'&&row.displayName.trim()?row.displayName.trim():null,
  handle:typeof row.handle==='string'&&row.handle.trim()?row.handle:null,
 }));
 const last=items.at(-1);
 const nextCursor=rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,scope,role:last.role,userId:last.userId})).toString('base64url'):null;
 return {paginationVersion:1,items,nextCursor};
}
