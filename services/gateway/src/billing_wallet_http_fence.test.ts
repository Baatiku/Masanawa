import { describe, expect, it, vi } from "vitest";
import Fastify from "fastify";
import type { BillingWalletService } from "./billing_wallet.js";
import { registerBillingRoutes } from "./billing_routes.js";

describe("Wallet bill confirmation HTTP outcomes", () => {
  it.each([
    ["financial.billing.wallet_confirm_not_allowed", 409],
    ["financial.billing.quote_expired", 409],
    ["financial.billing.quote_revision_conflict", 409],
    ["financial.billing.quote_not_found", 404],
    ["financial.wallet.funding_intent_mismatch", 503],
    ["financial.wallet.virtual_account_binding_mismatch", 503],
    ["financial.billing.funding_unavailable", 503],
    ["financial.auth.unauthorized", 401],
  ] as const)("classifies %s as HTTP %i", async (message, status) => {
    const confirmAndPurchase = vi.fn(async () => { throw new Error(message); });
    const app = Fastify();
    registerBillingRoutes(app, {
      billingWallet: { confirmAndPurchase } as unknown as BillingWalletService,
    });
    try {
      const response = await app.inject({
        method: "POST",
        url: "/v1/commerce/bills/quotes/quote_test/confirm-wallet",
        payload: { quoteRevision: 1 },
      });
      expect(response.statusCode).toBe(status);
      expect(response.json()).toEqual({ error: message });
      expect(confirmAndPurchase).toHaveBeenCalledOnce();
    } finally {
      await app.close();
    }
  });

  it("does not describe a provider funding failure as invalid customer input", async () => {
    const createFunding = vi.fn(async () => {
      throw new Error("financial.wallet.virtual_account_binding_mismatch");
    });
    const app = Fastify();
    registerBillingRoutes(app, {
      billingWallet: { createFunding } as unknown as BillingWalletService,
    });
    try {
      const response = await app.inject({
        method: "POST", url: "/v1/wallet/ngn/funding",
        payload: { amount: "100" },
      });
      expect(response.statusCode).toBe(503);
      expect(createFunding).toHaveBeenCalledOnce();
    } finally {
      await app.close();
    }
  });
});
