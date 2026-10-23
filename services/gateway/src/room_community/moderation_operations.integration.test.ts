import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedModerationPages} from '../../../../tests/support/room-moderation-pages.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 moderation exact operation recovery',()=>{
 const database='mod_ops_'+randomUUID().replaceAll('-','');
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'mod-pages-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'mod-pages-tests'});await seedModerationPages(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>({tenantId:'t',userId:authorizationHeader==='author'?'bob':authorizationHeader==='manager'?'eve':'alice'})});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('HTTP reads an older exact case and original actor receipt with no-store headers',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const base='/v1/rooms/room_mod_pages/community/';
   const response=await app.inject({method:'GET',url:base+'moderation/cases/review_reply_110',headers:{authorization:'author'}});
   expect(response.statusCode).toBe(200);expect(response.headers['cache-control']).toBe('no-store');expect(response.json().item.reviewId).toBe('review_reply_110');
   const url=base+'moderation/operations?action=appeal&requestId=appeal_request_review_reply_110&targetId=review_reply_110';
   expect((await app.inject({method:'GET',url,headers:{authorization:'author'}})).json()).toMatchObject({operationVersion:1,item:{status:'upheld'}});
   expect((await app.inject({method:'GET',url})).json()).toEqual({operationVersion:1,item:null});
   expect((await app.inject({method:'GET',url:base+'moderation/appeals/appeal_review_reply_110',headers:{authorization:'author'}})).statusCode).toBe(403);
  }finally{await app.close();}
 });
 it('concurrent original retries yield one durable review and an exact recoverable receipt',async()=>{
  const key='same-original-review',target='reply_001';
  const receipts=await Promise.all(Array.from({length:4},()=>service.dispatch({tenantId:'t',userId:'alice'},'POST','room_mod_pages/community/reply-reports/'+target+'/review',{decision:'removed',publicReason:'Room rule',requestId:key})));
  expect(receipts.every(v=>v.reviewed===true)).toBe(true);
  const found=await service.dispatch({tenantId:'t',userId:'alice'},'GET','room_mod_pages/community/moderation/operations',{action:'report-review',targetKind:'reply',targetId:target,requestId:key});
  expect(found.item).toMatchObject({decision:'removed',targetId:target});
  expect((await pool.query('SELECT count(*)::int AS n FROM rooms.report_reviews WHERE request_id=$1',[key])).rows[0].n).toBe(1);
 });
});
