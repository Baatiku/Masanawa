import type { Pool } from "pg";
import { describe, expect, it, vi } from "vitest";
import { createGbWalletActivityRepository } from "./activity.js";

const scope = {tenantId:"tenant_one",userId:"fan_one"};
function fixture(rows: unknown[] = []) {
  const query = vi.fn(async () => ({rows}));
  return {query,repo:createGbWalletActivityRepository({query} as unknown as Pick<Pool,"query">)};
}

describe("read-only NGN and MB wallet activity",()=>{
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
    expect(args).toEqual(["tenant_one","fan_one",null,null,6,"all"]);
  });
  it("uses a stable time-plus-entry cursor for both ledgers",async()=>{
    const f=fixture();
    await f.repo.list(scope,11,{createdAt:"2026-10-20T08:00:00.000Z",entryId:"mb:77"});
    const [sql,args]=f.query.mock.calls[0] as unknown as [string,unknown[]];
    expect(sql).toContain("entry_id < $4");
    expect(args).toEqual(["tenant_one","fan_one","2026-10-20T08:00:00.000Z","mb:77",11,"all"]);
    await f.repo.list(scope,11,null,"MB");
    expect((f.query.mock.calls[1] as unknown as [string,unknown[]])[1][5]).toBe("MB");
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
