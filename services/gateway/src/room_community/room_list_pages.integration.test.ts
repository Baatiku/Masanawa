import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 Room list search and keyset paging',()=>{
 const database='room_lists_'+randomUUID().replaceAll('-','');
 const owner={tenantId:'t',userId:'alice'},member={tenantId:'t',userId:'bob'};
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['localhost','127.0.0.1'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'room-list-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'room-list-tests'});await seedRoomCommunityTestDatabase(sql=>pool.query(sql));
  await pool.query(`INSERT INTO rooms.rooms(tenant_id,room_id,slug,profession_title,description,state,visibility,owner_user_id,updated_at)
   SELECT 't','room_list_'||lpad(n::text,3,'0'),'room-list-'||n,'Room '||lpad(n::text,3,'0'),CASE WHEN n=13 THEN 'A literal 100%_# search' ELSE 'Topic '||n END,
    'published',CASE WHEN n%10=0 THEN 'private' ELSE 'public' END,'alice','2026-01-01T00:00:00Z'::timestamptz+(n/3*interval '1 microsecond') FROM generate_series(0,109) n;
   INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role,pinned) SELECT tenant_id,room_id,'alice','owner',right(room_id,3)::int<5 FROM rooms.rooms;
   INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role) SELECT tenant_id,room_id,'bob','member' FROM rooms.rooms WHERE right(room_id,3)::int%3=0;`);
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>authorizationHeader==='member'?member:owner});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('HTTP pages retain pinned/tied rows and search finds an old item outside the default cap',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const first=(await app.inject({method:'GET',url:'/v1/rooms/mine'})).json();expect(first.items).toHaveLength(100);expect(first.items.some((v:any)=>v.id==='room_list_005')).toBe(false);
   let cursor:string|null=null;const ids:string[]=[];
   do{
    const response:{statusCode:number;headers:Record<string,unknown>;json():any}=await app.inject({method:'GET',url:'/v1/rooms/mine?limit=17'+(cursor?'&cursor='+encodeURIComponent(cursor):'')});expect(response.statusCode).toBe(200);expect(response.headers['cache-control']).toBe('no-store');
    const page:{items:{id:string;pinned:boolean}[];nextCursor:string|null}=response.json();ids.push(...page.items.map(v=>v.id));cursor=page.nextCursor;
   }while(cursor);
   expect(ids).toHaveLength(110);expect(new Set(ids).size).toBe(110);expect(ids[0]).toBe('room_list_004');
   expect((await app.inject({method:'GET',url:'/v1/rooms/mine?search=Room%20005'})).json().items[0]).toMatchObject({id:'room_list_005',role:'owner'});
   expect((await app.inject({method:'GET',url:'/v1/rooms/mine?search='+encodeURIComponent('100%_#')})).json().items.map((v:any)=>v.id)).toEqual(['room_list_013']);
  }finally{await app.close();}
 });
 it('HTTP collection/query scope and current membership protect private metadata on later pages',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const first=(await app.inject({method:'GET',url:'/v1/rooms/mine?limit=3',headers:{authorization:'member'}})).json();
   expect((await app.inject({method:'GET',url:'/v1/rooms/discover?cursor='+encodeURIComponent(first.nextCursor),headers:{authorization:'member'}})).statusCode).toBe(422);
   expect((await app.inject({method:'GET',url:'/v1/rooms/mine?search=changed&cursor='+encodeURIComponent(first.nextCursor),headers:{authorization:'member'}})).statusCode).toBe(422);
   expect((await app.inject({method:'GET',url:'/v1/rooms/discover?search=Room%20000',headers:{authorization:'member'}})).json().items).toEqual([]);
   await pool.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob' AND room_id='room_list_000'");
   const remaining=(await app.inject({method:'GET',url:'/v1/rooms/mine?cursor='+encodeURIComponent(first.nextCursor),headers:{authorization:'member'}})).json();
   expect(remaining.items.map((v:any)=>v.id)).not.toContain('room_list_000');
   expect(remaining.items.every((v:any)=>v.role==='member'&&v.ownerId==='alice')).toBe(true);
  }finally{await app.close();}
 });
});
