import { describe, expect, it } from "vitest";
import { createMsnwFundingObligationRecovery } from "./funding_obligations.js";

describe("MSNW funding obligation recovery", () => {
  it("backfills only missing Paystack evidence without creating balances or minting", async () => {
    const requests: string[] = [];
    const recovery = createMsnwFundingObligationRecovery({
      async query(sql) {
        requests.push(sql);
        return { rowCount: 2 };
      },
    });
    expect(await recovery.runOnce()).toEqual({ registered: 2 });
    expect(requests).toHaveLength(1);
    expect(requests[0]).toContain("commerce.msnw_paystack_fiat_evidence");
    expect(requests[0]).toContain("LEFT JOIN commerce.msnw_funding_obligations");
    expect(requests[0]).toContain("ON CONFLICT DO NOTHING");
    expect(requests[0]).toContain("LIMIT 100");
    expect(requests[0]).not.toContain("mintSettled");
    expect(requests[0]).not.toContain("msnw_wallet_entries");
  });
  it("returns zero when no outstanding journal writes are present", async () => {
    const recovery = createMsnwFundingObligationRecovery({
      async query() { return { rowCount: 0 }; },
    });
    expect(await recovery.runOnce()).toEqual({ registered: 0 });
  });
});
