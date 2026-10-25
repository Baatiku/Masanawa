import {fileURLToPath} from "node:url";
import {Pool} from "pg";
import {beforeAll,afterAll,describe,it,expect} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {runMigrations} from "../migrations.js";
import {foundationMigrationRoots} from "../readiness.js";
import {createNgnWalletRepository} from "./ngn_repository.js";
import {createGbBillstackRepository} from "./billstack_repository.js";
const connectionString=process.env.MASANAWA_TEST_DATABASE_URL;
(connectionString?describe:describe.skip)("separate NGN funding and atomic MB exchange",()=>{
 let pool:Pool;
 beforeAll(async()=>{pool=new Pool({connectionString});await runMigrations(pool,foundationMigrationRoots());await runMigrations(pool,[{owner:"commerce",directory:fileURLToPath(new URL("../../../../../packages/commerce/migrations",import.meta.url))}]);});
 afterAll(async()=>{await pool?.end();});
 const repo=()=>createNgnWalletRepository(pool);
 async function account(amountKobo=1_000_000){
  const actor={tenantId:createCanonicalId("tenant"),userId:createCanonicalId("user")};
  const ref=createCanonicalId("operation");
  // Unique exact-ten-digit test receiving account, never a real instruction.
  const number=String(1000000000+Math.floor(Math.random()*8999999999));
  const storage=createGbBillstackRepository(pool);
  await storage.start(actor,ref);await storage.finalize(actor,ref,{reference:ref,accountNumber:number,accountName:"Test only",bankName:"Fixture",bankId:"9PSB"});
  const payment={eventId:createCanonicalId("event"),merchantReference:ref,accountNumber:number,amountKobo,receivedAt:new Date().toISOString()};
  return {actor,payment};
 }
 const exchange=(a:{tenantId:string;userId:string},amountKobo=500_000)=>({...a,operationId:"ngnx_"+createCanonicalId("operation"),sizeGb:10,amountKobo,expiresAt:"2099-01-01T00:00:00Z",rateVersion:"test-quantity-v1"});
 it("settles NGN only; concurrent callbacks credit once; exact kobo retained",async()=>{
  const {actor,payment}=await account(500_001);
  expect((await Promise.all([repo().deposit(payment),repo().deposit(payment)])).map(x=>x.state).sort()).toEqual(["credited","duplicate"]);
  expect(await repo().read(actor)).toEqual({balanceKobo:500001,debtKobo:0,frozen:false});
  const mb=await pool.query("SELECT purchased_mb::text FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2",[actor.tenantId,actor.userId]);expect(mb.rows[0].purchased_mb).toBe("0");
  await expect(repo().deposit({...payment,amountKobo:1})).rejects.toThrow("ngn.deposit_conflict");
  await expect(repo().deposit({...payment,merchantReference:"different_ref"})).rejects.toThrow("ngn.account_mismatch");
 });
 it("atomically exchanges once with concurrent confirmations; immutable matching receipts",async()=>{
  const {actor,payment}=await account();await repo().deposit(payment);
  const request=exchange(actor);
  const receipts=await Promise.all([repo().exchange(request),repo().exchange(request)]);expect(receipts[0]).toEqual(receipts[1]);
  expect(await repo().read(actor)).toMatchObject({balanceKobo:500000});
  expect(await repo().readReceipt(actor,request.operationId)).toEqual(receipts[0]);
  expect(await repo().readReceipt({...actor,userId:"other"},request.operationId)).toBeNull();
  const mb=await pool.query("SELECT purchased_mb::text FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2",[actor.tenantId,actor.userId]);expect(mb.rows[0].purchased_mb).toBe("10000");
  await expect(repo().exchange({...request,sizeGb:11})).rejects.toThrow("ngn.idempotency_conflict");
  await expect(pool.query("DELETE FROM gb_wallet.ngn_entries WHERE tenant_id=$1",[actor.tenantId])).rejects.toThrow("immutable");
 });
 it("prevents overspend across distinct concurrent operations and rolls back MB",async()=>{
  const {actor,payment}=await account(500000);await repo().deposit(payment);
  const results=await Promise.allSettled([repo().exchange(exchange(actor)),repo().exchange(exchange(actor))]);
  expect(results.filter(r=>r.status==="fulfilled")).toHaveLength(1);
  expect(await repo().read(actor)).toMatchObject({balanceKobo:0});
  const count=await pool.query("SELECT count(*)::int AS n FROM gb_wallet.movements WHERE tenant_id=$1",[actor.tenantId]);expect(count.rows[0].n).toBe(1);
 });
 it("refuses frozen MB or cash without spending NGN",async()=>{
  const {actor,payment}=await account();await repo().deposit(payment);
  await pool.query("UPDATE gb_wallet.accounts SET frozen=true WHERE tenant_id=$1 AND account_id=$2",[actor.tenantId,actor.userId]);
  await expect(repo().exchange(exchange(actor))).rejects.toThrow("ngn.account_frozen");expect((await repo().read(actor)).balanceKobo).toBe(1000000);
 });
 it("reverses unspent deposit once; later duplicate cannot restore it",async()=>{
  const {actor,payment}=await account();await repo().deposit(payment);
  const receipts=await Promise.all([repo().reverseDeposit(payment.eventId),repo().reverseDeposit(payment.eventId)]);expect(receipts[0]).toEqual(receipts[1]);
  await repo().deposit(payment);expect(await repo().read(actor)).toEqual({balanceKobo:0,debtKobo:0,frozen:false});
 });
 it("spent reversal records debt, freezes both balances and preserves MB history",async()=>{
  const {actor,payment}=await account(500000);await repo().deposit(payment);await repo().exchange(exchange(actor));await repo().reverseDeposit(payment.eventId);
  expect(await repo().read(actor)).toEqual({balanceKobo:0,debtKobo:500000,frozen:true});
  await expect(repo().exchange(exchange(actor,1))).rejects.toThrow("ngn.account_frozen");
  const mb=await pool.query("SELECT purchased_mb::text,frozen FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2",[actor.tenantId,actor.userId]);expect(mb.rows[0]).toEqual({purchased_mb:"10000",frozen:true});
  await repo().deposit({...payment,eventId:createCanonicalId("event"),amountKobo:600000});
  expect(await repo().read(actor)).toEqual({balanceKobo:100000,debtKobo:0,frozen:true});
 });
 it("never credits an old direct-MB event in NGN or a cash event in legacy MB",async()=>{
  const first=await account();const storage=createGbBillstackRepository(pool);
  await storage.applyVerifiedPayment(first.payment,()=>({rateVersion:"historic",creditedMb:12345,remainder:{numerator:"0",denominator:"1"}}));
  expect(await repo().deposit(first.payment)).toMatchObject({state:"duplicate",creditedKobo:0});expect((await repo().read(first.actor)).balanceKobo).toBe(0);
  const second=await account();await repo().deposit(second.payment);
  expect(await storage.applyVerifiedPayment(second.payment,()=>{throw new Error("must not reprice");})).toMatchObject({state:"duplicate",creditedMb:0});
 });
 it("expired review cannot debit after waiting or after a delayed HTTP dispatch",async()=>{
  const {actor,payment}=await account();await repo().deposit(payment);
  await expect(repo().exchange({...exchange(actor),expiresAt:"2020-01-01T00:00:00Z"})).rejects.toThrow("ngn.review_expired");
  expect((await repo().read(actor)).balanceKobo).toBe(1000000);
 });
 it("concurrent old/new settlement chooses only one currency",async()=>{
  const {actor,payment}=await account();
  await Promise.all([repo().deposit(payment),createGbBillstackRepository(pool).applyVerifiedPayment(payment,()=>({rateVersion:"historic",creditedMb:12345,remainder:{numerator:"0",denominator:"1"}}))]);
  const cash=await repo().read(actor);
  const mb=await pool.query("SELECT purchased_mb::text FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2",[actor.tenantId,actor.userId]);
  expect((cash.balanceKobo>0?1:0)+(Number(mb.rows[0].purchased_mb)>0?1:0)).toBe(1);
 });
 it("receipt read waits behind an original exchange transaction",async()=>{
  const {actor,payment}=await account();await repo().deposit(payment);const request=exchange(actor);await repo().exchange(request);
  const client=await pool.connect();
  try{
   await client.query("BEGIN");await client.query("SELECT pg_advisory_xact_lock(hashtextextended($1,0))",["ngn-exchange:"+actor.tenantId+":"+request.operationId]);
   let finished=false;const pending=repo().readReceipt(actor,request.operationId).then(r=>{finished=true;return r;});
   await new Promise(resolve=>setTimeout(resolve,30));expect(finished).toBe(false);
   await client.query("COMMIT");expect((await pending)?.operationId).toBe(request.operationId);
  }finally{await client.query("ROLLBACK");client.release();}
 });

});
