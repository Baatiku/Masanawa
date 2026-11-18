import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createIsolatedPostgresTestDatabase} from '../home_feed/isolated_test_database.js';
import {setupRetainedFinance,retainedFinanceStore,payer,reviewer} from './retained_finance.test_support.js';
const url=process.env.MASANAWA_TEST_DATABASE_URL;
(url?describe:describe.skip)('retained finance real PostgreSQL concurrency',()=>{
 let isolated:Awaited<ReturnType<typeof createIsolatedPostgresTestDatabase>>;
 let store:ReturnType<typeof retainedFinanceStore>;let entryId:string;
 beforeAll(async()=>{
  isolated=await createIsolatedPostgresTestDatabase(url!);
  const seeded=await setupRetainedFinance({exec:sql=>isolated.pool.query(sql),query:(sql,params)=>isolated.pool.query(sql,params)});
  entryId=seeded.entryId;store=retainedFinanceStore(isolated.pool);
 });
 afterAll(async()=>{await isolated?.close();});
 it('commits one inquiry under lost-response retries on separate connections and serializes competing reviewers',async()=>{
  const cases=await Promise.all(Array.from({length:8},()=>store.submit(payer,'activity',entryId,'amount')));
  expect(new Set(cases.map(c=>c.id)).size).toBe(1);
  expect((await isolated.pool.query('SELECT * FROM support.wallet_case_events')).rows).toHaveLength(1);
  const outcomes=await Promise.allSettled([store.resolve(reviewer,cases[0]!.id,'acknowledged',1),store.resolve(reviewer,cases[0]!.id,'closed',1)]);
  expect(outcomes.filter(o=>o.status==='fulfilled')).toHaveLength(1);
  expect((await isolated.pool.query('SELECT * FROM support.wallet_case_events')).rows).toHaveLength(2);
 });
 it('a winning canonical disable prevents late inquiries and notification reintroduction',async()=>{
  const holder=await isolated.pool.connect();let committed=false;
  try{
   await holder.query('BEGIN');await holder.query(`SELECT 1 FROM identity.users WHERE tenant_id='t' AND user_id='payer' FOR UPDATE`);
   const late=store.submit(payer,'activity',entryId,'status');
   const notice=isolated.pool.query(`SELECT agents.queue_mobile_notice('t','payer','late-private-notice','wallet','Update','wallet_mb_update','masanawa://wallet/activity')`);
   await new Promise(resolve=>setTimeout(resolve,35));
   await holder.query(`UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='payer'`);
   await holder.query('COMMIT');committed=true;
   await expect(late).rejects.toMatchObject({status:401});await notice;
   expect((await isolated.pool.query("SELECT * FROM support.wallet_cases WHERE category='status'")).rows).toEqual([]);
   expect((await isolated.pool.query("SELECT * FROM agents.mobile_notification_history WHERE event_id='late-private-notice'")).rows).toEqual([]);
  }finally{if(!committed)await holder.query('ROLLBACK');holder.release();}
 });
});
