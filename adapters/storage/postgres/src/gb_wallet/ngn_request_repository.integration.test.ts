import {beforeAll,afterAll,describe,it,expect} from 'vitest';
import type {Pool} from 'pg';
import {createCanonicalId} from '@masanawa/contracts';
import {ngnSqlFixture} from './ngn_test_support.js';
import {createPostgresNgnRequestRepository,createPostgresNgnTransferRepository} from './ngn_request_repository.js';
describe('NGN request and transfer actual SQL invariants',()=>{
 let pool:Pool,close:()=>Promise<unknown>;
 const tenant=createCanonicalId('tenant'),alice=createCanonicalId('user'),bob=createCanonicalId('user'),carol=createCanonicalId('user');
 const actor=(userId:string)=>({tenantId:tenant,userId});
 beforeAll(async()=>{
  ({pool,close}=await ngnSqlFixture());
  if(process.env.MASANAWA_TEST_DATABASE_URL)await pool.query('INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,now(),now())',[tenant]);
  for(const [id,handle] of [[alice,'ngn.alice'],[bob,'ngn.bob'],[carol,'ngn.carol']]){
   await pool.query('INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now(),now())',[tenant,id]);
   await pool.query('INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES($1,$2,$3,$3)',[tenant,id,handle]);
   await pool.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo) VALUES($1,$2,100000)',[tenant,id]);
  }
 },120000);
 afterAll(async()=>{await close?.();});
 it('pays once under concurrent retries, records balanced entries and emits one original request notice',async()=>{
  const repo=createPostgresNgnRequestRepository(pool),input={payerId:bob,amountKobo:12345,idempotencyKey:'ngn_request_abcdefghijkl'};
  const request=await repo.create(actor(alice),input);expect(await repo.create(actor(alice),input)).toEqual(request);
  const notice=await pool.query('SELECT kind,deep_link FROM agents.mobile_notification_outbox WHERE tenant_id=$1 AND user_id=$2',[tenant,bob]);
  expect(notice.rows).toEqual([{kind:'wallet_ngn_request',deep_link:'masanawa://wallet/requests/'+request.requestId}]);
  expect(await repo.get(actor(carol),request.requestId)).toBeNull();expect(await repo.get(actor(bob),request.requestId)).toEqual(request);
  const [one,two]=await Promise.all([repo.pay(actor(bob),request.requestId),repo.pay(actor(bob),request.requestId)]);expect(one).toEqual(two);expect(one).toMatchObject({amountKobo:12345,currency:'NGN',unit:'kobo'});
  expect((await pool.query('SELECT delta_kobo::text FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1 AND operation_id=$2 ORDER BY delta_kobo',[tenant,one.operationId])).rows.map(r=>r.delta_kobo)).toEqual(['-12345','12345']);
  await expect(repo.pay(actor(carol),request.requestId)).rejects.toMatchObject({code:'request_not_found'});
 });
 it('leaves insufficient and declined requests unpaid',async()=>{
  const repo=createPostgresNgnRequestRepository(pool);
  const poor=await repo.create(actor(alice),{payerId:carol,amountKobo:100001,idempotencyKey:'request_insufficient_abcdefghijkl'});await expect(repo.pay(actor(carol),poor.requestId)).rejects.toMatchObject({code:'insufficient_balance'});
  const declined=await repo.create(actor(alice),{payerId:carol,amountKobo:100,idempotencyKey:'request_declined_abcdefghijkl'});await repo.decline(actor(carol),declined.requestId);await expect(repo.pay(actor(carol),declined.requestId)).rejects.toMatchObject({code:'request_already_closed'});
  expect((await pool.query('SELECT count(*)::int AS n FROM gb_wallet.ngn_spends WHERE tenant_id=$1 AND user_id=$2',[tenant,carol])).rows[0].n).toBe(0);
 });
 it('binds original recipient and rechecks party suspension inside the cash transaction',async()=>{
  const repo=createPostgresNgnTransferRepository(pool),input={...actor(bob),recipientId:alice,amountKobo:101,operationId:'send_abcdefghijklmnopqrstuvwx',idempotencyKey:'send_abcdefghijklmnopqrstuvwx'};
  expect(await repo.transfer(input)).toEqual(await repo.transfer(input));await expect(repo.transfer({...input,recipientId:carol})).rejects.toThrow('ngn.idempotency_conflict');
  await pool.query("UPDATE identity.users SET state='suspended' WHERE tenant_id=$1 AND user_id=$2",[tenant,carol]);await expect(repo.transfer({...input,recipientId:carol,operationId:input.operationId+'y',idempotencyKey:input.idempotencyKey+'y'})).rejects.toThrow('ngn.parties_unavailable');
  expect(await repo.readTransfer(actor(alice),input.operationId)).toBeNull();
 });
});
