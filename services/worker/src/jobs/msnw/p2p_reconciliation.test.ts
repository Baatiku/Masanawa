import {describe,it,expect,vi} from "vitest";
import {createP2pCustodyReconciliation} from "./p2p_reconciliation.js";
import type {Pool} from "@masanawa/postgres";

function fixture(values:readonly unknown[]){
  const query=vi.fn();
  for(const value of values)query.mockResolvedValueOnce({rows:[value],rowCount:1});
  const runtime=createP2pCustodyReconciliation({query} as unknown as Pick<Pool,"query">);
  return {query,runtime};
}
describe("read-only P2P custody reconciliation",()=>{
  it("detects inconsistent escrow phases, seller reserve shortfalls and failed pushes",async()=>{
    const {query,runtime}=fixture([
      {inconsistent_orders:"2",under_reserved_sellers:"1",undelivered_dead_letters:"3"},
    ]);
    expect(await runtime.runOnce()).toEqual({
      inconsistentOrders:2,underReservedSellers:1,undeliveredDeadLetters:3,
    });
    const sql=query.mock.calls.map(([statement])=>String(statement));
    expect(sql).toHaveLength(1);
    expect(sql[0]).toContain("commerce.msnw_p2p_reconciliation_counts(NULL::text)");
    expect(sql[0]).toContain("undelivered_dead_letters");
    for(const statement of sql){
      expect(statement).not.toMatch(/\b(?:INSERT|UPDATE|DELETE|TRUNCATE|CALL)\b/i);
    }
  });
  it("reports clean invariants without performing compensating money movements",async()=>{
    const {runtime}=fixture([
      {inconsistent_orders:"0",under_reserved_sellers:"0",undelivered_dead_letters:"0"},
    ]);
    expect(await runtime.runOnce()).toEqual({
      inconsistentOrders:0,underReservedSellers:0,undeliveredDeadLetters:0,
    });
  });
  it("fails closed if PostgreSQL counts are missing, fractional or unsafe",async()=>{
    for(const invalid of [-1,1.5,Number.NaN,"9007199254740993",null]){
      const {runtime}=fixture([
        {inconsistent_orders:invalid,under_reserved_sellers:"0",undelivered_dead_letters:"0"},
      ]);
      await expect(runtime.runOnce()).rejects.toThrow("p2p.reconciliation_count_invalid");
    }
    await expect(fixture([{}]).runtime.runOnce())
      .rejects.toThrow("p2p.reconciliation_count_invalid");
  });
});
