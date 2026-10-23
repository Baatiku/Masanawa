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
      remaining_micro bigint, fee_bps integer, state text,
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

describe("P2P real-SQL read and pagination qualification", () => {
  it("quotes exact bank fiat and seller fee, never returning unfunded exposure",async()=>{
    const t=await fixture();
    try {
      await offer(t.query,1);
      const service=t.service;
      const quote=await service.quote({tenantId:tenant,userId:buyer},{
        offerId:uuid(1),amountMicro:"1000001",
      });
      expect(quote).toMatchObject({
        offerId:uuid(1),
        amountMicro:"1000001",fiatKobo:"150001",feeMicro:"5001",
        availableMicro:"2000000",rateKoboPerMsnw:"150000",feeBps:50,
        bankName:"Example Bank",paymentWindowSeconds:1800,
      });
      await expect(service.quote({tenantId:tenant,userId:buyer},{
        offerId:uuid(1),amountMicro:"2000001",
      })).rejects.toMatchObject({code:"p2p.offer_limit"});
      await expect(service.quote({tenantId:tenant,userId:seller},{
        offerId:uuid(1),amountMicro:"1000000",
      })).rejects.toMatchObject({code:"p2p.self_trade_forbidden"});
      await expect(service.quote({tenantId:"tenant-b",userId:buyer},{
        offerId:uuid(1),amountMicro:"1000000",
      })).rejects.toMatchObject({code:"p2p.offer_not_found"});
      const publicPage=await service.offersPage({tenantId:tenant,userId:buyer});
      expect(publicPage.items).toHaveLength(1);
      expect(publicPage.items[0]).not.toHaveProperty("seller_id");
      await t.query("UPDATE commerce.msnw_custody_accounts SET available_micro='1004000'");
      expect((await service.offersPage({tenantId:tenant,userId:buyer})).items)
        .toHaveLength(0);
      await expect(service.quote({tenantId:tenant,userId:buyer},{
        offerId:uuid(1),amountMicro:"1000000",
      })).rejects.toMatchObject({code:"p2p.offer_limit"});
    }finally{await t.db.close();}
  });

  it("pages same-timestamp offers with no duplicate or missing rows",async()=>{
    const t=await fixture();
    try {
      await t.query("UPDATE commerce.msnw_custody_accounts SET available_micro='9000000'");
      for(let i=1;i<=23;i++)await offer(t.query,i);
      const actor={tenantId:tenant,userId:buyer};
      const first=await t.service.offersPage(actor);
      expect(first.items).toHaveLength(20);
      expect(first.nextCursor).toBeTruthy();
      const second=await t.service.offersPage(actor,{cursor:first.nextCursor!});
      expect(second.items).toHaveLength(3);
      expect(second.nextCursor).toBeNull();
      const all=[...first.items,...second.items]
        .map((row)=>String(row.offer_id));
      expect(new Set(all).size).toBe(23);
      expect(all).toContain(uuid(1));
      expect(all).toContain(uuid(23));
      await expect(t.service.offersPage(actor,{cursor:"not-base64-json"}))
        .rejects.toMatchObject({code:"p2p.invalid_cursor"});
    }finally{await t.db.close();}
  });

  it("filters exact funded amount and literal public trader/ad search without exposing bank records",async()=>{
    const t=await fixture();const actor={tenantId:tenant,userId:buyer};
    try {
      await offer(t.query,1);
      await t.query("INSERT INTO security.platform_user_profiles VALUES($1,$2,'Amina % Trader')",[tenant,seller]);
      expect((await t.service.offersPage(actor,{amountMicro:'2000000',search:'amina %'})).items).toHaveLength(1);
      expect((await t.service.offersPage(actor,{amountMicro:'2000001'})).items).toHaveLength(0);
      expect((await t.service.offersPage(actor,{amountMicro:'999999'})).items).toHaveLength(0);
      expect((await t.service.offersPage(actor,{search:'_'})).items).toHaveLength(0);
      expect((await t.service.offersPage(actor,{search:uuid(1)})).items).toHaveLength(1);
      const result=await t.service.offersPage(actor,{asset:'MSNW',fiat:'NGN',method:'ng_bank_transfer'});
      expect(result.market).toEqual({asset:'MSNW',fiat:'NGN',method:'ng_bank_transfer'});
      expect(JSON.stringify(result)).not.toMatch(/0123456789|account_number|account_name/);
      for(const filter of [{asset:'BTC'},{fiat:'USD'},{method:'cash'},{amountMicro:'1e6'},{search:'x'.repeat(81)}])
        await expect(t.service.offersPage(actor,filter)).rejects.toMatchObject({status:422});
    }finally{await t.db.close();}
  });
  it("binds offer pagination to the active amount/search and account",async()=>{
    const t=await fixture();const actor={tenantId:tenant,userId:buyer};
    try {
      for(let n=1;n<=21;n++)await offer(t.query,n);
      const page=await t.service.offersPage(actor,{amountMicro:'1000000'});
      expect(page.nextCursor).toBeTruthy();
      expect((await t.service.offersPage(actor,{amountMicro:'1000000',cursor:page.nextCursor!})).items).toHaveLength(1);
      for(const input of [{amountMicro:'1500000'},{search:'trader'},{}])
        await expect(t.service.offersPage(actor,{...input,cursor:page.nextCursor!})).rejects.toMatchObject({code:'p2p.filter_cursor_changed'});
    }finally{await t.db.close();}
  });
  it("keeps own offers and updates participant-scoped across tenants",async()=>{
    const t=await fixture();
    try {
      await offer(t.query,1);
      const owner={tenantId:tenant,userId:seller};
      expect((await t.service.offersPage(owner)).items).toHaveLength(0);
      expect((await t.service.myOffersPage(owner)).items).toHaveLength(1);
      expect((await t.service.myOffersPage({tenantId:tenant,userId:buyer})).items)
        .toHaveLength(0);
      expect((await t.service.myOffersPage({tenantId:"tenant-b",userId:seller})).items)
        .toHaveLength(0);
      await t.query(`INSERT INTO commerce.msnw_p2p_notifications
        VALUES($1,$2,$3,$4,'payment_claimed','payment_claimed',
        '2026-10-18T06:00:00.123456Z',NULL,false)`,
        [uuid(22),uuid(23),tenant,buyer]);
      expect((await t.service.notificationsPage({tenantId:tenant,userId:buyer})).items)
        .toHaveLength(1);
      expect((await t.service.notificationsPage(owner)).items)
        .toHaveLength(0);
      expect((await t.service.notificationsPage({tenantId:"tenant-b",userId:buyer})).items)
        .toHaveLength(0);
    }finally{await t.db.close();}
  });
});
