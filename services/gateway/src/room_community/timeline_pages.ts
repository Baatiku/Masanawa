import {createHash} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
function invalid():never{throw Object.assign(new Error('invalid_timeline_page'),{statusCode:422});}
export async function roomTimelinePage(q:Pick<PoolClient,'query'>,a:RoomCommunityActor,roomId:string,input:Row,project:(kind:string,row:Row)=>Promise<Row>){
 const search=input.search??'',parentId=input.parentId??null,size=input.limit??100;
 const pins=input.pinnedOnly===true||input.pinnedOnly==='true';
 if(input.pinnedOnly!==undefined&&!['true','false',true,false].includes(input.pinnedOnly)||pins&&parentId!==null)invalid();
 if(typeof search!=='string'||search.length>100||parentId!==null&&(typeof parentId!=='string'||!parentId.length||parentId.length>160))invalid();
 if(typeof size!=='number'&&(typeof size!=='string'||!/^\d{1,3}$/.test(size)))invalid();
 const limit=Number(size);if(!Number.isInteger(limit)||limit<1||limit>100)invalid();
 const query=search.trim(),scope=createHash('sha256').update(JSON.stringify([a.tenantId,a.userId,roomId,query,parentId,...(pins?['pinned']:[])])).digest('hex');
 let at:string|null=null,id:string|null=null,kind:string|null=null;
 if(input.cursor!==undefined&&input.cursor!==null){
  const raw=input.cursor;if(typeof raw!=='string'||!raw.length||raw.length>1600||!/^[\w-]+$/.test(raw))invalid();
  try{
   if(Buffer.from(raw,'base64url').toString('base64url')!==raw)invalid();
   const v=JSON.parse(Buffer.from(raw,'base64url').toString('utf8'));
   if(v.v!==1||v.scope!==scope||typeof v.at!=='string'||!/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{6}Z$/.test(v.at)||typeof v.id!=='string'||!v.id.length||v.id.length>160||!['post','reply','answer'].includes(v.kind))invalid();
   if(v.at.startsWith('0000')||new Date(v.at).toISOString().slice(0,19)!==v.at.slice(0,19))invalid();
   at=v.at;id=v.id;kind=v.kind;
  }catch{invalid();}
 }
 let parent:Row|null=null;
 if(parentId){
  const row=(await q.query("SELECT * FROM rooms.lessons WHERE tenant_id=$1 AND room_id=$2 AND lesson_id=$3 AND state='published' AND (publish_at IS NULL OR publish_at<=statement_timestamp())",[a.tenantId,roomId,parentId])).rows[0];
  if(!row)throw Object.assign(new Error('thread_not_found'),{statusCode:404});
  parent=await project('post',row);
 }
 const pattern='%'+query.replace(/[#%_]/g,v=>'#'+v)+'%';
 const rows=(await q.query(`SELECT page.*,to_char(page_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS page_time FROM (
  SELECT p.lesson_id AS row_id,'post'::text AS row_kind,p.created_at AS page_at,to_jsonb(p) AS payload FROM rooms.lessons p
   WHERE p.tenant_id=$1 AND p.room_id=$2 AND p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AND $4::text IS NULL AND (NOT $9::boolean OR p.pinned) AND p.body ILIKE $3 ESCAPE '#'
  UNION ALL SELECT d.reply_id,'reply',d.created_at,to_jsonb(d)||jsonb_build_object('parent_comments_enabled',p.comments_enabled) FROM rooms.discussion_replies d JOIN rooms.lessons p ON p.tenant_id=d.tenant_id AND p.room_id=d.room_id AND p.lesson_id=d.lesson_id
   WHERE d.tenant_id=$1 AND d.room_id=$2 AND NOT $9::boolean AND d.moderation_state='visible' AND p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AND ($4::text IS NULL OR d.lesson_id=$4) AND d.body ILIKE $3 ESCAPE '#'
  UNION ALL SELECT ans.answer_id,'answer',ans.created_at,to_jsonb(ans)||jsonb_build_object('source_lesson_id',question.source_lesson_id) FROM rooms.answers ans
   JOIN rooms.questions question ON question.tenant_id=ans.tenant_id AND question.question_id=ans.question_id
   JOIN rooms.masana_participants participant ON participant.tenant_id=question.tenant_id AND participant.room_id=question.room_id AND participant.character_id=question.target_character_id AND participant.active
   JOIN rooms.lessons p ON p.tenant_id=question.tenant_id AND p.room_id=question.room_id AND p.lesson_id=question.source_lesson_id
   WHERE question.tenant_id=$1 AND question.room_id=$2 AND NOT $9::boolean AND question.state='answered' AND ans.state='approved' AND p.state='published' AND (p.publish_at IS NULL OR p.publish_at<=statement_timestamp()) AND ($4::text IS NULL OR p.lesson_id=$4) AND ans.body ILIKE $3 ESCAPE '#'
 ) page WHERE ($5::timestamptz IS NULL OR (page_at,row_id,row_kind)<($5::timestamptz,$6::text,$7::text)) ORDER BY page_at DESC,row_id DESC,row_kind DESC LIMIT $8`,[a.tenantId,roomId,pattern,parentId,at,id,kind,limit+1,pins])).rows;
 const selected=rows.slice(0,limit),last=selected.at(-1),items:Row[]=[];
 // One client owns this transaction; do not queue simultaneous projections.
 for(const row of [...selected].reverse())items.push(await project(row.row_kind,row.payload));
 return {paginationVersion:1,pinnedOnly:pins,items,parent,nextCursor:rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,scope,at:last.page_time,id:last.row_id,kind:last.row_kind})).toString('base64url'):null};
}
