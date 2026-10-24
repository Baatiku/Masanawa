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

 it('serializes duplicate abuse reports and competing staff reviews without custody movement',async()=>{
   const offerId=await offer(),actor={tenantId:tenant,userId:buyer},maker={tenantId:tenant,userId:seller};
   const order=await service().createOrder(actor,{offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
   const before=await account(seller),message=await service().sendMessage(maker,order.orderId,{body:'Give me private credentials',requestKey:randomUUID()});
   const reports=await Promise.all(Array.from({length:5},()=>service().reportMessage(actor,order.orderId,message.message_id,{category:'scam',details:'Requests private banking credentials.'})));
   expect(new Set(reports.map(r=>r.report_id)).size).toBe(1);expect(reports.filter(r=>!r.replay)).toHaveLength(1);
   const reportId=reports[0]!.report_id;
   const results=await Promise.allSettled([
     service().reviewMessageReport({tenantId:tenant,userId:'staff-one'},reportId,{decision:'remove',reason:'Confirmed private credential request.',version:1}),
     service().reviewMessageReport({tenantId:tenant,userId:'staff-two'},reportId,{decision:'dismiss',reason:'Review found no prohibited content.',version:1}),
   ]);
   expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
   const rejected=results.find(r=>r.status==='rejected') as PromiseRejectedResult;
   expect(rejected.reason).toMatchObject({code:'p2p.stale_message_review'});
   const row=(await pool.query('SELECT state,version,reviewed_by FROM commerce.msnw_p2p_message_reports WHERE report_id=$1',[reportId])).rows[0];
   expect(row.version).toBe(2);
   const page=await service().messagesPage(actor,order.orderId);
   expect(page.items[0]!.body).toBe(row.state==='removed'?'':'Give me private credentials');
   expect(await account(seller)).toEqual(before);
   await service().action(actor,order.orderId,'cancel');
 });

 it('enforces one actor report quota across concurrently reported different orders',async()=>{
   const user='quota_'+randomUUID(),actor={tenantId:tenant,userId:user},maker={tenantId:tenant,userId:seller};
   await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at)
     VALUES($1,$2,'Quota Test',$3,'en',now(),now())`,[tenant,user,user+'@example.com']);
   const offerId=await offer();
   const one=await service().createOrder(actor,{offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
   const two=await service().createOrder(actor,{offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
   const before=await account(seller),messages=[];
   for(let n=0;n<20;n++)messages.push(await service().sendMessage(maker,one.orderId,{body:'Message '+n,requestKey:randomUUID()}));
   const other=await service().sendMessage(maker,two.orderId,{body:'Other order message',requestKey:randomUUID()});
   for(let n=0;n<19;n++)await service().reportMessage(actor,one.orderId,messages[n]!.message_id,{category:'other',details:'Test report for quota boundary.'});
   const results=await Promise.allSettled([
     service().reportMessage(actor,one.orderId,messages[19]!.message_id,{category:'other',details:'One more report on first order.'}),
     service().reportMessage(actor,two.orderId,other.message_id,{category:'other',details:'One more report on second order.'}),
   ]);
   expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
   expect((results.find(r=>r.status==='rejected') as PromiseRejectedResult).reason).toMatchObject({code:'p2p.report_rate_limited',status:429});
   expect((await pool.query('SELECT count(*)::int AS count FROM commerce.msnw_p2p_message_reports WHERE tenant_id=$1 AND reporter_id=$2',[tenant,user])).rows[0].count).toBe(20);
   expect(await service().reportMessage(actor,one.orderId,messages[0]!.message_id,{category:'other',details:'Retry an already accepted report.'})).toMatchObject({replay:true});
   expect(await account(seller)).toEqual(before);
   await service().action(actor,one.orderId,'cancel');await service().action(actor,two.orderId,'cancel');
 });

 it("settles maker-buy ads from actual taker custody, with replay, refund and independent seller keys",async()=>{
   // Synthetic admission and bank proof are restricted to this test database.
   const rights={canMakeBuyOffer:true,canTakeBuyOffer:true,policyReference:"test-only-qualified-buy-policy"};
   const admitted=()=>createP2pService(pool,createMsnwP2pCustodyEscrow(),{buyOfferAdmission:{read:async()=>rights}});
   const makerMethod=randomUUID();
   await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods
     (method_id,tenant_id,owner_id,method_type,bank_name,bank_code,account_name,account_number,verification_reference,verified_at)
     VALUES($1,$2,$3,'ng_bank_transfer','Maker Bank','058','Escrow Buyer','1111111111','test-only-maker-proof',now())`,[makerMethod,tenant,buyer]);
   const maker={tenantId:tenant,userId:buyer},taker={tenantId:tenant,userId:seller};
   const beforeSeller=await account(seller),beforeBuyer=await account(buyer);
   const ad=await admitted().createOffer(maker,{offerSide:'buy',paymentMethodId:makerMethod,rateKoboPerMsnw:price,minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
   expect(await account(seller)).toEqual(beforeSeller);expect(await account(buyer)).toEqual(beforeBuyer);
   const key=randomUUID(),input={offerId:ad.offerId,paymentMethodId:methodId,amountMicro:'100000',idempotencyKey:key};
   const duplicate=await Promise.all([admitted().createOrder(taker,input),admitted().createOrder(taker,input)]);
   expect(duplicate[0].orderId).toBe(duplicate[1].orderId);
   expect(duplicate.filter(x=>!x.replay)).toHaveLength(1);
   const id=duplicate[0].orderId;
   expect(await account(seller)).toMatchObject({available_micro:String(BigInt(beforeSeller.available_micro)-100500n),reserved_micro:'100500'});
   expect(await account(buyer)).toEqual(beforeBuyer);
   const roles=await pool.query(`SELECT seller_id,buyer_id,payment_method_id,request_actor_id FROM commerce.msnw_p2p_orders WHERE order_id=$1`,[id]);
   expect(roles.rows[0]).toMatchObject({seller_id:seller,buyer_id:buyer,payment_method_id:methodId,request_actor_id:seller});
   await expect(admitted().action(maker,id,'confirm',{releaseAuthorized:true})).rejects.toMatchObject({code:'p2p.seller_confirmation_required'});
   await admitted().action(maker,id,'claim');
   await admitted().action(taker,id,'confirm',{releaseAuthorized:true});
   expect(await account(buyer)).toMatchObject({available_micro:String(BigInt(beforeBuyer.available_micro)+100000n)});
   expect(await admitted().receipt(taker,id)).toMatchObject({direction:'sell',stage:'release',feeMicro:'500'});
   const balanced=await pool.query(`SELECT sum(p.delta_micro)::text AS net FROM commerce.msnw_p2p_custody_postings p JOIN commerce.msnw_p2p_custody_journal j USING(operation_id) WHERE j.order_id=$1`,[id]);
   expect(balanced.rows[0].net).toBe('0');
   rights.canTakeBuyOffer=false;rights.canMakeBuyOffer=false;
   expect(await admitted().createOrder(taker,input)).toMatchObject({orderId:id,replay:true});
   await expect(admitted().createOrder(taker,{...input,idempotencyKey:randomUUID()})).rejects.toMatchObject({code:'p2p.buy_offer_ineligible'});
   rights.canTakeBuyOffer=true;rights.canMakeBuyOffer=true;
   const next=await admitted().createOrder(taker,{...input,idempotencyKey:randomUUID()});
   const reservedBeforeCancel=await account(seller);
   await admitted().action(maker,next.orderId,'cancel');
   expect(await account(seller)).toMatchObject({available_micro:String(BigInt(reservedBeforeCancel.available_micro)+100500n),reserved_micro:'0'});
   expect((await pool.query(`SELECT remaining_micro::text AS remaining FROM commerce.msnw_p2p_offers WHERE offer_id=$1`,[ad.offerId])).rows[0].remaining).toBe('1900000');
   // A second seller can take this buy ad with the SAME original key.
   // A distinct taker bank and custody account keeps request identity per initiator.
   const third='user_'+randomUUID(),thirdMethod=randomUUID();
   await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Third Seller',$3,'en',now(),now())`,[tenant,third,third+'@example.com']);
   await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,201000)`,[tenant,third]);
   await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods(method_id,tenant_id,owner_id,method_type,bank_name,account_name,account_number,verification_reference,verified_at) VALUES($1,$2,$3,'ng_bank_transfer','Third Bank','Third Seller','3333333333','test-only-third-proof',now())`,[thirdMethod,tenant,third]);
   const thirdActor={tenantId:tenant,userId:third};
   const independent=await admitted().createOrder(thirdActor,{...input,paymentMethodId:thirdMethod});
   expect(independent.orderId).not.toBe(id);
   expect(await admitted().orderByRequest(thirdActor,key)).toMatchObject({orderId:independent.orderId});
   expect(await admitted().orderByRequest(taker,key)).toMatchObject({orderId:id});
   await expect(admitted().orderByRequest(maker,key)).rejects.toMatchObject({status:404});
   await admitted().action(maker,independent.orderId,'cancel');
   const thirdBefore=await account(third),demandBefore=(await pool.query('SELECT remaining_micro::text FROM commerce.msnw_p2p_offers WHERE offer_id=$1',[ad.offerId])).rows[0];
   await expect(admitted().createOrder(thirdActor,{...input,amountMicro:'1000000',paymentMethodId:thirdMethod,idempotencyKey:randomUUID()})).rejects.toThrow();
   expect(await account(third)).toEqual(thirdBefore);
   expect((await pool.query('SELECT remaining_micro::text FROM commerce.msnw_p2p_offers WHERE offer_id=$1',[ad.offerId])).rows[0]).toEqual(demandBefore);
   await pool.query('UPDATE commerce.msnw_p2p_payment_methods SET disabled_at=now() WHERE method_id=$1',[thirdMethod]);
   await expect(admitted().createOrder(thirdActor,{...input,paymentMethodId:thirdMethod,idempotencyKey:randomUUID()})).rejects.toMatchObject({code:'p2p.verified_method_required'});
   expect(await admitted().createOrder(thirdActor,{...input,paymentMethodId:thirdMethod})).toMatchObject({orderId:independent.orderId,replay:true});
 });

 it('serializes maker edits with stock and quotes without rewriting accepted escrow or bank instructions',async()=>{
   const svc=service(),maker={tenantId:tenant,userId:seller},taker={tenantId:tenant,userId:buyer};
   const ad=await offer(),before=await account(seller);
   const oldQuote=await svc.quote(taker,{offerId:ad,amountMicro:'100000'});
   const accepted=await svc.createOrder(taker,{offerId:ad,amountMicro:'100000',idempotencyKey:randomUUID(),expectedTermsRevision:oldQuote.termsRevision});
   const original=(await pool.query('SELECT rate_kobo_per_msnw::text,payment_method_id,amount_micro::text FROM commerce.msnw_p2p_orders WHERE order_id=$1',[accepted.orderId])).rows[0];
   const bank=randomUUID();
   await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods(method_id,tenant_id,owner_id,method_type,bank_name,account_name,account_number,verification_reference,verified_at) VALUES($1,$2,$3,'ng_bank_transfer','Edited Test Bank','Escrow Seller','4444444444','test-only-edit-bank',now())`,[bank,tenant,seller]);
   const snapshot=await svc.offerForEdit(maker,ad),balanceBeforeEdit=await account(seller),key=randomUUID();
   const input={offerId:ad,requestKey:key,expectedRevision:Number(snapshot.revision),paymentMethodId:bank,rateKoboPerMsnw:'160000',minMicro:'100000',maxMicro:'1000000',remainingMicro:'1000000'};
   const duplicate=await Promise.all([svc.editOffer(maker,input),svc.editOffer(maker,input)]);
   expect(duplicate.filter(x=>!x.replay)).toHaveLength(1);expect(duplicate[0].revision).toBe(duplicate[1].revision);
   expect(await account(seller)).toEqual(balanceBeforeEdit);
   expect((await pool.query('SELECT rate_kobo_per_msnw::text,payment_method_id,amount_micro::text FROM commerce.msnw_p2p_orders WHERE order_id=$1',[accepted.orderId])).rows[0]).toEqual(original);
   expect((await svc.order(taker,accepted.orderId)).payment).toMatchObject({account_number:'0123456789'});
   await expect(svc.createOrder(taker,{offerId:ad,amountMicro:'100000',idempotencyKey:randomUUID(),expectedTermsRevision:oldQuote.termsRevision})).rejects.toMatchObject({code:'p2p.quote_changed'});
   await expect(svc.createOrder(taker,{offerId:ad,amountMicro:'100000',idempotencyKey:randomUUID()})).rejects.toMatchObject({code:'p2p.quote_changed'});
   const fresh=await svc.quote(taker,{offerId:ad,amountMicro:'100000'});
   const second=await svc.createOrder(taker,{offerId:ad,amountMicro:'100000',idempotencyKey:randomUUID(),expectedTermsRevision:fresh.termsRevision});
   expect((await svc.order(taker,second.orderId)).payment).toMatchObject({account_number:'4444444444'});
   const latest=await svc.offerForEdit(maker,ad);
   const competing=await Promise.allSettled([
     svc.editOffer(maker,{...input,requestKey:randomUUID(),expectedRevision:Number(latest.revision),rateKoboPerMsnw:'170000'}),
     svc.editOffer(maker,{...input,requestKey:randomUUID(),expectedRevision:Number(latest.revision),rateKoboPerMsnw:'180000'}),
   ]);
   expect(competing.filter(x=>x.status==='fulfilled')).toHaveLength(1);
   expect((competing.find(x=>x.status==='rejected') as PromiseRejectedResult).reason).toMatchObject({code:'p2p.offer_edit_stale'});
   await pool.query('UPDATE commerce.msnw_p2p_payment_methods SET disabled_at=now() WHERE method_id=$1',[bank]);
   expect(await svc.editOffer(maker,input)).toMatchObject({replay:true});
   expect(await svc.offerEditByRequest(maker,key)).toMatchObject({offerId:ad,revision:duplicate[0].revision});
   await expect(svc.offerEditByRequest(taker,key)).rejects.toMatchObject({status:404});
   await svc.action(taker,accepted.orderId,'cancel');await svc.action(taker,second.orderId,'cancel');
   expect(await account(seller)).toEqual(before);
   await expect(pool.query('UPDATE commerce.msnw_p2p_offer_edits SET result_revision=99 WHERE tenant_id=$1',[tenant])).rejects.toThrow('immutable');
 });

 it('pages price-ranked eligible ads and exact kobo budgets on full PostgreSQL without custody writes',async()=>{
   const marketTenant='tenant_'+randomUUID(),maker='user_'+randomUUID(),taker='user_'+randomUUID(),method=randomUUID();
   for(const user of [maker,taker])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Market SQL Test',$3,'en',now(),now())`,[marketTenant,user,user+'@example.com']);
   await pool.query('INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,40000000)',[marketTenant,maker]);
   await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods(method_id,tenant_id,owner_id,method_type,bank_name,account_name,account_number,verification_reference,verified_at) VALUES($1,$2,$3,'ng_bank_transfer','Market Test Bank','Market SQL Test','5555555555','test-only-market-proof',now())`,[method,marketTenant,maker]);
   const svc=service(),makerActor={tenantId:marketTenant,userId:maker},actor={tenantId:marketTenant,userId:taker};
   for(let n=25;n>0;n--)await svc.createOffer(makerActor,{paymentMethodId:method,rateKoboPerMsnw:String(n*100),minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
   const one=await svc.offersPage(actor,{sort:'best_price'}),two=await svc.offersPage(actor,{sort:'best_price',cursor:one.nextCursor!});
   expect([...one.items,...two.items].map(x=>x.rate_kobo_per_msnw)).toEqual(Array.from({length:25},(_,i)=>String((i+1)*100)));
   expect(new Set([...one.items,...two.items].map(x=>x.offer_id)).size).toBe(25);
   const budget=await svc.offersPage(actor,{sort:'best_price',fiatKobo:'15'});
   expect(budget.items).toHaveLength(1);expect(budget.items[0]).toMatchObject({rate_kobo_per_msnw:'100',budget_amount_micro:'150000'});
   expect((await svc.offersPage(actor,{fiatKobo:'9'})).items).toHaveLength(0);
   const balances=(await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1',[marketTenant])).rows;
   expect(balances).toEqual([{available_micro:'40000000',reserved_micro:'0'}]);
   expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[marketTenant])).rows[0].n).toBe(0);
 });

 it('serializes owner method retirement with new reservations while preserving accepted bank instructions',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),method=randomUUID();
  for(const [user,name] of [[owner,'Synthetic Seller'],[taker,'Synthetic Buyer']])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,$3,$4,'en',now(),now())`,[scope,user,name,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods(method_id,tenant_id,owner_id,method_type,bank_name,account_name,account_number,verification_reference,verified_at)
   VALUES($1,$2,$3,'ng_bank_transfer','Retirement Test Bank','Synthetic Owner','1234567890','retire-test-proof',now())`,[method,scope,owner]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  const ad=await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  const original={offerId:ad.offerId,amountMicro:'100000',idempotencyKey:randomUUID()};
  const accepted=await api.createOrder(buyer,original),before=await api.order(buyer,accepted.orderId);
  const race=await Promise.allSettled([api.disableMethod(maker,method),api.disableMethod(maker,method),api.createOrder(buyer,{...original,idempotencyKey:randomUUID()})]);
  expect(race[0]?.status).toBe('fulfilled');expect(race[1]?.status).toBe('fulfilled');
  if(race[2]?.status==='rejected')expect(race[2].reason).toMatchObject({code:'p2p.offer_unavailable'});
  const count=race[2]?.status==='fulfilled'?2:1;
  expect((await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[scope,owner])).rows[0]).toEqual({available_micro:String(2000000-count*100500),reserved_micro:String(count*100500)});
  expect(await api.createOrder(buyer,original)).toMatchObject({orderId:accepted.orderId,replay:true});
  const after=await api.order(buyer,accepted.orderId);expect(after.payment).toEqual(before.payment);expect(after.payment.account_number).toBe('1234567890');
  expect(await api.methods(maker)).toEqual([]);expect((await api.managedMethods(maker)).items[0]?.account_last_four).toBe('7890');
  const first=(race[0] as PromiseFulfilledResult<Record<string,unknown>>).value;
  expect(await api.disableMethod(maker,method)).toEqual(first);
  await expect(api.quote(buyer,{offerId:ad.offerId,amountMicro:'100000'})).rejects.toMatchObject({code:'p2p.offer_unavailable'});
 });

 it('serializes private default selection and removes only unused methods without financial mutation',async()=>{
  const api=service(),actor={tenantId:tenant,userId:seller},second=randomUUID();
  const balances=(await pool.query('SELECT user_id,available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 ORDER BY user_id',[tenant])).rows;
  const journal=(await pool.query('SELECT count(*)::int AS total FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[tenant])).rows[0];
  await api.recordVerifiedMethod(actor,{methodId:second,bankName:'Synthetic Second Bank',bankCode:'058',accountName:'Escrow Seller',accountNumber:'0123456788',verificationReference:'test-preferences-proof'});
  await Promise.all([api.preferMethod(actor,methodId),api.preferMethod(actor,second)]);
  expect((await api.methods(actor)).filter(m=>m.preferred)).toHaveLength(1);
  await api.renameMethod(actor,methodId,'My reserve bank');
  await expect(api.archiveMethod(actor,methodId)).rejects.toMatchObject({code:'p2p.method_in_use'});
  const orderId=(await pool.query('SELECT order_id FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND payment_method_id=$2 LIMIT 1',[tenant,methodId])).rows[0].order_id;
  expect((await api.order(actor,orderId)).payment).toMatchObject({bank_name:'Test Bank',account_number:'0123456789',account_name:'Escrow Seller'});
  const archived=await api.archiveMethod(actor,second);expect(await api.archiveMethod(actor,second)).toEqual(archived);
  expect((await api.managedMethods(actor)).items.some(m=>m.method_id===second)).toBe(false);
  expect((await pool.query('SELECT account_number,archived_at FROM commerce.msnw_p2p_payment_methods WHERE method_id=$1',[second])).rows[0]).toMatchObject({account_number:'0123456788'});
  expect((await pool.query('SELECT user_id,available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 ORDER BY user_id',[tenant])).rows).toEqual(balances);
  expect((await pool.query('SELECT count(*)::int AS total FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[tenant])).rows[0]).toEqual(journal);
 });

 it('serializes cross-ad reporting quotas and independent review without changing funds or ads',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic Report Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},actor={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'Report Test Bank',bankCode:'058',accountName:'Synthetic Report Test',accountNumber:'0123456789',verificationReference:'test-report-proof'});
  const ids:string[]=[];
  for(let n=0;n<21;n++)ids.push((await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'100000',inventoryMicro:'100000'})).offerId);
  for(const id of ids.slice(0,19))await pool.query(`INSERT INTO commerce.msnw_p2p_ad_reports(report_id,tenant_id,offer_id,maker_id,reporter_id,category,details,public_snapshot) VALUES($1,$2,$3,$4,$5,'other','Synthetic report fixture','{}'::jsonb)`,[randomUUID(),scope,id,owner,taker]);
  const before=(await pool.query('SELECT offer_id,remaining_micro::text,state FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 ORDER BY offer_id',[scope])).rows;
  const race=await Promise.allSettled(ids.slice(19).map(id=>api.reportAd(actor,id,{category:'misleading',details:'Synthetic misleading advertisement report'})));
  expect(race.filter(x=>x.status==='fulfilled')).toHaveLength(1);
  expect((race.find(x=>x.status==='rejected') as PromiseRejectedResult).reason).toMatchObject({code:'p2p.report_rate_limited',status:429});
  const accepted=(race.find(x=>x.status==='fulfilled') as PromiseFulfilledResult<Record<string,unknown>>).value;
  expect(await api.reportAd(actor,String(accepted.offer_id),{category:'other',details:'A different retry explanation'})).toMatchObject({report_id:accepted.report_id,replay:true});
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_ad_reports WHERE tenant_id=$1',[scope])).rows[0].n).toBe(20);
  const review=await Promise.allSettled([
   api.reviewAdReport({tenantId:scope,userId:'user_'+randomUUID()},String(accepted.report_id),{decision:'dismiss',reason:'Synthetic independent dismissal reason',version:1}),
   api.reviewAdReport({tenantId:scope,userId:'user_'+randomUUID()},String(accepted.report_id),{decision:'refer',reason:'Synthetic independent referral reason',version:1}),
  ]);
  expect(review.filter(x=>x.status==='fulfilled')).toHaveLength(1);
  expect((review.find(x=>x.status==='rejected') as PromiseRejectedResult).reason).toMatchObject({code:'p2p.stale_ad_report_review',status:409});
  expect((await pool.query('SELECT offer_id,remaining_micro::text,state FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 ORDER BY offer_id',[scope])).rows).toEqual(before);
  expect((await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 ORDER BY available_micro DESC',[scope])).rows).toEqual([{available_micro:'2000000',reserved_micro:'0'},{available_micro:'0',reserved_micro:'0'}]);
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n).toBe(0);
  expect((await pool.query('SELECT account_number FROM commerce.msnw_p2p_payment_methods WHERE method_id=$1',[method])).rows[0].account_number).toBe('0123456789');
 });

 it('serializes duplicate bulk pauses with reservations and never repauses resumed or later ads on replay',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic Pause Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'Pause Test Bank',bankCode:'058',accountName:'Synthetic Pause Test',accountNumber:'0123456789',verificationReference:'test-pause-proof'});
  const input={paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'};
  const one=await api.createOffer(maker,input);await api.createOffer(maker,input);
  const accepted=await api.createOrder(buyer,{offerId:one.offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
  const payment=(await api.order(buyer,accepted.orderId)).payment,key=randomUUID();
  const race=await Promise.allSettled([api.pauseAllAds(maker,key),api.pauseAllAds(maker,key),api.createOrder(buyer,{offerId:one.offerId,amountMicro:'100000',idempotencyKey:randomUUID()})]);
  expect(race[0].status).toBe('fulfilled');expect(race[1].status).toBe('fulfilled');
  const receipts=race.slice(0,2).map(x=>(x as PromiseFulfilledResult<Record<string,unknown>>).value);
  expect(receipts[0]).toMatchObject({paused_count:2});expect(receipts[1]).toMatchObject({paused_count:2,operation_id:receipts[0]!.operation_id});expect(receipts.filter(x=>!x.replay)).toHaveLength(1);
  if(race[2].status==='rejected')expect(race[2].reason).toMatchObject({code:'p2p.offer_unavailable'});
  const orders=race[2].status==='fulfilled'?2:1;
  expect((await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[scope,owner])).rows[0]).toEqual({available_micro:String(2000000-orders*100500),reserved_micro:String(orders*100500)});
  expect((await api.order(buyer,accepted.orderId)).payment).toEqual(payment);
  await api.resumeOffer(maker,one.offerId);const later=await api.createOffer(maker,input);
  expect(await api.pauseAllAds(maker,key)).toMatchObject({paused_count:2,replay:true,operation_id:receipts[0]!.operation_id});
  expect((await pool.query('SELECT state FROM commerce.msnw_p2p_offers WHERE offer_id=ANY($1::uuid[])',[[one.offerId,later.offerId]])).rows).toEqual([{state:'active'},{state:'active'}]);
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_bulk_pauses WHERE tenant_id=$1',[scope])).rows[0].n).toBe(1);
 });

 it('filters participant order and owner ad history before lossless keyset paging without moving custody',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic History Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'History Test Bank',bankCode:'058',accountName:'Synthetic History Test',accountNumber:'0123456789',verificationReference:'test-history-proof'});
  const ad=await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  // Synthetic read fixtures only; no financial settlement is represented.
  for(let n=0;n<45;n++)await pool.query(`INSERT INTO commerce.msnw_p2p_orders(order_id,tenant_id,offer_id,seller_id,buyer_id,payment_method_id,amount_micro,fee_micro,fiat_kobo,rate_kobo_per_msnw,payment_deadline,idempotency_key,state,created_at)
   VALUES($1,$2,$3,$4,$5,$6,100000,500,10,100,now()+interval '1 hour',$7,$8,$9::timestamptz)`,[randomUUID(),scope,ad.offerId,owner,taker,method,randomUUID(),n%2?'cancelled':'disputed',n<40?'2026-10-01T23:59:59.123456Z':'2026-10-02T00:00:00.000000Z']);
  const filters={direction:'buy',fromDate:'2026-10-01',toDate:'2026-10-01'};
  const first=await api.ordersPage(buyer,filters),second=await api.ordersPage(buyer,{...filters,cursor:first.nextCursor!});
  expect(first.items).toHaveLength(20);expect(second.items).toHaveLength(20);expect(second.nextCursor).toBeNull();expect(new Set([...first.items,...second.items].map(x=>x.order_id)).size).toBe(40);
  expect((await api.ordersPage(buyer,{...filters,status:'disputed'})).items).toHaveLength(20);
  await expect(api.ordersPage(maker,{...filters,cursor:first.nextCursor!})).rejects.toMatchObject({status:422});
  await expect(api.ordersPage(buyer,{...filters,status:'disputed',cursor:first.nextCursor!})).rejects.toMatchObject({status:422});
  expect((await api.ordersPage(buyer,{fromDate:'2026-10-02',toDate:'2026-10-02'})).items).toHaveLength(5);
  for(let n=0;n<24;n++)await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  await pool.query(`UPDATE commerce.msnw_p2p_offers SET state='paused',created_at='2026-10-03T12:00:00.999999Z' WHERE tenant_id=$1`,[scope]);
  const ads=await api.myOffersPage(maker,{status:'paused',direction:'sell',toDate:'2026-10-03'}),older=await api.myOffersPage(maker,{status:'paused',direction:'sell',toDate:'2026-10-03',cursor:ads.nextCursor!});
  expect(ads.items).toHaveLength(20);expect(older.items).toHaveLength(5);
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n).toBe(0);
  expect((await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[scope,owner])).rows[0]).toEqual({available_micro:'2000000',reserved_micro:'0'});
 });

 it('serializes typed dispute opening while retaining escrow and original recovery after canonical refund',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),staff='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker,staff])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic Support Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'Support Test Bank',bankCode:'058',accountName:'Synthetic Support Test',accountNumber:'0123456789',verificationReference:'test-support-proof'});
  const ad=await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  const order=await api.createOrder(buyer,{offerId:ad.offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
  const before=(await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[scope,owner])).rows[0];
  const choices=[{actor:maker,category:'no_payment'},{actor:buyer,category:'asset_not_received'}] as const;
  const race=await Promise.allSettled(choices.map(x=>api.action(x.actor,order.orderId,'dispute',{disputeCategory:x.category,explanation:'Synthetic private opening evidence'})));
  expect(race.filter(x=>x.status==='fulfilled')).toHaveLength(1);expect((race.find(x=>x.status==='rejected') as PromiseRejectedResult).reason).toMatchObject({code:'p2p.dispute_denied'});
  const index=race.findIndex(x=>x.status==='fulfilled'),winner=choices[index]!;
  expect((await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[scope,owner])).rows[0]).toEqual(before);
  expect(before).toEqual({available_micro:'1899500',reserved_micro:'100500'});
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_dispute_submissions WHERE tenant_id=$1',[scope])).rows[0].n).toBe(1);
  const peer=winner.actor.userId===owner?buyer:maker;
  expect((await api.orderSupport(peer,order.orderId)).submission).toMatchObject({details:null,is_own:false});
  await api.action({tenantId:scope,userId:staff},order.orderId,'refund',{isOperator:true,explanation:'Independent synthetic unpaid-order refund'});
  const count=(await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n;
  expect(await api.action(winner.actor,order.orderId,'dispute',{disputeCategory:winner.category,explanation:'Synthetic private opening evidence'})).toMatchObject({state:'cancelled',replay:true});
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n).toBe(count);
  expect((await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[scope,owner])).rows[0]).toEqual({available_micro:'2000000',reserved_micro:'0'});
 });

 it('serializes same-content evidence retries and preserves original recovery after refund',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),staff='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker,staff])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic Support Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'Support Test Bank',bankCode:'058',accountName:'Synthetic Support Test',accountNumber:'0123456789',verificationReference:'test-support-proof'});
  const ad=await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  const order=await api.createOrder(buyer,{offerId:ad.offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
  await api.action(buyer,order.orderId,'dispute',{explanation:'Synthetic attachment dispute'});
  const input={objectRef:'p2p/private/original_100_pdf',sha256:'a'.repeat(64),verifiedOwnerId:taker};
  const race=await Promise.all([api.recordEvidence(buyer,order.orderId,input),api.recordEvidence(buyer,order.orderId,input)]);
  expect(new Set(race.map(x=>x.evidenceId)).size).toBe(1);expect(race.filter(x=>!x.replay)).toHaveLength(1);
  const peer=await api.recordEvidence(maker,order.orderId,{...input,verifiedOwnerId:owner});expect(peer.evidenceId).not.toBe(race[0]!.evidenceId);
  expect((await pool.query("SELECT count(*)::int AS n FROM commerce.msnw_p2p_events WHERE tenant_id=$1 AND action='evidence_recorded'",[scope])).rows[0].n).toBe(2);
  await api.action({tenantId:scope,userId:staff},order.orderId,'refund',{isOperator:true,explanation:'Synthetic attachment qualification refund'});
  const before=(await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n;
  expect(await api.recordEvidence(buyer,order.orderId,input)).toMatchObject({evidenceId:race[0]!.evidenceId,replay:true,state:'cancelled'});
  expect(await api.evidenceByDigest(buyer,order.orderId,input.sha256)).toMatchObject({evidenceId:race[0]!.evidenceId,state:'cancelled'});
  await expect(api.evidenceByDigest({tenantId:'foreign',userId:taker},order.orderId,input.sha256)).rejects.toMatchObject({status:404});
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n).toBe(before);
 });


 it('pages complete public support events with tied PostgreSQL microseconds and actor-bound cursors',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),staff='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker,staff])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic Support Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'Support Test Bank',bankCode:'058',accountName:'Synthetic Support Test',accountNumber:'0123456789',verificationReference:'test-support-proof'});
  const ad=await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  const order=await api.createOrder(buyer,{offerId:ad.offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
  for(let n=0;n<105;n++)await pool.query(`INSERT INTO commerce.msnw_p2p_events(event_id,tenant_id,order_id,actor_id,action,to_state,reason,created_at) VALUES($1,$2,$3,$4,'evidence_recorded','disputed','Private assessment','2026-01-01T00:00:00.123456Z')`,[randomUUID(),scope,order.orderId,staff]);
  const first=await api.supportEvents(buyer,order.orderId),second=await api.supportEvents(buyer,order.orderId,first.nextCursor!),third=await api.supportEvents(buyer,order.orderId,second.nextCursor!);
  expect([first.events.length,second.events.length,third.events.length]).toEqual([50,50,6]);expect(third.nextCursor).toBeNull();
  expect(new Set([...first.events,...second.events,...third.events].map(x=>x.event_id)).size).toBe(106);
  expect(JSON.stringify(first)).not.toMatch(/Private assessment|reason|actor_id|account_number|sha256/);
  await expect(api.supportEvents(maker,order.orderId,first.nextCursor!)).rejects.toMatchObject({status:422});
  const context=await api.orderSupport(buyer,order.orderId);expect(context.nextCursor).toBe(first.nextCursor);
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n).toBe(1);
 });


 it('serializes original private evidence requests and responses without changing escrow',async()=>{
  const scope='tenant_'+randomUUID(),owner='user_'+randomUUID(),taker='user_'+randomUUID(),staff='user_'+randomUUID(),method=randomUUID();
  for(const user of [owner,taker,staff])await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Synthetic Support Test',$3,'en',now(),now())`,[scope,user,user+'@example.com']);
  await pool.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,2000000),($1,$3,0)`,[scope,owner,taker]);
  const api=service(),maker={tenantId:scope,userId:owner},buyer={tenantId:scope,userId:taker};
  await api.recordVerifiedMethod(maker,{methodId:method,bankName:'Support Test Bank',bankCode:'058',accountName:'Synthetic Support Test',accountNumber:'0123456789',verificationReference:'test-support-proof'});
  const ad=await api.createOffer(maker,{paymentMethodId:method,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  const order=await api.createOrder(buyer,{offerId:ad.offerId,amountMicro:'100000',idempotencyKey:randomUUID()});
  const operator={tenantId:scope,userId:staff};await api.action(buyer,order.orderId,'dispute',{explanation:'Synthetic private evidence request test'});
  const input={recipient:'buyer',instruction:'Provide a synthetic bank reference for independent support review.',windowHours:24};
  const requests=await Promise.all([api.requestSupportEvidence(operator,order.orderId,input),api.requestSupportEvidence(operator,order.orderId,input)]);
  expect(new Set(requests.map(x=>x.requestId)).size).toBe(1);expect(requests.filter(x=>!x.replay)).toHaveLength(1);
  expect((await api.supportRequests(maker,order.orderId)).items).toEqual([]);
  const requestId=String(requests[0]!.requestId),response='Synthetic private participant response for support review.';
  const replies=await Promise.all([api.respondSupportEvidence(buyer,order.orderId,requestId,response),api.respondSupportEvidence(buyer,order.orderId,requestId,response)]);
  expect(new Set(replies.map(x=>x.responseId)).size).toBe(1);expect(replies.filter(x=>!x.replay)).toHaveLength(1);
  const before=(await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n;expect(before).toBe(1);
  await api.action(operator,order.orderId,'refund',{isOperator:true,explanation:'Synthetic independent refund after support evidence'});
  expect(await api.requestSupportEvidence(operator,order.orderId,input)).toMatchObject({requestId:requests[0]!.requestId,replay:true});expect(await api.respondSupportEvidence(buyer,order.orderId,requestId,response)).toMatchObject({responseId:replies[0]!.responseId,replay:true});
  expect((await api.supportRequests(operator,order.orderId,true)).items[0]).toMatchObject({response_details:response,is_own:true});
  await expect(api.supportRequests({tenantId:'foreign',userId:taker},order.orderId)).rejects.toMatchObject({status:404});
  expect((await pool.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_custody_journal WHERE tenant_id=$1',[scope])).rows[0].n).toBe(2);
 });


});
