import { PGlite } from '@electric-sql/pglite';
import { expect, it } from 'vitest';
import { redactDeletedPublicProfile } from './account_deletion.js';
it('redacts disabled owners public identity without touching active or other-tenant profiles',async()=>{
  const db=new PGlite();
  try {
    await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA talks;
      CREATE TABLE identity.users(tenant_id text,user_id text,state text);
      CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,
        display_name text,bio text,avatar_url text,live_talk_id text,twin_public_id text,
        twin_display_name text,talks_json jsonb,updated_at timestamptz);
      INSERT INTO identity.users VALUES ('a','u','disabled'),('b','u','active');
      INSERT INTO talks.public_profiles VALUES
        ('a','u','amina','Amina','Private bio','https://example.invalid/avatar','talk','twin','Twin','["talk"]',now()),
        ('b','u','other','Other','Keep bio',NULL,NULL,NULL,NULL,'[]',now());`);
    const client={query:async(sql:string,params:unknown[])=>db.query(sql,params)};
    await redactDeletedPublicProfile(client as never,'b','u','1234567890abcdef','2026-10-19T00:00:00Z');
    await redactDeletedPublicProfile(client as never,'a','u','1234567890abcdef','2026-10-19T00:00:00Z');
    const rows=await db.query<any>('SELECT * FROM talks.public_profiles ORDER BY tenant_id');
    expect(rows.rows[0]).toMatchObject({handle:'deleted_1234567890abcdef',display_name:'Deleted account',bio:'',avatar_url:null,live_talk_id:null,twin_public_id:null,twin_display_name:null,talks_json:[]});
    expect(rows.rows[1]).toMatchObject({handle:'other',display_name:'Other',bio:'Keep bio'});
  } finally { await db.close(); }
},30000);
