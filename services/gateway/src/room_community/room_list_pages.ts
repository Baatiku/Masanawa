import {createHash} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
function invalid():never{throw Object.assign(new Error('invalid_room_page'),{statusCode:422});}

export async function roomListPage(q:Pick<PoolClient,'query'>,a:RoomCommunityActor,mode:string,input:Row,project:(row:Row)=>Promise<Row>){
 const search=input.search??'';
 if(typeof search!=='string'||search.length>100)invalid();
 const query=search.trim(),scope=createHash('sha256').update(JSON.stringify([a.tenantId,a.userId,mode,query])).digest('hex');
 const size=input.limit??100;
 if(typeof size!=='number'&&(typeof size!=='string'||!/^\d{1,3}$/.test(size)))invalid();
 const limit=Number(size);if(!Number.isInteger(limit)||limit<1||limit>100)invalid();
 let time:string|null=null,id:string|null=null,pinned:boolean|null=null;
 if(input.cursor!==undefined&&input.cursor!==null){
  const raw=input.cursor;if(typeof raw!=='string'||raw.length>1600||!raw.length||!/^[\w-]+$/.test(raw))invalid();
  try{
   if(Buffer.from(raw,'base64url').toString('base64url')!==raw)invalid();
   const value=JSON.parse(Buffer.from(raw,'base64url').toString('utf8'));
   if(value.v!==1||value.scope!==scope||typeof value.pinned!=='boolean'||typeof value.time!=='string'||!/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{6}Z$/.test(value.time)||typeof value.id!=='string'||!value.id.length||value.id.length>160)invalid();
   if(value.time.startsWith('0000')||new Date(value.time).toISOString().slice(0,19)!==value.time.slice(0,19))invalid();
   time=value.time;id=value.id;pinned=value.pinned;
  }catch{invalid();}
 }
 // Treat %, _ and the escape itself literally; this is a user text search,
 // never a way to expand authorization or silently turn input into a pattern.
 const pattern='%'+query.replace(/[#%_]/g,v=>'#'+v)+'%';
 const rows=(await q.query(`SELECT r.*,m.role AS member_role,m.state AS member_state,m.muted,COALESCE(m.pinned,false) AS pinned,
  to_char(r.updated_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS page_time
  FROM rooms.rooms r LEFT JOIN rooms.memberships m ON m.tenant_id=r.tenant_id AND m.room_id=r.room_id AND m.user_id=$2
  WHERE r.tenant_id=$1 AND r.state='published'
  AND (($3='mine' AND m.state='active') OR ($3='discover' AND r.visibility='public' AND COALESCE(m.state,'')<>'banned'))
  AND ($3='mine' OR NOT EXISTS(SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=r.tenant_id AND b.blocked AND ((b.viewer_user_id=$2 AND b.subject_user_id=r.owner_user_id) OR (b.subject_user_id=$2 AND b.viewer_user_id=r.owner_user_id))))
  AND (r.profession_title ILIKE $4 ESCAPE '#' OR r.description ILIKE $4 ESCAPE '#')
  AND ($7::timestamptz IS NULL OR (COALESCE(m.pinned,false),r.updated_at,r.room_id)<($6::boolean,$7::timestamptz,$8::text))
  ORDER BY COALESCE(m.pinned,false) DESC,r.updated_at DESC,r.room_id DESC LIMIT $5`,[a.tenantId,a.userId,mode,pattern,limit+1,pinned,time,id])).rows;
 const selected=rows.slice(0,limit),last=selected.at(-1);
 const nextCursor=rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,scope,pinned:last.pinned,time:last.page_time,id:last.room_id})).toString('base64url'):null;
 // Projection reads share this transaction client; do not enqueue concurrent
 // queries on a single pg client (deprecated by the driver).
 const items:Row[]=[];for(const row of selected)items.push(await project(row));
 return {paginationVersion:1,items,nextCursor};
}
