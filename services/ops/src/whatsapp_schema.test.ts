import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,expect,it} from 'vitest';

describe('WhatsApp linked-device canonical PostgreSQL migration',()=>{
  it('creates independent sessions, assistant policy, encrypted credentials and immutable audit',async()=>{
    const db=new PGlite();
    try{
      await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA security;
        CREATE TABLE identity.users(tenant_id text NOT NULL,user_id text NOT NULL,state text NOT NULL,
        PRIMARY KEY(tenant_id,user_id));`);
      const migration=await readFile(new URL('../../../packages/security/migrations/0123_whatsapp_ai.sql',import.meta.url),'utf8');
      await db.exec(migration);
      await db.exec(await readFile(new URL('../../../packages/security/migrations/0124_whatsapp_number_identity.sql',import.meta.url),'utf8'));
      const tables=await db.query<{table_name:string}>(`SELECT table_name FROM information_schema.tables
        WHERE table_schema='security' AND table_name LIKE 'whatsapp_%'`);
      expect(tables.rows.map(r=>r.table_name)).toContain('whatsapp_auth_keys');
      expect(tables.rows.map(r=>r.table_name)).toContain('whatsapp_access_grants');
      expect(tables.rows.map(r=>r.table_name)).toContain('whatsapp_jobs');
      expect(tables.rows.map(r=>r.table_name)).toContain('whatsapp_purchase_approvals');
      await db.exec(`INSERT INTO identity.users(tenant_id,user_id,state) VALUES('tenant_1','user_1','active');
        INSERT INTO security.whatsapp_channels(tenant_id,display_phone,linked_jid)
        VALUES('tenant_1','+2348000000000','2348000000000@s.whatsapp.net');`);
      const result=await db.query<{channel_id:string}>('SELECT channel_id FROM security.whatsapp_channels');
      expect(result.rows).toHaveLength(1);
      await db.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id) VALUES('tenant_1',$1)`,[result.rows[0]!.channel_id]);
      const assistant=await db.query<{voice_replies:boolean;transcribe_voice:boolean;reply_mode:string;away_after_seconds:number;remember_context:boolean;number_purpose:string;owner_name:string}>(
        `SELECT voice_replies,transcribe_voice,reply_mode,away_after_seconds,remember_context,number_purpose,owner_name FROM security.whatsapp_assistants WHERE channel_id=$1`,
        [result.rows[0]!.channel_id]);
      expect(assistant.rows[0]).toMatchObject({voice_replies:true,transcribe_voice:true,reply_mode:'always',away_after_seconds:120,remember_context:true,number_purpose:'service',owner_name:''});
      await db.query(`UPDATE security.whatsapp_assistants SET number_purpose='personal',owner_name='Bello'
        WHERE channel_id=$1`,[result.rows[0]!.channel_id]);
      const stored=await db.query<{number_purpose:string}>(`SELECT number_purpose FROM security.whatsapp_assistants WHERE channel_id=$1`,[result.rows[0]!.channel_id]);
      expect(stored.rows[0]?.number_purpose).toBe('personal');
      await db.query(`INSERT INTO security.whatsapp_auth_keys(tenant_id,channel_id,key_type,key_id,ciphertext)
        VALUES('tenant_1',$1,'creds','main',$2)`,[result.rows[0]!.channel_id,Buffer.from('encrypted-signal-credential')]);
      await db.query(`INSERT INTO security.whatsapp_audit(tenant_id,actor_id,action)
        VALUES('tenant_1','user_1','linked_device.created')`);
      await expect(db.exec(`DELETE FROM security.whatsapp_audit`)).rejects.toThrow(/whatsapp_audit_immutable/);
    }finally{await db.close();}
  },30000);
});
