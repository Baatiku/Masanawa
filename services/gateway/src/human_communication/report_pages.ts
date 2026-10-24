import type {HumanSql} from './index.js';

type Actor={tenantId:string;userId:string};
type Query=Record<string,unknown>;
function invalid():never{throw Object.assign(new Error('Invalid report page'),{statusCode:400});}

/** Reports are private evidence submitted by the current actor, not decisions
 * or a public accusation feed. Never join private message bodies/peer identity. */
export async function ownHumanReportPage(db:HumanSql,a:Actor,q:Query){
 const raw=q.limit??50;
 if(typeof raw!=='number'&&(typeof raw!=='string'||!/^\d{1,3}$/.test(raw)))invalid();
 const limit=Number(raw);
 if(!Number.isInteger(limit)||limit<1||limit>100)invalid();
 let timestamp:string|null=null,id:string|null=null;
 if(q.before!==undefined&&q.before!==null){
  if(typeof q.before!=='string'||!q.before.trim()||q.before.length>200)invalid();
  const anchor=(await db.query('SELECT created_at::text AS moment,id FROM talks.human_reports WHERE tenant_id=$1 AND user_id=$2 AND id=$3',[a.tenantId,a.userId,q.before])).rows[0];
  if(!anchor)invalid();
  timestamp=String(anchor.moment);id=String(anchor.id);
 }
 const results=await db.query(`SELECT id,message_id,reason,created_at
  FROM talks.human_reports
  WHERE tenant_id=$1 AND user_id=$2 AND ($3::timestamptz IS NULL OR (created_at,id)<($3::timestamptz,$4::text))
  ORDER BY created_at DESC,id DESC LIMIT $5`,
  [a.tenantId,a.userId,timestamp,id,limit+1]);
 const page=results.rows.slice(0,limit);
 return {
  paginationVersion:1,
  items:page.map(r=>({reportId:r.id,messageId:r.message_id,reason:r.reason,submittedAt:new Date(String(r.created_at)).toISOString(),status:'submitted' as const})),
  nextCursor:results.rows.length>limit?String(page.at(-1)!.id):null
 };
}
