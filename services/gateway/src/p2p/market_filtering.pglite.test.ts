import Fastify from "fastify";
import {registerP2pRoutes} from "./routes.js";
import { PGlite } from "@electric-sql/pglite";
import { describe, expect, it } from "vitest";
import {
  createP2pService,
  type P2pPool,
  type MsnwEscrowAuthority,
} from "./service.js";

const tenant = "tenant-a";
const seller = "seller-a";
const buyer = "buyer-a";
const payment = "cccccccc-cccc-4ccc-8ccc-cccccccccccc";
function uuid(number: number): string {
  return `bbbbbbbb-bbbb-4bbb-8bbb-${number.toString(16).padStart(12, "0")}`;
}

async function fixture() {
  const db = new PGlite();
  await db.exec(`
    CREATE SCHEMA security; CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text); CREATE SCHEMA commerce;
    CREATE TABLE commerce.msnw_custody_accounts (
      tenant_id text, user_id text, available_micro numeric(78,0)
    );
    CREATE TABLE commerce.msnw_p2p_payment_methods (
      tenant_id text, method_id uuid, bank_name text, account_name text,
      account_number text, method_type text, owner_id text,
      verified_at timestamptz, disabled_at timestamptz
    );
    CREATE TABLE commerce.msnw_p2p_offers (
      offer_id uuid, tenant_id text, seller_id text, payment_method_id uuid,
      rate_kobo_per_msnw bigint, min_micro bigint, max_micro bigint,
      remaining_micro bigint, fee_bps integer, state text, offer_side text DEFAULT 'sell',terms_revision integer NOT NULL DEFAULT 1,
      created_at timestamptz
    );
    CREATE TABLE commerce.msnw_p2p_orders (
      order_id uuid, tenant_id text, offer_id uuid, seller_id text,
      buyer_id text, amount_micro bigint, fee_micro bigint, fiat_kobo bigint,
      rate_kobo_per_msnw bigint, payment_deadline timestamptz,
      state text, version int, receipt_reference text, created_at timestamptz
    );
    CREATE TABLE commerce.msnw_p2p_notifications (
      event_id uuid, order_id uuid, tenant_id text, user_id text,
      action text, state text, created_at timestamptz,
      processed_at timestamptz, delivered boolean
    );
  `);
  await db.query(
    "INSERT INTO commerce.msnw_custody_accounts VALUES ($1,$2,$3)",
    [tenant,seller,"2010000"],
  );
  await db.query(
    "INSERT INTO commerce.msnw_p2p_payment_methods VALUES ($1,$2,$3,$4,$5,$6,$7,statement_timestamp(),NULL)",
    [tenant,payment,"Example Bank","Verified Seller","0123456789","ng_bank_transfer",seller],
  );
  const query = async (sql:string,values?:unknown[]) => {
    const r=await db.query(sql,values);
    return {rows:r.rows,rowCount:r.affectedRows??r.rows.length};
  };
  const pool={
    query,
    async connect(){ throw new Error("Read-only journey must not begin an escrow write"); },
  } as P2pPool;
  const escrow: MsnwEscrowAuthority={
    async reserve(){throw new Error("Unexpected escrow reserve");},
    async release(){throw new Error("Unexpected escrow release");},
    async refund(){throw new Error("Unexpected escrow refund");},
  };
  return {db,query,service:createP2pService(pool,escrow)};
}
async function offer(
  query:(sql:string,values?:unknown[])=>Promise<unknown>,
  number:number, createdAt="2026-10-18T06:00:00.123456Z",
) {
  await query(`INSERT INTO commerce.msnw_p2p_offers
    (offer_id,tenant_id,seller_id,payment_method_id,rate_kobo_per_msnw,
     min_micro,max_micro,remaining_micro,fee_bps,state,created_at)
    VALUES($1,$2,$3,$4,150000,1000000,3000000,3000000,50,'active',$5)`,
    [uuid(number),tenant,seller,payment,createdAt]);
}


