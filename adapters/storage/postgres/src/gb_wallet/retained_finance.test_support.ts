import {readFileSync} from 'node:fs';
import type {Pool} from 'pg';
import {PgRetainedFinanceRepository} from './retained_finance.js';
import {createGbWalletActivityRepository} from './activity.js';
export const campaign='10000000-0000-4000-8000-000000000001';
export const post='10000000-0000-4000-8000-000000000002';
export const beforeLate='2026-10-27T10:30:00.000Z',afterLate='2026-10-27T13:00:00.000Z';
export const payer={tenantId:'t',userId:'payer'},referrer={tenantId:'t',userId:'referrer'},reviewer={tenantId:'t',userId:'reviewer'};
export interface FixtureDb{exec(sql:string):Promise<unknown>;query(sql:string,params?:unknown[]):Promise<any>;}
export async function setupRetainedFinance(db:FixtureDb){
 const migration=(name:string)=>readFileSync(new URL('../../../../../packages/'+name,import.meta.url),'utf8');
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA talks;CREATE SCHEMA agents;CREATE SCHEMA feed;
  CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));
  INSERT INTO identity.users VALUES('t','payer','active'),('t','referrer','active'),('t','reviewer','active'),
   ('t','intruder','active'),('t','disabled','disabled'),('other','payer','active');
  CREATE TABLE talks.public_profiles(tenant_id text,user_id text,display_name text,handle text,PRIMARY KEY(tenant_id,user_id));
  INSERT INTO talks.public_profiles VALUES('t','referrer','Private Counterparty Name','private_handle');
  CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,display_name text,visible_in_user_app boolean);
  CREATE TABLE agents.masana_incoming_calls(tenant_id text,user_id text,call_id uuid,state text);`);
 await db.exec(migration('agents/migrations/0014_mobile_notification_policy.sql'));
 await db.exec(migration('agents/migrations/0015_notification_read_at.sql'));
 for(const name of ['0200_gb_wallet_foundation.sql','0202_gb_data_redemptions.sql','0205_ngn_funding_wallet.sql'])
  await db.exec(migration('commerce/migrations/'+name));
 await db.exec(`ALTER TABLE gb_wallet.operations DROP CONSTRAINT operations_operation_kind_check;
  ALTER TABLE gb_wallet.operations ADD CHECK(operation_kind IN('welcome_grant','verified_deposit','send','request_pay','tip',
   'reply','connected_call','redeem','reversal','ngn_exchange','promotion_view'));
  INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
   VALUES('t','human','payer',1000),('t','human','referrer',1000);
  CREATE TABLE feed.promotion_campaigns(tenant_id text,id uuid,post_id uuid,sponsor_id text,price_version text,target_views int);
  CREATE TABLE feed.promotion_view_charges(tenant_id text,view_id uuid,campaign_id uuid,wallet_operation_id text,
   sharer_half_mb int,sharer_id text,created_at timestamptz);
  CREATE TABLE feed.promotion_audit(tenant_id text,id bigint GENERATED ALWAYS AS IDENTITY,campaign_id uuid,
   post_id uuid,actor_id text,action text,details jsonb,occurred_at timestamptz);`);
 await db.query(`INSERT INTO feed.promotion_campaigns VALUES('t',$1,$2,'payer','2026-10-27:1MB',10)`,[campaign,post]);
 async function operation(id:string,kind:string,amount=1,state='completed'){
  await db.query(`INSERT INTO gb_wallet.operations(tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
   operation_kind,amount_mb,state) VALUES('t',$1,'payer',$1,$2,$3,$4,$5)`,[id,'a'.repeat(64),kind,amount,state]);
 }
 async function movement(id:string,to='usage',toId='promotion',fromId='payer',amount=1,at='2026-10-27T10:00:00Z'){
  return db.query(`INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,source_bucket,target_bucket,amount_mb,created_at)
   VALUES('t',$1,'human',$2,$3,$4,'purchased',$5,$6,$7) RETURNING movement_id::text`,[id,fromId,to,toId,to==='usage'?'usage':'purchased',amount,at]);
 }
 for(const [id,at,sharer,view] of [
  ['paid-one','2026-10-27T10:00:00Z','referrer','10000000-0000-4000-8000-000000000011'],
  ['paid-two','2026-10-27T10:01:00Z',null,'10000000-0000-4000-8000-000000000012'],
  ['paid-late','2026-10-27T11:00:00Z','referrer','10000000-0000-4000-8000-000000000013'],
 ] as const){
  await operation(id,'promotion_view');await movement(id,'usage','promotion','payer',1,at);
  await db.query(`INSERT INTO feed.promotion_view_charges VALUES('t',$1,$2,$3,$4,$5,$6)`,[view,campaign,id,sharer?1:0,sharer,at]);
 }
 await db.query(`INSERT INTO feed.promotion_audit(tenant_id,campaign_id,post_id,actor_id,action,details,occurred_at)
  VALUES('t',$1,$2,'payer','budget_reserved','{"targetViews":10}','2026-10-27T09:00:00Z'),
   ('t',$1,$2,'payer','cancelled','{"releasedMb":7}','2026-10-27T12:00:00Z')`,[campaign,post]);
 await operation('send-original','send',25);const sent=await movement('send-original','human','referrer','payer',25);
 await operation('hold-original','redeem',100,'failed');
 await db.exec(`INSERT INTO gb_wallet.reservations(tenant_id,operation_id,account_kind,account_id,purchased_mb,state,resolved_at)
  VALUES('t','hold-original','human','payer',100,'released',clock_timestamp());`);
 // Install after existing records: migrations must not backfill old notifications.
 await db.exec(migration('commerce/migrations/0209_current_wallet_notices.sql'));
 await db.exec(migration('commerce/migrations/0210_wallet_support_cases.sql'));
 await db.exec(migration('feed/migrations/0025_retained_financial_history_indexes.sql'));
 return {operation,movement,entryId:'mb:'+sent.rows[0].movement_id};
}
export function retainedFinanceStore(pool:Pool){
 const activity=createGbWalletActivityRepository(pool);
 return new PgRetainedFinanceRepository(pool,{activity:(a,r)=>activity.find(a,r),hold:(a,r)=>activity.findHold(a,r)});
}
