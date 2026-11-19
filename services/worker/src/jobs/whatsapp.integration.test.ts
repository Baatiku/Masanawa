import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,expect,it} from 'vitest';
import {createWhatsAppWorker} from './whatsapp.js';
import {createWhatsAppMemoryWorker,readWhatsAppMemory} from './whatsapp_memory.js';
import {persistLinkedHistory} from './whatsapp_linked.js';

describe('WhatsApp outbox PostgreSQL recovery',()=>{
  it('builds contact artifacts while paused, resumes after old history arrives, and never queues a reply',async()=>{
    const db=new PGlite();
    try{
      await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA security;
        CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));`);
      for(const name of ['0123_whatsapp_ai','0124_whatsapp_number_identity','0125_whatsapp_gemini_key_pool',
        '0126_whatsapp_gemini_keys_key_only','0128_whatsapp_incoming_calls','0130_whatsapp_contact_memory'])
        await db.exec(await readFile(new URL(`../../../../packages/security/migrations/${name}.sql`,import.meta.url),'utf8'));
      const lease='00000000-0000-4000-8000-000000000001';
      const channel=await db.query<{channel_id:string}>(`INSERT INTO security.whatsapp_channels
        (tenant_id,enabled,state,lease_owner) VALUES('tenant',false,'connected',$1) RETURNING channel_id`,[lease]);
      const channelId=channel.rows[0]!.channel_id;
      await db.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id,reply_mode)
        VALUES('tenant',$1,'manual')`,[channelId]);
      const owner={tenantId:'tenant',channelId,owner:lease};
      const older=(id:string,timestamp:number,text:string)=>({key:{remoteJid:'2348012345678@s.whatsapp.net',id},
        messageTimestamp:timestamp,message:{conversation:text}});
      const first=older('earlier',1600001000,'I am working with the owner on the irrigation project.');
      const ignored=older('protected',1600002000,'My bank account PIN is 1234');
      expect((await persistLinkedHistory(db as never,owner,[first,ignored])).imported).toBe(2);
      expect((await persistLinkedHistory(db as never,owner,[first])).imported).toBe(0);
      const thread=(await db.query<{thread_id:string}>(`SELECT thread_id FROM security.whatsapp_threads`)).rows[0]!.thread_id;
      let calls=0;
      const makeWorker=()=>createWhatsAppMemoryWorker({pool:db as never,env:{GEMINI_API_KEY:'synthetic'},fetch:async(_url,options)=>{
        const source=String(options?.body);
        expect(source).not.toContain('1234');
        const text=calls++===0?'Project: contact says they work with the owner on irrigation.':'Earlier preference: asks for Hausa.';
        return Response.json({candidates:[{content:{parts:[{text}]}}]});
      }});
      await makeWorker().runOnce();
      expect(await readWhatsAppMemory(db as never,'tenant',thread,'irrigation')).toContain('on irrigation');
      await persistLinkedHistory(db as never,owner,[older('late',1590000000,'Please speak Hausa')]);
      await makeWorker().runOnce();
      await makeWorker().runOnce();
      expect(calls).toBe(2);
      expect(await readWhatsAppMemory(db as never,'tenant',thread)).toContain('asks for Hausa');
      expect(await readWhatsAppMemory(db as never,'other-tenant',thread)).toBe('');
      expect((await db.query(`SELECT 1 FROM security.whatsapp_jobs`)).rows).toEqual([]);
      await db.query(`UPDATE security.whatsapp_assistants SET remember_context=false`);
      await persistLinkedHistory(db as never,owner,[older('new',1600003000,'Unprocessed while memory is off')]);
      await makeWorker().runOnce();
      expect(calls).toBe(2);
    }finally{await db.close();}
  },30000);
  it('generates and queues an actual first-contact greeting using the production SQL',async()=>{
    const db=new PGlite();
    try{
      await db.exec(`CREATE SCHEMA identity; CREATE SCHEMA security;
        CREATE TABLE identity.users(tenant_id text NOT NULL,user_id text NOT NULL,state text NOT NULL,
          PRIMARY KEY(tenant_id,user_id));`);
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0123_whatsapp_ai.sql',import.meta.url),'utf8'));
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0124_whatsapp_number_identity.sql',import.meta.url),'utf8'));
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0125_whatsapp_gemini_key_pool.sql',import.meta.url),'utf8'));
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0126_whatsapp_gemini_keys_key_only.sql',import.meta.url),'utf8'));
      const created=await db.query<{channel_id:string}>(`INSERT INTO security.whatsapp_channels
        (tenant_id,enabled,state,linked_jid) VALUES('tenant',true,'connected','2348012345678@s.whatsapp.net')
        RETURNING channel_id`);
      const channelId=created.rows[0]!.channel_id;
      await db.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id,voice_replies)
        VALUES('tenant',$1,false)`,[channelId]);
      const thread=await db.query<{thread_id:string}>(`INSERT INTO security.whatsapp_threads
        (tenant_id,channel_id,customer_wa_id) VALUES('tenant',$1,'2348098765432@s.whatsapp.net')
        RETURNING thread_id`,[channelId]);
      const threadId=thread.rows[0]!.thread_id;
      const message=await db.query<{message_id:string}>(`INSERT INTO security.whatsapp_messages
        (tenant_id,thread_id,channel_id,direction,kind,body)
        VALUES('tenant',$1,$2,'inbound','text','Hi') RETURNING message_id`,[threadId,channelId]);
      await db.query(`INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
        VALUES('tenant',$1,$2,'reply')`,[channelId,message.rows[0]!.message_id]);
      const worker=createWhatsAppWorker({pool:db as never,env:{},send:async()=> 'receipt'});
      expect((await worker.runOnce()).claimed).toBe(1);
      expect((await db.query<{state:string;last_error_code:string}>(`SELECT state,last_error_code
        FROM security.whatsapp_jobs WHERE message_id=$1`,[message.rows[0]!.message_id])).rows[0])
        .toMatchObject({state:'completed',last_error_code:null});
      const out=await db.query<{body:string;kind:string;delivery_state:string}>(`SELECT body,kind,delivery_state
        FROM security.whatsapp_messages WHERE direction='outbound'`);
      expect(out.rows).toHaveLength(1);
      expect(out.rows[0]!.body).toContain('Masanawa Assistant');
      expect(out.rows[0]!.body).not.toContain('Welcome to Masanawa');
      expect(out.rows[0]).toMatchObject({kind:'text',delivery_state:'queued'});
    }finally{await db.close();}
  },30000);
  it('safely retries a pre-dispatch socket outage but never replays an uncertain send',async()=>{
    const db=new PGlite();
    try{
      await db.exec(`CREATE SCHEMA identity; CREATE SCHEMA security;
        CREATE TABLE identity.users(tenant_id text NOT NULL,user_id text NOT NULL,state text NOT NULL,
          PRIMARY KEY(tenant_id,user_id));`);
      const migration=await readFile(new URL('../../../../packages/security/migrations/0123_whatsapp_ai.sql',import.meta.url),'utf8');
      await db.exec(migration);
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0124_whatsapp_number_identity.sql',import.meta.url),'utf8'));
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0125_whatsapp_gemini_key_pool.sql',import.meta.url),'utf8'));
      await db.exec(await readFile(new URL('../../../../packages/security/migrations/0126_whatsapp_gemini_keys_key_only.sql',import.meta.url),'utf8'));
      const channel=await db.query<{channel_id:string}>(`INSERT INTO security.whatsapp_channels
        (tenant_id,enabled,state,linked_jid) VALUES('tenant',true,'connected','2348012345678@s.whatsapp.net')
        RETURNING channel_id`);
      const channelId=channel.rows[0]!.channel_id;
      await db.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id)
        VALUES('tenant',$1)`,[channelId]);
      const thread=await db.query<{thread_id:string}>(`INSERT INTO security.whatsapp_threads
        (tenant_id,channel_id,customer_wa_id) VALUES('tenant',$1,'2348098765432@s.whatsapp.net')
        RETURNING thread_id`,[channelId]);
      const threadId=thread.rows[0]!.thread_id;
      const inbound=await db.query<{message_id:string}>(`INSERT INTO security.whatsapp_messages
        (tenant_id,thread_id,channel_id,direction,kind,body)
        VALUES('tenant',$1,$2,'inbound','text','Hello') RETURNING message_id`,[threadId,channelId]);
      const enqueue=async()=>{
        const message=await db.query<{message_id:string}>(`INSERT INTO security.whatsapp_messages
          (tenant_id,thread_id,channel_id,direction,kind,body,reply_to_message_id,delivery_state)
          VALUES('tenant',$1,$2,'outbound','text','Welcome',$3,'queued') RETURNING message_id`,
          [threadId,channelId,inbound.rows[0]!.message_id]);
        await db.query(`INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
          VALUES('tenant',$1,$2,'send')`,[channelId,message.rows[0]!.message_id]);
        return message.rows[0]!.message_id;
      };
      const firstId=await enqueue();
      const offline=createWhatsAppWorker({pool:db as never,env:{},send:async()=>{
        throw Error('whatsapp_linked_socket_unavailable');
      }});
      await offline.runOnce();
      let jobs=await db.query<{state:string;last_error_code:string}>(`SELECT state,last_error_code FROM security.whatsapp_jobs WHERE message_id=$1`,[firstId]);
      expect(jobs.rows[0]).toMatchObject({state:'pending',last_error_code:'whatsapp_linked_socket_unavailable'});
      await db.query(`UPDATE security.whatsapp_jobs SET available_at=clock_timestamp()-interval '1 second'
        WHERE message_id=$1`,[firstId]);
      let sends=0;
      const online=createWhatsAppWorker({pool:db as never,env:{},send:async()=>{sends++;return 'wa-provider-id';}});
      await online.runOnce();
      jobs=await db.query(`SELECT state,last_error_code FROM security.whatsapp_jobs WHERE message_id=$1`,[firstId]);
      expect(jobs.rows[0]?.state).toBe('completed');
      expect((await db.query<{delivery_state:string}>(`SELECT delivery_state FROM security.whatsapp_messages WHERE message_id=$1`,[firstId])).rows[0]?.delivery_state).toBe('sent');
      expect((await db.query<{welcome_sent_at:string|null}>(`SELECT welcome_sent_at FROM security.whatsapp_threads WHERE thread_id=$1`,[threadId])).rows[0]?.welcome_sent_at).not.toBeNull();
      expect(sends).toBe(1);

      // A separate operator send has no reply_to_message_id. Once the remote
      // outcome is ambiguous it must be held, including across further polls.
      await db.query(`UPDATE security.whatsapp_threads SET mode='human' WHERE thread_id=$1`,[threadId]);
      const uncertain=await db.query<{message_id:string}>(`INSERT INTO security.whatsapp_messages
        (tenant_id,thread_id,channel_id,direction,kind,body,delivery_state)
        VALUES('tenant',$1,$2,'outbound','text','Human reply','queued') RETURNING message_id`,[threadId,channelId]);
      const secondId=uncertain.rows[0]!.message_id;
      await db.query(`INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
        VALUES('tenant',$1,$2,'send')`,[channelId,secondId]);
      const unknown=createWhatsAppWorker({pool:db as never,env:{},send:async()=>{
        throw Error('whatsapp_send_receipt_unknown');
      }});
      await unknown.runOnce();
      expect((await db.query<{state:string}>(`SELECT state FROM security.whatsapp_jobs WHERE message_id=$1`,[secondId])).rows[0]?.state).toBe('uncertain');
      expect((await db.query<{delivery_state:string}>(`SELECT delivery_state FROM security.whatsapp_messages WHERE message_id=$1`,[secondId])).rows[0]?.delivery_state).toBe('uncertain');
      await online.runOnce();
      expect(sends).toBe(1);
    }finally{await db.close();}
  },30000);
});
