import {
  beforeAll,afterAll,it,expect,vi
}
from 'vitest';
import {
  PGlite
}
from '@electric-sql/pglite';
import {
  readFile
}
from 'node:fs/promises';
import Fastify from 'fastify';
import {
  createHumanCommunicationService,registerHumanCommunicationRoutes,type HumanPool
}
from './index.js';
const db=new PGlite();
// PGlite single connection, serialized transactions as a real pool would lease connections.
let tail=Promise.resolve();
const query=async<R extends Record<string,unknown>>(sql:string,values?:unknown[])=>{
  const r=await db.query<R>(sql,values);
  return {
    rows:r.rows,rowCount:r.affectedRows??r.rows.length
  }
}
;
const pool:HumanPool={
  query,async connect(){
    const previous=tail;
    let release!:()=>void;
    tail=new Promise<void>(r=>{
      release=r
    }
    );
    await previous;
    return {
      query,release
    }
  }
}
;
const a={
  tenantId:'t',userId:'alice'
}
,b={
  tenantId:'t',userId:'bob'
}
,eve={
  tenantId:'t',userId:'eve'
}
,other={
  tenantId:'other',userId:'alice'
}
;
let clock=new Date('2026-10-19T00:00:00Z');
const push=vi.fn(async()=>{
}
),mint=vi.fn(async()=>({
  server_url:'wss://media.example',participant_token:'test',room_name:'human',participant_identity:'alice',expires_at:'2026-10-19T00:15:00Z'
}
)),endMediaRoom=vi.fn(async()=>{
}
);
const service=createHumanCommunicationService({
  pool,authorizer:{
    async authorize({
      authorizationHeader
    }
    ){
      if(!authorizationHeader)throw Object.assign(new Error('Unauthorized'),{
        statusCode:401
      }
      );
      return authorizationHeader==='bob'?b:authorizationHeader==='eve'?eve:a
    }
  }
  ,mediaTokens:{
    mint
  }
  ,endMediaRoom,push,now:()=>clock
}
);
const send=(actor:typeof a,method:string,path:string,body:Record<string,unknown>={
}
,q:Record<string,unknown>={
}
)=>service.dispatch(actor,method,path,body,q);
let cid='',first='';
beforeAll(async()=>{
  await db.exec(`CREATE SCHEMA identity;CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));CREATE SCHEMA talks;`);
  for(const file of ['0003_talk_profiles.sql','0009_talk_safety.sql','0015_human_communication.sql'])await db.exec(await readFile(new URL('../../../../packages/talks/migrations/'+file,import.meta.url),'utf8'));
  await db.exec(`INSERT INTO identity.users VALUES('t','alice','active'),('t','bob','active'),('t','eve','active'),('other','alice','active');INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','alice','alice','Alice'),('t','bob','bob','Bob'),('t','eve','eve','Eve');`)
}
,30000);
afterAll(async()=>{
  await service.close();
  await db.close()
}
);
it('creates one pending pair, requires recipient consent, and fences durable request IDs',async()=>{
  const c=await send(a,'POST','conversations',{
    handle:'bob',requestId:'start'
  }
  );
  cid=c.id;
  expect(c.state).toBe('pending');
  expect((await send(a,'POST','conversations',{
    handle:'bob',requestId:'start'
  }
  )).id).toBe(cid);
  await expect(send(a,'POST','conversations',{
    handle:'eve',requestId:'start'
  }
  )).rejects.toMatchObject({
    statusCode:409
  }
  );
  await expect(send(a,'POST',`conversations/${cid}/decision`,{
    action:'accept',requestId:'badaccept'
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  await expect(send(b,'POST',`conversations/${cid}/messages`,{
    text:'reply',requestId:'reply'
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  const m=await send(a,'POST',`conversations/${cid}/messages`,{
    text:'hello 100%_ literal',requestId:'first'
  }
  );
  first=m.id;
  expect((await send(a,'POST',`conversations/${cid}/messages`,{
    text:'hello 100%_ literal',requestId:'first'
  }
  )).id).toBe(first);
  await expect(send(a,'POST',`conversations/${cid}/messages`,{
    text:'spam',requestId:'second'
  }
  )).rejects.toMatchObject({
    statusCode:409
  }
  );
  expect((await send(b,'GET','conversations',{
  }
  , {
    filter:'requests'
  }
  )).items).toHaveLength(1)
}
);
it('denies outsiders, tenant tampering and self-contact',async()=>{
  for(const actor of [eve,other])await expect(send(actor,'GET',`conversations/${cid}`)).rejects.toMatchObject({
    statusCode:404
  }
  );
  await expect(send(a,'POST','conversations',{
    handle:'alice',requestId:'self'
  }
  )).rejects.toMatchObject({
    statusCode:400
  }
  );
  await expect(send(eve,'POST',`conversations/${cid}/read`,{
    messageId:first
  }
  )).rejects.toMatchObject({
    statusCode:404
  }
  )
}
);
it('accepts independently of follows; literal search, replies, delivery and private read receipts',async()=>{
  expect((await send(b,'POST',`conversations/${cid}/decision`,{
    action:'accept',requestId:'accept'
  }
  )).state).toBe('accepted');
  expect((await send(b,'GET',`conversations/${cid}/messages`,{
  }
  , {
    query:'%_'
  }
  )).items).toHaveLength(1);
  expect((await send(b,'GET',`conversations/${cid}/messages`,{
  }
  , {
    query:'%not'
  }
  )).items).toHaveLength(0);
  await send(b,'PATCH','privacy',{
    readReceipts:false
  }
  );
  await send(b,'POST',`conversations/${cid}/read`,{
    messageId:first
  }
  );
  expect((await send(a,'GET',`conversations/${cid}/messages`)).items[0].deliveryStatus).toBe('delivered');
  await send(b,'PATCH','privacy',{
    readReceipts:true
  }
  );
  await send(b,'POST',`conversations/${cid}/read`,{
    messageId:first
  }
  );
  expect((await send(a,'GET',`conversations/${cid}/messages`)).items[0].deliveryStatus).toBe('read');
  expect((await send(b,'POST',`conversations/${cid}/messages`,{
    requestId:'reply',text:'reply',replyToId:first
  }
  )).replyToId).toBe(first);
  await expect(send(a,'POST',`conversations/${cid}/messages`,{
    requestId:'badreply',text:'x',replyToId:'missing'
  }
  )).rejects.toMatchObject({
    statusCode:404
  }
  )
}
);
it('accepts read anchors only from incoming visible messages, preserves unread progress and bounds history search',async()=>{
  const carol={tenantId:'t',userId:'carol'};
  const thread='read-receipt-contract';
  await db.exec(`INSERT INTO identity.users VALUES('t','carol','active');
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
    VALUES('t','carol','carol','Carol');
    INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
    VALUES('t','read-receipt-contract','alice','carol','alice','accepted','2026-10-19T00:00:00Z');
    INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id)
    VALUES('t','read-receipt-contract','alice'),('t','read-receipt-contract','carol');`);
  const originalClock=clock;
  try{
    clock=new Date('2026-10-19T06:00:00Z');
    const firstIncoming=await send(a,'POST',`conversations/${thread}/messages`,{requestId:'read-first',text:'First message'});
    clock=new Date('2026-10-19T06:00:01Z');
    const nextIncoming=await send(a,'POST',`conversations/${thread}/messages`,{requestId:'read-second',text:'Second message'});
    clock=new Date('2026-10-19T06:00:02Z');
    const outgoing=await send(carol,'POST',`conversations/${thread}/messages`,{requestId:'read-own',text:'My outgoing reply'});

    expect((await send(carol,'GET',`conversations/${thread}`)).unreadCount).toBe(2);
    await expect(send(carol,'GET',`conversations/${thread}/read`,{messageId:firstIncoming.id})).rejects.toMatchObject({statusCode:405});
    await expect(send(carol,'POST',`conversations/${thread}/read`,{messageId:outgoing.id})).rejects.toMatchObject({statusCode:400});
    expect((await send(carol,'GET',`conversations/${thread}`)).unreadCount).toBe(2);
    await expect(send(eve,'POST',`conversations/${thread}/read`,{messageId:firstIncoming.id})).rejects.toMatchObject({statusCode:404});
    await expect(send(carol,'POST',`conversations/${thread}/read`,{messageId:'not-in-thread'})).rejects.toMatchObject({statusCode:404});
    await send(carol,'POST',`conversations/${thread}/read`,{messageId:firstIncoming.id});
    expect((await send(carol,'GET',`conversations/${thread}`)).unreadCount).toBe(1);
    await send(carol,'POST',`conversations/${thread}/read`,{messageId:nextIncoming.id});
    expect((await send(carol,'GET',`conversations/${thread}`)).unreadCount).toBe(0);
    await send(carol,'POST',`conversations/${thread}/read`,{messageId:firstIncoming.id});
    expect((await send(carol,'GET',`conversations/${thread}`)).unreadCount).toBe(0);

    for(const invalid of [5,'x'.repeat(81)])await expect(send(carol,'GET',`conversations/${thread}/messages`,{}, {query:invalid})).rejects.toMatchObject({statusCode:400});
    expect((await send(carol,'GET',`conversations/${thread}/messages`,{}, {query:' SECOND '})).items.map((m:any)=>m.id)).toEqual([nextIncoming.id]);

    // Deleted tombstones remain in normal history but do not become fresh
    // delivery acknowledgements or searchable copies of former text.
    await send(a,'DELETE',`conversations/${thread}/messages/${nextIncoming.id}`);
    const deletions=await db.query<{n:number}>("SELECT count(*)::int AS n FROM talks.human_events WHERE conversation_id=$1 AND type='message.deleted'",[thread]);
    await send(a,'DELETE',`conversations/${thread}/messages/${nextIncoming.id}`);
    expect((await db.query<{n:number}>("SELECT count(*)::int AS n FROM talks.human_events WHERE conversation_id=$1 AND type='message.deleted'",[thread])).rows[0]!.n).toBe(deletions.rows[0]!.n);
    await db.query('UPDATE talks.human_messages SET delivered_at=NULL WHERE tenant_id=$1 AND id=$2',['t',nextIncoming.id]);
    await send(carol,'GET',`conversations/${thread}/messages`);
    const deleted=(await db.query<{delivered_at:string|null}>('SELECT delivered_at FROM talks.human_messages WHERE tenant_id=$1 AND id=$2',['t',nextIncoming.id])).rows[0]!;
    expect(deleted.delivered_at).toBeNull();
    expect((await send(carol,'GET',`conversations/${thread}/messages`,{}, {query:'Second'})).items).toEqual([]);
    await expect(send(carol,'POST',`conversations/${thread}/read`,{messageId:nextIncoming.id})).rejects.toMatchObject({statusCode:404});
  } finally {
    clock=originalClock;
  }
});
it('validates and binds private media, prevents theft, and revokes after deletion',async()=>{
  await expect(send(a,'POST',`conversations/${cid}/media`,{
    requestId:'invalid-media',kind:'image',mimeType:'image/png',name:'x.png',dataBase64:'aGVsbG8='
  }
  )).rejects.toMatchObject({
    statusCode:400
  }
  );
  const media=await send(a,'POST',`conversations/${cid}/media`,{
    requestId:'media',kind:'doc',mimeType:'application/pdf',name:'x.pdf',dataBase64:Buffer.from('%PDF-1.4 test').toString('base64')
  }
  );
  await expect(send(b,'GET',`conversations/${cid}/media/${media.id}`)).rejects.toMatchObject({
    statusCode:404
  }
  );
  await expect(send(b,'POST',`conversations/${cid}/messages`,{
    requestId:'stolen',text:'x',attachments:[{
      id:media.id
    }
    ]
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  const m=await send(a,'POST',`conversations/${cid}/messages`,{
    requestId:'withmedia',text:'document',attachments:[{
      id:media.id
    }
    ]
  }
  );
  expect((await send(b,'GET',`conversations/${cid}/media/${media.id}`)).dataBase64).toBeTruthy();
  await expect(send(b,'DELETE',`conversations/${cid}/messages/${m.id}`)).rejects.toMatchObject({
    statusCode:403
  }
  );
  await send(a,'DELETE',`conversations/${cid}/messages/${m.id}`);
  await expect(send(a,'GET',`conversations/${cid}/media/${media.id}`)).rejects.toMatchObject({
    statusCode:404
  }
  );
  expect((await send(a,'GET',`conversations/${cid}/messages`)).items.find((x:any)=>x.id===m.id)).toMatchObject({
    deleted:true,text:'',attachments:[]
  }
  )
}
);
it('returns only viewer-owned blocked peers in bounded searchable pages with validated cursors',async()=>{
  await db.exec(`INSERT INTO identity.users(tenant_id,user_id,state)
    SELECT 't','blkpeer'||lpad(n::text,3,'0'),'active' FROM generate_series(0,72) n;
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
    SELECT 't','blkpeer'||lpad(n::text,3,'0'),'blocked'||lpad(n::text,3,'0'),
      'Blocked '||lpad(n::text,3,'0') FROM generate_series(0,72) n;
    INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at)
    SELECT 't','alice','blkpeer'||lpad(n::text,3,'0'),true,'2026-10-19T00:00:00Z'::timestamptz
    FROM generate_series(0,72) n;`);
  await db.query("UPDATE talks.public_profiles SET display_name='Literal 50% _ marker' WHERE tenant_id='t' AND handle='blocked050'");
  const page1=await send(a,'GET','privacy/blocked');
  expect(page1.items).toHaveLength(50);
  expect(page1.items[0].handle).toBe('blocked000');
  expect(page1.nextCursor).toBe('blocked049');
  const page2=await send(a,'GET','privacy/blocked',{}, {after:page1.nextCursor});
  expect(page2.items).toHaveLength(23);
  expect(page2.items.at(-1).handle).toBe('blocked072');
  expect(page2.nextCursor).toBeNull();
  expect(new Set([...page1.items,...page2.items].map((item:any)=>item.handle)).size).toBe(73);
  const search=await send(a,'GET','privacy/blocked',{}, {query:'blocked06'});
  expect(search.items.map((item:any)=>item.handle)).toEqual(Array.from({length:10},(_,i)=>`blocked06${i}`));
  expect((await send(a,'GET','privacy/blocked',{}, {query:'%'})).items.map((item:any)=>item.handle)).toEqual(['blocked050']);
  expect((await send(a,'GET','privacy/blocked',{}, {query:'_'})).items.map((item:any)=>item.handle)).toEqual(['blocked050']);
  expect((await send(b,'GET','privacy/blocked')).items).toEqual([]);
  await expect(send(a,'POST','privacy/blocked/blocked050',{blocked:false})).rejects.toMatchObject({statusCode:404});
  expect((await send(a,'GET','privacy/blocked',{}, {query:'%'})).items).toHaveLength(1);
  await expect(send(b,'GET','privacy/blocked',{}, {after:page1.nextCursor})).rejects.toMatchObject({statusCode:404});
  await expect(send(a,'GET','privacy/blocked',{}, {query:'blocked06',after:page1.nextCursor})).rejects.toMatchObject({statusCode:404});
  await expect(send(a,'GET','privacy/blocked',{}, {query:'x'.repeat(81)})).rejects.toMatchObject({statusCode:400});
  await send(a,'PUT','privacy/blocked/blocked049',{blocked:false});
  await expect(send(a,'GET','privacy/blocked',{}, {after:page1.nextCursor})).rejects.toMatchObject({statusCode:404});
});
it('persists reports and rejects unknown privacy controls',async()=>{
  await send(b,'POST',`conversations/${cid}/messages/${first}/report`,{
    requestId:'report',reason:'spam'
  }
  );
  await send(b,'POST',`conversations/${cid}/messages/${first}/report`,{
    requestId:'report',reason:'spam'
  }
  );
  expect((await db.query('SELECT * FROM talks.human_reports')).rows).toHaveLength(1);
  await expect(send(a,'POST',`conversations/${cid}/messages/${first}/report`,{requestId:'own-report',reason:'spam'})).rejects.toMatchObject({statusCode:403});
  await expect(send(b,'GET',`conversations/${cid}/messages/${first}/report`,{requestId:'get-report',reason:'spam'})).rejects.toMatchObject({statusCode:404});
  await expect(send(a,'PATCH','privacy',{
    unknown:true
  }
  )).rejects.toMatchObject({
    statusCode:400
  }
  );
  await send(b,'PATCH','privacy',{
    calls:'nobody'
  }
  );
  await expect(send(a,'POST','calls',{
    handle:'bob',requestId:'private-call'
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  await send(b,'PATCH','privacy',{
    calls:'everyone'
  }
  )
}
);
it('issues media only to accepted participants and enforces actor/race rules',async()=>{
  const c=await send(a,'POST','calls',{
    handle:'bob',requestId:'call'
  }
  );
  expect(c.state).toBe('ringing');
  expect((await send(b,'GET','calls/incoming')).items[0].id).toBe(c.id);
  await expect(send(a,'POST',`calls/${c.id}/token`)).rejects.toMatchObject({
    statusCode:409
  }
  );
  await expect(send(a,'POST',`calls/${c.id}/transition`,{
    action:'accept'
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  await expect(send(eve,'GET',`calls/${c.id}`)).rejects.toMatchObject({
    statusCode:404
  }
  );
  expect((await send(eve,'POST','calls',{
    handle:'bob',requestId:'busy'
  }
  )).state).toBe('busy');
  await send(b,'POST',`calls/${c.id}/transition`,{
    action:'accept'
  }
  );
  expect((await send(a,'POST',`calls/${c.id}/token`)).participant_token).toBe('test');
  expect(mint).toHaveBeenCalledWith({
    talkId:`human_${c.id}`,sessionId:c.id,userId:'alice',role:'speaker',canPublishAudio:true
  }
  );
  await expect(send(a,'POST',`calls/${c.id}/transition`,{
    action:'cancel'
  }
  )).rejects.toMatchObject({
    statusCode:409
  }
  );
  await send(a,'POST',`calls/${c.id}/transition`,{
    action:'end'
  }
  );
  await send(b,'POST',`calls/${c.id}/transition`,{
    action:'end'
  }
  );
  await service.recover();
  expect(endMediaRoom).toHaveBeenCalledWith(`human_${c.id}`)
}
);
it('recovers ring deadlines and stale calls durably',async()=>{
  const c=await send(a,'POST','calls',{
    handle:'bob',requestId:'expire'
  }
  );
  clock=new Date(clock.getTime()+61000);
  await service.recover();
  expect((await send(b,'GET',`calls/${c.id}`)).state).toBe('missed');
  const active=await send(a,'POST','calls',{
    handle:'bob',requestId:'stale'
  }
  );
  await send(b,'POST',`calls/${active.id}/transition`,{
    action:'accept'
  }
  );
  clock=new Date(clock.getTime()+121000);
  await service.recover();
  expect((await send(a,'GET',`calls/${active.id}`)).state).toBe('ended');
  await expect(send(b,'POST',`calls/${active.id}/token`)).rejects.toMatchObject({
    statusCode:409
  }
  )
}
);
it('reaps expired participant calls before fresh admission without a worker tick',async()=>{
  const expired=await send(a,'POST','calls',{handle:'bob',requestId:'expired-busy-ring'});
  expect(expired.state).toBe('ringing');
  clock=new Date(clock.getTime()+61000);
  const replacement=await send(eve,'POST','calls',{handle:'bob',requestId:'replace-expired-ring'});
  expect(replacement.state).toBe('ringing');
  expect((await send(a,'GET',`calls/${expired.id}`)).state).toBe('missed');
  expect((await send(eve,'POST','calls',{handle:'bob',requestId:'replace-expired-ring'})).id).toBe(replacement.id);
  expect((await send(a,'POST','calls',{handle:'bob',requestId:'still-busy'})).state).toBe('busy');
  await send(eve,'POST',`calls/${replacement.id}/transition`,{action:'cancel'});

  const connected=await send(a,'POST','calls',{handle:'bob',requestId:'expired-busy-accepted'});
  await send(b,'POST',`calls/${connected.id}/transition`,{action:'accept'});
  clock=new Date(clock.getTime()+121000);
  const next=await send(eve,'POST','calls',{handle:'bob',requestId:'replace-expired-accepted'});
  expect(next.state).toBe('ringing');
  expect((await send(a,'GET',`calls/${connected.id}`)).state).toBe('ended');
  await send(eve,'POST',`calls/${next.id}/transition`,{action:'cancel'});
});
it('searches the complete participant-authorized human call history using literal peer/outcome terms',async()=>{
  const old = '2026-10-01T09:00:00Z';
  // Many unrelated recent calls must not hide an older human match behind
  // the first page. Searching does not expose a third party's calls.
  for (let i=0;i<55;i++) {
    await query('INSERT INTO talks.human_calls(tenant_id,id,caller,recipient,state,created_at,expires_at,caller_heartbeat,recipient_heartbeat) VALUES($1,$2,$3,$4,$5,$6,$7,$6,$6)',[
      't',`history-filler-${i}`,'alice','eve','cancelled',new Date(Date.parse(old)+i*60000).toISOString(),'2026-10-02T09:00:00Z'
    ]);
  }
  const byPeer=await send(a,'GET','calls',{}, {q:'  bOb  '});
  expect(byPeer.items.length).toBeGreaterThan(0);
  expect(byPeer.items.every((c:any)=>c.peer.handle==='bob')).toBe(true);
  expect((await send(a,'GET','calls',{}, {q:'%_'})).items).toHaveLength(0);
  expect((await send(a,'GET','calls',{}, {q:'history-filler-0'})).items.map((c:any)=>c.id)).toContain('history-filler-0');
  const searchPage=await send(a,'GET','calls',{}, {q:'cancelled'});
  expect(searchPage.items).toHaveLength(50);
  expect(searchPage.nextCursor).toBeTruthy();
  const older=await send(a,'GET','calls',{}, {q:'cancelled',after:searchPage.nextCursor});
  expect(older.items.length).toBeGreaterThan(0);
  expect(older.items.some((c:any)=>searchPage.items.some((first:any)=>first.id===c.id))).toBe(false);
  expect((await send(b,'GET','calls',{}, {q:'history-filler'})).items).toHaveLength(0);
  expect((await send(eve,'GET','calls',{}, {q:'history-filler'})).items).toHaveLength(50);
  await expect(send(a,'GET','calls',{}, {q:'x'.repeat(81)})).rejects.toMatchObject({statusCode:400});
  await expect(send(a,'GET','calls',{}, {q:12})).rejects.toMatchObject({statusCode:400});
});
it('pages tied call timestamps after filtering blocked peers, without gaps or hidden results',async()=>{
  const timestamp='2026-10-10T09:00:00.123456Z';
  for(let i=0;i<72;i++){
    await query('INSERT INTO talks.human_calls(tenant_id,id,caller,recipient,state,created_at,expires_at,caller_heartbeat,recipient_heartbeat) VALUES($1,$2,$3,$4,$5,$6,$7,$6,$6)',[
      't',`tied-history-${String(i).padStart(3,'0')}`,'alice',i%9===0?'eve':'bob','cancelled',timestamp,'2026-10-11T09:00:00Z'
    ]);
  }
  // Filtering *after* LIMIT 51 would produce a short page or drop records.
  await query('INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at) VALUES($1,$2,$3,true,$4)',[
    't','alice','eve',timestamp
  ]);
  try{
    const firstPage=await send(a,'GET','calls',{}, {q:'tied-history-'});
    expect(firstPage.items).toHaveLength(50);
    expect(firstPage.nextCursor).toBeTruthy();
    const secondPage=await send(a,'GET','calls',{}, {q:'tied-history-',after:firstPage.nextCursor});
    expect(secondPage.items).toHaveLength(14);
    expect(secondPage.nextCursor).toBeNull();
    const all=[...firstPage.items,...secondPage.items];
    expect(new Set(all.map((c:any)=>c.id)).size).toBe(64);
    expect(all.every((c:any)=>c.peer.handle==='bob')).toBe(true);
    expect(all.map((c:any)=>c.id)).toEqual(
      [...all.map((c:any)=>c.id)].sort().reverse(),
    );
    // A blocked caller cannot disclose an otherwise valid cursor/detail.
    await expect(send(a,'GET','calls/tied-history-000')).rejects.toMatchObject({statusCode:404});
    await query('INSERT INTO talks.human_calls(tenant_id,id,caller,recipient,state,created_at,expires_at,caller_heartbeat,recipient_heartbeat) VALUES($1,$2,$3,$4,$5,$6,$7,$6,$6)',[
      't','tied-hidden-incoming','eve','alice','ringing',timestamp,'2026-11-01T00:00:00Z'
    ]);
    expect((await send(a,'GET','calls/incoming')).items.some((c:any)=>c.id==='tied-hidden-incoming')).toBe(false);
    await query("UPDATE identity.users SET state='suspended' WHERE tenant_id='t' AND user_id='bob'");
    expect((await send(a,'GET','calls',{}, {q:'tied-history-'})).items).toHaveLength(0);
    await query("UPDATE identity.users SET state='active' WHERE tenant_id='t' AND user_id='bob'");
    expect((await send(b,'GET','calls',{}, {q:'tied-history-'})).items).toHaveLength(50);
    expect((await send(eve,'GET','calls',{}, {q:'tied-history-'})).items).toHaveLength(0);
  } finally {
    await query("UPDATE identity.users SET state='active' WHERE tenant_id='t' AND user_id='bob'");
    await query('DELETE FROM talks.safety_preferences WHERE tenant_id=$1 AND viewer_user_id=$2 AND subject_user_id=$3',['t','alice','eve']);
    await query("DELETE FROM talks.human_calls WHERE tenant_id=$1 AND id LIKE 'tied-history-%'",['t']);
    await query("DELETE FROM talks.human_calls WHERE tenant_id='t' AND id='tied-hidden-incoming'");
  }
});
it('retries durable push once after failure and maintains isolated catch-up cursors',async()=>{
  await db.exec('UPDATE talks.human_outbox SET sent_at=now()');
  push.mockRejectedValueOnce(new Error('provider unavailable'));
  await send(a,'POST',`conversations/${cid}/messages`,{
    requestId:'durable',text:'recover'
  }
  );
  await service.recover();
  expect((await db.query('SELECT * FROM talks.human_outbox WHERE sent_at IS NULL')).rows).toHaveLength(1);
  clock=new Date(clock.getTime()+10000);
  await service.recover();
  expect((await db.query('SELECT * FROM talks.human_outbox WHERE sent_at IS NULL')).rows).toHaveLength(0);
  const received=await send(b,'GET','events');
  expect(received.items.length).toBeGreaterThan(0);
  expect((await send(eve,'GET','events')).items.every((e:any)=>!e.conversationId)).toBe(true);
  expect((await send(other,'GET','events')).items).toEqual([]);
  expect((await send(b,'GET','events',{
  }
  , {
    after:received.cursor
  }
  )).items).toEqual([])
}
);
it('revokes reads, media, calls and queued delivery on bidirectional block and inactive accounts',async()=>{
  await send(a,'POST',`conversations/${cid}/messages`,{
    requestId:'blocked-push',text:'queued'
  }
  );
  await send(b,'PUT','privacy/blocked/alice',{
    blocked:true
  }
  );
  await expect(send(a,'GET',`conversations/${cid}`)).rejects.toMatchObject({
    statusCode:404
  }
  );
  await expect(send(a,'POST','calls',{
    handle:'bob',requestId:'blocked-call'
  }
  )).rejects.toMatchObject({
    statusCode:404
  }
  );
  expect((await send(a,'GET','events')).items.filter((e:any)=>e.conversationId===cid&&e.type!=='conversation.revoked')).toEqual([]);
  const count=push.mock.calls.length;
  await service.recover();
  expect(push.mock.calls.length).toBe(count);
  expect((await send(b,'GET','privacy/blocked')).items[0].handle).toBe('alice');
  await send(b,'PUT','privacy/blocked/alice',{
    blocked:false
  }
  );
  await db.exec("UPDATE identity.users SET state='disabled' WHERE user_id='bob'");
  await expect(send(a,'GET',`conversations/${cid}`)).rejects.toMatchObject({
    statusCode:404
  }
  );
  await db.exec("UPDATE identity.users SET state='active' WHERE user_id='bob'")
}
);
it('serves authenticated no-store API and explicit missing-provider errors',async()=>{
  const app=Fastify();
  registerHumanCommunicationRoutes(app,service);
  expect((await app.inject('/v1/human/conversations')).statusCode).toBe(401);
  const response=await app.inject({
    url:'/v1/human/conversations',headers:{
      authorization:'alice'
    }
  }
  );
  expect(response.statusCode).toBe(200);
  expect(response.headers['cache-control']).toBe('private, no-store');
  await app.close();
  const noProvider=createHumanCommunicationService({
    pool,authorizer:{
      async authorize(){
        return a
      }
    }
  }
  );
  await expect(noProvider.dispatch(a,'POST','calls',{
    handle:'bob',requestId:'no-provider'
  }
  )).rejects.toMatchObject({
    statusCode:503
  }
  )
}
);
it('serializes pair/message replay and answer-versus-cancel races without duplicate effects',async()=>{
  const starts=await Promise.all([send(a,'POST','conversations',{
    handle:'eve',requestId:'parallel-start-a'
  }
  ),send(a,'POST','conversations',{
    handle:'eve',requestId:'parallel-start-b'
  }
  )]);
  expect(starts[0].id).toBe(starts[1].id);
  const thread=starts[0].id;
  await send(eve,'POST',`conversations/${thread}/decision`,{
    action:'accept',requestId:'parallel-accept'
  }
  );
  const messages=await Promise.all([send(a,'POST',`conversations/${thread}/messages`,{
    requestId:'parallel-message',text:'once'
  }
  ),send(a,'POST',`conversations/${thread}/messages`,{
    requestId:'parallel-message',text:'once'
  }
  )]);
  expect(messages[0].id).toBe(messages[1].id);
  expect((await db.query('SELECT * FROM talks.human_messages WHERE conversation_id=$1',[thread])).rows).toHaveLength(1);
  const c=await send(a,'POST','calls',{
    handle:'eve',requestId:'racing-call'
  }
  );
  const raced=await Promise.allSettled([send(eve,'POST',`calls/${c.id}/transition`,{
    action:'accept'
  }
  ),send(a,'POST',`calls/${c.id}/transition`,{
    action:'cancel'
  }
  )]);
  expect(raced.filter(x=>x.status==='fulfilled')).toHaveLength(1);
  const state=(await send(a,'GET',`calls/${c.id}`)).state;
  expect(['accepted','cancelled']).toContain(state);
  if(state==='accepted')await send(a,'POST',`calls/${c.id}/transition`,{
    action:'end'
  }
  );
}
);
it('does not convert follow into request consent and keeps receipts event-stable',async()=>{
  await send(b,'PATCH','privacy',{
    messages:'contacts'
  }
  );
  await expect(send(eve,'POST','conversations',{
    handle:'bob',requestId:'no-contact'
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  await db.exec("INSERT INTO talks.follows(tenant_id,follower_user_id,followed_user_id,created_at) VALUES('t','bob','eve',now())");
  const c=await send(eve,'POST','conversations',{
    handle:'bob',requestId:'following-request'
  }
  );
  expect(c.state).toBe('pending');
  await expect(send(b,'POST',`conversations/${c.id}/messages`,{
    requestId:'follow-is-not-consent',text:'hello'
  }
  )).rejects.toMatchObject({
    statusCode:403
  }
  );
  await send(b,'PATCH','privacy',{
    messages:'everyone'
  }
  );
  await send(b,'GET',`conversations/${cid}/messages`);
  const before=(await db.query<{n:number}>('SELECT count(*) AS n FROM talks.human_events')).rows[0]!.n;
  await send(b,'GET',`conversations/${cid}/messages`);
  expect((await db.query<{n:number}>('SELECT count(*) AS n FROM talks.human_events')).rows[0]!.n).toBe(before);
}
);
it('scrubs deleted replay content and revokes active media after account deletion',async()=>{
  const payload={
    requestId:'delete-replay',text:'private content'
  }
  ;
  const m=await send(a,'POST',`conversations/${cid}/messages`,payload);
  await send(a,'DELETE',`conversations/${cid}/messages/${m.id}`);
  expect(await send(a,'POST',`conversations/${cid}/messages`,payload)).toMatchObject({
    deleted:true,text:'',attachments:[]
  }
  );
  const c=await send(a,'POST','calls',{
    handle:'bob',requestId:'delete-account-call'
  }
  );
  await send(b,'POST',`calls/${c.id}/transition`,{
    action:'accept'
  }
  );
  await db.exec("UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='bob'");
  await service.recover();
  expect((await db.query<{state:string}>('SELECT state FROM talks.human_calls WHERE id=$1',[c.id])).rows[0]!.state).toBe('ended');
  expect(endMediaRoom).toHaveBeenCalledWith(`human_${c.id}`);
  await expect(send(b,'GET','privacy')).rejects.toMatchObject({
    statusCode:401
  }
  );
  await db.exec("UPDATE identity.users SET state='active' WHERE tenant_id='t' AND user_id='bob'");
}
);
it('streams authorized persistent SSE catch-up without URL credentials and closes cleanly',async()=>{
  const app=Fastify();
  registerHumanCommunicationRoutes(app,service);
  await app.listen({
    host:'127.0.0.1',port:0
  }
  );
  const address=app.server.address();
  if(!address||typeof address==='string')throw new Error('address');
  const abort=new AbortController();
  try{
    const response=await fetch(`http://127.0.0.1:${address.port}/v1/human/events/stream?after=0`,{
      headers:{
        authorization:'alice'
      }
      ,signal:abort.signal
    }
    );
    expect(response.status).toBe(200);
    expect(response.headers.get('content-type')).toBe('text/event-stream');
    const reader=response.body!.getReader();
    const first=await reader.read();
    const text=new TextDecoder().decode(first.value);
    expect(text).toContain('id: ');
    expect(text).toContain('data: ');
    expect(text).not.toContain('private content');
    await reader.cancel()
  }
  finally{
    abort.abort();
    await app.close()
  }
}
);
it('exposes only published Rooms shared through active memberships',async()=>{
  await db.exec("CREATE SCHEMA rooms;CREATE TABLE rooms.rooms(tenant_id text,room_id text,profession_title text,state text);CREATE TABLE rooms.memberships(tenant_id text,room_id text,user_id text,state text);INSERT INTO rooms.rooms VALUES('t','room_shared','Shared','published'),('t','room_private','Private','published'),('t','room_paused','Paused','paused');INSERT INTO rooms.memberships VALUES('t','room_shared','alice','active'),('t','room_shared','bob','active'),('t','room_private','bob','active'),('t','room_paused','alice','active'),('t','room_paused','bob','active');");
  expect((await send(a,'GET','profiles/bob/rooms')).items).toEqual([{
    id:'room_shared',name:'Shared'
  }
  ]);
  expect((await send(eve,'GET','profiles/bob/rooms')).items).toEqual([]);
}
);

it('enforces Room invitation privacy through the canonical SQL admission function',async()=>{
 await db.exec("INSERT INTO identity.users VALUES('t','room-sender','active'),('t','room-recipient','active');INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','room-sender','roomsender','Sender'),('t','room-recipient','roomrecipient','Recipient');INSERT INTO talks.human_privacy VALUES('t','room-recipient','{\"roomInvites\":\"nobody\"}');");
 const check=async()=> (await db.query<{allowed:boolean}>("SELECT talks.human_contact_allowed('t','room-sender','room-recipient','roomInvites') AS allowed")).rows[0]!.allowed;
 expect(await check()).toBe(false);
 await db.exec("UPDATE talks.human_privacy SET value='{\"roomInvites\":\"contacts\"}' WHERE user_id='room-recipient';");
 expect(await check()).toBe(false);
 await db.exec("INSERT INTO talks.follows VALUES('t','room-recipient','room-sender',clock_timestamp());");
 expect(await check()).toBe(true);
 await db.exec("INSERT INTO talks.safety_preferences VALUES('t','room-sender','room-recipient',true,false,clock_timestamp());");
 expect(await check()).toBe(false);
});

it('profile-moderated sender cannot admit outgoing messages or notifications',async()=>{
 await db.exec("INSERT INTO identity.users VALUES('t','moderated-sender','active'),('t','moderated-recipient','active');INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','moderated-sender','moderatedsender','Sender'),('t','moderated-recipient','moderatedrecipient','Recipient');INSERT INTO talks.safety_enforcement VALUES('t','profile','moderatedsender',1,'restricted','moderated',now());");
 const count=(await db.query('SELECT * FROM talks.human_outbox')).rows.length;
 await expect(send({tenantId:'t',userId:'moderated-sender'},'POST','conversations',{handle:'moderatedrecipient',requestId:'moderated-attempt'})).rejects.toMatchObject({statusCode:404});
 expect((await db.query('SELECT * FROM talks.human_outbox')).rows).toHaveLength(count);
});

it('resolves Chat Pay only for accepted participants and rechecks blocking without moving funds',async()=>{
 await db.exec(`CREATE SCHEMA IF NOT EXISTS security;
 CREATE TABLE IF NOT EXISTS security.platform_user_profiles(tenant_id text,user_id text,masanawa_account_number text);
 INSERT INTO identity.users VALUES('t','payee','active');
 INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','payee','payee','Payee');
 INSERT INTO security.platform_user_profiles VALUES('t','payee','8123456789');`);
 const p={tenantId:'t',userId:'payee'};
 const thread=await send(a,'POST','conversations',{handle:'payee',requestId:'chat-pay-thread-fixture'});
 const path=`conversations/${thread.id}/payment-recipient`;
 await expect(send(a,'GET',path)).rejects.toMatchObject({statusCode:403});
 await send(p,'POST',`conversations/${thread.id}/decision`,{action:'accept',requestId:'chat-pay-accept-fixture'});
 expect(await send(a,'GET',path)).toEqual({accountNumber:'8123456789',userId:'payee',asset:'MSNW',expiresAt:new Date(clock.getTime()+600000).toISOString()});
 for(const actor of [eve,other])await expect(send(actor,'GET',path)).rejects.toMatchObject({statusCode:404});
 await db.query("INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at) VALUES('t','payee','alice',true,statement_timestamp()) ON CONFLICT(tenant_id,viewer_user_id,subject_user_id) DO UPDATE SET blocked=true");
 await expect(send(a,'GET',path)).rejects.toMatchObject({statusCode:404});
});

it('pages the entire visible human inbox with microsecond ties, literal search and request filtering',async()=>{
  // Identical DB microseconds deliberately exceed one page. Hidden peers
  // must not consume the first 50 eligible rows or leak into second-page IDs.
  await db.exec(`INSERT INTO identity.users
    SELECT 't','bulkpeer'||lpad(n::text,3,'0'),'active' FROM generate_series(0,71) n;
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
    SELECT 't','bulkpeer'||lpad(n::text,3,'0'),'bulkinbox-'||lpad(n::text,3,'0'),'Bulk inbox '||lpad(n::text,3,'0')
    FROM generate_series(0,71) n;
    INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
    SELECT 't','inbox-tie-'||lpad(n::text,3,'0'),'alice','bulkpeer'||lpad(n::text,3,'0'),
      CASE WHEN n>=60 THEN 'bulkpeer'||lpad(n::text,3,'0') ELSE 'alice' END,
      CASE WHEN n>=60 THEN 'pending' ELSE 'accepted' END,'2026-10-18 17:00:00.123456+00'
    FROM generate_series(0,71) n;
    INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id)
    SELECT 't','inbox-tie-'||lpad(n::text,3,'0'),'alice' FROM generate_series(0,71) n;
    INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at)
    SELECT 't','alice','bulkpeer'||lpad(n::text,3,'0'),true,now()
    FROM generate_series(0,3) n;
    UPDATE identity.users SET state='suspended' WHERE tenant_id='t' AND user_id IN
      ('bulkpeer004','bulkpeer005','bulkpeer006');
    INSERT INTO talks.safety_enforcement VALUES('t','profile','bulkinbox-007',1,'restricted','moderated',now());`);
  const firstPage=await send(a,'GET','conversations',{}, {query:'Bulk inbox'});
  expect(firstPage.items).toHaveLength(50);
  expect(firstPage.nextCursor).toBeTruthy();
  const older=await send(a,'GET','conversations',{}, {query:'Bulk inbox',after:firstPage.nextCursor});
  expect(older.items).toHaveLength(14);
  expect(older.nextCursor).toBeNull();
  const all=[...firstPage.items,...older.items];
  expect(new Set(all.map((x:{id:string})=>x.id)).size).toBe(64);
  expect(all.every((x:{peer:{handle:string}})=>Number(x.peer.handle.slice(-3))>=8)).toBe(true);
  const requests=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'requests'});
  expect(requests.items).toHaveLength(12);
  expect(requests.items.every((x:{state:string})=>x.state==='pending')).toBe(true);
  expect((await send(a,'GET','conversations',{}, {query:'bulk%'})).items).toHaveLength(0);
  expect((await send(a,'GET','conversations',{}, {query:'bulk_inbox'})).items).toHaveLength(0);
  expect((await send(a,'GET','conversations',{}, {query:'bulkinbox-071'})).items).toHaveLength(1);
  await expect(send(eve,'GET','conversations',{}, {query:'Bulk inbox',after:firstPage.nextCursor})).rejects.toMatchObject({statusCode:404});
  // The user's archive is a private SQL-side filter, including rows
  // beyond page 1. Both filters must preserve identical microsecond ties.
  await db.query(`UPDATE talks.human_viewers SET archived=true
    WHERE tenant_id='t' AND user_id='alice'
      AND conversation_id BETWEEN 'inbox-tie-008' AND 'inbox-tie-061'`);
  const archived1=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'archived'});
  expect(archived1.items).toHaveLength(50);
  expect(archived1.items.every((x:any)=>x.archived)).toBe(true);
  const archived2=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'archived',after:archived1.nextCursor});
  expect(archived2.items).toHaveLength(4);
  expect(archived2.nextCursor).toBeNull();
  expect(new Set([...archived1.items,...archived2.items].map((x:any)=>x.id)).size).toBe(54);
  const active=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'active'});
  expect(active.items).toHaveLength(10);
  expect(active.items.every((x:any)=>!x.archived)).toBe(true);
  const pending=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'requests'});
  expect(pending.items).toHaveLength(12); // A request remains a request even when archived.
  await expect(send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'active',after:archived1.nextCursor})).rejects.toMatchObject({statusCode:404});
  await expect(send(a,'GET','conversations',{}, {query:'no-match',filter:'archived',after:archived1.nextCursor})).rejects.toMatchObject({statusCode:404});
  await expect(send(b,'GET','conversations',{}, {filter:'archived',after:archived1.nextCursor})).rejects.toMatchObject({statusCode:404});
  await expect(send(a,'GET','conversations',{}, {filter:'unknown'})).rejects.toMatchObject({statusCode:400});
  await send(a,'PATCH','conversations/inbox-tie-061',{archived:false});
  expect((await send(a,'GET','conversations',{}, {query:'bulkinbox-061',filter:'active'})).items).toHaveLength(1);
  expect((await send(a,'GET','conversations',{}, {query:'bulkinbox-061',filter:'archived'})).items).toHaveLength(0);
  // Per-viewer pinning uses a *composite* keyset, so the pinned-to-normal
  // boundary survives identical PostgreSQL microseconds and 50-item pages.
  await db.query("UPDATE talks.human_viewers SET archived=false WHERE tenant_id='t' AND user_id='alice' AND conversation_id LIKE 'inbox-tie-%'");
  await db.query("UPDATE talks.human_viewers SET pinned=true WHERE tenant_id='t' AND user_id='alice' AND conversation_id BETWEEN 'inbox-tie-008' AND 'inbox-tie-022'");
  const pinnedPage=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'active'});
  expect(pinnedPage.items).toHaveLength(50);
  expect(pinnedPage.items.slice(0,15).every((x:any)=>x.pinned)).toBe(true);
  expect(pinnedPage.items.slice(15).every((x:any)=>!x.pinned)).toBe(true);
  expect(pinnedPage.items[0].id).toBe('inbox-tie-022');
  const normalPage=await send(a,'GET','conversations',{}, {query:'Bulk inbox',filter:'active',after:pinnedPage.nextCursor});
  expect(normalPage.items).toHaveLength(14);
  expect(normalPage.items.every((x:any)=>!x.pinned)).toBe(true);
  expect(new Set([...pinnedPage.items,...normalPage.items].map((x:any)=>x.id)).size).toBe(64);
  await send(a,'PATCH','conversations/inbox-tie-022',{pinned:false});
  const afterUnpin=await send(a,'GET','conversations',{}, {query:'bulkinbox-022',filter:'active'});
  expect(afterUnpin.items[0].pinned).toBe(false);
});

it('preserves microsecond-tied message history without searching deleted plaintext',async()=>{
  await db.exec(`INSERT INTO identity.users VALUES('t','messagepeer','active');
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
    VALUES('t','messagepeer','messagepeer','Message Peer');
    INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
    VALUES('t','chat-tie-thread','alice','messagepeer','alice','accepted','2026-10-18 19:00:00+00');
    INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id)
    VALUES('t','chat-tie-thread','alice'),('t','chat-tie-thread','messagepeer');
    INSERT INTO talks.human_messages(tenant_id,id,conversation_id,user_id,request_id,text,created_at,deleted)
    SELECT 't','chat-micro-'||lpad(n::text,3,'0'),'chat-tie-thread','messagepeer',
      'chat-micro-'||lpad(n::text,3,'0'),'private microhit '||n,
      '2026-10-18 17:00:00.123456+00',n%10=0 FROM generate_series(0,79) n;`);
  const first=await send(a,'GET','conversations/chat-tie-thread/messages',{}, {query:'microhit'});
  expect(first.items).toHaveLength(50);
  expect(first.nextCursor).toBeTruthy();
  const older=await send(a,'GET','conversations/chat-tie-thread/messages',{}, {query:'microhit',before:first.nextCursor});
  expect(older.items).toHaveLength(22);
  expect(older.nextCursor).toBeNull();
  const all=[...first.items,...older.items];
  expect(new Set(all.map((x:{id:string})=>x.id)).size).toBe(72);
  expect(all.every((x:{deleted:boolean,id:string})=>!x.deleted&&Number(x.id.slice(-3))%10!==0)).toBe(true);
  const plainHistory=await send(a,'GET','conversations/chat-tie-thread/messages');
  expect(plainHistory.items.some((x:{deleted:boolean})=>x.deleted)).toBe(true);
  await expect(send(eve,'GET','conversations/chat-tie-thread/messages',{}, {query:'microhit'})).rejects.toMatchObject({statusCode:404});
  await expect(send(a,'GET','conversations/chat-tie-thread/messages',{}, {query:'microhit',before:'foreign-or-missing'})).rejects.toMatchObject({statusCode:400});
});
