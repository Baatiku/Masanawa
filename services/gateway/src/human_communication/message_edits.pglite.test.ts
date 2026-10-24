import {readFile} from 'node:fs/promises';
import {beforeAll,afterAll,it,expect,describe} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {createHumanCommunicationService,type HumanPool} from './index.js';

describe('authorized human message edits and genuine message details',()=>{
  const db=new PGlite();
  let serial=Promise.resolve();
  const query=async<R extends Record<string,unknown>>(sql:string,args?:unknown[])=>{
    const r=await db.query<R>(sql,args);
    return {rows:r.rows,rowCount:r.affectedRows??r.rows.length};
  };
  const pool:HumanPool={
    query,
    async connect(){
      const previous=serial;
      let release!:()=>void;
      serial=new Promise<void>(resolve=>release=resolve);
      await previous;
      return {query,release};
    }
  };
  const alice={tenantId:'t',userId:'alice'};
  const bob={tenantId:'t',userId:'bob'};
  const eve={tenantId:'t',userId:'eve'};
  const other={tenantId:'other',userId:'alice'};
  let now=new Date('2026-10-24T09:00:00Z');
  const svc=createHumanCommunicationService({
    pool,authorizer:{authorize:async()=>alice},now:()=>now,
  });
  const path='conversations/edit-thread/messages';
  const edit=(id:string,body:Record<string,unknown>,who=alice)=>
    svc.dispatch(who,'PATCH',`${path}/${id}`,body);
  const info=(id:string,who=alice)=>
    svc.dispatch(who,'GET',`${path}/${id}/info`);
  beforeAll(async()=>{
    await db.exec('CREATE SCHEMA identity;CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));CREATE SCHEMA talks;');
    for(const file of ['0003_talk_profiles.sql','0009_talk_safety.sql','0015_human_communication.sql','0017_human_message_edits.sql']){
      await db.exec(await readFile(new URL('../../../../packages/talks/migrations/'+file,import.meta.url),'utf8'));
    }
    await db.exec(`INSERT INTO identity.users VALUES('t','alice','active'),('t','bob','active'),('t','eve','active'),('other','alice','active');
      INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('t','alice','alice','Alice'),('t','bob','bob','Bob'),('t','eve','eve','Eve');
      INSERT INTO talks.human_conversations(tenant_id,id,low_user,high_user,initiator,state,updated_at)
      VALUES('t','edit-thread','alice','bob','alice','accepted','2026-10-24T08:50:00Z');
      INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id)
      VALUES('t','edit-thread','alice'),('t','edit-thread','bob');
      INSERT INTO talks.human_messages(tenant_id,id,conversation_id,user_id,request_id,text,created_at)
      VALUES('t','original','edit-thread','alice','seed','Before edit','2026-10-24T08:55:00Z'),
      ('t','too-old','edit-thread','alice','old','Old message','2026-10-24T08:00:00Z'),
      ('t','received','edit-thread','bob','received','Bob message','2026-10-24T08:55:00Z'),
      ('t','deleted','edit-thread','alice','deleted','', '2026-10-24T08:55:00Z');
      UPDATE talks.human_messages SET deleted=true WHERE id='deleted';`);
  },30000);
  afterAll(async()=>{await svc.close();await db.close()});

  it('persists edit time, preserves creation/receipt state and replays exact edit ID once',async()=>{
    const created=await edit('original',{requestId:'edit-one',text:'Corrected text',expectedVersion:0});
    expect(created).toMatchObject({id:'original',mine:true,text:'Corrected text',editVersion:1,editedAt:'2026-10-24T09:00:00.000Z'});
    const replay=await edit('original',{requestId:'edit-one',text:'Corrected text',expectedVersion:0});
    expect(replay).toEqual(created);
    expect((await info('original')).createdAt).toBe('2026-10-24T08:55:00.000Z');
    expect(await info('original')).toMatchObject({text:'Corrected text',deliveryStatus:'sent',editVersion:1,readAt:null,deliveredAt:null,editedAt:'2026-10-24T09:00:00.000Z'});
    expect((await query("SELECT count(*)::int AS n FROM talks.human_events WHERE type='message.edited'")).rows[0]?.n).toBe(2);
    expect((await svc.dispatch(bob,'GET',`${path}`)).items.some((m:{id:string;text:string;editedAt:string})=>m.id==='original'&&m.text==='Corrected text'&&!!m.editedAt)).toBe(true);
  });
  it('rejects foreign author/tenant, unsafe methods and stale version without changing message',async()=>{
    for(const actor of [bob,eve,other]){
      await expect(edit('original',{requestId:'foreign-edit',text:'Tampered',expectedVersion:0},actor)).rejects.toMatchObject({statusCode:actor===bob?403:404});
      await expect(info('original',actor)).rejects.toMatchObject({statusCode:actor===bob?403:404});
    }
    await expect(edit('original',{requestId:'edit-one',text:'Different',expectedVersion:0})).rejects.toMatchObject({statusCode:409});
    await expect(edit('original',{requestId:'stale',text:'Tampered',expectedVersion:0})).rejects.toMatchObject({statusCode:409});
    await expect(svc.dispatch(alice,'POST',`${path}/original/info`)).rejects.toMatchObject({statusCode:405});
    expect((await info('original')).text).toBe('Corrected text');
  });
  it('enforces 15-minute edit window, nonempty text, sender and deleted tombstone protection',async()=>{
    await expect(edit('too-old',{requestId:'late',text:'Changed',expectedVersion:0})).rejects.toMatchObject({statusCode:409});
    await expect(edit('deleted',{requestId:'undelete',text:'restored',expectedVersion:0})).rejects.toMatchObject({statusCode:409});
    await expect(edit('received',{requestId:'wrong-sender',text:'Changed',expectedVersion:0})).rejects.toMatchObject({statusCode:403});
    await expect(edit('original',{requestId:'blank',text:' ',expectedVersion:1})).rejects.toMatchObject({statusCode:400});
    await expect(edit('original',{requestId:'oversize',text:'x'.repeat(10001),expectedVersion:1})).rejects.toMatchObject({statusCode:400});
    await expect(info('deleted')).rejects.toMatchObject({statusCode:404});
  });
  it('later independent authorized edit requires previous edit version and preserves delivery proof',async()=>{
    await query("UPDATE talks.human_messages SET delivered_at=$2,read_at=$2 WHERE tenant_id=$1 AND id='original'",['t','2026-10-24T09:00:05Z']);
    now=new Date('2026-10-24T09:00:20Z');
    const result=await edit('original',{requestId:'edit-two',text:'Corrected again',expectedVersion:1});
    expect(result).toMatchObject({deliveryStatus:'read',editVersion:2,editedAt:'2026-10-24T09:00:20.000Z'});
    expect(await info('original')).toMatchObject({readAt:'2026-10-24T09:00:05.000Z',deliveredAt:'2026-10-24T09:00:05.000Z'});
    expect((await query("SELECT count(*)::int AS n FROM talks.human_requests WHERE operation='message_edit'")).rows[0]?.n).toBe(2);
  });
  it('original message idempotency response cache follows authorized edits',async()=>{
    const sent=await svc.dispatch(alice,'POST','conversations/edit-thread/messages',{requestId:'new-message',text:'Initial text'});
    now=new Date('2026-10-24T09:00:30Z');
    await edit(sent.id,{requestId:'new-edit',text:'Better text',expectedVersion:0});
    const replay=await svc.dispatch(alice,'POST','conversations/edit-thread/messages',{requestId:'new-message',text:'Initial text'});
    expect(replay.text).toBe('Better text');
    expect(replay.editedAt).toBe('2026-10-24T09:00:30.000Z');
    expect(replay.editVersion).toBe(1);
  });
});