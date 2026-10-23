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
 it('does not treat expired ringing or stale accepted calls as busy before the worker runs',async()=>{
  const past=new Date(Date.now()-180000).toISOString();
  await database.pool.query(`INSERT INTO talks.human_calls
    (tenant_id,id,caller,recipient,state,created_at,expires_at,caller_heartbeat,recipient_heartbeat)
    VALUES('t','pg-stale-ring','alice','bob','ringing',$1,$1,$1,$1)`,[past]);
  const first=await service.dispatch(e,'POST','calls',{handle:'bob',requestId:'pg-replace-ring'});
  expect(first.state).toBe('ringing');
  expect((await service.dispatch(a,'GET','calls/pg-stale-ring')).state).toBe('missed');
  await service.dispatch(e,'POST',`calls/${first.id}/transition`,{action:'cancel'});

  await database.pool.query(`INSERT INTO talks.human_calls
    (tenant_id,id,caller,recipient,state,created_at,answered_at,expires_at,caller_heartbeat,recipient_heartbeat)
    VALUES('t','pg-stale-media','alice','bob','accepted',$1,$1,$1,$1,$1)`,[past]);
  const second=await service.dispatch(e,'POST','calls',{handle:'bob',requestId:'pg-replace-media'});
  expect(second.state).toBe('ringing');
  expect((await service.dispatch(a,'GET','calls/pg-stale-media')).state).toBe('ended');
  await service.dispatch(e,'POST',`calls/${second.id}/transition`,{action:'cancel'});
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
 it('paginates privacy-qualified human inboxes with full PostgreSQL timestamp ties',async()=>{
  await database.pool.query(`INSERT INTO identity.users
    SELECT 't','pginboxpeer'||lpad(n::text,3,'0'),'active' FROM generate_series(0,79) n;
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
    SELECT 't','pginboxpeer'||lpad(n::text,3,'0'),'pginbox'||lpad(n::text,3,'0'),
      'PG Inbox '||lpad(n::text,3,'0') FROM generate_series(0,79) n;
    INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
    SELECT 't','pg-inbox-tied-'||lpad(n::text,3,'0'),'alice',
      'pginboxpeer'||lpad(n::text,3,'0'),'alice','accepted',
      '2026-10-18 17:00:00.123456+00' FROM generate_series(0,79) n;
    INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id)
    SELECT 't','pg-inbox-tied-'||lpad(n::text,3,'0'),'alice' FROM generate_series(0,79) n;
    INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at)
    SELECT 't','alice','pginboxpeer'||lpad(n::text,3,'0'),true,now()
    FROM generate_series(0,2) n;
    UPDATE identity.users SET state='suspended' WHERE tenant_id='t' AND user_id IN
      ('pginboxpeer003','pginboxpeer004');
    INSERT INTO talks.safety_enforcement VALUES('t','profile','pginbox005',1,'restricted','moderated',now());`);
  const one=await service.dispatch(a,'GET','conversations',{}, {query:'PG Inbox'});
  expect(one.items).toHaveLength(50);
  const two=await service.dispatch(a,'GET','conversations',{}, {query:'PG Inbox',after:one.nextCursor});
  expect(two.items).toHaveLength(24);
  expect(two.nextCursor).toBeNull();
  const both=[...one.items,...two.items];
  expect(new Set(both.map((r:any)=>r.id)).size).toBe(74);
  expect(both.every((r:any)=>Number(r.peer.handle.slice(-3))>=6)).toBe(true);
 });
 it('preserves microsecond message-page anchors and excludes deleted plaintext from search',async()=>{
  await database.pool.query(`INSERT INTO identity.users VALUES('t','pgchatpeer','active');
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
    VALUES('t','pgchatpeer','pgchatpeer','PG Chat Peer');
    INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
    VALUES('t','pg-chat-tied-thread','alice','pgchatpeer','alice','accepted','2026-10-18 19:00:00+00');
    INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id)
    VALUES('t','pg-chat-tied-thread','alice'),('t','pg-chat-tied-thread','pgchatpeer');
    INSERT INTO talks.human_messages(tenant_id,id,conversation_id,user_id,request_id,text,created_at,deleted)
    SELECT 't','pg-message-tie-'||lpad(n::text,3,'0'),'pg-chat-tied-thread','pgchatpeer',
      'pg-message-tie-'||lpad(n::text,3,'0'),'secret pg microtext '||n,
      '2026-10-18 17:00:00.123456+00',n%9=0 FROM generate_series(0,89) n;`);
  const first=await service.dispatch(a,'GET','conversations/pg-chat-tied-thread/messages',{}, {query:'microtext'});
  expect(first.items).toHaveLength(50);
  const second=await service.dispatch(a,'GET','conversations/pg-chat-tied-thread/messages',{}, {query:'microtext',before:first.nextCursor});
  expect(second.items).toHaveLength(30);
  expect(second.nextCursor).toBeNull();
  const both=[...first.items,...second.items];
  expect(new Set(both.map((r:any)=>r.id)).size).toBe(80);
  expect(both.every((r:any)=>!r.deleted&&Number(r.id.slice(-3))%9!==0)).toBe(true);
 });
});
