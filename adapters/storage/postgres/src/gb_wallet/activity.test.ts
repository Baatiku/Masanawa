import type { Pool } from "pg";
import { describe, expect, it, vi } from "vitest";
import { createGbWalletActivityRepository } from "./activity.js";

const scope = {tenantId:"tenant_one",userId:"fan_one"};
function fixture(rows: unknown[] = []) {
  const query = vi.fn(async () => ({rows}));
  return {query,repo:createGbWalletActivityRepository({query} as unknown as Pick<Pool,"query">)};
}

function summaryRow(unit:"MB"|"NGN",received="0",spent="0",extra:Record<string,unknown>={}){
  const net=BigInt(received)-BigInt(spent);
  return {unit,received,spent,opening:"0",closing:String(net),recorded_balance:String(net),
    reserved:"0",available:String(net<0n?0n:net),debt:String(net<0n?-net:0n),
    account_exists:true,posted_count:"1",from_at:"2026-10-19T00:00:00Z",to_at:"2026-10-26T00:00:00Z",...extra};
}

describe("read-only NGN and MB wallet activity",()=>{
  it("projects only bounded receipt fields and never invents missing exchange amounts",async()=>{
    const row={entry_id:"ngn:exchange_1",operation_id:"exchange_1",unit:"NGN",
      signed_amount:"-500050",kind:"exchange",status:"completed",created_at:"2026-10-25T00:00:00Z"};
    const f=fixture([{...row,receipt_metadata:{counterpartyKind:"service",exchangedMb:"1050",
      exchangeKobo:"500050",rateVersion:"rate-v1",private_provider_key:"must-not-leak"}}]);
    const result=await f.repo.find(scope,"ngn:exchange_1");
    expect(result?.details).toEqual({counterpartyKind:"service",exchangedMb:1050,exchangeKobo:500050,rateVersion:"rate-v1"});
    expect(JSON.stringify(result)).not.toContain("must-not-leak");
    for(const invalid of [true,1.5,"1.5",-1,"9007199254740992"])
      await expect(fixture([{...row,receipt_metadata:{exchangedMb:invalid}}]).repo.find(scope,"ngn:exchange_1")).rejects.toThrow("invalid_activity_receipt");
  });
  it("totals only authorized posted units in an exact UTC window, rejecting overflow",async()=>{
    const f=fixture([summaryRow("MB","1000","400"),summaryRow("NGN","500050","50")]);
    const result=await f.repo.summary(scope,7,new Date("2026-10-26T00:00:00.000Z"));
    expect(result.MB).toEqual({received:1000,spent:400,net:600});
    expect(result.NGN).toEqual({received:500050,spent:50,net:500000});
    const [sql,args]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("gb_wallet.movements");
    expect(sql).toContain("gb_wallet.ngn_entries");
    expect(sql).not.toMatch(/credits|msnw|ledger\.journal/i);
    expect(args).toEqual(["tenant_one","fan_one",
      "2026-10-26T00:00:00.000Z",7]);
    await expect(f.repo.summary(scope,1 as 7)).rejects.toThrow();
    const invalid=fixture([summaryRow("MB","9007199254740992"),summaryRow("NGN")]);
    await expect(invalid.repo.summary(scope,7)).rejects.toThrow("invalid_activity_summary_amount");
  });
  it("keeps reservations, debt, missing accounts and discrepancies distinct",async()=>{
    const f=fixture([summaryRow("MB","1000","400",{reserved:"200",available:"400"}),
      summaryRow("NGN","0","90000",{opening:"100000",closing:"10000",recorded_balance:"10000",available:"10000",debt:"0"})]);
    const r=await f.repo.summary(scope,7);
    expect(r.reconciliation?.MB).toMatchObject({state:"matched",closing:600,reserved:200,available:400});
    expect(r.reconciliation?.NGN).toMatchObject({state:"matched",opening:100000,closing:10000});
    const missing={account_exists:false,posted_count:"0",recorded_balance:null,reserved:null,available:null,debt:null};
    const empty=await fixture([summaryRow("MB","0","0",missing),summaryRow("NGN","0","0",missing)]).repo.summary(scope,7);
    expect(empty.reconciliation?.MB).toMatchObject({state:"uninitialized",recordedBalance:null,available:null});
    const mismatch=await fixture([summaryRow("MB","1000","400",{recorded_balance:"601",available:"601"}),summaryRow("NGN")]).repo.summary(scope,7);
    expect(mismatch.reconciliation?.MB.state).toBe("mismatch");
    const debt=await fixture([summaryRow("MB"),summaryRow("NGN","0","90000")]).repo.summary(scope,7);
    expect(debt.reconciliation?.NGN).toMatchObject({state:"matched",closing:-90000,available:0,debt:90000});
    for(const extra of [{closing:"601"},{recorded_balance:"9007199254740992"},{reserved:"-1"}])
      await expect(fixture([summaryRow("MB","1000","400",extra),summaryRow("NGN")]).repo.summary(scope,7)).rejects.toThrow();
    expect(f.query).toHaveBeenCalledTimes(1);
    const [sql,args]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("statement_timestamp()");expect(sql).toContain("gb_wallet.accounts");
    expect(sql).toContain("gb_wallet.ngn_accounts");expect(args).toEqual(["tenant_one","fan_one",null,7]);
  });
  it("reads only owned immutable entries in exact tenant/user scope",async()=>{
    const f=fixture([
      {entry_id:"mb:123",operation_id:"send_one",unit:"MB",signed_amount:"-500",
        kind:"send",status:"completed",created_at:"2026-10-25 20:00:00+00"},
      {entry_id:"ngn:deposit_1",operation_id:"deposit_1",unit:"NGN",
        signed_amount:"500000",kind:"deposit",status:"completed",
        created_at:"2026-10-25 19:00:00+00"},
    ]);
    const items=await f.repo.list(scope,6,null);
    expect(items).toMatchObject([
      {unit:"MB",amount:-500,kind:"send"},
      {unit:"NGN",amount:500000,kind:"deposit"},
    ]);
    const [sql,args]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("gb_wallet.movements");
    expect(sql).toContain("gb_wallet.ngn_entries");
    expect(sql).not.toMatch(/msnw|credits|ledger\.journal/i);
    expect(sql).toContain("m.tenant_id=$1");
    expect(sql).toContain("m.from_id=$2");
    expect(sql).toContain("m.to_id=$2");
    expect(sql).toContain("n.account_id=$2");
    expect(sql).toContain("ORDER BY created_at DESC, entry_id DESC");
    expect(args.slice(0,6)).toEqual(["tenant_one","fan_one",null,null,6,"all"]);
    expect(args.slice(6,11)).toEqual(["all","all","all",null,null]);
    expect(args[11]).toEqual(expect.any(String));
  });
  it("uses a stable time-plus-entry cursor for both ledgers",async()=>{
    const f=fixture();
    await f.repo.list(scope,11,{createdAt:"2026-10-20T08:00:00.000Z",entryId:"mb:77"});
    const [sql,args]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("entry_id < $4");
    expect(args.slice(0,6)).toEqual(["tenant_one","fan_one","2026-10-20T08:00:00.000Z","mb:77",11,"all"]);
    await f.repo.list(scope,11,null,"MB");
    expect((f.query.mock.calls[1] as unknown as [string,unknown[]])[1][5]).toBe("MB");
  });
  it("passes all five facets as typed SQL parameters with no untrusted interpolated clauses",async()=>{
    const f=fixture();
    await f.repo.list(scope,9,null,"MB",{
      purpose:"masana",status:"reversed",direction:"outgoing",
      days:"30",reference:"tip_ledger_1",snapshotAt:"2026-10-26T00:00:00.000Z"});
    const [sql,args]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("FROM classified");
    expect(sql).toContain("operation_id=$11::text");
    expect(sql).toContain("created_at <= $12::timestamptz");
    expect(sql).not.toContain("tip_ledger_1");
    expect(args.slice(5)).toEqual(["MB","masana","reversed","outgoing",30,
      "tip_ledger_1","2026-10-26T00:00:00.000Z"]);
    f.query.mockClear();
    await expect(f.repo.list(scope,5,null,"all",{
      purpose:"all",status:"all",direction:"all",days:"7",reference:"bad' OR 1=1",
      snapshotAt:"2026-10-26T00:00:00.000Z"})).rejects.toThrow("invalid_activity_page");
    expect(f.query).not.toHaveBeenCalled();
  });
  it("rejects malformed IDs, amount overflow, and bad scope before exposing an account",async()=>{
    const f=fixture([{entry_id:"mb:1",operation_id:"send",unit:"MB",
      signed_amount:"9007199254740992",kind:"send",status:"completed",
      created_at:"2026-10-25T00:00:00Z"}]);
    await expect(f.repo.list(scope,5,null)).rejects.toThrow("invalid_authoritative_activity_row");
    f.query.mockClear();
    await expect(f.repo.list({tenantId:"",userId:"fan_one"},5,null)).rejects.toThrow();
    await expect(f.repo.list(scope,32,null)).rejects.toThrow();
    await expect(f.repo.list(scope,5,null,"invalid" as "MB")).rejects.toThrow();
    await expect(f.repo.list(scope,5,{createdAt:"bad",entryId:"mb:1"})).rejects.toThrow();
    expect(f.query).not.toHaveBeenCalled();
  });
  it("finds only an exact authorized immutable row, never by a bare operation ID",async()=>{
    const f=fixture([{entry_id:"mb:123",operation_id:"send_one",unit:"MB",
      signed_amount:"-100",kind:"send",status:"completed",
      created_at:"2026-10-25T19:00:00Z"}]);
    expect((await f.repo.find(scope,"mb:123"))?.amount).toBe(-100);
    const [sql,params]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("m.tenant_id=$1");
    expect(sql).toContain("m.from_id=$2");
    expect(sql).toContain("m.to_id=$2");
    expect(sql).toContain("n.account_id=$2");
    expect(params).toEqual(["tenant_one","fan_one","mb:123"]);
    f.query.mockClear();
    await expect(f.repo.find(scope,"send_one")).rejects.toThrow();
    expect(f.query).not.toHaveBeenCalled();
  });
});
