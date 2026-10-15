import { describe, expect, it } from "vitest";
import { createMsnwFundingObligationRecovery } from "./funding_obligations.js";

describe("MSNW funding obligation recovery", () => {
  it("backfills only missing Paystack evidence without creating balances or minting", async () => {
    const requests: string[] = [];
    const recovery = createMsnwFundingObligationRecovery({
      async query(sql) {
        requests.push(sql);
        return sql.includes("count(*)")
          ? { rowCount: 1, rows: [{ mismatches: "0" }] }
          : { rowCount: 2 };
      },
    });
    expect(await recovery.runOnce()).toEqual({ registered: 2 });
    expect(requests).toHaveLength(2);
    expect(requests[0]).toContain("e.amount_kobo IS DISTINCT FROM o.amount_kobo");
    expect(requests[1]).toContain("commerce.msnw_paystack_fiat_evidence");
    expect(requests[1]).toContain("LEFT JOIN commerce.msnw_funding_obligations");
    expect(requests[1]).toContain("ON CONFLICT DO NOTHING");
    expect(requests[1]).toContain("LIMIT 100");
    expect(requests[1]).not.toContain("mintSettled");
    expect(requests[1]).not.toContain("msnw_wallet_entries");
  });
  it("refuses to backfill when any recorded obligation differs from immutable provider proof", async () => {
    const seen: string[] = [];
    const recovery = createMsnwFundingObligationRecovery({
      async query(sql) {
        seen.push(sql);
        return { rowCount: 1, rows: [{ mismatches: "1" }] };
      },
    });
    await expect(recovery.runOnce()).rejects.toThrow("msnw.obligation.evidence_mismatch");
    expect(seen).toHaveLength(1);
  });
  it("returns zero when no outstanding journal writes are present", async () => {
    const recovery = createMsnwFundingObligationRecovery({
      async query(sql) { return sql.includes("count(*)")
        ? { rowCount: 1, rows: [{ mismatches: "0" }] }
        : { rowCount: 0 }; },
    });
    expect(await recovery.runOnce()).toEqual({ registered: 0 });
  });
});
