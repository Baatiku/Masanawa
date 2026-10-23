import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';

const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 Room invitation consent races',()=>{
 const database='room_consent_'+randomUUID().replaceAll('-','');
 const owner={tenantId:'t',userId:'alice'},recipient={tenantId:'t',userId:'bob'};
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);
  if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'room-consent-admin'});
  await admin.query(`CREATE DATABASE "${database}"`);
  url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'room-consent-tests',max:8});
  await seedRoomCommunityTestDatabase(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async()=>recipient});
 },30000);
 afterAll(async()=>{
  if(pool)await pool.end();
  if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}
 });
 async function invitation(){
  const room=await service.dispatch(owner,'POST','',{name:'Private consent Room',visibility:'private',requestId:randomUUID()});
  const path=room.id+'/community';
  await service.dispatch(owner,'POST',path+'/participants',{handle:'bob',requestId:randomUUID()});
  const invite=(await service.dispatch(recipient,'GET','invitations')).items.find((v:any)=>v.roomId===room.id);
  return {room,path,invite,decline:path+'/invitations/'+invite.inviteId+'/decline'};
 }
 it('serializes simultaneous Accept/Decline to one canonical membership outcome',async()=>{
  for(let i=0;i<4;i++){
   const f=await invitation();
   const results=await Promise.allSettled([
    service.dispatch(recipient,'POST',f.path+'/join',{inviteId:f.invite.inviteId}),
    service.dispatch(recipient,'POST',f.decline),
   ]);
   expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
   const invite=(await pool.query('SELECT accepted_by,revoked_at FROM rooms.membership_invites WHERE invite_id=$1',[f.invite.inviteId])).rows[0];
   const members=(await pool.query("SELECT * FROM rooms.memberships WHERE room_id=$1 AND user_id='bob' AND state='active'",[f.room.id])).rows;
   expect(members).toHaveLength(invite.accepted_by?1:0);
   expect(Boolean(invite.accepted_by)).toBe(!invite.revoked_at);
  }
 });
 it('a manager revoke raced with Accept never leaves a replayable private grant after removal',async()=>{
  const f=await invitation();
  await Promise.allSettled([
   service.dispatch(owner,'DELETE',f.path+'/invites/'+f.invite.inviteId),
   service.dispatch(recipient,'POST',f.path+'/join',{inviteId:f.invite.inviteId}),
  ]);
  const members=(await pool.query("SELECT * FROM rooms.memberships WHERE room_id=$1 AND user_id='bob' AND state='active'",[f.room.id])).rows;
  if(members.length)await service.dispatch(owner,'PATCH',f.path+'/members/bob',{state:'left'});
  await expect(service.dispatch(recipient,'POST',f.path+'/join',{inviteId:f.invite.inviteId})).rejects.toMatchObject({statusCode:403});
  await expect(service.dispatch(recipient,'GET',f.path+'/timeline')).rejects.toMatchObject({statusCode:404});
 });
 it('serves recipient-scoped Decline over HTTP without requiring private membership',async()=>{
  const f=await invitation(),app=Fastify();
  registerRoomCommunityRoutes(app,service);
  try{
   const first=await app.inject({method:'POST',url:'/v1/rooms/'+f.decline});
   expect(first.statusCode).toBe(200);
   expect(first.json()).toEqual({declined:true});
   expect((await app.inject({method:'POST',url:'/v1/rooms/'+f.decline})).json()).toEqual({declined:true});
   const privateRoom=await app.inject({method:'GET',url:'/v1/rooms/'+f.path});
   expect(privateRoom.statusCode).toBe(404);
   expect(privateRoom.json()).toEqual({error:'room_not_found'});
  }finally{await app.close();}
 });
 it('issues a single one-time code for concurrent keyed HTTP requests and never recovers the secret',async()=>{
  const r=await service.dispatch(owner,'POST','',{name:'Concurrent code recovery',visibility:'private',requestId:randomUUID()});
  const app=Fastify(),issuer=createRoomCommunityService({pool,authorize:async()=>owner});
  registerRoomCommunityRoutes(app,issuer);
  const url='/v1/rooms/'+r.id+'/community/invites/issue';
  try{
   expect((await app.inject({method:'POST',url,payload:{}})).statusCode).toBe(422);
   const responses=await Promise.all(Array.from({length:4},()=>app.inject({method:'POST',url,payload:{requestId:'one-original'}})));
   expect(responses.map(v=>v.statusCode)).toEqual([200,200,200,200]);
   const results=responses.map(v=>v.json());
   expect(new Set(results.map(v=>v.inviteId)).size).toBe(1);
   expect(results.filter(v=>typeof v.token==='string')).toHaveLength(1);
   expect(results.filter(v=>v.replayed===true)).toHaveLength(3);
   const stored=await pool.query('SELECT * FROM rooms.membership_invites WHERE room_id=$1',[r.id]);
   expect(stored.rows).toHaveLength(1);
   expect(JSON.stringify(stored.rows)).not.toContain(results.find(v=>v.token).token);
   const listing=(await app.inject({method:'GET',url:'/v1/rooms/'+r.id+'/community/invites'})).json();
   expect(listing.issuanceVersion).toBe(1);expect(listing.items[0].requestId).toBe('one-original');
   expect(JSON.stringify(listing)).not.toMatch(/token|hash|created_by|recipient_user_id/);
  }finally{await app.close();}
 });
 it('serializes issuer departure with code creation so a former admin leaves no active grants',async()=>{
  const f=await invitation();
  await service.dispatch(recipient,'POST',f.path+'/join',{inviteId:f.invite.inviteId});
  await service.dispatch(owner,'PATCH',f.path+'/members/bob',{role:'admin'});
  const results=await Promise.allSettled([
   service.dispatch(recipient,'POST',f.path+'/invites/issue',{requestId:'racing-departure'}),
   service.dispatch(recipient,'POST',f.path+'/leave'),
  ]);
  expect(results[1].status).toBe('fulfilled');
  expect((await pool.query("SELECT * FROM rooms.membership_invites WHERE room_id=$1 AND created_by='bob' AND revoked_at IS NULL",[f.room.id])).rows).toHaveLength(0);
  await expect(service.dispatch(recipient,'GET',f.path+'/timeline')).rejects.toMatchObject({statusCode:404});
 });
});
