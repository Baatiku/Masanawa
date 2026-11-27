import {beforeAll,afterAll,describe,it,expect} from 'vitest';
import {Pool} from 'pg';
import {createCanonicalId} from '@masanawa/contracts';
import {runMigrations} from '../migrations.js';
import {platformProductMigrationRoots} from '../readiness.js';
import {createCivicLearningRewards} from './civic_learning_rewards.js';
import {createNgnSpending} from './ngn_spending.js';
import {createNgnWalletRepository} from './ngn_repository.js';
import {createGbBillstackRepository} from './billstack_repository.js';

const connectionString=process.env.MASANAWA_TEST_DATABASE_URL;
// Never run financial fixtures against production. The retained CI workflow
// provides a disposable PostgreSQL database with independent connections.
describe.skipIf(!connectionString)('civic learning funded reward PostgreSQL acceptance',()=>{
 let pool:Pool;
 beforeAll(async()=>{pool=new Pool({connectionString});await runMigrations(pool,platformProductMigrationRoots());},120000);
 afterAll(async()=>{await pool?.end();});
 async function setup(){
  const tenantId=createCanonicalId('tenant');
  const funder={tenantId,userId:createCanonicalId('user')};
  const users=Array.from({length:3},()=>({tenantId,userId:createCanonicalId('user')}));
  await pool.query('INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,now(),now())',[tenantId]);
  for(const a of [funder,...users])await pool.query("INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now()-interval '8 days',now())",[tenantId,a.userId]);
  const ref=createCanonicalId('operation'),providerEventId=createCanonicalId('event');
  const accountNumber=String(1000000000+Math.floor(Math.random()*8999999999));
  const storage=createGbBillstackRepository(pool);
  await storage.start(funder,ref);
  await storage.finalize(funder,ref,{reference:ref,accountNumber,accountName:'Test only',bankName:'Fixture',bankId:'9PSB'});
  await createNgnWalletRepository(pool).deposit({eventId:providerEventId,merchantReference:ref,accountNumber,amountKobo:1000,receivedAt:new Date().toISOString()});
  const reward=createCivicLearningRewards(pool),wallet=createNgnSpending(pool);
  const funding={...funder,budgetId:'budget-one',providerEventId,fundedKobo:550,rewardKobo:500};
  async function pass(a:typeof funder){
   const attempt=await reward.begin(a);
   // Move only fixture timestamps, never weaken the runtime elapsed-time gate.
   await pool.query("UPDATE gb_wallet.civic_learning_attempts SET started_at=clock_timestamp()-interval '31 seconds' WHERE tenant_id=$1 AND user_id=$2",[tenantId,a.userId]);
   expect(await reward.complete(a,attempt.attemptId,[0,1,2])).toEqual({passed:true});
  }
  return {tenantId,funder,users,funding,reward,wallet,pass};
 }
 it('requires verified funds, deduplicates funding and awards, serializes overspend and refunds the exact remainder',async()=>{
  const {tenantId,funder,users,funding,reward,wallet,pass}=await setup();
  await expect(reward.fund({...funding,providerEventId:'missing'})).rejects.toThrow('civic_reward.unverified_funding');
  const [first,replay]=await Promise.all([reward.fund(funding),reward.fund(funding)]);
  expect(first).toEqual(replay);
  expect((await wallet.balance(funder)).balanceKobo).toBe(450);
  await expect(reward.fund({...funding,budgetId:'second',fundedKobo:100,rewardKobo:50})).rejects.toThrow();
  expect((await wallet.balance(funder)).balanceKobo).toBe(450);
  await reward.control(funder,funding.budgetId,'activate');
  await expect(reward.award(users[2]!)).rejects.toThrow('civic_reward.lesson_required');
  await Promise.all([pass(users[0]!),pass(users[1]!)]);
  const results=await Promise.allSettled(users.slice(0,2).map(a=>reward.award(a)));
  expect(results.filter(x=>x.status==='fulfilled')).toHaveLength(1);
  const winner=users[results.findIndex(x=>x.status==='fulfilled')]!;
  const receipts=await Promise.all([reward.award(winner),reward.award(winner)]);
  expect(receipts[0]).toEqual(receipts[1]);
  expect((await wallet.balance(winner)).balanceKobo).toBe(500);
  const closed=await reward.control(funder,funding.budgetId,'close');
  expect(Number(closed.returned_kobo)).toBe(50);
  expect(await reward.control(funder,funding.budgetId,'close')).toEqual(closed);
  expect((await wallet.balance(funder)).balanceKobo).toBe(500);
  expect((await wallet.balance({tenantId,userId:first.escrow_id})).balanceKobo).toBe(0);
  const journal=await pool.query('SELECT count(*)::int AS n, sum(delta_kobo)::text AS net FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[tenantId]);
  expect(journal.rows[0]).toEqual({n:6,net:'0'});
  const awards=await pool.query('SELECT count(*)::int AS n FROM gb_wallet.civic_learning_awards WHERE tenant_id=$1',[tenantId]);
  expect(awards.rows[0].n).toBe(1);
 },30000);
 it('does not award after a verified deposit reversal and preserves the escrow and immutable audit',async()=>{
  const {tenantId,funder,users,funding,reward,wallet,pass}=await setup();
  const b=await reward.fund(funding);
  await reward.control(funder,funding.budgetId,'activate');
  await pass(users[0]!);
  await createNgnWalletRepository(pool).reverseDeposit(funding.providerEventId);
  await expect(reward.award(users[0]!)).rejects.toThrow('civic_reward.unverified_funding');
  expect((await wallet.balance(users[0]!)).balanceKobo).toBe(0);
  expect((await wallet.balance({tenantId,userId:b.escrow_id})).balanceKobo).toBe(550);
  expect((await wallet.balance(funder)).frozen).toBe(true);
  expect((await pool.query('SELECT count(*)::int AS n FROM gb_wallet.civic_learning_awards WHERE tenant_id=$1',[tenantId])).rows[0].n).toBe(0);
  await expect(pool.query('DELETE FROM gb_wallet.civic_learning_budget_audit WHERE tenant_id=$1',[tenantId])).rejects.toThrow('immutable');
 },30000);
 it('binds attempts and immutable rewards to distinct neutral lessons across one budget',async()=>{
  const {tenantId,funder,users,funding,reward,wallet,pass}=await setup();
  const a=users[0]!;
  await reward.fund({...funding,fundedKobo:1000,rewardKobo:250});
  await reward.control(funder,funding.budgetId,'activate');
  await pass(a);
  const second='public-services-access-v1';
  const first=await reward.award(a);
  const attempt=await reward.begin(a,second);
  await pool.query("UPDATE gb_wallet.civic_learning_attempts SET started_at=clock_timestamp()-interval '31 seconds' WHERE tenant_id=$1 AND user_id=$2 AND lesson_id=$3",[tenantId,a.userId,second]);
  await expect(reward.complete(a,attempt.attemptId,[1,0,2],'privacy-and-digital-safety-v1')).rejects.toThrow('civic_reward.invalid_attempt');
  expect(await reward.complete(a,attempt.attemptId,[1,0,2],second)).toEqual({passed:true});
  const next=await reward.award(a,second);expect(next.operationId).not.toBe(first.operationId);
  expect(await reward.award(a,second)).toEqual(next);
  expect((await wallet.balance(a)).balanceKobo).toBe(500);
  await expect(reward.award(a,'privacy-and-digital-safety-v1')).rejects.toThrow('civic_reward.lesson_required');
 },30000);
});
