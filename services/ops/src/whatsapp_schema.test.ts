import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,expect,it} from 'vitest';

describe('WhatsApp canonical Postgres migration',()=>{
  it('creates bounded, relational, immutable control-plane tables',async()=>{
    const db=new PGlite();
    try{
      await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA security;
        CREATE TABLE identity.users(tenant_id text NOT NULL,user_id text NOT NULL,state text NOT NULL,
        PRIMARY KEY(tenant_id,user_id));`);
      const migration=await readFile(new URL('../../../packages/security/migrations/0123_whatsapp_ai.sql',import.meta.url),'utf8');
      await db.exec(migration);
      const tables=await db.query<{table_name:string}>(`SELECT table_name FROM information_schema.tables
        WHERE table_schema='security' AND table_name LIKE 'whatsapp_%'`);
      expect(tables.rows.map(r=>r.table_name)).toContain('whatsapp_access_grants');
      expect(tables.rows.map(r=>r.table_name)).toContain('whatsapp_jobs');
      await db.exec(`INSERT INTO identity.users(tenant_id,user_id,state) VALUES('tenant_1','user_1','active');
        INSERT INTO security.whatsapp_channels(tenant_id,waba_id,phone_number_id,display_phone,token_ciphertext)
        VALUES('tenant_1','123456789','987654321','+2348000000000','\\x01');`);
      const result=await db.query<{channel_id:string}>('SELECT channel_id FROM security.whatsapp_channels');
      expect(result.rows).toHaveLength(1);
      await db.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id) VALUES('tenant_1',$1)`,[result.rows[0]!.channel_id]);
      await db.query(`INSERT INTO security.whatsapp_audit(tenant_id,actor_id,action) VALUES('tenant_1','user_1','test')`);
      await expect(db.exec(`DELETE FROM security.whatsapp_audit`)).rejects.toThrow(/whatsapp_audit_immutable/);
    }finally{await db.close();}
  },30000);
});
