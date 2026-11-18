import { describe, expect, it } from "vitest";
import { probeNowPaymentsReadOnly } from "./nowpayments_readonly_probe.js";

type Payments = Parameters<typeof probeNowPaymentsReadOnly>[0]["payments"];
type Custody = NonNullable<Parameters<typeof probeNowPaymentsReadOnly>[0]["custody"]>;

describe("non-mutating NOWPayments production readiness", () => {
  it("independently checks payout password and funded conversion source", async () => {
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
      async authenticate() { calls.push("POST /auth (read-only token)"); return "hidden-jwt"; },
      async readBalances() {
        calls.push("GET /balance");
        return [
          { currency: "USDTMATIC", available: "3.125", pending: "0" },
          { currency: "USDCMATIC", available: "0", pending: "0" },
        ];
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
      custodyAuth: "authenticated",
      currencyCount: 2,
      configuredConversionCodesSupported: true,
      supportedConversionCodeCount: 2,
      fundedConversionSourceCount: 1,
      payoutTested: false,
    });
    expect(JSON.stringify(result)).not.toContain("hidden-jwt");
    expect(JSON.stringify(result)).not.toContain("3.125");
    expect(calls).toEqual([
      "GET /status", "GET /currencies",
      "POST /auth (read-only token)", "GET /balance",
    ]);
  });
  it("reports partial route support rather than falsely passing all codes", async () => {
    const result = await probeNowPaymentsReadOnly({
      payments: {
        async checkApiStatus() { return true; },
        async listPaymentCurrencies() {
          return [{ providerCode: "USDTTRC20" }];
        },
      } as unknown as Payments,
      proposedConversionCodes: ["USDTMATIC", "USDCMATIC", "USDTTRC20"],
    });
    expect(result).toMatchObject({
      apiStatus: "reachable",
      currencyCatalog: "reachable",
      custody: "not_configured",
      custodyAuth: "not_configured",
      configuredConversionCodesSupported: false,
      supportedConversionCodeCount: 1,
      fundedConversionSourceCount: null,
      payoutTested: false,
    });
  });
  it("distinguishes API key, custody balance and account password errors without leakage", async () => {
    const result = await probeNowPaymentsReadOnly({
      payments: {
        async checkApiStatus() { throw new Error("private API key"); },
        async listPaymentCurrencies() { throw new Error("private relay token"); },
      } as unknown as Payments,
      custody: {
        async authenticate() { throw new Error("private password"); },
        async readBalances() { throw new Error("private custody balance"); },
      } as unknown as Custody,
      proposedConversionCodes: ["USDTMATIC"],
    });
    expect(result).toEqual({
      apiStatus: "unavailable",
      currencyCatalog: "unavailable",
      custody: "unavailable",
      custodyAuth: "unavailable",
      currencyCount: null,
      configuredConversionCodesSupported: null,
      supportedConversionCodeCount: null,
      fundedConversionSourceCount: null,
      payoutTested: false,
    });
    expect(JSON.stringify(result)).not.toContain("private");
  });
  it("does not count a zero or pending-only source as funded", async () => {
    const result = await probeNowPaymentsReadOnly({
      payments: {
        async checkApiStatus() { return true; },
        async listPaymentCurrencies() { return [{ providerCode: "USDTMATIC" }]; },
      } as unknown as Payments,
      custody: {
        async authenticate() { return "jwt"; },
        async readBalances() {
          return [{ currency: "USDTMATIC", available: "0.000000", pending: "500" }];
        },
      } as unknown as Custody,
      proposedConversionCodes: ["USDTMATIC"],
    });
    expect(result.fundedConversionSourceCount).toBe(0);
    expect(result.custodyAuth).toBe("authenticated");
  });
});
