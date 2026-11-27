import type {FastifyInstance} from 'fastify';
import {withTransaction,type Pool} from '@masanawa/postgres';
import type {CivicRatingPorts} from './civic_rating_routes.js';
import {createHash} from 'node:crypto';

export const FORUM_ROOMS=[
 ['rights','Fundamental human rights','Rights'],['tenants','Tenants & housing','Rights'],['police','Police & citizens’ rights','Rights'],['employment','Employment & labour','Rights'],['banking','Banking & financial rights','Services'],['electricity','Electricity & utilities','Services'],['education','Education','Services'],['health','Healthcare','Services'],['digital','Digital & telecommunications','Services'],['business','Business & entrepreneurship','Services'],['states','States & local communities','National'],['national','National affairs','National'],
 ['cac','Corporate Affairs Commission (CAC)','Agencies'],['nimc','National Identity Management Commission (NIMC)','Agencies'],['inec','Independent National Electoral Commission (INEC)','Agencies'],['efcc','Economic and Financial Crimes Commission (EFCC)','Agencies'],['icpc','Independent Corrupt Practices Commission (ICPC)','Agencies'],['nafdac','NAFDAC','Agencies'],['frsc','Federal Road Safety Corps (FRSC)','Agencies'],['nhrc','National Human Rights Commission (NHRC)','Agencies'],['fccpc','Federal Competition and Consumer Protection Commission','Agencies'],['cbn','Central Bank of Nigeria (CBN)','Agencies'],['ndpc','Nigeria Data Protection Commission (NDPC)','Agencies'],
].map(([id,name,category])=>({id:id!,name:name!,category:category!}));
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
const kinds=['question','complaint','concern','awareness','suggestion','feedback','general'];
const signals=['follow','affected','attention','helpful','resolved'];
const validText=(v:unknown,min:number,max:number):v is string=>typeof v==='string'&&v.trim().length>=min&&v.trim().length<=max;
type Actor={tenantId:string;userId:string};
class ForumError extends Error{constructor(readonly status:number,readonly code:string){super(code)}}
export function validForumTopic(v:unknown):v is {id:string;room:string;title:string;body:string;kind:string;jurisdiction:string}{
 if(!v||typeof v!=='object'||Array.isArray(v))return false;const b=v as Record<string,unknown>;
 return Object.keys(b).every(k=>['id','room','title','body','kind','jurisdiction'].includes(k))&&typeof b.id==='string'&&uuid.test(b.id)&&FORUM_ROOMS.some(r=>r.id===b.room)&&validText(b.title,10,160)&&validText(b.body,30,4000)&&typeof b.kind==='string'&&kinds.includes(b.kind)&&validText(b.jurisdiction,2,100);
}
const clean=(s:string)=>s.trim().replace(/\s+/g,' ');
export function registerCitizenForum(app:FastifyInstance,ports:CivicRatingPorts){
 const db=ports.pool,tenant=ports.publicTenantId;
 if(!tenant)return;
 const actor=async(h:string|undefined)=>{await ports.beforeWrite(h);const a=await ports.authorize(h);if(a.tenantId!==tenant)throw new ForumError(403,'forbidden');return a};
 const publicFields='t.id,t.room,t.title,t.body,t.kind,t.jurisdiction,t.created_at';
 const counts=`(SELECT count(*)::int FROM agents.forum_messages m JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active' WHERE m.tenant_id=t.tenant_id AND m.topic_id=t.id AND m.state='published') AS replies,
 (SELECT count(DISTINCT e.user_id)::int FROM agents.forum_engagement e JOIN identity.users u ON u.tenant_id=e.tenant_id AND u.user_id=e.user_id AND u.state='active' WHERE e.tenant_id=t.tenant_id AND e.topic_id=t.id AND e.signal IN ('affected','attention')) AS participants`;
 const visible=`t.tenant_id=$1 AND t.state='published' AND EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active')`;
 const budget=async(c:Pick<Pool,'query'>,a:Actor)=>{const q=await c.query(`INSERT INTO agents.forum_write_budget(tenant_id,user_id,hour_start,attempts) VALUES($1,$2,date_trunc('hour',clock_timestamp()),1) ON CONFLICT(tenant_id,user_id) DO UPDATE SET hour_start=excluded.hour_start,attempts=CASE WHEN forum_write_budget.hour_start=excluded.hour_start THEN forum_write_budget.attempts+1 ELSE 1 END WHERE forum_write_budget.hour_start<>excluded.hour_start OR forum_write_budget.attempts<60 RETURNING attempts`,[a.tenantId,a.userId]);if(!q.rows.length)throw new ForumError(429,'rate_limited')};
 const fail=async(reply:{code:(n:number)=>unknown},work:()=>Promise<unknown>)=>{try{return await work()}catch(e){const error=e as {statusCode?:number;code?:string};const status=e instanceof ForumError?e.status:error.code==='23505'?409:error.statusCode===401||error.statusCode===403?error.statusCode:503;reply.code(status);return {error:e instanceof ForumError?e.code:status===409?'duplicate_topic':status===401?'sign_in_required':status===403?'forbidden':'forum_unavailable'}}};
 app.get('/v1/forum/rooms',async()=>({rooms:FORUM_ROOMS,feeKobo:0,moderated:true}));
 app.get('/v1/forum/topics',async(q,r)=>fail(r,async()=>{
  const v=q.query as {room?:string;sort?:string;offset?:string;query?:string};const room=v.room||null;if(room&&!FORUM_ROOMS.some(x=>x.id===room))throw new ForumError(400,'invalid_room');
  const offset=Number(v.offset||0);if(!Number.isInteger(offset)||offset<0||offset>10000||typeof v.query==='string'&&v.query.length>100)throw new ForumError(400,'invalid_query');
  const order=v.sort==='trending'?'participants DESC,replies DESC,t.created_at DESC,t.id DESC':'t.created_at DESC,t.id DESC';
  const result=await db.query(`SELECT ${publicFields},${counts} FROM agents.forum_topics t WHERE ${visible} AND ($2::text IS NULL OR t.room=$2) AND ($3::text IS NULL OR strpos(lower(t.title),lower($3))>0) ORDER BY ${order} LIMIT 31 OFFSET $4`,[tenant,room,v.query||null,offset]);return {topics:result.rows.slice(0,30),nextOffset:result.rows.length>30?offset+30:null};
 }));
 app.get('/v1/forum/topics/:id',async(q,r)=>fail(r,async()=>{
  const {id}=q.params as {id:string};if(!uuid.test(id))throw new ForumError(400,'invalid_topic');
  const t=(await db.query(`SELECT ${publicFields},${counts} FROM agents.forum_topics t WHERE ${visible} AND t.id=$2`,[tenant,id])).rows[0];if(!t)throw new ForumError(404,'topic_not_found');
  const offset=Number((q.query as {offset?:string}).offset||0);if(!Number.isInteger(offset)||offset<0||offset>10000)throw new ForumError(400,'invalid_offset');
  const rows=(await db.query<{id:string;body:string;created_at:string;user_id:string}>(`SELECT m.id,m.body,m.created_at,m.user_id FROM agents.forum_messages m JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active' WHERE m.tenant_id=$1 AND m.topic_id=$2 AND m.state='published' ORDER BY m.created_at DESC,m.id DESC LIMIT 51 OFFSET $3`,[tenant,id,offset])).rows;
  // Stable topic-local alias; never return internal account IDs or contact data.
  const messages=rows.slice(0,50).reverse().map(m=>({id:m.id,body:m.body,created_at:m.created_at,author:'Member '+createHash('sha256').update(id+':'+m.user_id).digest('hex').slice(0,8)}));
  return {topic:t,messages,nextOffset:rows.length>50?offset+50:null};
 }));
 app.get('/v1/forum/mine',async(q,r)=>fail(r,async()=>{
  const a=await ports.authorize(q.headers.authorization);if(a.tenantId!==tenant)throw new ForumError(403,'forbidden');
  const topics=(await db.query(`SELECT id,room,title,body,kind,jurisdiction,state,created_at,review_reason FROM agents.forum_topics WHERE tenant_id=$1 AND user_id=$2 ORDER BY created_at DESC LIMIT 100`,[tenant,a.userId])).rows;
  const followed=(await db.query(`SELECT ${publicFields},${counts} FROM agents.forum_topics t JOIN agents.forum_engagement e ON e.tenant_id=t.tenant_id AND e.topic_id=t.id AND e.signal='follow' AND e.user_id=$2 WHERE ${visible} ORDER BY t.created_at DESC LIMIT 100`,[tenant,a.userId])).rows;
  return {topics,followed};
 }));
 app.post('/v1/forum/topics',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization);const b=q.body;if(!validForumTopic(b))throw new ForumError(400,'invalid_topic');
  return withTransaction(db,async c=>{
   await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['forum:'+tenant+':'+a.userId]);
   const old=(await c.query('SELECT id,room,title,body,kind,jurisdiction,state FROM agents.forum_topics WHERE tenant_id=$1 AND user_id=$2 AND id=$3',[tenant,a.userId,b.id])).rows[0];
   if(old){if(old.room!==b.room||old.title!==clean(b.title)||old.body!==b.body.trim()||old.kind!==b.kind||old.jurisdiction!==clean(b.jurisdiction))throw new ForumError(409,'request_conflict');return {id:old.id,state:old.state};}
   await budget(c,a);
   const recent=(await c.query('SELECT count(*)::int AS n FROM agents.forum_topics WHERE tenant_id=$1 AND user_id=$2 AND created_at>clock_timestamp()-interval \'1 day\'',[tenant,a.userId])).rows[0];if(Number(recent.n)>=5)throw new ForumError(429,'topic_daily_limit');
   await c.query('INSERT INTO agents.forum_topics(tenant_id,id,user_id,room,title,body,kind,jurisdiction) VALUES($1,$2,$3,$4,$5,$6,$7,$8)',[tenant,b.id,a.userId,b.room,clean(b.title),b.body.trim(),b.kind,clean(b.jurisdiction)]);return {id:b.id,state:'pending'};
  });
 }));
 app.post('/v1/forum/topics/:id/messages',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization),{id}=q.params as {id:string},b=q.body as {id?:unknown;body?:unknown}|null;
  if(!uuid.test(id)||!b||typeof b.id!=='string'||!uuid.test(b.id)||!validText(b.body,1,2000))throw new ForumError(400,'invalid_message');
  const messageId=b.id,body=b.body.trim();return withTransaction(db,async c=>{
   await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['forum:'+tenant+':'+a.userId]);
   if(!(await c.query(`SELECT id FROM agents.forum_topics t WHERE ${visible} AND t.id=$2 FOR SHARE`,[tenant,id])).rows.length)throw new ForumError(404,'topic_not_found');
   const old=(await c.query('SELECT topic_id,body,state FROM agents.forum_messages WHERE tenant_id=$1 AND user_id=$2 AND id=$3',[tenant,a.userId,messageId])).rows[0];
   if(old){if(old.topic_id!==id||old.body!==body)throw new ForumError(409,'request_conflict');return {id:messageId,state:old.state};}
   await budget(c,a);await c.query('INSERT INTO agents.forum_messages(tenant_id,id,topic_id,user_id,body) VALUES($1,$2,$3,$4,$5)',[tenant,messageId,id,a.userId,body]);return {id:messageId,state:'pending'};
  });
 }));
 app.post('/v1/forum/topics/:id/signal',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization),{id}=q.params as {id:string},b=q.body as {signal?:string;enabled?:boolean}|null;
  if(!uuid.test(id)||!b||!signals.includes(b.signal||'')||typeof b.enabled!=='boolean')throw new ForumError(400,'invalid_signal');
  return withTransaction(db,async c=>{await budget(c,a);if(!(await c.query(`SELECT id FROM agents.forum_topics t WHERE ${visible} AND t.id=$2 FOR SHARE`,[tenant,id])).rows.length)throw new ForumError(404,'topic_not_found');
   if(b.enabled)await c.query('INSERT INTO agents.forum_engagement(tenant_id,topic_id,user_id,signal) VALUES($1,$2,$3,$4) ON CONFLICT DO NOTHING',[tenant,id,a.userId,b.signal]);else await c.query('DELETE FROM agents.forum_engagement WHERE tenant_id=$1 AND topic_id=$2 AND user_id=$3 AND signal=$4',[tenant,id,a.userId,b.signal]);return {ok:true};
  });
 }));
}
