import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';

const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PostgreSQL 18 authorized Rooms member roster pages',()=>{
 const database='room_member_page_'+randomUUID().replaceAll('-','');
 const owner={tenantId:'t',userId:'alice'},viewer={tenantId:'t',userId:'bob'};
 let admin:Pool,pool:Pool,roomId:string,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'room-member-page-admin'});
  await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'room-member-page-tests'});
  await seedRoomCommunityTestDatabase(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>authorizationHeader==='bob'?viewer:owner});
  roomId=(await service.dispatch(owner,'POST','',{name:'Large member Room',requestId:'pg-roster'})).id;
  await service.dispatch(viewer,'POST',roomId+'/community/join',{});
  await pool.query(`INSERT INTO identity.users(tenant_id,user_id)
   SELECT 't','pgmember_'||lpad(n::text,3,'0') FROM generate_series(0,219) n`);
  await pool.query(`INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
   SELECT 't','pgmember_'||lpad(n::text,3,'0'),'pgacct'||lpad(n::text,3,'0'),
    CASE WHEN n=2 THEN 'literal%_! match' ELSE 'Member '||lpad(n::text,3,'0') END FROM generate_series(0,219) n`);
  await pool.query(`INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role)
   SELECT 't',$1,user_id,'member' FROM identity.users WHERE tenant_id='t' AND user_id LIKE 'pgmember_%'`,[roomId]);
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('HTTP reaches all members beyond legacy cap without duplication and searches literals',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const base='/v1/rooms/'+roomId+'/community/members/page';
   let cursor:string|null=null;const ids:string[]=[];
   do{
    const response:{statusCode:number;json():unknown}=await app.inject({method:'GET',url:base+'?limit=41'+(cursor?'&cursor='+encodeURIComponent(cursor):''),headers:{authorization:'bob'}});
    expect(response.statusCode).toBe(200);
    const page=response.json() as {items:{userId:string}[];nextCursor:string|null};
    ids.push(...page.items.map(item=>item.userId));cursor=page.nextCursor;
   }while(cursor);
   expect(ids).toHaveLength(222);expect(new Set(ids).size).toBe(222);
   const found=(await app.inject({method:'GET',url:base+'?search='+encodeURIComponent('literal%_!'),headers:{authorization:'bob'}})).json();
   expect(found.items.map((v:{userId:string})=>v.userId)).toEqual(['pgmember_002']);
  }finally{await app.close();}
 });
 it('HTTP actor/query cursor changes and blocked/deactivated members cannot leak',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const path='/v1/rooms/'+roomId+'/community/members/page';
   const first=(await app.inject({method:'GET',url:path+'?limit=3&search=Member',headers:{authorization:'bob'}})).json();
   expect((await app.inject({method:'GET',url:path+'?cursor='+encodeURIComponent(first.nextCursor)+'&search=Member'})).statusCode).toBe(422);
   expect((await app.inject({method:'GET',url:path+'?cursor='+encodeURIComponent(first.nextCursor)+'&search=changed',headers:{authorization:'bob'}})).statusCode).toBe(422);
   await pool.query("INSERT INTO talks.safety_preferences VALUES('t','bob','pgmember_219',true)");
   await pool.query("UPDATE identity.users SET state='suspended' WHERE tenant_id='t' AND user_id='pgmember_218'");
   for(const target of ['pgmember_219','pgmember_218']){
    expect((await app.inject({method:'GET',url:path+'?search='+target.replace('pgmember_','pgacct'),headers:{authorization:'bob'}})).json().items).toEqual([]);
   }
   await service.dispatch(owner,'PATCH',roomId+'/community/members/bob',{state:'banned'});
   expect((await app.inject({method:'GET',url:path,headers:{authorization:'bob'}})).statusCode).toBe(403);
  }finally{await app.close();}
 });
 it('pages private ban identities and uses an exact PG microsecond version for unban',async()=>{
  const id=(await service.dispatch(owner,'POST','',{name:'Ban management',requestId:'pg-bans'})).id;
  await pool.query(`INSERT INTO rooms.memberships(tenant_id,room_id,user_id,state)
    SELECT 't',$1,user_id,'banned' FROM identity.users
    WHERE tenant_id='t' AND user_id IN ('pgmember_000','pgmember_001','pgmember_002')`,[id]);
  await pool.query("UPDATE rooms.memberships SET updated_at='2026-10-01T10:00:00.123456Z' WHERE tenant_id='t' AND room_id=$1 AND state='banned'",[id]);
  await service.dispatch(viewer,'POST',id+'/community/join',{});
  await expect(service.dispatch(viewer,'GET',id+'/community/members/page',{state:'banned'})).rejects.toMatchObject({statusCode:403});
  const first=await service.dispatch(owner,'GET',id+'/community/members/page',{state:'banned',limit:2});
  expect(first.items).toHaveLength(2);expect(first.items[0].membershipVersion).toBe('2026-10-01T10:00:00.123456Z');
  const older=await service.dispatch(owner,'GET',id+'/community/members/page',{state:'banned',limit:2,cursor:first.nextCursor});
  expect(older.items).toHaveLength(1);
  const target=first.items[0];
  await pool.query("UPDATE rooms.memberships SET updated_at=updated_at+interval '1 microsecond' WHERE tenant_id='t' AND room_id=$1 AND user_id=$2",[id,target.userId]);
  await expect(service.dispatch(owner,'PATCH',id+'/community/members/'+target.userId,{state:'left',expectedBannedAt:target.membershipVersion})).rejects.toMatchObject({statusCode:409});
  const fresh=await service.dispatch(owner,'GET',id+'/community/members/page',{state:'banned',search:'Member 000'});
  await service.dispatch(owner,'PATCH',id+'/community/members/'+target.userId,{state:'left',expectedBannedAt:fresh.items[0].membershipVersion});
  const row=(await pool.query('SELECT state,role FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND user_id=$3',['t',id,target.userId])).rows[0];
  expect(row).toMatchObject({state:'left',role:'member'});
  await expect(service.dispatch({tenantId:'t',userId:target.userId},'GET',id+'/community/members/page')).rejects.toMatchObject({statusCode:403});
  await service.dispatch(owner,'PATCH',id+'/community/members/bob',{role:'admin'});
  const managerPage=await service.dispatch(viewer,'GET',id+'/community/members/page',{state:'banned',limit:1});
  await service.dispatch(owner,'PATCH',id+'/community/members/bob',{role:'member'});
  await expect(service.dispatch(viewer,'GET',id+'/community/members/page',{state:'banned',cursor:managerPage.nextCursor})).rejects.toMatchObject({statusCode:403});
 });

});
