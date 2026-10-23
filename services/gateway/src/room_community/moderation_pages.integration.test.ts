import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedModerationPages} from '../../../../tests/support/room-moderation-pages.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 moderation keyset HTTP pages',()=>{
 const database='mod_pages_'+randomUUID().replaceAll('-','');
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'mod-pages-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'mod-pages-tests'});await seedModerationPages(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>({tenantId:'t',userId:authorizationHeader==='author'?'bob':authorizationHeader==='manager'?'eve':'alice'})});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('HTTP traverses reports, history, cases and prioritized appeals without lost microsecond ties',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   for(const [resource,count,actor,key] of [['reports/summary',110,'owner','postId'],['reply-reports/summary',110,'owner','replyId'],['reports/reviews',45,'owner','reviewId'],['reply-reports/reviews',45,'owner','reviewId'],['moderation/cases',90,'author','reviewId'],['moderation/appeals',90,'owner','appealId']] as const){
    let cursor:string|null=null;const ids:string[]=[];
    do{
     const response:{statusCode:number;headers:Record<string,unknown>;json():any}=await app.inject({method:'GET',url:'/v1/rooms/room_mod_pages/community/'+resource+'?limit=19'+(cursor?'&cursor='+encodeURIComponent(cursor):''),headers:{authorization:actor}});
     expect(response.statusCode).toBe(200);expect(response.headers['cache-control']).toBe('no-store');
     const page:{pageVersion:number;items:Record<string,any>[];nextCursor:string|null}=response.json();expect(page.pageVersion).toBe(1);ids.push(...page.items.map(v=>v[key]));cursor=page.nextCursor;
    }while(cursor);
    expect(ids).toHaveLength(count);expect(new Set(ids).size).toBe(count);
   }
  }finally{await app.close();}
 });
 it('HTTP cursor scope and current authorization reject cross-viewer and revoked membership',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const base='/v1/rooms/room_mod_pages/community/';
   const first=(await app.inject({method:'GET',url:base+'moderation/appeals?limit=3'})).json();
   expect((await app.inject({method:'GET',url:base+'moderation/appeals?cursor='+first.nextCursor,headers:{authorization:'manager'}})).statusCode).toBe(422);
   expect((await app.inject({method:'GET',url:base+'moderation/cases?cursor='+first.nextCursor,headers:{authorization:'author'}})).statusCode).toBe(422);
   const own=(await app.inject({method:'GET',url:base+'moderation/cases?limit=3',headers:{authorization:'author'}})).json();
   await pool.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");
   expect((await app.inject({method:'GET',url:base+'moderation/cases?cursor='+own.nextCursor,headers:{authorization:'author'}})).statusCode).toBe(404);
  }finally{await app.close();}
 });
});
