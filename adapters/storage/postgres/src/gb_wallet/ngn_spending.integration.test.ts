import {readFile} from 'node:fs/promises';
import {randomUUID} from 'node:crypto';
import {PGlite} from '@electric-sql/pglite';
import {Pool,type PoolClient} from 'pg';
import {beforeAll,afterAll,beforeEach,describe,it,expect} from 'vitest';
import {withTransaction} from '../transaction.js';
import {runMigrations} from '../migrations.js';
import {platformProductMigrationRoots} from '../readiness.js';
import {createNgnSpending} from './ngn_spending.js';

/** Actual PostgreSQL engine SQL through PGlite. This adapter serializes its
 * single connection and does not claim independent-connection concurrency. */
describe('direct NGN spending SQL and transaction invariants',()=>{
 let db:PGlite,pool:Pool;
 const actor={tenantId:'ngn-test',userId:'alice'};let next=0;
 const input=(amountKobo=200,purpose:'reply'|'connected_call'|'data'='reply')=>{
  const operationId=`operation_${++next}`;return {...actor,operationId,idempotencyKey:operationId,purpose,amountKobo};
 };
 beforeAll(async()=>{
  db=new PGlite();
  for(const name of ['0200_gb_wallet_foundation.sql','0205_ngn_funding_wallet.sql','0212_direct_ngn_spending.sql'])
   await db.exec(await readFile(new URL(`../../../../../packages/commerce/migrations/${name}`,import.meta.url),'utf8'));
  let tail=Promise.resolve();
  pool={query:(sql:string,params:unknown[]=[])=>db.query(sql,params),connect:async()=>{
   const previous=tail;let release!:()=>void;tail=new Promise<void>(resolve=>{release=resolve;});await previous;
   return {query:(sql:string,params:unknown[]=[])=>db.query(sql,params),release} as unknown as PoolClient;
  }} as unknown as Pool;
 },30000);
 afterAll(async()=>{await db?.close();});
 beforeEach(async()=>{
  actor.tenantId=`ngn-test-${++next}`;
  await db.query(`INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo) VALUES($1,'alice',1000),($1,'bob',500)`,[actor.tenantId]);
 });
 it('charges 200 kobo once for one delivered reply and scopes original readback',async()=>{
  const w=createNgnSpending(pool),r=input();await Promise.all([w.reserve(r),w.reserve(r)]);
  expect(await w.balance(actor)).toMatchObject({balanceKobo:1000,availableKobo:800,heldKobo:200});
  const receipts=await Promise.all([w.capture(r,200),w.capture(r,200)]);expect(receipts[0]).toEqual(receipts[1]);
  expect(await w.balance(actor)).toMatchObject({balanceKobo:800,availableKobo:800,heldKobo:0});
  expect((await db.query('SELECT delta_kobo::text FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[actor.tenantId])).rows).toEqual([{delta_kobo:'-200'}]);
  expect(await w.read(actor.tenantId,r.operationId,'bob')).toBeNull();expect(await w.read('other-tenant',r.operationId,actor.userId)).toBeNull();
 });
 it('binds immutable purpose and amount and refuses capture above the original hold',async()=>{
  const w=createNgnSpending(pool),r=input();await w.reserve(r);
  await expect(w.reserve({...r,amountKobo:201})).rejects.toThrow('ngn.idempotency_conflict');
  await expect(w.reserve({...r,purpose:'data'})).rejects.toThrow('ngn.idempotency_conflict');
  await expect(w.reserve({...r,operationId:'changed_operation'})).rejects.toThrow('ngn.idempotency_conflict');
  await expect(w.capture(r,201)).rejects.toThrow('ngn.exceeds_reservation');
  expect(await w.balance(actor)).toMatchObject({balanceKobo:1000,heldKobo:200});
 });
 it('releases a failed reply without a debit and cannot later charge it',async()=>{
  const w=createNgnSpending(pool),r=input();await w.reserve(r);const receipt=await w.release(r);expect(await w.release(r)).toEqual(receipt);
  await expect(w.capture(r,200)).rejects.toThrow('ngn.settlement_conflict');
  expect(await w.balance(actor)).toMatchObject({balanceKobo:1000,availableKobo:1000,heldKobo:0});
  expect((await db.query('SELECT count(*)::int AS n FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[actor.tenantId])).rows[0]).toEqual({n:0});
 });
 it('shares spendable cash across competing purposes without overspending',async()=>{
  await db.query('UPDATE gb_wallet.ngn_accounts SET balance_kobo=300 WHERE tenant_id=$1 AND account_id=$2',[actor.tenantId,actor.userId]);
  const w=createNgnSpending(pool),results=await Promise.allSettled([w.reserve(input(200,'reply')),w.reserve(input(200,'data'))]);
  expect(results.filter(x=>x.status==='fulfilled')).toHaveLength(1);expect(await w.balance(actor)).toMatchObject({balanceKobo:300,availableKobo:100,heldKobo:200});
 });
 it('captures actual connected-call cost and releases unused reserved cash',async()=>{
  const w=createNgnSpending(pool),r=input(500,'connected_call');await w.reserve(r);await w.capture(r,200);
  expect(await w.balance(actor)).toMatchObject({balanceKobo:800,heldKobo:0,availableKobo:800});
  expect(await w.read(actor.tenantId,r.operationId,actor.userId)).toMatchObject({amountKobo:500,capturedKobo:200,state:'completed'});
 });
 it('commits both transfer entries together and rolls back both on an outer failure',async()=>{
  const r={...input(275),purpose:'send' as const,recipientId:'bob'};
  await expect(withTransaction(pool,async c=>{const w=createNgnSpending(pool,c);await w.reserve(r);await w.capture(r,275);throw Error('after_transfer');})).rejects.toThrow('after_transfer');
  expect(await createNgnSpending(pool).balance(actor)).toMatchObject({balanceKobo:1000,heldKobo:0});
  expect(await createNgnSpending(pool).balance({...actor,userId:'bob'})).toMatchObject({balanceKobo:500});
  await withTransaction(pool,async c=>{const w=createNgnSpending(pool,c);await w.reserve(r);await w.capture(r,275);});
  expect(await createNgnSpending(pool).balance(actor)).toMatchObject({balanceKobo:725,heldKobo:0});
  expect(await createNgnSpending(pool).balance({...actor,userId:'bob'})).toMatchObject({balanceKobo:775});
  expect((await db.query('SELECT sum(delta_kobo)::text AS net,count(*)::int AS n FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[actor.tenantId])).rows[0]).toEqual({net:'0',n:2});
 });
 it('settles original verified service after a deposit reversal without losing debt or holds',async()=>{
  const w=createNgnSpending(pool),r=input();await w.reserve(r);
  await db.query('UPDATE gb_wallet.ngn_accounts SET balance_kobo=0,debt_kobo=300,frozen=true WHERE tenant_id=$1 AND account_id=$2',[actor.tenantId,actor.userId]);
  await w.capture(r,200);expect(await w.balance(actor)).toMatchObject({balanceKobo:0,debtKobo:500,heldKobo:0,availableKobo:0,frozen:true});
  await expect(w.reserve(input())).rejects.toThrow('ngn.account_frozen');
 });
 it('preserves immutable NGN receipts and leaves historical MB balances untouched',async()=>{
  await db.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb,welcome_mb) VALUES($1,'human',$2,12345,500)`,[actor.tenantId,actor.userId]);
  const w=createNgnSpending(pool),r=input();await w.reserve(r);await w.capture(r,200);
  expect((await db.query('SELECT purchased_mb::text,welcome_mb::text FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2',[actor.tenantId,actor.userId])).rows[0]).toEqual({purchased_mb:'12345',welcome_mb:'500'});
  await expect(db.query('DELETE FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[actor.tenantId])).rejects.toThrow('immutable');
 });
});

const connectionString=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connectionString)('direct NGN independent-connection PostgreSQL acceptance',()=>{
 let pool:Pool;
 beforeAll(async()=>{pool=new Pool({connectionString});await runMigrations(pool,platformProductMigrationRoots());},60000);
 afterAll(async()=>{await pool?.end();});
 it('serializes competing holds and duplicate captures under real row locks',async()=>{
  const actor={tenantId:'ngn-race-'+randomUUID(),userId:'alice'};
  await pool.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo) VALUES($1,$2,300)',[actor.tenantId,actor.userId]);
  const w=createNgnSpending(pool),requests=Array.from({length:8},(_,i)=>({...actor,operationId:'concurrent_'+i,idempotencyKey:'concurrent_'+i,purpose:'reply' as const,amountKobo:200}));
  const results=await Promise.allSettled(requests.map(r=>w.reserve(r)));expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
  const winner=requests[results.findIndex(r=>r.status==='fulfilled')]!;const receipts=await Promise.all(Array.from({length:8},()=>w.capture(winner,200)));
  expect(receipts.every(r=>r.capturedKobo===200&&r.state==='completed')).toBe(true);expect(await w.balance(actor)).toMatchObject({balanceKobo:100,availableKobo:100,heldKobo:0,debtKobo:0});
  expect((await pool.query('SELECT count(*)::int AS n FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[actor.tenantId])).rows[0].n).toBe(1);
 },30000);
});
