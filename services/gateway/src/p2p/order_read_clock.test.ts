// Includes cold PostgreSQL WASM initialization on shared hosted runners.
import {PGlite} from '@electric-sql/pglite';
import {expect,it} from 'vitest';
import {createP2pService,type P2pPool,type MsnwEscrowAuthority} from './service.js';
it('reads an owner-bound bank/deadline with database time and never moves escrow',async()=>{
 const db=new PGlite();
 try{
  await db.exec(`CREATE SCHEMA security; CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text); CREATE SCHEMA commerce;
  CREATE TABLE commerce.msnw_p2p_orders(order_id uuid,tenant_id text,offer_id uuid,seller_id text,buyer_id text,amount_micro bigint,fee_micro bigint,fiat_kobo bigint,rate_kobo_per_msnw bigint,payment_deadline timestamptz,state text,version int,receipt_reference text,payment_method_id uuid,created_at timestamptz);
  CREATE TABLE commerce.msnw_p2p_payment_methods(tenant_id text,method_id uuid,bank_name text,account_name text,account_number text,method_type text,owner_id text,verified_at timestamptz,disabled_at timestamptz);
  CREATE TABLE commerce.msnw_p2p_late_payment_cases(case_id uuid,tenant_id text,order_id uuid,state text,created_at timestamptz,updated_at timestamptz);
  INSERT INTO commerce.msnw_p2p_orders VALUES('aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','tenant-a','bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb','seller','buyer',1000000,5000,150000,150000,statement_timestamp()+interval '10 minutes','awaiting_payment',1,NULL,'cccccccc-cccc-4ccc-8ccc-cccccccccccc',statement_timestamp());
  INSERT INTO commerce.msnw_p2p_payment_methods VALUES('tenant-a','cccccccc-cccc-4ccc-8ccc-cccccccccccc','Verified Bank','Seller Name','0123456789','bank','seller',statement_timestamp(),NULL);`);
  await db.exec(`CREATE TABLE commerce.msnw_custody_accounts(tenant_id text,user_id text,available_micro numeric(78,0));
  CREATE TABLE commerce.msnw_p2p_offers(offer_id uuid,tenant_id text,seller_id text,payment_method_id uuid,rate_kobo_per_msnw bigint,min_micro bigint,max_micro bigint,remaining_micro bigint,fee_bps integer,state text,created_at timestamptz);
  INSERT INTO commerce.msnw_custody_accounts VALUES('tenant-a','seller',1005000);
  INSERT INTO commerce.msnw_p2p_offers VALUES('bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb','tenant-a','seller','cccccccc-cccc-4ccc-8ccc-cccccccccccc',150000,1000000,2000000,2000000,50,'active',statement_timestamp());
  INSERT INTO commerce.msnw_p2p_payment_methods VALUES('other-tenant','cccccccc-cccc-4ccc-8ccc-cccccccccccc','Wrong Bank','Other','9999999999','bank','seller',statement_timestamp(),NULL);`);
  const query=async(sql:string,values?:unknown[])=>{const r=await db.query(sql,values);return{rows:r.rows,rowCount:r.affectedRows??r.rows.length};};
  const pool={query,async connect(){throw new Error('Read must not open a write transaction');}} as P2pPool;
  const denied: MsnwEscrowAuthority={async reserve(){throw new Error('no reserve');},async release(){throw new Error('no release');},async refund(){throw new Error('no refund');}};
  const service=createP2pService(pool,denied);
  const value=await service.order({tenantId:'tenant-a',userId:'buyer'},'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa');
  const raw=value as unknown as Record<string,unknown>;
  const remaining=new Date(String(raw.payment_deadline)).getTime()-new Date(String(raw.server_now)).getTime();
  expect(remaining).toBeGreaterThan(590000);expect(remaining).toBeLessThanOrEqual(600000);
  expect(value.payment).toMatchObject({bank_name:'Verified Bank',account_number:'0123456789'});
  const offers=await service.offers({tenantId:'tenant-a',userId:'buyer'});
  expect(offers).toHaveLength(1);expect(offers[0]).toMatchObject({bank_name:'Verified Bank',remaining_micro:'1000000',max_micro:'1000000',completed_orders_30d:0,closed_orders_30d:0});
  expect(await service.offers({tenantId:'tenant-a',userId:'seller'})).toHaveLength(0);
  await db.exec("UPDATE commerce.msnw_custody_accounts SET available_micro=1004999");
  expect(await service.offers({tenantId:'tenant-a',userId:'buyer'})).toHaveLength(0);
  for(const actor of [{tenantId:'tenant-b',userId:'buyer'},{tenantId:'tenant-a',userId:'stranger'}])await expect(service.order(actor,'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa')).rejects.toMatchObject({code:'p2p.not_found'});
 }finally{await db.close();}
}, 30_000);
