import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedMediaPages} from '../../../../tests/support/room-media-pages.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 shared media history and visibility',()=>{
 const database='media_pages_'+randomUUID().replaceAll('-','');
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'mod-pages-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'mod-pages-tests'});await seedMediaPages(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>({tenantId:'t',userId:authorizationHeader==='author'?'bob':authorizationHeader==='manager'?'eve':'alice'})});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('HTTP traverses every shared metadata row with exact source and no byte bodies',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   let cursor:string|null=null;const ids:string[]=[];
   do{
    const response:{statusCode:number;headers:Record<string,unknown>;json():any}=await app.inject({method:'GET',url:'/v1/rooms/room_mod_pages/community/media?limit=19'+(cursor?'&cursor='+encodeURIComponent(cursor):''),headers:{authorization:'author'}});
    expect(response.statusCode).toBe(200);expect(response.headers['cache-control']).toBe('no-store');
    const page:{paginationVersion:number;items:{id:string;sourcePostId:string}[];nextCursor:string|null}=response.json();expect(page.paginationVersion).toBe(1);expect(page.items.every((v:any)=>v.sourcePostId==='post_000')).toBe(true);
    expect(JSON.stringify(page)).not.toMatch(/dataBase64|data_base64|request_id|user_id/);ids.push(...page.items.map((v:any)=>v.id));cursor=page.nextCursor;
   }while(cursor);
   expect(ids).toHaveLength(130);expect(new Set(ids).size).toBe(130);
   const search=await app.inject({method:'GET',url:'/v1/rooms/room_mod_pages/community/media?search='+encodeURIComponent('100%_#')+'&kind=video',headers:{authorization:'author'}});
   expect(search.statusCode).toBe(200);expect(search.json().items.map((v:any)=>v.id)).toEqual(['media_005']);
  }finally{await app.close();}
 });
 it('HTTP rechecks source visibility and current private membership on later metadata and byte reads',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const base='/v1/rooms/room_mod_pages/community/media',first=(await app.inject({method:'GET',url:base+'?limit=3',headers:{authorization:'author'}})).json();
   expect((await app.inject({method:'GET',url:base+'?kind=doc&cursor='+first.nextCursor,headers:{authorization:'author'}})).statusCode).toBe(422);
   await pool.query("UPDATE rooms.lessons SET state='retired' WHERE lesson_id='post_000'");
   expect((await app.inject({method:'GET',url:base+'?cursor='+first.nextCursor,headers:{authorization:'author'}})).json().items).toEqual([]);
   expect((await app.inject({method:'GET',url:base+'/media_001',headers:{authorization:'author'}})).statusCode).toBe(404);
   await pool.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");
   expect((await app.inject({method:'GET',url:base+'?cursor='+first.nextCursor,headers:{authorization:'author'}})).statusCode).toBe(404);
  }finally{await app.close();}
 });
});
