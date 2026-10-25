import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

const bootstrap = readFileSync(
  new URL("../../services/gateway/src/main.ts", import.meta.url),
  "utf8",
);
const historical = readFileSync(
  new URL("../../services/gateway/src/historical_financial_callbacks.ts", import.meta.url),
  "utf8",
);

describe("retired MSN/MSNW consumer bootstrap", () => {
  it("does not compose retired token custody, on-chain balance, DVA or MSN routes", () => {
    for (const retired of [
      "createMsnLedgerStore(",
      "createMsnFundingJournal(",
      "createMsnwOnchainBalanceReader(",
      "createMsnwCustodyService(",
      "createMsnwPaystackDvaService(",
      "msnwPaystackDva:",
      "msnwOnchainBalance:",
      "msnwCustody:",
      "msnFunding:",
    ]) {
      expect(bootstrap).not.toContain(retired);
    }
  });

  it("keeps authenticated historical Paystack reconciliation", () => {
    expect(bootstrap).toContain("msnwPaystackFiat: createMsnwPaystackFiatService");
    expect(historical).toContain("/v1/wallet/msnw/funding/webhook");
    expect(historical).toContain("funding.handleSignedWebhook");
    expect(historical).toContain("/v1/webhooks/flutterwave");
  });
});
