import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import Fastify from 'fastify';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {createHumanCommunicationService,registerHumanCommunicationRoutes,type HumanPool} from './index.js';

const alice={tenantId:'t',userId:'alice'},bob={tenantId:'t',userId:'bob'};
const eve={tenantId:'t',userId:'eve'},outsider={tenantId:'other',userId:'bob'};
let db:PGlite,service:ReturnType<typeof createHumanCommunicationService>;
beforeEach(async()=>{
 db=new PGlite();
 await db.exec("CREATE SCHEMA identity;CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));CREATE SCHEMA talks;");
 for(const file of ['0003_talk_profiles.sql','0009_talk_safety.sql','0015_human_communication.sql','0016_human_report_receipt_pages.sql']){
  await db.exec(await readFile(new URL('../../../../packages/talks/migrations/'+file,import.meta.url),'utf8'));
 }
 await db.exec(`INSERT INTO identity.users VALUES('t','alice','active'),('t','bob','active'),('t','eve','active'),('other','bob','active');
 INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
 VALUES('t','alice','alice','Alice'),('t','bob','bob','Bob'),('t','eve','eve','Eve');
 INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
 VALUES('t','thread-one','alice','bob','alice','accepted',now());
 INSERT INTO talks.human_messages(tenant_id,id,conversation_id,user_id,request_id,text,created_at)
 VALUES('t','msg-incoming','thread-one','alice','original-message','Private message content',now());`);
 let tail=Promise.resolve();
 const pool:HumanPool={
  query:async(sql,values)=>{const x=await db.query(sql,values);return {rows:x.rows as any,rowCount:x.affectedRows??x.rows.length};},
  async connect(){const last=tail;let release!:()=>void;tail=new Promise<void>(done=>{release=done});await last;return {query:this.query,release};}
 };
 service=createHumanCommunicationService({pool,authorizer:{authorize:async({authorizationHeader})=>{
  if(authorizationHeader==='alice')return alice;
  if(authorizationHeader==='bob')return bob;
  if(authorizationHeader==='eve')return eve;
  if(authorizationHeader==='outside')return outsider;
  throw Object.assign(new Error('Unauthorized'),{statusCode:401});
 }}});
},30000);
afterEach(async()=>{await service.close();await db.close();});
const send=(actor:typeof alice,method:string,path:string,body:Record<string,unknown>={},query:Record<string,unknown>={})=>service.dispatch(actor,method,path,body,query);
it('creates a durable actor-only report receipt; original POST retry and GET readback agree',async()=>{
 const body={requestId:'original-report',reason:'Abusive message'};
 const original=await send(bob,'POST','conversations/thread-one/messages/msg-incoming/report',body);
 expect(original).toMatchObject({ok:true,reportId:expect.any(String),submittedAt:expect.any(String)});
 expect(await send(bob,'POST','conversations/thread-one/messages/msg-incoming/report',body)).toEqual(original);
 expect(await send(bob,'GET','reports/original-report')).toEqual(original);
 const page=await send(bob,'GET','reports');
 expect(page.items).toEqual([{reportId:original.reportId,messageId:'msg-incoming',reason:body.reason,submittedAt:original.submittedAt,status:'submitted'}]);
 expect(page.nextCursor).toBeNull();
 expect((await db.query<{n:number}>("SELECT count(*)::int AS n FROM talks.human_reports WHERE tenant_id='t'")).rows[0]?.n).toBe(1);
 await expect(send(alice,'GET','reports/original-report')).rejects.toMatchObject({statusCode:404});
 await expect(send(eve,'GET','reports/original-report')).rejects.toMatchObject({statusCode:404});
 await expect(send(outsider,'GET','reports/original-report')).rejects.toMatchObject({statusCode:404});
});
it('prevents GET/PATCH/DELETE from creating reports and rejects own or unrelated messages',async()=>{
 for(const method of ['GET','PATCH','DELETE']){
  await expect(send(bob,method,'conversations/thread-one/messages/msg-incoming/report',{requestId:'verb-'+method,reason:'Bad'})).rejects.toMatchObject({statusCode:404});
 }
 await expect(send(alice,'POST','conversations/thread-one/messages/msg-incoming/report',{requestId:'self-report',reason:'Bad'})).rejects.toMatchObject({statusCode:403});
 await expect(send(eve,'POST','conversations/thread-one/messages/msg-incoming/report',{requestId:'outsider-report',reason:'Bad'})).rejects.toMatchObject({statusCode:404});
 expect((await db.query('SELECT id FROM talks.human_reports')).rows).toHaveLength(0);
});
it('pages microsecond-tied original reports beyond the default cap with no duplicates',async()=>{
 await db.exec(`INSERT INTO talks.human_reports(tenant_id,id,user_id,message_id,reason,created_at)
 SELECT 't','case-'||lpad(n::text,3,'0'),'bob','msg-incoming',
 CASE WHEN n=13 THEN '[deleted]' ELSE 'Private reason '||n END,
 '2026-10-01T00:00:00Z'::timestamptz+(n/3*interval '1 microsecond')
 FROM generate_series(0,104) n;`);
 let cursor:string|null=null;const all:string[]=[];
 do{
  const page=await send(bob,'GET','reports',{}, {limit:17,...(cursor?{before:cursor}:{})});
  expect(page.paginationVersion).toBe(1);
  expect(page.items.every((r:{status:string})=>r.status==='submitted')).toBe(true);
  all.push(...page.items.map((r:{reportId:string})=>r.reportId));
  cursor=page.nextCursor;
 }while(cursor);
 expect(all).toHaveLength(105);
 expect(new Set(all).size).toBe(105);
 expect(all[0]).toBe('case-104');
 expect(all.at(-1)).toBe('case-000');
});
it('does not disclose other actors, peers or message bodies, including after blocking',async()=>{
 await send(bob,'POST','conversations/thread-one/messages/msg-incoming/report',{requestId:'private',reason:'Harassment'});
 await db.exec("INSERT INTO talks.human_reports(tenant_id,id,user_id,message_id,reason,created_at) VALUES('t','case-eve','eve','msg-incoming','other complaint',now()),('other','case-other','bob','foreign','private',now())");
 expect((await send(eve,'GET','reports')).items.map((r:{reportId:string})=>r.reportId)).toEqual(['case-eve']);
 expect((await send(outsider,'GET','reports')).items.map((r:{reportId:string})=>r.reportId)).toEqual(['case-other']);
 await db.exec("INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at) VALUES('t','bob','alice',true,now())");
 const own=await send(bob,'GET','reports');
 expect(own.items).toHaveLength(1);
 expect(JSON.stringify(own)).not.toContain('Private message content');
 expect(JSON.stringify(own)).not.toContain('other complaint');
});
it('rejects wrong-owner, forged, overlong and malformed report cursors or page sizes',async()=>{
 const report=await send(bob,'POST','conversations/thread-one/messages/msg-incoming/report',{requestId:'page',reason:'spam'});
 for(const query of [{limit:0},{limit:101},{limit:'x'},{limit:'9999'},{before:'missing'},{before:'x'.repeat(201)}]){
  await expect(send(bob,'GET','reports',{},query)).rejects.toMatchObject({statusCode:400});
 }
 await expect(send(eve,'GET','reports',{}, {before:report.reportId})).rejects.toMatchObject({statusCode:400});
 await expect(send(outsider,'GET','reports',{}, {before:report.reportId})).rejects.toMatchObject({statusCode:400});
});
it('routes private GET reports through HTTP with no-store, active actor and no mutation',async()=>{
 const app=Fastify();registerHumanCommunicationRoutes(app,service);
 try{
  const created=await app.inject({method:'POST',url:'/v1/human/conversations/thread-one/messages/msg-incoming/report',headers:{authorization:'bob'},payload:{requestId:'via-http',reason:'spam'}});
  expect(created.statusCode).toBe(200);
  const receipt=await app.inject({method:'GET',url:'/v1/human/reports/via-http',headers:{authorization:'bob'}});
  expect(receipt.statusCode).toBe(200);
  expect(receipt.headers['cache-control']).toContain('no-store');
  expect(receipt.json().reportId).toBe(created.json().reportId);
  const listing=await app.inject({method:'GET',url:'/v1/human/reports?limit=3',headers:{authorization:'bob'}});
  expect(listing.statusCode).toBe(200);
  expect(listing.json().items).toHaveLength(1);
  expect((await app.inject({method:'GET',url:'/v1/human/reports/via-http',headers:{authorization:'alice'}})).statusCode).toBe(404);
  expect((await app.inject({method:'GET',url:'/v1/human/reports',headers:{authorization:'invalid'}})).statusCode).toBe(401);
 }finally{await app.close();}
});
