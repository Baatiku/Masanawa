import { readFile } from 'node:fs/promises';
import { beforeAll, afterAll, describe, it, expect } from 'vitest';
import { createIsolatedPostgresTestDatabase } from '../../../../adapters/storage/postgres/src/home_feed/isolated_test_database.js';
import { createHumanCommunicationService, type HumanPool } from './index.js';
const url=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!url)('human communication real PostgreSQL concurrency',()=>{
 let database:Awaited<ReturnType<typeof createIsolatedPostgresTestDatabase>>;
 let service:ReturnType<typeof createHumanCommunicationService>;
 const a={tenantId:'t',userId:'alice'},b={tenantId:'t',userId:'bob'},e={tenantId:'t',userId:'eve'};
 beforeAll(async()=>{
  database=await createIsolatedPostgresTestDatabase(url!);
  await database.pool.query("CREATE SCHEMA identity;CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));CREATE SCHEMA talks;");
  for(const file of ['0003_talk_profiles.sql','0009_talk_safety.sql','0015_human_communication.sql']) await database.pool.query(await readFile(new URL('../../../../packages/talks/migrations/'+file,import.meta.url),'utf8'));
  await database.pool.query("INSERT INTO identity.users VALUES('t','alice','active'),('t','bob','active'),('t','eve','active');INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','alice','alice','Alice'),('t','bob','bob','Bob'),('t','eve','eve','Eve');");
  service=createHumanCommunicationService({pool:database.pool as unknown as HumanPool,authorizer:{authorize:async()=>a},mediaTokens:{mint:async()=>({})},endMediaRoom:async()=>{}});
 },30000);
 afterAll(async()=>{await service?.close();await database?.close();});
 it('serializes unordered pair creation and same-ID sends across pool connections',async()=>{
  const [x,y]=await Promise.all([service.dispatch(a,'POST','conversations',{handle:'bob',requestId:'pair'}),service.dispatch(a,'POST','conversations',{handle:'bob',requestId:'pair'})]);
  expect(x.id).toBe(y.id);
  await service.dispatch(b,'POST',`conversations/${x.id}/decision`,{action:'accept',requestId:'accept'});
  const payload={text:'One message',requestId:'same-message'};
  const [m,n]=await Promise.all([service.dispatch(a,'POST',`conversations/${x.id}/messages`,payload),service.dispatch(a,'POST',`conversations/${x.id}/messages`,payload)]);
  expect(m.id).toBe(n.id);
  expect((await database.pool.query('SELECT count(*)::int AS n FROM talks.human_messages')).rows[0].n).toBe(1);
  await expect(service.dispatch(e,'GET',`conversations/${x.id}`)).rejects.toMatchObject({statusCode:404});
 });
 it('makes only one simultaneous call to the same recipient ring and resolves answer/cancel',async()=>{
  const calls=await Promise.all([service.dispatch(a,'POST','calls',{handle:'bob',requestId:'call-a'}),service.dispatch(e,'POST','calls',{handle:'bob',requestId:'call-e'})]);
  expect(calls.map(c=>c.state).sort()).toEqual(['busy','ringing']);
  const index=calls.findIndex(c=>c.state==='ringing'),c=calls[index],caller=index===0?a:e;
  const results=await Promise.allSettled([service.dispatch(b,'POST',`calls/${c.id}/transition`,{action:'accept'}),service.dispatch(caller,'POST',`calls/${c.id}/transition`,{action:'cancel'})]);
  expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
  const state=await service.dispatch(caller,'GET',`calls/${c.id}`);
  expect(['accepted','cancelled']).toContain(state.state);
  if(state.state==='accepted') await service.dispatch(caller,'POST',`calls/${c.id}/transition`,{action:'end'});
 });
 it('keeps microsecond-tied authorized history complete after SQL privacy filtering',async()=>{
  await database.pool.query(`INSERT INTO talks.human_calls
    (tenant_id,id,caller,recipient,state,created_at,expires_at,caller_heartbeat,recipient_heartbeat)
    SELECT 't','pg-tied-'||lpad(n::text,3,'0'),'alice',
      CASE WHEN n%8=0 THEN 'eve' ELSE 'bob' END,'cancelled',
      '2026-10-10T10:00:00.123456Z'::timestamptz,
      '2026-10-11T10:00:00Z'::timestamptz,
      '2026-10-10T10:00:00Z'::timestamptz,
      '2026-10-10T10:00:00Z'::timestamptz
    FROM generate_series(1,80) n`);
  await database.pool.query(`INSERT INTO talks.safety_preferences
    (tenant_id,viewer_user_id,subject_user_id,blocked,updated_at)
    VALUES('t','alice','eve',true,clock_timestamp())`);
  try{
   const page=await service.dispatch(a,'GET','calls',{}, {q:'pg-tied-'});
   expect(page.items).toHaveLength(50);
   const older=await service.dispatch(a,'GET','calls',{}, {q:'pg-tied-',after:page.nextCursor});
   expect(older.items).toHaveLength(20);
   expect(older.nextCursor).toBeNull();
   const rows=[...page.items,...older.items];
   expect(new Set(rows.map((r:any)=>r.id)).size).toBe(70);
   expect(rows.every((r:any)=>r.peer.handle==='bob')).toBe(true);
   expect(rows.map((r:any)=>r.id)).toEqual([...rows.map((r:any)=>r.id)].sort().reverse());
  } finally {
   await database.pool.query("DELETE FROM talks.safety_preferences WHERE tenant_id='t' AND viewer_user_id='alice' AND subject_user_id='eve'");
   await database.pool.query("DELETE FROM talks.human_calls WHERE tenant_id='t' AND id LIKE 'pg-tied-%'");
  }
 });
});
