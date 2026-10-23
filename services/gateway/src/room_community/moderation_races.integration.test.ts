import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 Room content moderation races',()=>{
 const database='room_moderation_'+randomUUID().replaceAll('-','');
 const owner={tenantId:'t',userId:'alice'},author={tenantId:'t',userId:'bob'},reporter={tenantId:'t',userId:'eve'};
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'moderation-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'moderation-tests',max:8});await seedRoomCommunityTestDatabase(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>authorizationHeader==='author'?author:authorizationHeader==='reporter'?reporter:owner});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 async function setup(){
  const room=await service.dispatch(owner,'POST','',{name:'Appeal race',postingPolicy:'members',requestId:randomUUID()}),path=room.id+'/community';
  for(const a of [author,reporter])await service.dispatch(a,'POST',path+'/join');
  const post=await service.dispatch(author,'POST',path+'/timeline',{body:'Reviewable post',requestId:'post'});
  await service.dispatch(reporter,'POST',path+'/reports',{targetId:post.id,reason:'Private concern',requestId:'report'});
  await service.dispatch(owner,'POST',path+'/reports/'+post.id+'/review',{decision:'removed',requestId:'remove'});
  const review=(await service.dispatch(author,'GET',path+'/moderation/cases')).items[0];
  const ap=await service.dispatch(author,'POST',path+'/moderation/cases/'+review.reviewId+'/appeal',{reason:'Please reconsider',requestId:'appeal'});
  return {room,path,post,review,appeal:ap.appeal};
 }
 const decision=(f:Awaited<ReturnType<typeof setup>>,value:string,key=value)=>service.dispatch(owner,'POST',f.path+'/moderation/appeals/'+f.appeal.appealId+'/review',{decision:value,publicReason:'Reviewed context',requestId:key});
 it('concurrent Restore/Uphold yields one audited decision and matching content state',async()=>{
  for(let n=0;n<3;n++){
   const f=await setup(),results=await Promise.allSettled([decision(f,'restored'),decision(f,'upheld')]);
   expect(results.filter(v=>v.status==='fulfilled')).toHaveLength(1);
   const row=(await pool.query('SELECT state FROM rooms.moderation_appeals WHERE appeal_id=$1',[f.appeal.appealId])).rows[0];
   const post=(await pool.query('SELECT state FROM rooms.lessons WHERE lesson_id=$1',[f.post.id])).rows[0];
   expect(post.state).toBe(row.state==='restored'?'published':'retired');
   expect((await pool.query('SELECT * FROM rooms.report_reviews WHERE room_id=$1',[f.room.id])).rows).toHaveLength(1);
  }
 });
 it('later deletion versus restoration never leaves deleted content visible',async()=>{
  for(let n=0;n<3;n++){
   const f=await setup();await Promise.allSettled([decision(f,'restored'),service.dispatch(owner,'DELETE',f.path+'/posts/'+f.post.id)]);
   expect((await pool.query('SELECT state,removed_by_review_id FROM rooms.lessons WHERE lesson_id=$1',[f.post.id])).rows[0]).toEqual({state:'retired',removed_by_review_id:null});
   expect((await service.dispatch(author,'GET',f.path+'/timeline')).items).toEqual([]);
  }
 });
 it('duplicate appeal/decision requests preserve the original durable receipt',async()=>{
  const f=await setup();
  const appeals=await Promise.all(['original','another','third'].map(requestId=>service.dispatch(author,'POST',f.path+'/moderation/cases/'+f.review.reviewId+'/appeal',{reason:'Please reconsider',requestId})));
  expect(new Set(appeals.map(v=>v.appeal.appealId)).size).toBe(1);
  const receipts=await Promise.all(Array.from({length:4},()=>decision(f,'restored','same-original')));
  expect(new Set(receipts.map(v=>v.appeal.decidedAt)).size).toBe(1);
  expect((await pool.query('SELECT * FROM rooms.moderation_appeals WHERE room_id=$1',[f.room.id])).rows).toHaveLength(1);
 });
 it('routes author cases and review decisions through authenticated HTTP without leaking reporter evidence',async()=>{
  const f=await setup(),app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const url='/v1/rooms/'+f.path;
   const own=await app.inject({method:'GET',url:url+'/moderation/cases',headers:{authorization:'author'}});
   expect(own.statusCode).toBe(200);expect(own.json().items[0].reviewId).toBe(f.review.reviewId);expect(own.body).not.toMatch(/Private concern|eve|alice|reviewer_user_id/);
   expect((await app.inject({method:'GET',url:url+'/moderation/appeals',headers:{authorization:'reporter'}})).statusCode).toBe(403);
   const response=await app.inject({method:'POST',url:url+'/moderation/appeals/'+f.appeal.appealId+'/review',payload:{decision:'upheld',publicReason:'Rule still applies',requestId:'http-decision'}});
   expect(response.statusCode).toBe(200);expect(response.json().appeal.status).toBe('upheld');
  }finally{await app.close();}
 });
});