describe('exact budget and eligible price ordering',{timeout:30_000},()=>{
 const actor={tenantId:tenant,userId:buyer};
 it('sorts Buy by lowest price with price/time/UUID cursor ties and no missing rows',async()=>{
  const t=await fixture();try{
   const numbers=Array.from({length:45},(_,i)=>i+1);
   for(const n of numbers){await offer(t.query,n);await t.query('UPDATE commerce.msnw_p2p_offers SET rate_kobo_per_msnw=$1 WHERE offer_id=$2',[String(100+(n%3)*100),uuid(n)]);}
   const items:Record<string,unknown>[]=[],cursors:string[]=[];let cursor:string|undefined;
   do{const page=await t.service.offersPage(actor,{sort:'best_price',...(cursor?{cursor}:{})});items.push(...page.items);cursor=page.nextCursor??undefined;if(cursor)cursors.push(cursor);}while(cursor);
   const expected=[...numbers].sort((a,b)=>(a%3)-(b%3)||b-a).map(uuid);
   expect(items.map(x=>x.offer_id)).toEqual(expected);expect(new Set(items.map(x=>x.offer_id)).size).toBe(45);
   expect(cursors.every(x=>x.length<=256)).toBe(true);
   await expect(t.service.offersPage(actor,{cursor:cursors[0]!})).rejects.toMatchObject({code:'p2p.filter_cursor_changed'});
   await expect(t.service.offersPage(actor,{sort:'best_price',fiatKobo:'100',cursor:cursors[0]!})).rejects.toMatchObject({code:'p2p.filter_cursor_changed'});
   const forged=JSON.parse(Buffer.from(cursors[0]!,'base64url').toString('utf8'));forged.rate='1.1';
   await expect(t.service.offersPage(actor,{sort:'best_price',cursor:Buffer.from(JSON.stringify(forged)).toString('base64url')})).rejects.toMatchObject({code:'p2p.invalid_cursor'});
  }finally{await t.db.close();}
 });
 it('filters exact NGN limits with ceiling-rounded bank totals and funded maximum quantity',async()=>{
  const t=await fixture();try{
   await offer(t.query,1);await t.query('UPDATE commerce.msnw_p2p_offers SET min_micro=100000,rate_kobo_per_msnw=3');
   const page=await t.service.offersPage(actor,{fiatKobo:'1',sort:'best_price'});
   expect(page.items[0]).toMatchObject({budget_amount_micro:'333333'});
   expect(BigInt(String(page.items[0]!.budget_amount_micro))*3n<=1000000n).toBe(true);
   expect(page.filters).toMatchObject({fiatKobo:'1'});
   await t.query('UPDATE commerce.msnw_p2p_offers SET rate_kobo_per_msnw=100');
   expect((await t.service.offersPage(actor,{fiatKobo:'9'})).items).toHaveLength(0);
   expect((await t.service.offersPage(actor,{fiatKobo:'10'})).items[0]).toMatchObject({budget_amount_micro:'100000'});
   expect((await t.service.offersPage(actor,{fiatKobo:'999999999999999999'})).items[0]).toMatchObject({budget_amount_micro:'2000000'});
   for(const bad of [{fiatKobo:'0'},{fiatKobo:'1.5'},{fiatKobo:'1000000000000000001'},{sort:'reliability'},{amountMicro:'100000',fiatKobo:'10'}])await expect(t.service.offersPage(actor,bad)).rejects.toMatchObject({status:422});
   const app=Fastify();registerP2pRoutes(app,{service:t.service,authorize:async()=>actor});
   try{expect((await app.inject({url:'/v1/wallet/msnw/p2p/offers/page?sort=best_price&fiatKobo=10',headers:{authorization:'test'}})).json().items[0]).toMatchObject({budget_amount_micro:'100000'});expect((await app.inject({url:'/v1/wallet/msnw/p2p/offers/page?sort=best_price&sort=newest',headers:{authorization:'test'}})).statusCode).toBe(422);}finally{await app.close();}
  }finally{await t.db.close();}
 });
 it('sorts taker Sell by highest buyer price while retaining default-closed admission',async()=>{
  const t=await fixture();try{
   for(let n=1;n<=25;n++){await offer(t.query,n);await t.query("UPDATE commerce.msnw_p2p_offers SET offer_side='buy',rate_kobo_per_msnw=$1 WHERE offer_id=$2",[String(n*100),uuid(n)]);}
   await expect(t.service.offersPage(actor,{side:'buy',sort:'best_price'})).rejects.toMatchObject({status:503});
   const query={query:t.query,connect:async()=>{throw Error('discovery must not write')}} as P2pPool;
   const admitted=createP2pService(query,{reserve:async()=>{throw Error('no funds')},release:async()=>{throw Error('no funds')},refund:async()=>{throw Error('no funds')}},{buyOfferAdmission:{read:async()=>({canMakeBuyOffer:true,canTakeBuyOffer:true,policyReference:'test-only-discovery-policy'})}});
   const page=await admitted.offersPage(actor,{side:'buy',sort:'best_price'}),next=await admitted.offersPage(actor,{side:'buy',sort:'best_price',cursor:page.nextCursor!});
   expect([...page.items,...next.items].map(x=>x.offer_id)).toEqual(Array.from({length:25},(_,i)=>uuid(25-i)));
   const limited=await admitted.offersPage(actor,{side:'buy',sort:'best_price',fiatKobo:'10000'});expect(limited.items).toHaveLength(20);expect(limited.items.every(x=>BigInt(String(x.budget_amount_micro))>=1000000n&&(BigInt(String(x.budget_amount_micro))*BigInt(String(x.rate_kobo_per_msnw))+999999n)/1000000n<=10000n)).toBe(true);
  }finally{await t.db.close();}
 });
});
