import { describe, expect, it } from "vitest";
import { probeNowPaymentsReadOnly } from "./nowpayments_readonly_probe.js";

type Payments = Parameters<typeof probeNowPaymentsReadOnly>[0]["payments"];
type Custody = NonNullable<Parameters<typeof probeNowPaymentsReadOnly>[0]["custody"]>;

describe("non-mutating NOWPayments production readiness", () => {
  it("separately reads payment status, available routes and custody", async () => {
    const calls: string[] = [];
    const payments = {
      async checkApiStatus() { calls.push("GET /status"); return true; },
      async listPaymentCurrencies() {
        calls.push("GET /currencies");
        return [
          { providerCode: "USDTMATIC" }, { providerCode: "USDCMATIC" },
        ];
      },
    } as unknown as Payments;
    const custody = {
      async readBalances() {
        calls.push("GET custody balances");
        return [{ currency: "USDTMATIC", available: "0" }];
      },
    } as unknown as Custody;
    const result = await probeNowPaymentsReadOnly({
      payments, custody,
      proposedConversionCodes: ["USDTMATIC", "USDCMATIC"],
    });
    expect(result).toEqual({
      apiStatus: "reachable",
      currencyCatalog: "reachable",
      custody: "reachable",
      currencyCount: 2,
      configuredConversionCodesSupported: true,
      payoutTested: false,
    });
    expect(calls).toEqual([
      "GET /status", "GET /currencies", "GET custody balances",
    ]);
  });
  it("reports catalog mismatch even if API itself is reachable", async () => {
    const result = await probeNowPaymentsReadOnly({
      payments: {
        async checkApiStatus() { return true; },
        async listPaymentCurrencies() {
          return [{ providerCode: "USDTTRC20" }];
        },
      } as unknown as Payments,
      proposedConversionCodes: ["USDTMATIC", "USDCMATIC"],
    });
    expect(result).toMatchObject({
      apiStatus: "reachable",
      currencyCatalog: "reachable",
      custody: "not_configured",
      configuredConversionCodesSupported: false,
      payoutTested: false,
    });
  });
  it("fails closed on a bad API key, relay or custody login without leaking response data", async () => {
    const result = await probeNowPaymentsReadOnly({
      payments: {
        async checkApiStatus() { throw new Error("private API key"); },
        async listPaymentCurrencies() { throw new Error("private relay token"); },
      } as unknown as Payments,
      custody: {
        async readBalances() { throw new Error("private account password"); },
      } as unknown as Custody,
      proposedConversionCodes: ["USDTMATIC"],
    });
    const message = JSON.stringify(result);
    expect(result).toEqual({
      apiStatus: "unavailable",
      currencyCatalog: "unavailable",
      custody: "unavailable",
      currencyCount: null,
      configuredConversionCodesSupported: null,
      payoutTested: false,
    });
    expect(message).not.toContain("private");
  });
});
