import {createHash} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';
type Row=Record<string,any>;
function invalid():never{throw Object.assign(new Error('invalid_moderation_page'),{statusCode:422});}

// Internal queries supply rank/time/id, never interpolated client SQL. Every
// caller reapplies its current Room authorization and row predicates first.
export async function moderationPage(q:Pick<PoolClient,'query'>,actor:RoomCommunityActor,roomId:string,listing:string,input:Row,sql:string,values:unknown[],defaultLimit:number){
 const scope=createHash('sha256').update(JSON.stringify([actor.tenantId,actor.userId,roomId,listing])).digest('hex');
 const size=input.limit??defaultLimit;
 if(typeof size!=='number'&&(typeof size!=='string'||!/^\d{1,3}$/.test(size)))invalid();
 const limit=Number(size);if(!Number.isInteger(limit)||limit<1||limit>100)invalid();
 let rank:number|null=null,time:string|null=null,id:string|null=null;
 if(input.cursor!==undefined&&input.cursor!==null){
  const raw=input.cursor;
  if(typeof raw!=='string'||!raw.length||raw.length>1600||!/^[\w-]+$/.test(raw))invalid();
  try{
   if(Buffer.from(raw,'base64url').toString('base64url')!==raw)invalid();
   const v=JSON.parse(Buffer.from(raw,'base64url').toString('utf8'));
   if(v.v!==1||v.scope!==scope||!Number.isSafeInteger(v.rank)||v.rank<0||typeof v.time!=='string'||!/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{6}Z$/.test(v.time)||typeof v.id!=='string'||!v.id.length||v.id.length>160)invalid();
   if(v.time.startsWith('0000')||new Date(v.time).toISOString().slice(0,19)!==v.time.slice(0,19))invalid();
   rank=v.rank;time=v.time;id=v.id;
  }catch{invalid();}
 }
 const n=values.length;
 const rows=(await q.query(`SELECT page.*,to_char(page_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS cursor_time FROM (${sql}) page
  WHERE ($${n+2}::timestamptz IS NULL OR (page_rank,page_at,page_id)<($${n+1}::bigint,$${n+2}::timestamptz,$${n+3}::text))
  ORDER BY page_rank DESC,page_at DESC,page_id DESC LIMIT $${n+4}`, [...values,rank,time,id,limit+1])).rows;
 const items=rows.slice(0,limit),last=items.at(-1);
 const nextCursor=rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,scope,rank:Number(last.page_rank),time:last.cursor_time,id:last.page_id})).toString('base64url'):null;
 return {items,nextCursor};
}
