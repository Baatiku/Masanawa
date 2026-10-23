import {createHash} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
function invalid():never{throw Object.assign(new Error('invalid_media_page'),{statusCode:422});}
// Called only after the canonical Room/member/entitlement lock and ACL check.
export async function roomMediaPage(q:Pick<PoolClient,'query'>,a:RoomCommunityActor,roomId:string,input:Row,project:(r:Row)=>Row){
 const search=input.search??'',kind=input.kind??'all',size=input.limit??100;
 if(typeof search!=='string'||search.length>100||!['all','image','video','voice','doc'].includes(kind))invalid();
 if(typeof size!=='number'&&(typeof size!=='string'||!/^\d{1,3}$/.test(size)))invalid();
 const limit=Number(size);if(!Number.isInteger(limit)||limit<1||limit>100)invalid();
 const query=search.trim(),scope=createHash('sha256').update(JSON.stringify([a.tenantId,a.userId,roomId,query,kind])).digest('hex');
 let at:string|null=null,id:string|null=null;
 if(input.cursor!==undefined&&input.cursor!==null){
  const raw=input.cursor;
  if(typeof raw!=='string'||!raw.length||raw.length>1600||!/^[\w-]+$/.test(raw))invalid();
  try{
   if(Buffer.from(raw,'base64url').toString('base64url')!==raw)invalid();
   const v=JSON.parse(Buffer.from(raw,'base64url').toString('utf8'));
   if(v.v!==1||v.scope!==scope||typeof v.at!=='string'||!/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{6}Z$/.test(v.at)||typeof v.id!=='string'||!v.id.length||v.id.length>160)invalid();
   if(v.at.startsWith('0000')||new Date(v.at).toISOString().slice(0,19)!==v.at.slice(0,19))invalid();
   at=v.at;id=v.id;
  }catch{invalid();}
 }
 const pattern='%'+query.replace(/[#%_]/g,v=>'#'+v)+'%';
 // Metadata only: history/search never downloads attachment bodies or uploader IDs.
 const rows=(await q.query(`SELECT m.media_id,m.kind,m.mime_type,m.name,m.size_bytes,m.duration_ms,m.created_at,
  COALESCE(m.lesson_id,d.lesson_id) AS source_post_id,m.reply_id AS source_reply_id,
  to_char(m.created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS page_time
  FROM rooms.media m
  LEFT JOIN rooms.lessons p ON p.tenant_id=m.tenant_id AND p.room_id=m.room_id AND p.lesson_id=m.lesson_id
  LEFT JOIN rooms.discussion_replies d ON d.tenant_id=m.tenant_id AND d.room_id=m.room_id AND d.reply_id=m.reply_id
  LEFT JOIN rooms.lessons parent ON parent.tenant_id=d.tenant_id AND parent.room_id=d.room_id AND parent.lesson_id=d.lesson_id
  WHERE m.tenant_id=$1 AND m.room_id=$2 AND m.name ILIKE $3 ESCAPE '#' AND ($4='all' OR m.kind=$4)
   AND ((p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()))
    OR (d.moderation_state='visible' AND parent.state='published' AND (parent.publish_at IS NULL OR parent.publish_at<=statement_timestamp())))
   AND ($5::timestamptz IS NULL OR (m.created_at,m.media_id)<($5::timestamptz,$6::text))
  ORDER BY m.created_at DESC,m.media_id DESC LIMIT $7`,[a.tenantId,roomId,pattern,kind,at,id,limit+1])).rows;
 const selected=rows.slice(0,limit),last=selected.at(-1);
 return {paginationVersion:1,items:selected.map(r=>({...project(r),createdAt:new Date(r.created_at).toISOString(),sourcePostId:r.source_post_id,sourceReplyId:r.source_reply_id})),
  nextCursor:rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,scope,at:last.page_time,id:last.media_id})).toString('base64url'):null};
}
