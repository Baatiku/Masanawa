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
  const scope='retire_'+randomUUID(),owner='seller_'+randomUUID(),taker='buyer_'+randomUUID(),method=randomUUID();
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

});
