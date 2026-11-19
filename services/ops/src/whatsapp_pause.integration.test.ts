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
        '0127_whatsapp_gemini_full_voices.sql','0128_whatsapp_incoming_calls.sql',
        '0129_whatsapp_call_outcomes.sql','0130_whatsapp_contact_memory.sql'])
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
        authorize:(async()=>({tenantId:'tenant',actorId:'admin'})) as never,env:{
          MASANAWA_WHATSAPP_ENABLED:'true',MASANAWA_WHATSAPP_MODE:'linked-device',
          MASANAWA_WHATSAPP_SESSION_KEY:Buffer.alloc(32).toString('base64'),MASANAWA_WHATSAPP_CALLS_ENABLED:'true',
        }});
      const phone='2348012345678@s.whatsapp.net';
      await db.query(`UPDATE security.whatsapp_channels SET linked_jid=$2 WHERE channel_id=$1`,[id,phone]);
      const created=await admin.startCalls(undefined,id) as {pairingId:string};
      expect(await admin.startCalls(undefined,id)).toMatchObject({pairingId:created.pairingId});
      expect((await admin.list(undefined)).channels).toHaveLength(1);
      await expect(admin.changeCalls(undefined,id,'enable',1)).rejects.toMatchObject({statusCode:409});
      await db.query(`UPDATE security.whatsapp_channels SET state='connected',linked_jid=$2 WHERE channel_id=$1`,[created.pairingId,phone]);
      expect(await admin.changeCalls(undefined,id,'enable',1)).toMatchObject({enabled:true,revision:2});
      await db.query(`UPDATE security.whatsapp_channels SET lease_expires_at=clock_timestamp()+interval '5 minutes'
        WHERE channel_id=$1`,[created.pairingId]);
      await db.query(`INSERT INTO security.whatsapp_incoming_calls(tenant_id,channel_id,reference,ended_at,end_reason)
        VALUES('tenant',$1,repeat('a',64),clock_timestamp(),'session_unavailable')`,[created.pairingId]);
      await db.query(`INSERT INTO security.whatsapp_audit(tenant_id,channel_id,actor_id,action,metadata)
        VALUES('tenant',$1,'linked-device','call.incoming','{"video":false}')`,[id]);
      expect(await admin.calls(undefined,id)).toMatchObject({callDeviceOnline:true,lastMessagingOfferAt:expect.any(Date),
        calls:[{answeredAt:null,endReason:'session_unavailable'}]});

      expect(await admin.save(undefined,id,1,policy)).toEqual({revision:2});
      expect(await admin.config(undefined,id)).toMatchObject({replyMode:'manual',revision:2});
      const channel=await db.query<{enabled:boolean;revision:number}>(
        `SELECT enabled,revision::int FROM security.whatsapp_channels WHERE channel_id=$1`,[id]);
      expect(channel.rows[0]).toMatchObject({enabled:false,revision:2});
      const jobs=await db.query<{state:string;last_error_code:string}>(
        `SELECT state,last_error_code FROM security.whatsapp_jobs`);
      expect(jobs.rows[0]).toEqual({state:'completed',last_error_code:'assistant_paused'});
      expect(await admin.calls(undefined,id)).toMatchObject({pairingId:created.pairingId,aiEnabled:false,replyMode:'manual'});
      await expect(admin.changeCalls(undefined,id,'enable',2)).rejects.toMatchObject({statusCode:409});

      // Updating persona settings or reloads cannot unintentionally resume AI.
      await admin.save(undefined,id,2,{...policy,name:'New assistant name',liveVoiceName:'Algenib'});
      expect(await admin.config(undefined,id)).toMatchObject({name:'New assistant name',
        replyMode:'manual',liveVoiceName:'Algenib'});
      expect((await db.query<{enabled:boolean}>(`SELECT enabled FROM security.whatsapp_channels
        WHERE channel_id=$1`,[id])).rows[0]?.enabled).toBe(false);
      await expect(admin.change(undefined,id,'enable',3)).rejects.toMatchObject({statusCode:409});
      const always={...policy,name:' New assistant ',replyMode:'always',language:'ha',
        numberPurpose:'personal',ownerName:' Owner ',ownerTitle:' Founder ',liveVoiceName:'Sulafat',
        textReplies:false,voiceReplies:true,transcribeVoice:false,rememberContext:false,
        workingHours:{timezone:'Africa/Lagos',days:[1,3,5],start:'09:00',end:'18:30'},
        escalationKeywords:['speak to a human','complaint']};
      await expect(admin.save(undefined,id,3,always,2)).rejects.toMatchObject({statusCode:409});
      expect(await admin.config(undefined,id)).toMatchObject({replyMode:'manual',revision:3});
      expect(await admin.save(undefined,id,3,always,3)).toEqual({revision:4});
      expect(await admin.config(undefined,id)).toMatchObject({...always,name:'New assistant',ownerName:'Owner',ownerTitle:'Founder',revision:4});
      expect((await db.query<{enabled:boolean}>(`SELECT enabled FROM security.whatsapp_channels
        WHERE channel_id=$1`,[id])).rows[0]?.enabled).toBe(true);

      // A separate pause remains in place during ordinary edits. An explicit
      // save-and-resume also works when Always was already stored while paused.
      expect(await admin.change(undefined,id,'disable',4)).toMatchObject({enabled:false,revision:5});
      await admin.save(undefined,id,4,{...always,greeting:'Welcome'});
      expect(await admin.calls(undefined,id)).toMatchObject({aiEnabled:false,replyMode:'always'});
      expect(await admin.save(undefined,id,5,{...always,greeting:'Welcome'},5)).toEqual({revision:6});
      expect(await admin.changeCalls(undefined,id,'disconnect',2)).toMatchObject({state:'disconnected'});
      expect(await admin.calls(undefined,id)).toMatchObject({pairingId:null,numberState:'connected',aiEnabled:true});
    }finally{await db.close();}
  },30000);
});
