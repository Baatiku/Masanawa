import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,expect,it} from 'vitest';
import {createWhatsAppWorker} from './whatsapp.js';

describe('WhatsApp outbox PostgreSQL recovery',()=>{
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
      expect(sends).toBe(1);

      // A separate operator send has no reply_to_message_id. Once the remote
      // outcome is ambiguous it must be held, including across further polls.
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
