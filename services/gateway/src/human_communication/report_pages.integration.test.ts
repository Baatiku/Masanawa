import {readFile} from 'node:fs/promises';
import {beforeAll,afterAll,describe,it,expect} from 'vitest';
import Fastify from 'fastify';
import {createIsolatedPostgresTestDatabase} from '../../../../adapters/storage/postgres/src/home_feed/isolated_test_database.js';
import {createHumanCommunicationService,registerHumanCommunicationRoutes,type HumanPool} from './index.js';
const conn=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!conn)('PostgreSQL 18 private human report receipts and history',()=>{
 let db:Awaited<ReturnType<typeof createIsolatedPostgresTestDatabase>>;
 let service:ReturnType<typeof createHumanCommunicationService>;
 const owner={tenantId:'t',userId:'alice'},reporter={tenantId:'t',userId:'bob'};
 beforeAll(async()=>{
  db=await createIsolatedPostgresTestDatabase(conn!);
  await db.pool.query("CREATE SCHEMA identity;CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));CREATE SCHEMA talks;");
  for(const file of ['0003_talk_profiles.sql','0009_talk_safety.sql','0015_human_communication.sql','0016_human_report_receipt_pages.sql']){
   await db.pool.query(await readFile(new URL('../../../../packages/talks/migrations/'+file,import.meta.url),'utf8'));
  }
  await db.pool.query(`INSERT INTO identity.users VALUES('t','alice','active'),('t','bob','active'),('other','bob','active');
   INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','alice','alice','Alice'),('t','bob','bob','Bob');
   INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at) VALUES('t','thread-real','alice','bob','alice','accepted',now());
   INSERT INTO talks.human_messages(tenant_id,id,conversation_id,user_id,request_id,text,created_at) VALUES('t','msg-real','thread-real','alice','msg-request','Text not for report lists',now())`);
  service=createHumanCommunicationService({pool:db.pool as unknown as HumanPool,authorizer:{authorize:async({authorizationHeader})=>{
   if(authorizationHeader==='bob')return reporter;
   if(authorizationHeader==='alice')return owner;
   throw Object.assign(new Error('Unauthorized'),{statusCode:401});
  }}});
 },30000);
 afterAll(async()=>{await service?.close();await db?.close();});
 it('HTTP original report receipt equals persisted state and replays without extra SQL rows',async()=>{
  const app=Fastify();registerHumanCommunicationRoutes(app,service);
  try{
   const url='/v1/human/conversations/thread-real/messages/msg-real/report';
   const body={requestId:'real-receipt',reason:'harassment'};
   const created=await app.inject({method:'POST',url,headers:{authorization:'bob'},payload:body});
   expect(created.statusCode).toBe(200);
   const replay=await app.inject({method:'POST',url,headers:{authorization:'bob'},payload:body});
   expect(replay.json()).toEqual(created.json());
   const receipt=await app.inject({method:'GET',url:'/v1/human/reports/real-receipt',headers:{authorization:'bob'}});
   expect(receipt.json()).toEqual(created.json());
   const page=(await app.inject({method:'GET',url:'/v1/human/reports',headers:{authorization:'bob'}})).json();
   expect(page.items).toEqual([{reportId:created.json().reportId,messageId:'msg-real',reason:'harassment',submittedAt:created.json().submittedAt,status:'submitted'}]);
   expect((await db.pool.query("SELECT count(*)::int AS count FROM talks.human_reports WHERE tenant_id='t' AND user_id='bob'")).rows[0]?.count).toBe(1);
   expect((await app.inject({method:'GET',url:'/v1/human/reports/real-receipt',headers:{authorization:'alice'}})).statusCode).toBe(404);
  }finally{await app.close();}
 });
 it('real microsecond keysets preserve every report and reject foreign anchors',async()=>{
  await db.pool.query(`INSERT INTO talks.human_reports(tenant_id,id,user_id,message_id,reason,created_at)
   SELECT 't','real-report-'||lpad(n::text,3,'0'),'bob','msg-real','private reason',
    '2026-10-23T11:00:00Z'::timestamptz+(n/5*interval '1 microsecond')
   FROM generate_series(0,119) n`);
  await db.pool.query("INSERT INTO talks.human_reports(tenant_id,id,user_id,message_id,reason,created_at) VALUES('t','foreign-report','alice','msg-real','not yours',now())");
  const ids:string[]=[];let before:string|null=null;
  do{
   const p=await service.dispatch(reporter,'GET','reports',{}, {limit:21,...(before?{before}:{})});
   ids.push(...p.items.map((r:{reportId:string})=>r.reportId));
   before=p.nextCursor;
  }while(before);
  expect(ids).toHaveLength(121);expect(new Set(ids).size).toBe(121);
  expect(ids).not.toContain('foreign-report');
  expect(ids).toContain('real-report-000');
  expect(ids).toContain('real-report-119');
  await expect(service.dispatch(reporter,'GET','reports',{}, {before:'foreign-report'})).rejects.toMatchObject({statusCode:400});
  await expect(service.dispatch({tenantId:'other',userId:'bob'},'GET','reports',{}, {before:'real-report-119'})).rejects.toMatchObject({statusCode:400});
 });
});
