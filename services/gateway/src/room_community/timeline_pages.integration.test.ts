import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedTimelinePages} from '../../../../tests/support/room-timeline-pages.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 timeline search and thread pages',()=>{
 const database='timeline_pages_'+randomUUID().replaceAll('-','');
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'mod-pages-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'mod-pages-tests'});await seedTimelinePages(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>({tenantId:'t',userId:authorizationHeader==='author'?'bob':authorizationHeader==='manager'?'eve':'alice'})});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('HTTP traverses full chronological root and thread histories with scoped GET queries',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   for(const [parentId,count] of [[null,225],['post_000',115]] as const){
    let cursor:string|null=null;const ids:string[]=[];
    do{
     const response:{statusCode:number;headers:Record<string,unknown>;json():any}=await app.inject({method:'GET',url:'/v1/rooms/room_mod_pages/community/timeline?limit=23'+(parentId?'&parentId='+parentId:'')+(cursor?'&cursor='+encodeURIComponent(cursor):''),headers:{authorization:'author'}});
     expect(response.statusCode).toBe(200);expect(response.headers['cache-control']).toBe('no-store');const page:{items:{id:string}[];nextCursor:string|null;parent:any}=response.json();if(parentId)expect(page.parent.id).toBe(parentId);ids.push(...page.items.map(v=>v.id));cursor=page.nextCursor;
    }while(cursor);
    expect(ids).toHaveLength(count);expect(new Set(ids).size).toBe(count);
   }
   expect((await app.inject({method:'GET',url:'/v1/rooms/room_mod_pages/community/timeline?search='+encodeURIComponent('100%_#'),headers:{authorization:'author'}})).json().items[0].id).toBe('post_005');
  }finally{await app.close();}
 });
 it('HTTP rechecks cursor scope and removed private membership',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const base='/v1/rooms/room_mod_pages/community/timeline',first=(await app.inject({method:'GET',url:base+'?limit=3',headers:{authorization:'author'}})).json();
   expect((await app.inject({method:'GET',url:base+'?parentId=post_000&cursor='+first.nextCursor,headers:{authorization:'author'}})).statusCode).toBe(422);
   await pool.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");expect((await app.inject({method:'GET',url:base+'?cursor='+first.nextCursor,headers:{authorization:'author'}})).statusCode).toBe(404);
  }finally{await app.close();}
 });
});
