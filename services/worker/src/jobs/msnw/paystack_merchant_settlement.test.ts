import { createHash } from "node:crypto";
import { describe, expect, it } from "vitest";
import type { Pool } from "@masanawa/postgres";
import { createMsnwMerchantSettlementRuntime } from "./paystack_merchant_settlement.js";

const settlement = {
  id: 3090024,domain:"test",status:"success",currency:"NGN",
  total_processed:10000,total_amount:9800,effective_amount:9800,
  settlement_date:"2026-10-15T10:00:00Z",
};
const transactions = [
  {id:2067030515,domain:"test",status:"success",currency:"NGN",
   reference:"verified-fund-1",amount:10000},
];

function fake(patches: Readonly<{
  settlement?: Record<string,unknown>;
  transaction?: Record<string,unknown>;
  partial?: boolean;
  existing?: boolean;
  corruptedExisting?: boolean;
}> = {}) {
  const calls: string[] = [];
  const writes: string[] = [];
  const paymentId = "2067030515";
  const fundingReference = "verified-fund-1";
  const fetchImpl = async (url: string, init?: RequestInit) => {
    expect(init?.method).toBe("GET");
    const path = new URL(url);
    calls.push(path.pathname);
    if(path.pathname==="/settlement") {
      expect(path.searchParams.get("subaccount")).toBe("none");
      expect(path.searchParams.get("perPage")).toBe("50");
    }
    if(path.pathname.endsWith("/transactions"))
      expect(path.searchParams.get("perPage")).toBe("50");
    const data = path.pathname === "/settlement"
      ? [{...settlement,...patches.settlement}]
      : path.pathname === "/settlement/3090024/transactions"
        ? transactions.map(x=>({...x,...patches.transaction}))
        : [];
    return new Response(JSON.stringify({
      status:true,data,
      ...(patches.partial && path.pathname.endsWith("/transactions")
        ? {meta:{page:1,pageCount:2,perPage:50}} : {}),
    }),{
      status:200,headers:{"content-type":"application/json"},
    });
  };
  const settlementHash = createHash("sha256").update(JSON.stringify({
    id:"3090024",domain:"test",total:"10000",effective:"9800",
    settledAt:"2026-10-15T10:00:00Z",
  })).digest("hex");
  const query = async (sql:string) => {
    writes.push(sql);
    if (sql.startsWith("SELECT settlement_id FROM"))
      return patches.existing
        ? {rowCount:1,rows:[{settlement_id:"3090024"}]}
        : {rowCount:0,rows:[]};
    if (sql.startsWith("SELECT provider_proof_sha256"))
      return patches.existing
        ? {rowCount:1,rows:[{
            provider_proof_sha256:patches.corruptedExisting
              ? "0".repeat(64):settlementHash,
            gross_processed_kobo:"10000",effective_paid_kobo:"9800",
          }]}
        : {rowCount:0,rows:[]};
    if (sql.startsWith("SELECT e.reference"))
      return {rowCount:1,rows:[{
        reference:fundingReference,
        provider_transaction_id:paymentId,
        amount_kobo:"10000",
      }]};
    return {rowCount:1,rows:[]};
  };
  const client = { query,release() {} };
  const pool = {query,async connect(){return client;}} as unknown as Pool;
  const runtime = createMsnwMerchantSettlementRuntime({
    pool,paystackSecretKey:"sk_test_testmerchantpayout",
    fetchImpl:fetchImpl as typeof fetch,
  });
  return {runtime,calls,writes};
}
describe("MSNW Paystack completed merchant payout provenance",()=>{
  it("requires actual settled provider payout and matching independently verified funding",async()=>{
    const t = fake();
    expect(await t.runtime.runOnce()).toEqual({scanned:1,matched:1,failed:0});
    expect(t.calls).toContain("/settlement");
    expect(t.calls).toContain("/settlement/3090024/transactions");
    expect(t.writes.some(x=>x.includes("INSERT INTO commerce.msnw_paystack_merchant_settlements")))
      .toBe(true);
    expect(t.writes.some(x=>x.includes("INSERT INTO commerce.msnw_paystack_payout_matches")))
      .toBe(true);
    expect(t.writes.some(x=>x.includes("mintSettled"))).toBe(false);
    expect(t.writes.some(x=>x.includes("UPDATE commerce.msnw_custody_accounts")))
      .toBe(false);
  });
  it("refuses unsettled or incorrectly denominated batches",async()=>{
    for(const patch of [
      {status:"processing"},
      {currency:"USD"},
      {domain:"live"},
      {effective_amount:11000},
      {effective_amount:0},
      {total_amount:0},
      {total_amount:5000},
    ]){
      const t=fake({settlement:patch});
      await expect(t.runtime.runOnce()).rejects.toThrow();
      expect(t.writes.some(x=>x.includes("INSERT INTO commerce.msnw_paystack_merchant_settlements")))
        .toBe(false);
    }
  });
  it("never attaches mismatched transaction amounts or references as backing proof",async()=>{
    const t=fake({transaction:{amount:20000}});
    expect(await t.runtime.runOnce()).toEqual({scanned:0,matched:0,failed:1});
    expect(t.writes.some(x=>x.includes("INSERT INTO commerce.msnw_paystack_payout_matches")))
      .toBe(false);
    expect(t.writes.some(x=>x.includes("INSERT INTO commerce.msnw_paystack_merchant_settlements")))
      .toBe(false);
  });
  it("rejects Paystack metadata indicating missing payout transaction pages",async()=>{
    const t=fake({partial:true});
    expect(await t.runtime.runOnce()).toEqual({scanned:0,matched:0,failed:1});
    expect(t.writes.some(x=>x.includes(
      "INSERT INTO commerce.msnw_paystack_payout_matches"))).toBe(false);
    expect(t.writes.some(x=>x.includes(
      "INSERT INTO commerce.msnw_paystack_merchant_settlements"))).toBe(false);
  });
  it("rechecks previously scanned payouts for independently verified late funding",async()=>{
    const t=fake({existing:true});
    expect(await t.runtime.runOnce()).toEqual({scanned:1,matched:1,failed:0});
    expect(t.writes.some(x=>x.includes(
      "INSERT INTO commerce.msnw_paystack_merchant_settlements"))).toBe(false);
    expect(t.writes.some(x=>x.includes(
      "INSERT INTO commerce.msnw_paystack_payout_matches"))).toBe(true);
    expect(t.writes.some(x=>x.includes(
      "UPDATE commerce.msnw_custody_accounts"))).toBe(false);
  });
  it("rotates through older provider settlement pages after scanning the newest page",async()=>{
    const visited:number[]=[];
    const fetchImpl = async (url:string) => {
      const path=new URL(url);
      if (path.pathname !== "/settlement") {
        return new Response(JSON.stringify({status:true,data:[]}),{status:200});
      }
      const page=Number(path.searchParams.get("page"));
      visited.push(page);
      const data=page<=9 ? Array.from({length:50},(_,i)=>({
        ...settlement,id:100000+page*100+i,
      })) : [];
      return new Response(JSON.stringify({status:true,data}),{status:200});
    };
    const query=async(sql:string)=>{
      if (sql.startsWith("SELECT settlement_id FROM") ||
          sql.startsWith("SELECT provider_proof_sha256") ||
          sql.startsWith("SELECT e.reference")) return {rowCount:0,rows:[]};
      return {rowCount:1,rows:[]};
    };
    const runtime=createMsnwMerchantSettlementRuntime({
      pool:{query,async connect(){return {query,release(){}};}} as unknown as Pool,
      paystackSecretKey:"sk_test_settlement_backlog",
      fetchImpl:fetchImpl as typeof fetch,
    });
    await runtime.runOnce();
    await runtime.runOnce();
    expect(visited).toEqual([1,2,3,4,5,1,6,7,8,9]);
  });
  it("refuses a changed provider payout without modifying the immutable original",async()=>{
    const t=fake({existing:true,corruptedExisting:true});
    expect(await t.runtime.runOnce()).toEqual({scanned:0,matched:0,failed:1});
    expect(t.writes.some(x=>x.includes(
      "INSERT INTO commerce.msnw_paystack_payout_matches"))).toBe(false);
    expect(t.writes.some(x=>x.includes(
      "INSERT INTO commerce.msnw_paystack_merchant_settlements"))).toBe(false);
  });
});
