import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 Room ownership decision races',()=>{
 const database='room_ownership_'+randomUUID().replaceAll('-','');
 const owner={tenantId:'t',userId:'alice'},target={tenantId:'t',userId:'bob'};
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);
  if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'room-ownership-admin'});
  await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'room-ownership-tests',max:8});
  await seedRoomCommunityTestDatabase(sql=>pool.query(sql));service=createRoomCommunityService({pool,authorize:async()=>owner});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 async function setup(){
  const room=await service.dispatch(owner,'POST','',{name:'Ownership race',requestId:randomUUID()}),path=room.id+'/community';
  await service.dispatch(target,'POST',path+'/join');
  const offer=await service.dispatch(owner,'POST',path+'/ownership-transfer',{targetUserId:'bob',requestId:'original'});
  return {room,path,decision:path+'/ownership-transfer/'+offer.transfer.transferId};
 }
 async function canonical(roomId:string){
  const room=(await pool.query('SELECT owner_user_id FROM rooms.rooms WHERE room_id=$1',[roomId])).rows[0];
  const owners=(await pool.query("SELECT user_id FROM rooms.memberships WHERE room_id=$1 AND role='owner' AND state='active'",[roomId])).rows;
  expect(owners).toEqual([{user_id:room.owner_user_id}]);return room.owner_user_id;
 }
 it('Accept versus Cancel commits one audited outcome and exactly one matching owner',async()=>{
  for(let n=0;n<4;n++){
   const f=await setup();const results=await Promise.allSettled([
    service.dispatch(target,'POST',f.decision+'/accept'),service.dispatch(owner,'POST',f.decision+'/cancel'),
   ]);
   expect(results.filter(v=>v.status==='fulfilled')).toHaveLength(1);
   const row=(await pool.query('SELECT * FROM rooms.ownership_transfers WHERE room_id=$1',[f.room.id])).rows[0];
   expect(['accepted','cancelled']).toContain(row.state);expect(row.decided_at).toBeTruthy();
   expect(await canonical(f.room.id)).toBe(row.state==='accepted'?'bob':'alice');
   expect(row.decided_by_user_id).toBe(row.state==='accepted'?'bob':'alice');
  }
 });
 it('parallel duplicate acceptance returns the same receipt without role oscillation',async()=>{
  const f=await setup();const results=await Promise.all(Array.from({length:4},()=>service.dispatch(target,'POST',f.decision+'/accept')));
  expect(new Set(results.map(v=>v.transfer.decidedAt)).size).toBe(1);
  expect(results.every(v=>v.transfer.status==='accepted')).toBe(true);expect(await canonical(f.room.id)).toBe('bob');
 });
 it('member removal versus Accept cannot remove the canonical owner or leave an accepted nonmember',async()=>{
  const f=await setup();const results=await Promise.allSettled([
   service.dispatch(target,'POST',f.decision+'/accept'),service.dispatch(owner,'PATCH',f.path+'/members/bob',{state:'left'}),
  ]);
  expect(results.filter(v=>v.status==='fulfilled')).toHaveLength(1);
  const current=await canonical(f.room.id);
  expect(current).toBe(results[0].status==='fulfilled'?'bob':'alice');
  if(current==='alice'){
   await service.dispatch(owner,'GET',f.path+'/ownership-transfer');
   expect((await pool.query('SELECT state FROM rooms.ownership_transfers WHERE room_id=$1',[f.room.id])).rows[0].state).toBe('cancelled');
  }
 });
 it('concurrent distinct offers never create two pending transfers',async()=>{
  const f=await setup();await service.dispatch(owner,'POST',f.decision+'/cancel');
  const results=await Promise.allSettled(['one','two'].map(requestId=>service.dispatch(owner,'POST',f.path+'/ownership-transfer',{targetUserId:'bob',requestId})));
  expect(results.filter(v=>v.status==='fulfilled')).toHaveLength(1);
  expect((await pool.query("SELECT * FROM rooms.ownership_transfers WHERE room_id=$1 AND state='pending'",[f.room.id])).rows).toHaveLength(1);
  expect(await canonical(f.room.id)).toBe('alice');
 });
});
