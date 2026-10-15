import { randomUUID } from "node:crypto";
import { Pool } from "pg";
import { afterAll,beforeAll,describe,expect,it } from "vitest";
import { runMigrations } from "../migrations.js";
import { platformProductMigrationRoots } from "../readiness.js";
import { createP2pService } from "../../../../../services/gateway/src/p2p/service.js";
import { createMsnwP2pCustodyEscrow } from "../../../../../services/gateway/src/p2p/custody_escrow.js";

const url=process.env.MASANAWA_TEST_DATABASE_URL;
const suite=url?describe:describe.skip;
suite("MSNW P2P real PostgreSQL atomic custody settlement (test DB only)",()=>{
 let pool:Pool,tenant:string,seller:string,buyer:string,methodId:string;
 const price="150000"; // 1500.00 NGN/MSNW in kobo
 beforeAll(async()=>{
  pool=new Pool({connectionString:url});
  await runMigrations(pool,platformProductMigrationRoots());
  tenant=randomUUID();seller=randomUUID();buyer=randomUUID();methodId=randomUUID();
  for(const [user,name] of [[seller,"Escrow Seller"],[buyer,"Escrow Buyer"]]){
    await pool.query(`INSERT INTO security.platform_user_profiles
      (tenant_id,user_id,display_name,email,locale,created_at,updated_at)
      VALUES($1,$2,$3,$4,'en',now(),now())`,
      [tenant,user,name,user+"@example.com"]);
  }
  // ONLY test database seeds synthetic financial balances. NEVER production.
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts
    (tenant_id,user_id,available_micro) VALUES ($1,$2,5000000),($1,$3,0)`,
    [tenant,seller,buyer]);
  await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods
    (method_id,tenant_id,owner_id,method_type,bank_name,bank_code,
      account_name,account_number,verification_reference,verified_at)
    VALUES($1,$2,$3,'ng_bank_transfer','Test Bank','058',
      'Escrow Seller','0123456789','test-verified-method',now())`,
    [methodId,tenant,seller]);
 });
 afterAll(async()=>{await pool?.end()});
 const service=()=>createP2pService(pool,createMsnwP2pCustodyEscrow());
 async function offer(){
  return (await service().createOffer({tenantId:tenant,userId:seller},{
    paymentMethodId:methodId,rateKoboPerMsnw:price,minMicro:"100000",
    maxMicro:"3000000",inventoryMicro:"3000000",
  })).offerId;
 }
 async function account(user:string){
  const r=await pool.query(`SELECT available_micro::text,reserved_micro::text
    FROM commerce.msnw_custody_accounts
    WHERE tenant_id=$1 AND user_id=$2`,[tenant,user]);
  return r.rows[0]!;
 }
 it("reserves exact seller principal + fee atomically, blocks claims from spending and releases once",async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer};
   const key=randomUUID();
   const first=await service().createOrder(actor,{
     offerId,amountMicro:"1000000",idempotencyKey:key,
   });
   expect(first.replay).toBe(false);
   expect(await service().createOrder(actor,{
     offerId,amountMicro:"1000000",idempotencyKey:key,
   })).toEqual({...first,replay:true});
   expect(await account(seller)).toMatchObject({
     available_micro:"3995000",reserved_micro:"1005000",
   });
   expect(await account(buyer)).toMatchObject({
     available_micro:"0",reserved_micro:"0",
   });
   const claim=await service().action(actor,first.orderId,"claim");
   expect(claim.state).toBe("payment_claimed");
   expect(await account(buyer)).toMatchObject({available_micro:"0"});
   await expect(service().action(actor,first.orderId,"confirm",{releaseAuthorized:true}))
     .rejects.toMatchObject({code:"p2p.seller_confirmation_required"});
   const done=await service().action({tenantId:tenant,userId:seller},
     first.orderId,"confirm",{releaseAuthorized:true});
   expect(done.state).toBe("completed");
   await expect(service().action({tenantId:tenant,userId:seller},
     first.orderId,"confirm",{releaseAuthorized:true}))
     .rejects.toMatchObject({code:"p2p.already_terminal"});
   expect(await account(seller)).toMatchObject({
     available_micro:"3995000",reserved_micro:"0",
   });
   expect(await account(buyer)).toMatchObject({available_micro:"1000000"});
   const fee=await pool.query(`SELECT accrued_micro::text FROM commerce.msnw_p2p_fee_liabilities WHERE tenant_id=$1`,[tenant]);
   expect(fee.rows[0].accrued_micro).toBe("5000");
   const postings=await pool.query(`SELECT j.stage,count(p.*)::integer AS count,
     sum(p.delta_micro)::text AS net
     FROM commerce.msnw_p2p_custody_journal j
     JOIN commerce.msnw_p2p_custody_postings p ON p.operation_id=j.operation_id
     WHERE j.tenant_id=$1 AND j.order_id=$2
     GROUP BY j.stage`,[tenant,first.orderId]);
   expect(postings.rows).toEqual(expect.arrayContaining([
     expect.objectContaining({stage:"reserve",count:2,net:"0"}),
     expect.objectContaining({stage:"release",count:3,net:"0"}),
   ]));
 });
 it("refunds unpaid cancellation with zero fees and immutable receipts",async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer};
   const old=await account(seller);
   const value=await service().createOrder(actor,{
     offerId,amountMicro:"500000",idempotencyKey:randomUUID(),
   });
   expect(await account(seller)).toMatchObject({reserved_micro:"502500"});
   await service().action(actor,value.orderId,"cancel");
   expect(await account(seller)).toEqual(old);
   const receipt=await pool.query(`SELECT receipt_ref,stage FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1 AND order_id=$2`,[tenant,value.orderId]);
   expect(receipt.rows.map(r=>r.stage).sort()).toEqual(["refund","reserve"]);
   await expect(pool.query(`DELETE FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1 AND order_id=$2`,[tenant,value.orderId]))
     .rejects.toThrow("append-only");
 });
});
