import { readFile } from 'node:fs/promises';
import { PGlite } from '@electric-sql/pglite';
import { expect, it } from 'vitest';
it('assigns stable account numbers to existing and new users without changing balances or identities', async () => {
  const db = new PGlite();
  try {
    await db.exec(`CREATE SCHEMA security;
CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,masanawa_account_number text,PRIMARY KEY(tenant_id,user_id));
INSERT INTO security.platform_user_profiles VALUES('t','existing',NULL),('t','assigned','8000000001');`);
    const root = new URL('../../../../packages/security/migrations/', import.meta.url);
    await db.exec(await readFile(new URL('0113_masanawa_account_number.sql',root),'utf8'));
    const migration = await readFile(new URL('0114_assign_masanawa_account_numbers.sql',root),'utf8');
    await db.exec(migration);
    const before = (await db.query<{user_id:string;masanawa_account_number:string}>('SELECT * FROM security.platform_user_profiles ORDER BY user_id')).rows;
    expect(before.find((r:any)=>r.user_id==='assigned')?.masanawa_account_number).toBe('8000000001');
    expect(before.find((r:any)=>r.user_id==='existing')?.masanawa_account_number).toMatch(/^8[0-9]{9}$/);
    await db.exec("INSERT INTO security.platform_user_profiles(tenant_id,user_id) SELECT 't',g::text FROM generate_series(1,100) g");
    const numbers = (await db.query('SELECT masanawa_account_number FROM security.platform_user_profiles')).rows.map((r:any)=>r.masanawa_account_number);
    expect(numbers).toHaveLength(102); expect(new Set(numbers).size).toBe(102);
    expect(numbers.every(n=>/^8[0-9]{9}$/.test(n))).toBe(true);
    await expect(db.exec("UPDATE security.platform_user_profiles SET masanawa_account_number=NULL WHERE user_id='assigned'")).rejects.toMatchObject({code:'23514'});
    await db.exec(migration);
    expect((await db.query("SELECT * FROM security.platform_user_profiles WHERE user_id IN ('existing','assigned') ORDER BY user_id")).rows).toEqual(before);
  } finally { await db.close(); }
}, 30000);
