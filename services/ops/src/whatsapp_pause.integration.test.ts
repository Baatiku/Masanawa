import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,expect,it} from 'vitest';
import {createWhatsAppAdmin} from './whatsapp_admin.js';

const policy={name:'Hassan',personality:'Professional and respectful',instructions:'',greeting:'',language:'auto',
  roleLevel:1,permissions:['greet','faq'],personaId:null,voiceId:null,textReplies:true,voiceReplies:true,
  transcribeVoice:true,replyMode:'manual',awayAfterSeconds:120,absenceMessage:'Please leave a message.',
  rememberContext:true,workingHours:{timezone:'Africa/Lagos',days:[0,1,2,3,4,5,6],start:'00:00',end:'23:59'},
  escalationKeywords:['human']};

describe('WhatsApp manual-off persistence',()=>{
  it('commits manual mode, pauses the channel and cancels queued AI replies without deleting the QR session',async()=>{
    const db=new PGlite();
    try{
      await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA security;
        CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));`);
      for(const filename of ['0123_whatsapp_ai.sql','0124_whatsapp_number_identity.sql',
        '0125_whatsapp_gemini_key_pool.sql','0126_whatsapp_gemini_keys_key_only.sql',
        '0127_whatsapp_gemini_full_voices.sql'])
        await db.exec(await readFile(new URL(`../../../packages/security/migrations/${filename}`,import.meta.url),'utf8'));
      const inserted=await db.query<{channel_id:string}>(`INSERT INTO security.whatsapp_channels(tenant_id,enabled,state)
        VALUES('tenant',true,'connected') RETURNING channel_id`);
      const id=inserted.rows[0]!.channel_id;
      await db.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id)
        VALUES('tenant',$1)`,[id]);
      const t=await db.query<{thread_id:string}>(`INSERT INTO security.whatsapp_threads
        (tenant_id,channel_id,customer_wa_id) VALUES('tenant',$1,'2348012345678@s.whatsapp.net')
        RETURNING thread_id`,[id]);
      const m=await db.query<{message_id:string}>(`INSERT INTO security.whatsapp_messages
        (tenant_id,channel_id,thread_id,direction,kind,body)
        VALUES('tenant',$1,$2,'inbound','text','Salam') RETURNING message_id`,[id,t.rows[0]!.thread_id]);
      await db.query(`INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
        VALUES('tenant',$1,$2,'reply')`,[id,m.rows[0]!.message_id]);

      const admin=createWhatsAppAdmin({pool:db as never,
        authorize:(async()=>({tenantId:'tenant',actorId:'admin'})) as never,env:{}});
      expect(await admin.save(undefined,id,1,policy)).toEqual({revision:2});
      expect(await admin.config(undefined,id)).toMatchObject({replyMode:'manual',revision:2});
      const channel=await db.query<{enabled:boolean;revision:number}>(
        `SELECT enabled,revision::int FROM security.whatsapp_channels WHERE channel_id=$1`,[id]);
      expect(channel.rows[0]).toMatchObject({enabled:false,revision:2});
      const jobs=await db.query<{state:string;last_error_code:string}>(
        `SELECT state,last_error_code FROM security.whatsapp_jobs`);
      expect(jobs.rows[0]).toEqual({state:'completed',last_error_code:'assistant_paused'});

      // Updating persona settings or reloads cannot unintentionally resume AI.
      await admin.save(undefined,id,2,{...policy,name:'New assistant name',liveVoiceName:'Algenib'});
      expect(await admin.config(undefined,id)).toMatchObject({name:'New assistant name',
        replyMode:'manual',liveVoiceName:'Algenib'});
      expect((await db.query<{enabled:boolean}>(`SELECT enabled FROM security.whatsapp_channels
        WHERE channel_id=$1`,[id])).rows[0]?.enabled).toBe(false);
      // Resumption requires a deliberate channel-enable action.
      await expect(admin.change(undefined,id,'enable',2)).rejects.toMatchObject({statusCode:409});
      await admin.save(undefined,id,3,{...policy,replyMode:'always'});
      expect(await admin.change(undefined,id,'enable',2)).toMatchObject({enabled:true});
      expect((await db.query<{enabled:boolean}>(`SELECT enabled FROM security.whatsapp_channels
        WHERE channel_id=$1`,[id])).rows[0]?.enabled).toBe(true);
    }finally{await db.close();}
  },30000);
});
