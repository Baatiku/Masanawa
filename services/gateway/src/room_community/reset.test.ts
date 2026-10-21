import {readFile,readdir} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {it,expect} from 'vitest';
import {createRoomCommunityService} from './index.js';

it('deletes retired Rooms and history, cancels old jobs and starts new Rooms empty',async()=>{
 const db=new PGlite();
 try{
  await db.exec(`CREATE SCHEMA identity;
   CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));
   CREATE TABLE identity.characters(tenant_id text,character_id text,PRIMARY KEY(tenant_id,character_id));
   INSERT INTO identity.users VALUES('t','alice','active');
   CREATE SCHEMA events;CREATE TABLE events.outbox(destination text);
   INSERT INTO events.outbox VALUES('rooms.teacher'),('notifications.rooms'),('other');`);
  const dir=new URL('../../../../packages/rooms/migrations/',import.meta.url);
  const files=(await readdir(dir)).filter(n=>n.endsWith('.sql')).sort();
  for(const n of files.filter(n=>!n.startsWith('0008_')))await db.exec(await readFile(new URL(n,dir),'utf8'));
  const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
  const service=createRoomCommunityService({pool:pool as never,authorize:async()=>({tenantId:'t',userId:'alice'})});
  const old=await service.dispatch({tenantId:'t',userId:'alice'},'POST','',{name:'Retired Room',requestId:'old'});
  await db.query("INSERT INTO rooms.lessons(tenant_id,lesson_id,room_id,kind,body,state) VALUES('t','lesson_old',$1,'lesson','Retired history','published')",[old.id]);
  await db.exec(await readFile(new URL('0008_reset_retired_rooms.sql',dir),'utf8'));
  expect((await db.query('SELECT * FROM rooms.rooms')).rows).toEqual([]);
  expect((await db.query('SELECT * FROM rooms.lessons')).rows).toEqual([]);
  expect((await db.query('SELECT * FROM rooms.memberships')).rows).toEqual([]);
  expect((await db.query('SELECT * FROM events.outbox')).rows).toEqual([{destination:'other'}]);
  expect((await db.query('SELECT * FROM identity.users')).rows).toHaveLength(1);
  const fresh=await service.dispatch({tenantId:'t',userId:'alice'},'POST','',{name:'New Room',requestId:'new'});
  expect(fresh.id).not.toBe(old.id);
  expect((await service.dispatch({tenantId:'t',userId:'alice'},'GET',fresh.id+'/community/timeline')).items).toEqual([]);
 }finally{await db.close();}
},30000);
