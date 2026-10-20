import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { readFile } from 'node:fs/promises';
import { PGlite } from '@electric-sql/pglite';
import { createMsnwCustodyService } from './custody_send.js';
const db = new PGlite();
const owner = { tenantId: 't', userId: 'sender' };
let afterAccountLock: (() => Promise<void>) | undefined;
const pool: any = { async query(sql: string, values: unknown[]) {
  const result = await db.query(sql, values);
  if (sql.includes('ORDER BY user_id FOR UPDATE') && afterAccountLock) {
    const hook=afterAccountLock; afterAccountLock=undefined; await hook();
  }
  return { ...result, rowCount: result.rows.length || result.affectedRows || 0 };
}, async connect() { return {query: (sql: string, values: unknown[]) => pool.query(sql,values),release() {}}; }} as any;
const service = createMsnwCustodyService(pool);
beforeAll(async () => { await db.exec(`
CREATE SCHEMA security; CREATE SCHEMA talks; CREATE SCHEMA identity;
CREATE TABLE identity.users(tenant_id text,user_id text,state text);
CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text,email text,phone text,masanawa_account_number text,PRIMARY KEY(tenant_id,user_id));
CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,avatar_url text);
CREATE TABLE talks.safety_preferences(tenant_id text,viewer_user_id text,subject_user_id text,blocked boolean);
CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);
INSERT INTO identity.users VALUES('t','sender','active'),('t','receiver','active'),('else','receiver','active');
INSERT INTO security.platform_user_profiles VALUES
('t','sender','Sender','sender@example.invalid',NULL,'8000000001'),
('t','receiver','Receiver','receiver@example.invalid','+12025550123','8000000002'),
('else','receiver','Other tenant','other@example.invalid',NULL,'8000000002');
INSERT INTO talks.public_profiles VALUES('t','receiver','receiver',NULL);
`);
await db.exec('CREATE SCHEMA commerce');
await db.exec(await readFile(new URL('../../../../packages/commerce/migrations/0127_msnw_custody_send.sql',import.meta.url),'utf8'));
await db.exec("INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES('t','sender',10000000)");
},30000);
afterAll(async () => db.close());
describe('wallet recipient name inquiry', () => {
  it.each(['8000000002','8000 000 002','@Receiver','receiver@example.invalid','+12025550123'])(
    'resolves %s to the same tenant-scoped identity', async query => {
      expect(await service.lookupRecipient(owner, query)).toEqual({found:true,userId:'receiver',displayName:'Receiver',handle:'receiver',accountNumber:'8000000002'});
    });
  it.each(['7000000002','800000000','80000000022','@','@two words','random','x'.repeat(321)])('rejects malformed input %s', async query => {
    await expect(service.lookupRecipient(owner,query)).rejects.toMatchObject({code:'msnw.recipient_invalid',statusCode:400});
  });
  it('rejects self and absent identities', async () => {
    await expect(service.lookupRecipient(owner,'8000000001')).rejects.toMatchObject({code:'msnw.send_to_self'});
    await expect(service.lookupRecipient({...owner,tenantId:'missing'},'8000000002')).rejects.toMatchObject({code:'msnw.recipient_not_found'});
  });
  it('does not expose disabled, blocked or moderated recipients', async () => {
    await db.exec("UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='receiver'");
    await expect(service.lookupRecipient(owner,'8000000002')).rejects.toMatchObject({code:'msnw.recipient_not_found'});
    await db.exec("UPDATE identity.users SET state='active'; INSERT INTO talks.safety_preferences VALUES('t','receiver','sender',true)");
    await expect(service.lookupRecipient(owner,'@receiver')).rejects.toMatchObject({code:'msnw.recipient_not_found'});
    await db.exec("DELETE FROM talks.safety_preferences; INSERT INTO talks.safety_enforcement VALUES('t','profile','receiver','restricted')");
    await expect(service.lookupRecipient(owner,'8000000002')).rejects.toMatchObject({code:'msnw.recipient_not_found'});
    await db.exec('DELETE FROM talks.safety_enforcement');
  });
  it('reads the authenticated account number without exposing contact details', async () => {
    expect(await service.account(owner)).toEqual({accountNumber:'8000000001'});
    await expect(service.account({...owner,userId:'missing'})).rejects.toMatchObject({code:'msnw.account_unavailable'});
  });
  it('previews then sends by account number and replays by handle without a second debit', async () => {
    expect(await service.preview(owner,'8000000002','1500000')).toMatchObject({recipientUserId:'receiver',recipientName:'Receiver',amountMicro:'1500000',feeMicro:'0'});
    const request={recipient:'8000000002',recipientUserId:'receiver',amountMicro:'1500000',idempotencyKey:'account-send-fixture-0001'};
    const first=await service.send(owner,request);
    const replay=await service.send(owner,{...request,recipient:'@receiver'});
    expect(replay).toEqual(first);
    expect(await service.balance(owner)).toMatchObject({availableMicro:'8500000'});
    expect(await service.balance({...owner,userId:'receiver'})).toMatchObject({availableMicro:'1500000'});
    expect((await service.history(owner))).toHaveLength(1);
    expect((await db.query('SELECT sum(available_delta_micro)::text AS net FROM commerce.msnw_custody_entries')).rows).toEqual([{net:'0'}]);
  });

  it('rechecks recipient access after waiting on custody locks and rolls back on revocation', async () => {
    const before=await service.balance(owner);
    afterAccountLock=async()=>{await db.exec("INSERT INTO talks.safety_preferences VALUES('t','receiver','sender',true)");};
    await expect(service.send(owner,{recipient:'@receiver',recipientUserId:'receiver',amountMicro:'1',idempotencyKey:'lock-wait-revoked-0001'})).rejects.toMatchObject({code:'msnw.recipient_not_found'});
    expect(await service.balance(owner)).toEqual(before);
    expect(await service.lookup(owner,'lock-wait-revoked-0001')).toBeNull();
  });

});
