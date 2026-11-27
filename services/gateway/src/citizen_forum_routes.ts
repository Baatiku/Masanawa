import type {FastifyInstance} from 'fastify';
import {withTransaction,type Pool} from '@masanawa/postgres';
import type {CivicRatingPorts} from './civic_rating_routes.js';
import {createHash} from 'node:crypto';

export const FORUM_ROOMS=[
 ['rights','Fundamental human rights','Rights'],['tenants','Tenants & housing','Rights'],['police','Police & citizens’ rights','Rights'],['employment','Employment & labour','Rights'],['banking','Banking & financial rights','Services'],['electricity','Electricity & utilities','Services'],['education','Education','Services'],['health','Healthcare','Services'],['digital','Digital & telecommunications','Services'],['business','Business & entrepreneurship','Services'],['states','States & local communities','National'],['national','National affairs','National'],
 ['cac','Corporate Affairs Commission (CAC)','Agencies'],['nimc','National Identity Management Commission (NIMC)','Agencies'],['inec','Independent National Electoral Commission (INEC)','Agencies'],['efcc','Economic and Financial Crimes Commission (EFCC)','Agencies'],['icpc','Independent Corrupt Practices Commission (ICPC)','Agencies'],['nafdac','NAFDAC','Agencies'],['frsc','Federal Road Safety Corps (FRSC)','Agencies'],['nhrc','National Human Rights Commission (NHRC)','Agencies'],['fccpc','Federal Competition and Consumer Protection Commission','Agencies'],['cbn','Central Bank of Nigeria (CBN)','Agencies'],['ndpc','Nigeria Data Protection Commission (NDPC)','Agencies'],
].map(([id,name,category])=>({id:id!,name:name!,category:category!}));
export function forumChannelId(room:string){
 const h=createHash('sha256').update('citizenvoice:general:'+room).digest('hex');return `${h.slice(0,8)}-${h.slice(8,12)}-5${h.slice(13,16)}-a${h.slice(17,20)}-${h.slice(20,32)}`;
}
const channelFor=(id:string)=>FORUM_ROOMS.find(r=>forumChannelId(r.id)===id);
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
const kinds=['question','complaint','concern','awareness','suggestion','feedback','general'];
const signals=['follow','affected','attention','helpful','resolved'];
const validText=(v:unknown,min:number,max:number):v is string=>typeof v==='string'&&v.trim().length>=min&&v.trim().length<=max;
type Actor={tenantId:string;userId:string};
class ForumError extends Error{constructor(readonly status:number,readonly code:string){super(code)}}
export function validForumTopic(v:unknown):v is {id:string;room:string;title:string;body:string;kind:string;jurisdiction:string}{
 if(!v||typeof v!=='object'||Array.isArray(v))return false;const b=v as Record<string,unknown>;
 return Object.keys(b).every(k=>['id','room','title','body','kind','jurisdiction'].includes(k))&&typeof b.id==='string'&&uuid.test(b.id)&&!channelFor(b.id.toLowerCase())&&FORUM_ROOMS.some(r=>r.id===b.room)&&validText(b.title,10,160)&&validText(b.body,30,4000)&&typeof b.kind==='string'&&kinds.includes(b.kind)&&validText(b.jurisdiction,2,100);
}
export const normalizeForumText=(s:string)=>s.trim().replace(/\s+/g,' ');
export function registerCitizenForum(app:FastifyInstance,ports:CivicRatingPorts){
 const db=ports.pool,tenant=ports.publicTenantId;
 if(!tenant)return;
 const actor=async(h:string|undefined)=>{await ports.beforeWrite(h);const a=await ports.authorize(h);if(a.tenantId!==tenant)throw new ForumError(403,'forbidden');return a};
 const publicFields='t.id,t.room,t.title,t.body,t.kind,t.jurisdiction,t.created_at,t.system_channel';
 const counts=`(SELECT count(*)::int FROM agents.forum_messages m JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active' WHERE m.tenant_id=t.tenant_id AND m.topic_id=t.id AND m.state='published') AS replies,
 (SELECT count(DISTINCT e.user_id)::int FROM agents.forum_engagement e JOIN identity.users u ON u.tenant_id=e.tenant_id AND u.user_id=e.user_id AND u.state='active' WHERE e.tenant_id=t.tenant_id AND e.topic_id=t.id AND e.signal IN ('affected','attention')) AS participants`;
 const visible=`t.tenant_id=$1 AND t.state='published' AND (t.system_channel OR EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active'))`;
 const ensureChannel=async(c:Pick<Pool,'query'>,id:string)=>{const room=channelFor(id.toLowerCase());if(room)await c.query(`INSERT INTO agents.forum_topics(tenant_id,id,user_id,room,title,body,kind,jurisdiction,state,system_channel) VALUES($1,$2,NULL,$3,'General discussion','A permanent public discussion for this civic room. Keep contributions constructive.','general','National','published',true) ON CONFLICT(tenant_id,id) DO NOTHING`,[tenant,id,room.id]);};
 const budget=async(c:Pick<Pool,'query'>,a:Actor)=>{const q=await c.query(`INSERT INTO agents.forum_write_budget(tenant_id,user_id,hour_start,attempts) VALUES($1,$2,date_trunc('hour',clock_timestamp()),1) ON CONFLICT(tenant_id,user_id) DO UPDATE SET hour_start=excluded.hour_start,attempts=CASE WHEN forum_write_budget.hour_start=excluded.hour_start THEN forum_write_budget.attempts+1 ELSE 1 END WHERE forum_write_budget.hour_start<>excluded.hour_start OR forum_write_budget.attempts<60 RETURNING attempts`,[a.tenantId,a.userId]);if(!q.rows.length)throw new ForumError(429,'rate_limited')};
 const fail=async(reply:{code:(n:number)=>unknown},work:()=>Promise<unknown>)=>{try{return await work()}catch(e){const error=e as {statusCode?:number;code?:string};const status=e instanceof ForumError?e.status:error.code==='23505'?409:error.statusCode===401||error.statusCode===403?error.statusCode:503;reply.code(status);return {error:e instanceof ForumError?e.code:status===409?'duplicate_topic':status===401?'sign_in_required':status===403?'forbidden':'forum_unavailable'}}};
 app.get('/v1/forum/rooms',async()=>({rooms:FORUM_ROOMS.map(room=>({...room,channelId:forumChannelId(room.id)})),feeKobo:0,moderated:true}));
 app.get('/v1/forum/pulse',async(q,r)=>fail(r,async()=>{
  const rows=await db.query<{room:string;topics:number;replies:number;participants:number}>(`WITH visible_topics AS (SELECT t.id,t.room,t.system_channel,t.created_at FROM agents.forum_topics t WHERE ${visible}),
 recent_topics AS (SELECT room,count(*)::int AS topics FROM visible_topics WHERE NOT system_channel AND created_at>=clock_timestamp()-interval '7 days' GROUP BY room),
 recent_messages AS (SELECT t.room,count(*)::int AS replies FROM visible_topics t JOIN agents.forum_messages m ON m.tenant_id=$1 AND m.topic_id=t.id AND m.state='published' JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active' WHERE m.created_at>=clock_timestamp()-interval '7 days' GROUP BY t.room),
 feedback AS (SELECT t.room,count(DISTINCT e.user_id)::int AS participants FROM visible_topics t JOIN agents.forum_engagement e ON e.tenant_id=$1 AND e.topic_id=t.id AND e.signal IN ('affected','attention') JOIN identity.users u ON u.tenant_id=e.tenant_id AND u.user_id=e.user_id AND u.state='active' GROUP BY t.room)
 SELECT rooms.room,COALESCE(t.topics,0)::int AS topics,COALESCE(m.replies,0)::int AS replies,COALESCE(f.participants,0)::int AS participants FROM unnest($2::text[]) AS rooms(room) LEFT JOIN recent_topics t USING(room) LEFT JOIN recent_messages m USING(room) LEFT JOIN feedback f USING(room)`,[tenant,FORUM_ROOMS.map(room=>room.id)]);
  return {periodDays:7,asOf:new Date().toISOString(),rooms:rows.rows.map(row=>({...row,participants:row.participants>=5?row.participants:null}))};
 }));
 app.get('/v1/forum/topics',async(q,r)=>fail(r,async()=>{
  const v=q.query as {room?:string;sort?:string;offset?:string;query?:string};const room=v.room||null;if(room&&!FORUM_ROOMS.some(x=>x.id===room))throw new ForumError(400,'invalid_room');
  const offset=Number(v.offset||0);if(!Number.isInteger(offset)||offset<0||offset>10000||typeof v.query==='string'&&v.query.length>100)throw new ForumError(400,'invalid_query');
  const order=v.sort==='trending'?'participants DESC,replies DESC,t.created_at DESC,t.id DESC':'t.created_at DESC,t.id DESC';
  const result=await db.query(`SELECT ${publicFields},${counts} FROM agents.forum_topics t WHERE ${visible} AND NOT t.system_channel AND ($2::text IS NULL OR t.room=$2) AND ($3::text IS NULL OR strpos(lower(t.title),lower($3))>0) ORDER BY ${order} LIMIT 31 OFFSET $4`,[tenant,room,v.query||null,offset]);return {topics:result.rows.slice(0,30),nextOffset:result.rows.length>30?offset+30:null};
 }));
 app.get('/v1/forum/topics/:id',async(q,r)=>fail(r,async()=>{
  const {id}=q.params as {id:string};if(!uuid.test(id))throw new ForumError(400,'invalid_topic');
  const channel=channelFor(id.toLowerCase());
  const t=(await db.query(`SELECT ${publicFields},${counts} FROM agents.forum_topics t WHERE ${visible} AND t.id=$2`,[tenant,id])).rows[0]??(channel?{id,room:channel.id,title:'General discussion',body:'A permanent public discussion for this civic room. Keep contributions constructive.',kind:'general',jurisdiction:'National',created_at:null,system_channel:true,replies:0,participants:0}:null);if(!t)throw new ForumError(404,'topic_not_found');
  const offset=Number((q.query as {offset?:string}).offset||0);if(!Number.isInteger(offset)||offset<0||offset>10000)throw new ForumError(400,'invalid_offset');
  const rows=(await db.query<{id:string;body:string;created_at:string;user_id:string;reply_to:string|null;reply_body:string|null;agency_representative:boolean}>(`SELECT m.id,m.body,m.created_at,m.user_id,p.id AS reply_to,p.body AS reply_body,EXISTS(SELECT 1 FROM agents.forum_representatives rep JOIN agents.forum_topics rt ON rt.tenant_id=rep.tenant_id AND rt.room=rep.room WHERE rep.tenant_id=m.tenant_id AND rep.user_id=m.user_id AND rep.active AND rt.id=m.topic_id) AS agency_representative FROM agents.forum_messages m LEFT JOIN agents.forum_messages p ON p.tenant_id=m.tenant_id AND p.topic_id=m.topic_id AND p.id=m.reply_to AND p.state='published' AND EXISTS(SELECT 1 FROM identity.users pu WHERE pu.tenant_id=p.tenant_id AND pu.user_id=p.user_id AND pu.state='active') JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active' WHERE m.tenant_id=$1 AND m.topic_id=$2 AND m.state='published' ORDER BY m.created_at DESC,m.id DESC LIMIT 51 OFFSET $3`,[tenant,id,offset])).rows;
  // Stable topic-local alias; never return internal account IDs or contact data.
  const messages=rows.slice(0,50).reverse().map(m=>({id:m.id,body:m.body,created_at:m.created_at,reply_to:m.reply_to,reply_excerpt:m.reply_body?.slice(0,160)??null,agency_representative:m.agency_representative===true,author:'Member '+createHash('sha256').update(id+':'+m.user_id).digest('hex').slice(0,8)}));
  return {topic:t,messages,nextOffset:rows.length>50?offset+50:null};
 }));
 app.get('/v1/forum/mine',async(q,r)=>fail(r,async()=>{
  const a=await ports.authorize(q.headers.authorization);if(a.tenantId!==tenant)throw new ForumError(403,'forbidden');
  const topics=(await db.query(`SELECT id,room,title,body,kind,jurisdiction,state,created_at,review_reason FROM agents.forum_topics WHERE tenant_id=$1 AND user_id=$2 ORDER BY created_at DESC LIMIT 100`,[tenant,a.userId])).rows;
  const followed=(await db.query(`SELECT ${publicFields},${counts} FROM agents.forum_topics t JOIN agents.forum_engagement e ON e.tenant_id=t.tenant_id AND e.topic_id=t.id AND e.signal='follow' AND e.user_id=$2 WHERE ${visible} ORDER BY t.created_at DESC LIMIT 100`,[tenant,a.userId])).rows;
  const messages=(await db.query(`SELECT id,topic_id,body,state,created_at,review_reason FROM agents.forum_messages WHERE tenant_id=$1 AND user_id=$2 AND state IN ('rejected','hidden') ORDER BY created_at DESC LIMIT 100`,[tenant,a.userId])).rows;
  const cases=(await db.query(`SELECT id,kind,target_kind,target_id,state,review_reason,created_at FROM agents.forum_cases WHERE tenant_id=$1 AND user_id=$2 ORDER BY created_at DESC LIMIT 100`,[tenant,a.userId])).rows;
  return {topics,followed,messages,cases};
 }));
 app.get('/v1/forum/notifications',async(q,r)=>fail(r,async()=>{
  const a=await ports.authorize(q.headers.authorization);if(a.tenantId!==tenant)throw new ForumError(403,'forbidden');
  const rows=(await db.query(`WITH items AS (
   SELECT 'topic:'||t.id::text AS id,'topic_review' AS kind,t.id AS topic_id,t.title AS title,t.state AS state,t.reviewed_at AS occurred_at FROM agents.forum_topics t WHERE t.tenant_id=$1 AND t.user_id=$2 AND t.reviewed_at IS NOT NULL
   UNION ALL SELECT 'message:'||m.id::text,'message_review',t.id,t.title,m.state,m.reviewed_at FROM agents.forum_messages m JOIN agents.forum_topics t ON t.tenant_id=m.tenant_id AND t.id=m.topic_id WHERE m.tenant_id=$1 AND m.user_id=$2 AND m.reviewed_at IS NOT NULL AND (t.user_id=$2 OR (t.state='published' AND (t.system_channel OR EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active'))))
   UNION ALL SELECT 'case:'||c.id::text,'case_review',NULL::uuid,'Moderation case',c.state,c.reviewed_at FROM agents.forum_cases c WHERE c.tenant_id=$1 AND c.user_id=$2 AND c.reviewed_at IS NOT NULL
   UNION ALL SELECT 'follow:'||t.id::text,'followed_activity',t.id,t.title,'published',max(m.reviewed_at) FROM agents.forum_engagement e JOIN agents.forum_topics t ON t.tenant_id=e.tenant_id AND t.id=e.topic_id JOIN agents.forum_messages m ON m.tenant_id=t.tenant_id AND m.topic_id=t.id AND m.state='published' AND m.user_id<>$2 JOIN identity.users mu ON mu.tenant_id=m.tenant_id AND mu.user_id=m.user_id AND mu.state='active' WHERE e.tenant_id=$1 AND e.user_id=$2 AND e.signal='follow' AND t.state='published' AND (t.system_channel OR EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active')) GROUP BY t.id,t.title
  )
  SELECT i.*,i.occurred_at>COALESCE(s.seen_at,'1970-01-01'::timestamptz) AS unread FROM items i LEFT JOIN agents.forum_notification_seen s ON s.tenant_id=$1 AND s.user_id=$2 WHERE i.occurred_at>=clock_timestamp()-interval '30 days' ORDER BY i.occurred_at DESC,i.id LIMIT 100`,[tenant,a.userId])).rows;
  return {notifications:rows,unread:rows.filter(row=>row.unread===true).length};
 }));
 app.post('/v1/forum/notifications/read',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization);
  await db.query(`INSERT INTO agents.forum_notification_seen(tenant_id,user_id,seen_at) VALUES($1,$2,clock_timestamp()) ON CONFLICT(tenant_id,user_id) DO UPDATE SET seen_at=EXCLUDED.seen_at`,[tenant,a.userId]);return {ok:true};
 }));
 app.post('/v1/forum/cases',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization),b=q.body as Record<string,unknown>|null;
  if(!b||typeof b!=='object'||Array.isArray(b)||!Object.keys(b).every(k=>['id','kind','targetKind','targetId','reason'].includes(k))||typeof b.id!=='string'||!uuid.test(b.id)||typeof b.targetId!=='string'||!uuid.test(b.targetId)||(b.kind!=='report'&&b.kind!=='appeal')||(b.targetKind!=='topic'&&b.targetKind!=='message')||!validText(b.reason,8,1000))throw new ForumError(400,'invalid_case');
  const id=b.id,targetId=b.targetId.toLowerCase(),kind=b.kind,targetKind=b.targetKind,reason=b.reason.trim();
  return withTransaction(db,async c=>{
   await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['forum:'+tenant+':'+a.userId]);
   const old=(await c.query('SELECT id,kind,target_kind,target_id,reason,state FROM agents.forum_cases WHERE tenant_id=$1 AND user_id=$2 AND id=$3',[tenant,a.userId,id])).rows[0];
   if(old){if(old.kind!==kind||old.target_kind!==targetKind||old.target_id!==targetId||old.reason!==reason)throw new ForumError(409,'request_conflict');return {id:old.id,state:old.state};}
   const target=targetKind==='topic'?(await c.query(`SELECT t.user_id,t.state,t.system_channel,EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active') AS active FROM agents.forum_topics t WHERE t.tenant_id=$1 AND t.id=$2 FOR SHARE`,[tenant,targetId])).rows[0]:(await c.query(`SELECT m.user_id,m.state,false AS system_channel,(t.state='published' AND (t.system_channel OR EXISTS(SELECT 1 FROM identity.users tu WHERE tu.tenant_id=t.tenant_id AND tu.user_id=t.user_id AND tu.state='active')) AND EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active')) AS active FROM agents.forum_messages m JOIN agents.forum_topics t ON t.tenant_id=m.tenant_id AND t.id=m.topic_id WHERE m.tenant_id=$1 AND m.id=$2 FOR SHARE OF m`,[tenant,targetId])).rows[0];
   if(!target||target.system_channel||(kind==='appeal'?(target.user_id!==a.userId||!['rejected','hidden'].includes(target.state)):(target.state!=='published'||!target.active)))throw new ForumError(404,'case_target_unavailable');
   await budget(c,a);await c.query('INSERT INTO agents.forum_cases(tenant_id,id,user_id,kind,target_kind,target_id,reason) VALUES($1,$2,$3,$4,$5,$6,$7)',[tenant,id,a.userId,kind,targetKind,targetId,reason]);return {id,state:'pending'};
  });
 }));
 app.post('/v1/forum/topics',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization);const b=q.body;if(!validForumTopic(b))throw new ForumError(400,'invalid_topic');
  return withTransaction(db,async c=>{
   await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['forum:'+tenant+':'+a.userId]);
   const old=(await c.query('SELECT id,room,title,body,kind,jurisdiction,state FROM agents.forum_topics WHERE tenant_id=$1 AND user_id=$2 AND id=$3',[tenant,a.userId,b.id])).rows[0];
   if(old){if(old.room!==b.room||old.title!==normalizeForumText(b.title)||old.body!==b.body.trim()||old.kind!==b.kind||old.jurisdiction!==normalizeForumText(b.jurisdiction))throw new ForumError(409,'request_conflict');return {id:old.id,state:old.state};}
   await budget(c,a);
   const recent=(await c.query('SELECT count(*)::int AS n FROM agents.forum_topics WHERE tenant_id=$1 AND user_id=$2 AND created_at>clock_timestamp()-interval \'1 day\'',[tenant,a.userId])).rows[0];if(Number(recent.n)>=5)throw new ForumError(429,'topic_daily_limit');
   await c.query('INSERT INTO agents.forum_topics(tenant_id,id,user_id,room,title,body,kind,jurisdiction) VALUES($1,$2,$3,$4,$5,$6,$7,$8)',[tenant,b.id,a.userId,b.room,normalizeForumText(b.title),b.body.trim(),b.kind,normalizeForumText(b.jurisdiction)]);return {id:b.id,state:'pending'};
  });
 }));
 app.post('/v1/forum/topics/:id/messages',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization),{id}=q.params as {id:string},b=q.body as {id?:unknown;body?:unknown;replyTo?:unknown}|null;
  if(!uuid.test(id)||!b||typeof b.id!=='string'||!uuid.test(b.id)||!validText(b.body,1,2000)||!Object.keys(b).every(k=>['id','body','replyTo'].includes(k))||(b.replyTo!==undefined&&b.replyTo!==null&&(typeof b.replyTo!=='string'||!uuid.test(b.replyTo))))throw new ForumError(400,'invalid_message');
  const messageId=b.id,body=b.body.trim(),replyTo=typeof b.replyTo==='string'?b.replyTo.toLowerCase():null;return withTransaction(db,async c=>{
   await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['forum:'+tenant+':'+a.userId]);
   await ensureChannel(c,id);if(!(await c.query(`SELECT id FROM agents.forum_topics t WHERE ${visible} AND t.id=$2 FOR SHARE`,[tenant,id])).rows.length)throw new ForumError(404,'topic_not_found');
   const old=(await c.query('SELECT topic_id,body,state,reply_to FROM agents.forum_messages WHERE tenant_id=$1 AND user_id=$2 AND id=$3',[tenant,a.userId,messageId])).rows[0];
   if(old){if(old.topic_id!==id.toLowerCase()||old.body!==body||old.reply_to!==replyTo)throw new ForumError(409,'request_conflict');return {id:messageId,state:old.state};}
   if(replyTo&&!(await c.query(`SELECT m.id FROM agents.forum_messages m JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active' WHERE m.tenant_id=$1 AND m.topic_id=$2 AND m.id=$3 AND m.state='published' FOR SHARE OF m`,[tenant,id,replyTo])).rows.length)throw new ForumError(400,'invalid_reply');
   await budget(c,a);await c.query('INSERT INTO agents.forum_messages(tenant_id,id,topic_id,user_id,body,reply_to) VALUES($1,$2,$3,$4,$5,$6)',[tenant,messageId,id,a.userId,body,replyTo]);return {id:messageId,state:'pending'};
  });
 }));
 app.post('/v1/forum/topics/:id/signal',async(q,r)=>fail(r,async()=>{
  const a=await actor(q.headers.authorization),{id}=q.params as {id:string},b=q.body as {signal?:string;enabled?:boolean}|null;
  if(!uuid.test(id)||!b||!signals.includes(b.signal||'')||typeof b.enabled!=='boolean')throw new ForumError(400,'invalid_signal');
  return withTransaction(db,async c=>{await budget(c,a);await ensureChannel(c,id);if(!(await c.query(`SELECT id FROM agents.forum_topics t WHERE ${visible} AND t.id=$2 FOR SHARE`,[tenant,id])).rows.length)throw new ForumError(404,'topic_not_found');
   if(b.enabled)await c.query('INSERT INTO agents.forum_engagement(tenant_id,topic_id,user_id,signal) VALUES($1,$2,$3,$4) ON CONFLICT DO NOTHING',[tenant,id,a.userId,b.signal]);else await c.query('DELETE FROM agents.forum_engagement WHERE tenant_id=$1 AND topic_id=$2 AND user_id=$3 AND signal=$4',[tenant,id,a.userId,b.signal]);return {ok:true};
  });
 }));
}
