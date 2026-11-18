import { describe, expect, it } from "vitest";
import {
  qualifyAccountCapability,
  type NowPaymentsClient,
  type NowPaymentsCustodyClient,
} from "./index.js";
import { collectNowPaymentsRuntimeEvidence } from "./runtime-evidence.js";

const payments = {
  async listPaymentCurrencies() {
    return [
      { providerCode: "USDTMATIC", asset: "USDT", network: "polygon",
        operations: { deposit: true, convert: null, withdraw: null },
        estimatedNetworkFeeUsd: null },
      { providerCode: "USDCMATIC", asset: "USDC", network: "polygon",
        operations: { deposit: true, convert: null, withdraw: null },
        estimatedNetworkFeeUsd: null },
    ];
  },
} as unknown as NowPaymentsClient;

const custody = {
  async authenticate() { return "hidden-jwt"; },
  async readBalances() {
    return [{ currency: "USDTMATIC", available: "1", pending: "0" }];
  },
} as unknown as NowPaymentsCustodyClient;

describe("NOWPayments custody conversion evidence", () => {
  it("permits supported internal swaps even when payout IP and address whitelists are absent", async () => {
    const result = await collectNowPaymentsRuntimeEvidence({
      payments, custody,
      config: {
        conversionEnabled: true, payoutEnabled: false,
        ipWhitelistSatisfied: false,
        payoutDestinationWhitelistSatisfied: false,
        conversionProviderCodes: ["USDTMATIC", "USDCMATIC"],
        withdrawalProviderCodes: ["BTCBSC"], // Unsupported payout must not block conversion.
      },
    });
    expect(qualifyAccountCapability(result.account, "conversion").eligible).toBe(true);
    expect(qualifyAccountCapability(result.account, "payout").eligible).toBe(false);
    expect(result.routes.filter(r => r.operations.convert === true).map(r => r.providerCode))
      .toEqual(["USDTMATIC", "USDCMATIC"]);
    expect(result.routes.every(r => r.operations.withdraw === false)).toBe(true);
  });
  it("reports conversions unavailable if the provider supplies fewer than two requested routes", async () => {
    const result = await collectNowPaymentsRuntimeEvidence({
      payments, custody,
      config: {
        conversionEnabled: true, payoutEnabled: false,
        ipWhitelistSatisfied: false,
        payoutDestinationWhitelistSatisfied: false,
        conversionProviderCodes: ["USDTMATIC", "UNSUPPORTED"],
        withdrawalProviderCodes: [],
      },
    });
    expect(result.account.conversionEnabled).toBe(false);
    expect(result.routes.every(r => r.operations.convert === false)).toBe(true);
  });
});
