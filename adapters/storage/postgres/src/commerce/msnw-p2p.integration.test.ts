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
  tenant="tenant_"+randomUUID();seller="user_"+randomUUID();
  buyer="user_"+randomUUID();methodId=randomUUID();
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
   const buyerReceipt=await service().receipt(actor,first.orderId);
   expect(buyerReceipt).toMatchObject({
     status:"completed",stage:"release",direction:"buy",
     amountMicro:"1000000",feeMicro:"5000",
     receiptReference:"msnw-p2p:"+first.orderId+":release",
   });
   expect(buyerReceipt.postings).toHaveLength(3);
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
 it("automatically expires unpaid orders once, refunding custody with audit and customer events",async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer};
   const before=await account(seller);
   const order=await service().createOrder(actor,{
     offerId,amountMicro:"250000",idempotencyKey:randomUUID(),
   });
   await pool.query(`UPDATE commerce.msnw_p2p_orders
     SET payment_deadline=statement_timestamp()-interval '1 minute'
     WHERE tenant_id=$1 AND order_id=$2`,[tenant,order.orderId]);
   const result=await pool.query<{expired:number}>(`
     SELECT commerce.msnw_p2p_expire_due_batch(25) AS expired`);
   expect(result.rows[0]?.expired).toBeGreaterThanOrEqual(1);
   expect(await account(seller)).toEqual(before);
   const status=await pool.query(`SELECT state,receipt_reference
     FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2`,
     [tenant,order.orderId]);
   expect(status.rows[0]).toMatchObject({
     state:"expired",receipt_reference:"msnw-p2p:"+order.orderId+":refund",
   });
   const inbox=await pool.query(`SELECT user_id FROM commerce.msnw_p2p_notifications
     WHERE tenant_id=$1 AND order_id=$2 AND action='expired'`,
     [tenant,order.orderId]);
   expect(inbox.rows.map(r=>r.user_id).sort()).toEqual([buyer,seller].sort());
   expect((await pool.query<{expired:number}>(`SELECT commerce.msnw_p2p_expire_due_batch(25) AS expired`))
     .rows[0]?.expired).toBe(0);
 });
 it("preserves refunded escrow while buyer reports late bank transfer and admin closes a case",async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer};
   const beforeSeller=await account(seller),beforeBuyer=await account(buyer);
   const item=await service().createOrder(actor,{
     offerId,amountMicro:"150000",idempotencyKey:randomUUID(),
   });
   await pool.query(`UPDATE commerce.msnw_p2p_orders
     SET payment_deadline=statement_timestamp()-interval '1 minute'
     WHERE tenant_id=$1 AND order_id=$2`,[tenant,item.orderId]);
   await pool.query(`SELECT commerce.msnw_p2p_expire_due_batch(25)`);
   expect(await account(seller)).toEqual(beforeSeller);
   expect(await account(buyer)).toEqual(beforeBuyer);
   await expect(service().reportLatePayment({tenantId:tenant,userId:seller},
     item.orderId,"Paid after deadline via my bank")).rejects
       .toMatchObject({code:"p2p.late_payment_denied"});
   const report=await service().reportLatePayment(actor,item.orderId,
     "The transfer was sent before expiry, bank reference 0149876");
   expect(report).toMatchObject({state:"open",replay:false});
   expect(await service().reportLatePayment(actor,item.orderId,
     "Duplicate bank transfer report")).toMatchObject({
       caseId:report.caseId,replay:true,
     });
   await service().assertEvidenceAllowed(actor,item.orderId);
   await expect(service().assertEvidenceAllowed(
     {tenantId:tenant,userId:seller},item.orderId))
     .rejects.toMatchObject({code:"p2p.evidence_forbidden"});
   expect((await service().order(actor,item.orderId)).latePayment)
     .toMatchObject({state:"open"});
   const operator={tenantId:tenant,userId:"user_"+randomUUID()};
   expect(await service().resolveLatePayment(operator,item.orderId,
     "escalate","Bank verification referral for external dispute"))
     .toMatchObject({state:"escalated"});
   expect(await service().resolveLatePayment(operator,item.orderId,
     "close","Resolved by external bank reversal, no MSNW transfer"))
     .toMatchObject({state:"closed"});
   await expect(service().assertEvidenceAllowed(actor,item.orderId))
     .rejects.toMatchObject({code:"p2p.evidence_forbidden"});
   expect(await account(seller)).toEqual(beforeSeller);
   expect(await account(buyer)).toEqual(beforeBuyer);
   const stages=await pool.query(`SELECT stage FROM commerce.msnw_p2p_custody_journal
     WHERE tenant_id=$1 AND order_id=$2 ORDER BY stage`,[tenant,item.orderId]);
   expect(stages.rows.map(x=>x.stage)).toEqual(["refund","reserve"]);
   const audit=await service().caseFile(operator,item.orderId);
   expect(audit.latePayment).toMatchObject({state:"closed"});
   expect(audit.paymentVerified).toBe(false);
 });
 it("reconciles only the operator tenant and never treats another tenant as a financial obligation",async()=>{
   const result=await pool.query(`SELECT inconsistent_orders::text,
     under_reserved_sellers::text,undelivered_dead_letters::text
     FROM commerce.msnw_p2p_reconciliation_counts($1::text)`,[tenant]);
   expect(result.rows[0]).toMatchObject({
     inconsistent_orders:"0",under_reserved_sellers:"0",
     undelivered_dead_letters:"0",
   });
   const unrelated=await pool.query(`SELECT inconsistent_orders::text,
     under_reserved_sellers::text,undelivered_dead_letters::text
     FROM commerce.msnw_p2p_reconciliation_counts($1::text)`,
     ["tenant_unrelated_read_only"]);
   expect(unrelated.rows[0]).toMatchObject({
     inconsistent_orders:"0",under_reserved_sellers:"0",
     undelivered_dead_letters:"0",
   });
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
   const sellerReceipt=await service().receipt({tenantId:tenant,userId:seller},value.orderId);
   expect(sellerReceipt).toMatchObject({
     status:"cancelled",stage:"refund",direction:"sell",
     receiptReference:"msnw-p2p:"+value.orderId+":refund",
   });
   expect(sellerReceipt.postings).toHaveLength(2);
   const receipt=await pool.query(`SELECT receipt_ref,stage FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1 AND order_id=$2`,[tenant,value.orderId]);
   expect(receipt.rows.map(r=>r.stage).sort()).toEqual(["refund","reserve"]);
   await expect(pool.query(`DELETE FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1 AND order_id=$2`,[tenant,value.orderId]))
     .rejects.toThrow("append-only");
 });
 it("serializes duplicate discussion sends across real connections without moving escrow",async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer};
   const order=await service().createOrder(actor,{offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
   const before=await account(seller),requestKey=randomUUID();
   const results=await Promise.all(Array.from({length:5},()=>service().sendMessage(actor,order.orderId,{body:'Please check your bank.',requestKey})));
   expect(new Set(results.map(m=>m.message_id)).size).toBe(1);
   expect(results.filter(m=>!m.replay)).toHaveLength(1);
   expect((await service().messagesPage(actor,order.orderId)).items).toHaveLength(1);
   expect(await account(seller)).toEqual(before);
   await service().action(actor,order.orderId,'cancel');
   expect(await service().sendMessage(actor,order.orderId,{body:'Please check your bank.',requestKey})).toMatchObject({replay:true});
   await expect(service().sendMessage(actor,order.orderId,{body:'After cancellation',requestKey:randomUUID()}))
     .rejects.toMatchObject({code:'p2p.discussion_read_only'});
 });
 it("races terminal cancellation with discussion safely on the same persisted order lock",async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer};
   const before=await account(seller);
   const order=await service().createOrder(actor,{offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
   const result=await Promise.allSettled([
     service().action(actor,order.orderId,'cancel'),
     service().sendMessage(actor,order.orderId,{body:'Checking this order',requestKey:randomUUID()}),
   ]);
   expect(result[0].status).toBe('fulfilled');
   if(result[1].status==='rejected')expect(result[1].reason).toMatchObject({code:'p2p.discussion_read_only'});
   expect((await service().messagesPage(actor,order.orderId)).canSend).toBe(false);
   expect(await account(seller)).toEqual(before);
 });

});
