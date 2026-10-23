import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 invitation keyset pages and original lookup',()=>{
 const database='room_pages_'+randomUUID().replaceAll('-','');
 const owner={tenantId:'t',userId:'alice'},recipient={tenantId:'t',userId:'bob'};
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['localhost','127.0.0.1'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'room-pages-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'room-pages-tests'});await seedRoomCommunityTestDatabase(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>authorizationHeader==='recipient'?recipient:owner});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 async function seed(target:string|null){
  const room=await service.dispatch(owner,'POST','',{name:'HTTP paged history',requestId:randomUUID()});
  await pool.query(`INSERT INTO rooms.membership_invites(tenant_id,room_id,invite_id,token_hash,created_by,recipient_user_id,request_id,created_at,expires_at)
   SELECT 't',$1,'pg_'||n,md5($1||n::text)||md5($1||n::text||'suffix'),'alice',$2,'key-'||n,
    '2026-01-01T00:00:00Z'::timestamptz+(n/3*interval '1 microsecond'),clock_timestamp()+interval '1 day' FROM generate_series(0,104) n`,[room.id,target]);
  return room.id+'/community';
 }
 it('HTTP pages retain every tied/microsecond history row and recover an original outside the first cap',async()=>{
  const path=await seed(null),app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   let cursor:string|null=null;const ids:string[]=[];
   do{
    const response=await app.inject({method:'GET',url:'/v1/rooms/'+path+'/invites?limit=13'+(cursor?'&cursor='+encodeURIComponent(cursor):'')});
    expect(response.statusCode).toBe(200);expect(response.body).not.toMatch(/token|hash|recipient_user_id/);
    const data=response.json();ids.push(...data.items.map((v:any)=>v.inviteId));cursor=data.nextCursor;
   }while(cursor);
   expect(ids).toHaveLength(105);expect(new Set(ids).size).toBe(105);
   const read=await app.inject({method:'GET',url:'/v1/rooms/'+path+'/invites/request?requestId=key-0'});
   expect(read.statusCode).toBe(200);expect(read.json()).toMatchObject({issuanceVersion:1,item:{inviteId:'pg_0',requestId:'key-0',kind:'code',status:'active'}});
  }finally{await app.close();}
 });
 it('incoming HTTP pages recheck current recipient membership and do not reuse manager cursors',async()=>{
  const path=await seed('bob'),app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const first=(await app.inject({method:'GET',url:'/v1/rooms/invitations?limit=100',headers:{authorization:'recipient'}})).json();
   expect(first.items).toHaveLength(100);expect(first.nextCursor).toBeTruthy();
   expect((await app.inject({method:'GET',url:'/v1/rooms/'+path+'/invites?cursor='+encodeURIComponent(first.nextCursor)})).statusCode).toBe(422);
   await service.dispatch(recipient,'POST',path+'/join');
   const next=await app.inject({method:'GET',url:'/v1/rooms/invitations?cursor='+encodeURIComponent(first.nextCursor),headers:{authorization:'recipient'}});
   expect(next.statusCode).toBe(200);expect(next.json()).toMatchObject({paginationVersion:1,items:[],nextCursor:null});
  }finally{await app.close();}
 });
});
