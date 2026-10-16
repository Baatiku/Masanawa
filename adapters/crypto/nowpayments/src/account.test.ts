import { describe, expect, it } from "vitest";
import { qualifyAccountCapability } from "./account.js";

const evidence = {
  custodyEnabled: true,
  customerManagementEnabled: true,
  conversionEnabled: true,
  payoutEnabled: true,
  ipWhitelistSatisfied: false,
  payoutDestinationWhitelistSatisfied: false,
  observedAt: "2026-10-16T16:00:00Z",
} as const;

describe("NOWPayments capability security boundaries", () => {
  it("allows custody reads and internal swaps without payout IP authorization", () => {
    expect(qualifyAccountCapability(evidence, "custody").eligible).toBe(true);
    expect(qualifyAccountCapability(evidence, "conversion").eligible).toBe(true);
  });
  it("continues blocking external payouts without whitelisted IP and address", () => {
    const result = qualifyAccountCapability(evidence, "payout");
    expect(result.eligible).toBe(false);
    expect(result.reasons).toEqual([
      "security.ip_whitelist.unsatisfied",
      "security.destination_whitelist.unsatisfied",
    ]);
  });
  it("does not infer a swap capability when source evidence is absent", () => {
    expect(qualifyAccountCapability(
      { ...evidence, conversionEnabled: null }, "conversion",
    ).eligible).toBe(false);
  });
});
