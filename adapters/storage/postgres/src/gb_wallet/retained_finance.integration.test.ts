import {PGlite} from '@electric-sql/pglite';
import type {Pool} from 'pg';
import {expect,it} from 'vitest';
import {readLegacyGroup,legacyGroupId} from './retained_finance.js';
import {setupRetainedFinance,retainedFinanceStore,payer,referrer,reviewer,beforeLate,afterLate} from './retained_finance.test_support.js';
async function fixture(){
 const db=new PGlite(),query=(sql:string,params:unknown[]=[])=>db.query<Record<string, any>>(sql,params);
 const seeded=await setupRetainedFinance({exec:sql=>db.exec(sql),query});
 const client={query,release:()=>{}};const pool={query,connect:async()=>client} as unknown as Pool;
 return {db,query,store:retainedFinanceStore(pool),...seeded};
}
it('groups original posted debits and pending half-MB by day/campaign with private snapshot-bound receipts',async()=>{
 const f=await fixture();try{
  const rows=await f.store.history(payer,'all',beforeLate,null,20);
  expect(rows.map(r=>[r.kind,r.halfMb,r.eventCount])).toEqual([['spend',4,2],['reserve',20,1]]);
  const pending=await f.store.history(referrer,'all',beforeLate,null,20);
  expect(pending).toHaveLength(1);expect(pending[0]).toMatchObject({kind:'pending',halfMb:1,eventCount:1});
  const group=readLegacyGroup(pending[0]!.id),details=await f.store.group(referrer,group,null,20);
  expect(details).toHaveLength(1);expect(details[0]).toMatchObject({halfMb:1,reference:'paid-one'});
  expect(JSON.stringify(details)).not.toContain('payer');expect(JSON.stringify(details)).not.toContain('viewer');
  expect(await f.store.group({tenantId:'other',userId:'referrer'},group,null,20)).toEqual([]);
  const later=await f.store.history(payer,'all',afterLate,null,20);
  expect(later.find(r=>r.kind==='release')).toMatchObject({halfMb:14,eventCount:1});
  expect(later.find(r=>r.kind==='spend')).toMatchObject({halfMb:6,eventCount:3});
  await expect(f.store.group(referrer,{...group,eventCount:99},null,20)).rejects.toMatchObject({status:409});
  const first=rows[0]!;const next=await f.store.history(payer,'all',beforeLate,
   {day:first.day,campaignId:first.campaignId,kind:first.kind as 'spend'},20);
  expect(next.map(r=>r.kind)).toEqual(['reserve']);
 }finally{await f.db.close();}
},30000);
it('deduplicates receipt-linked inquiries, preserves money and original versions, and audits operator annotations',async()=>{
 const f=await fixture();try{
  const balances=await f.query('SELECT * FROM gb_wallet.accounts ORDER BY account_id');
  const source=await f.store.submit(payer,'activity',f.entryId,'amount');
  expect(await f.store.submit(payer,'activity',f.entryId,'amount')).toMatchObject({id:source.id,revision:1});
  await expect(f.store.submit({tenantId:'t',userId:'intruder'},'activity',f.entryId,'amount')).rejects.toMatchObject({status:404});
  expect(await f.store.findCase({tenantId:'t',userId:'intruder'},source.id)).toBeNull();
  const proof=await f.store.reviewSource(reviewer,source.id,null,20);
  expect(JSON.stringify(proof)).not.toContain('Private Counterparty');
  expect(JSON.stringify(proof)).not.toContain('private_handle');
  expect(proof.source.fields).toContainEqual({label:'Posted amount',value:'-25 MB'});
  const updated=await f.store.resolve(reviewer,source.id,'awaiting_provider',1);
  expect(updated).toMatchObject({state:'awaiting_provider',revision:2});
  expect(await f.store.resolve(reviewer,source.id,'awaiting_provider',1)).toMatchObject({revision:2});
  await expect(f.store.resolve(reviewer,source.id,'closed',1)).rejects.toMatchObject({status:409});
  expect((await f.query('SELECT * FROM support.wallet_case_events')).rows).toHaveLength(2);
  expect((await f.query("SELECT * FROM agents.mobile_notification_history WHERE event_id LIKE 'wallet-case-%'")).rows).toHaveLength(1);
  expect((await f.query('SELECT * FROM gb_wallet.accounts ORDER BY account_id')).rows).toEqual(balances.rows);
  await expect(f.query(`UPDATE support.wallet_cases SET target_reference='other' WHERE id=$1`,[source.id])).rejects.toThrow('immutable');
  await expect(f.query('DELETE FROM support.wallet_case_events')).rejects.toThrow('immutable');
  const groups=await f.store.history(referrer,'pending',beforeLate,null,20),g=readLegacyGroup(groups[0]!.id);
  const inquiry=await f.store.submit(referrer,'legacy_group',groups[0]!.id,'status');
  const sameEvents={...g,snapshotAt:'2026-10-27T10:45:00.000Z'};
  expect(await f.store.submit(referrer,'legacy_group',legacyGroupId(sameEvents),'status')).toMatchObject({id:inquiry.id});
  const expanded=(await f.store.history(referrer,'pending',afterLate,null,20))[0]!;
  expect((await f.store.submit(referrer,'legacy_group',expanded.id,'status')).id).not.toBe(inquiry.id);
  const hold=await f.store.submit(payer,'hold','hold-original','missing');
  expect(hold.targetKind).toBe('hold');
  const holdProof=await f.store.reviewSource(reviewer,hold.id,null,20);
  expect(holdProof.source.fields).toContainEqual({label:'Released MB',value:'100'});
 }finally{await f.db.close();}
},30000);
it('queues current committed events without backfill, private amounts or per-reply/per-second spam',async()=>{
 const f=await fixture();try{
  expect((await f.query('SELECT * FROM agents.mobile_notification_history')).rows).toEqual([]);
  await f.operation('new-send','send',5);const moved=await f.movement('new-send','human','referrer','payer',5);
  const notices=(await f.query('SELECT * FROM agents.mobile_notification_history ORDER BY user_id')).rows;
  expect(notices).toHaveLength(2);expect(notices[0]).toMatchObject({user_id:'payer',title:'MB sent',deep_link:'masanawa://wallet/activity/mb:'+moved.rows[0].movement_id});
  expect(notices.every((n:any)=>n.event_id.length<160&&!n.title.includes('5'))).toBe(true);
  const prior=notices[0]!;await f.query(`SELECT agents.queue_mobile_notice($1,$2,$3,'wallet',$4,'wallet_mb_update',$5)`,
   [prior.tenant_id,prior.user_id,prior.event_id,prior.title,prior.deep_link]);
  expect((await f.query('SELECT * FROM agents.mobile_notification_history')).rows).toHaveLength(2);
  for(const kind of ['reply','connected_call','promotion_view']){
   await f.operation('quiet-'+kind,kind);await f.movement('quiet-'+kind);
  }
  expect((await f.query('SELECT * FROM agents.mobile_notification_history')).rows).toHaveLength(2);
  await f.db.exec('BEGIN');await f.operation('rolled-back','send');await f.movement('rolled-back','human','referrer');await f.db.exec('ROLLBACK');
  expect((await f.query('SELECT * FROM agents.mobile_notification_history')).rows).toHaveLength(2);
  expect((await f.query("SELECT 1 FROM gb_wallet.operations WHERE operation_id='rolled-back'")).rows).toEqual([]);
  await f.query(`SELECT agents.queue_mobile_notice('t','disabled','not-for-disabled','wallet','Update','wallet_mb_update','masanawa://wallet/activity')`);
  expect((await f.query("SELECT * FROM agents.mobile_notification_history WHERE user_id='disabled'")).rows).toEqual([]);
  await f.db.exec(`INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo) VALUES('t','payer',10000);`);
  await f.query(`INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256)
   VALUES('t','bank-deposit','payer','deposit',10000,$1)`,['a'.repeat(64)]);
  // History holds only safe title/link metadata; ledger amounts and provider payloads stay elsewhere.
  const cash=(await f.query("SELECT * FROM agents.mobile_notification_history WHERE title='NGN deposit credited'")).rows;
  expect(cash).toHaveLength(1);expect(cash[0]!.deep_link).toBe('masanawa://wallet/activity/ngn:bank-deposit');
  await f.db.exec('BEGIN');
  await f.query(`INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256,amount_mb,rate_version)
   VALUES('t','atomic-exchange','payer','exchange',-10000,$1,1000,'fixture-rate')`,['a'.repeat(64)]);
  await f.operation('atomic-exchange','ngn_exchange',1000);
  await f.query(`INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,source_bucket,target_bucket,amount_mb)
   VALUES('t','atomic-exchange','issuance','ngn','human','payer','issuance','purchased',1000)`);
  await f.db.exec('COMMIT');
  expect((await f.query("SELECT * FROM agents.mobile_notification_history WHERE title='MB purchase completed'")).rows).toHaveLength(1);
  await f.operation('data-original','redeem',100,'reserved');
  await f.query(`INSERT INTO gb_wallet.data_redemptions(tenant_id,user_id,operation_id,request_sha256,biller_code,item_code,recipient_phone,
   amount_ngn,cost_mb,bundle_revision) VALUES('t','payer','data-original',$1,'biller','item','08000000000','100',100,'fixture')`,['a'.repeat(64)]);
  expect((await f.query("SELECT * FROM agents.mobile_notification_history WHERE title LIKE 'Data purchase%'")).rows).toEqual([]);
  await f.query("UPDATE gb_wallet.data_redemptions SET state='failed',resolved_at=clock_timestamp() WHERE operation_id='data-original'");
  await f.query("UPDATE gb_wallet.data_redemptions SET state='failed' WHERE operation_id='data-original'");
  expect((await f.query("SELECT * FROM agents.mobile_notification_history WHERE title='Data purchase failed'")).rows).toHaveLength(1);
 }finally{await f.db.close();}
},30000);

it('bounds new inquiry submissions while retaining original receipt readback and idempotent retries',async()=>{
 const f=await fixture();try{
  const original=await f.store.submit(payer,'activity',f.entryId,'amount');
  await f.query(`INSERT INTO support.wallet_cases(tenant_id,user_id,target_kind,target_reference,target_fingerprint,category)
   SELECT 't','payer','activity','mb:historic-'||n,repeat('a',60)||lpad(n::text,4,'0'),'other'
   FROM generate_series(1,19)n`);
  await expect(f.store.submit(payer,'activity',f.entryId,'status')).rejects.toMatchObject({status:429});
  expect(await f.store.submit(payer,'activity',f.entryId,'amount')).toMatchObject({id:original.id});
  const first=(await f.store.cases(payer,1,null))[0]!;
  const next=await f.store.cases(payer,30,{at:first.createdAt,id:first.id});
  expect(next).toHaveLength(19);expect(next.map(r=>r.id)).not.toContain(first.id);
 }finally{await f.db.close();}
},30000);
