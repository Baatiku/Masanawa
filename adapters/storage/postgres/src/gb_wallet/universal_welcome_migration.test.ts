import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,it,expect} from 'vitest';

describe('existing-account 500 MB chat/call launch backfill',()=>{
  it('grants active existing users once without duplicating older restricted welcome credit',async()=>{
    const db=new PGlite();
    try {
      await db.exec(`CREATE SCHEMA identity;
        CREATE TABLE identity.users(tenant_id text NOT NULL,user_id text NOT NULL,
          state text NOT NULL,PRIMARY KEY(tenant_id,user_id));`);
      await db.exec(await readFile(new URL(
        '../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql',
        import.meta.url),'utf8'));
      await db.exec(`INSERT INTO identity.users VALUES
        ('t','existing','active'),('t','new','active'),
        ('t','older_grant','active'),('t','disabled','disabled');`);
      await db.exec(`INSERT INTO gb_wallet.accounts
        (tenant_id,account_kind,account_id,welcome_mb)
        VALUES('t','human','older_grant',500);
        INSERT INTO gb_wallet.operations
        (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
         operation_kind,amount_mb,state)
        VALUES('t','old_welcome','older_grant','old_welcome',
         '${'a'.repeat(64)}','welcome_grant',500,'completed');
        INSERT INTO gb_wallet.welcome_claims
        (tenant_id,account_id,verified_phone_hmac,operation_id)
        VALUES('t','older_grant','${'b'.repeat(64)}','old_welcome');`);
      await db.exec(await readFile(new URL(
        '../../../../../packages/commerce/migrations/0211_universal_chat_call_welcome.sql',
        import.meta.url),'utf8'));
      const rows=await db.query<{account_id:string;welcome_mb:string}>(`
        SELECT account_id,welcome_mb::text FROM gb_wallet.accounts ORDER BY account_id`);
      expect(rows.rows).toEqual([
        {account_id:'existing',welcome_mb:'500'},
        {account_id:'new',welcome_mb:'500'},
        {account_id:'older_grant',welcome_mb:'500'},
      ]);
      const claims=await db.query<{account_id:string;granted_mb:string}>(`
        SELECT account_id,granted_mb::text FROM gb_wallet.universal_welcome_claims
        ORDER BY account_id`);
      expect(claims.rows).toEqual([
        {account_id:'existing',granted_mb:'500'},
        {account_id:'new',granted_mb:'500'},
        {account_id:'older_grant',granted_mb:'0'},
      ]);
      const issued=await db.query<{count:string}>(`
        SELECT count(*)::text AS count FROM gb_wallet.movements
        WHERE operation_id LIKE 'launch500_%'`);
      expect(issued.rows[0]?.count).toBe('2');
    } finally {await db.close();}
  },30000);
});
