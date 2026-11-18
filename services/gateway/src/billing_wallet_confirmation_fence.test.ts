import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { createBillingQuote } from "@masanawa/commerce";
import type {
  BillingQuote,
  BillingQuoteRepository,
  NgnFundingIntent,
  NgnWalletRepository,
} from "@masanawa/commerce";
import type { FlutterwaveFundingClient } from "@masanawa/providers";
import type { BillingFinancialService } from "./financial_billing.js";
import { createBillingWalletService } from "./billing_wallet.js";

describe("Wallet bill confirmation state and virtual-account fences", () => {
  function setup(state: BillingQuote["state"] = "confirmed") {
    const tenantId = createCanonicalId("tenant");
    const userId = createCanonicalId("user");
    const quoteId = createCanonicalId("quote");
    const createdAt = new Date(Date.now() - 60_000).toISOString();
    const expiresAt = new Date(Date.now() + 120_000).toISOString();
    let quote: BillingQuote = {
      ...createBillingQuote({
        tenantId, userId, quoteId,
        categoryCode: "AIRTIME", billerCode: "BIL119",
        itemCode: "AIRTIME", itemName: "Airtime",
        customerId: "07010102053", serviceAmountKobo: 10000,
        feeAmountKobo: 0, createdAt, expiresAt,
      }),
      state,
      confirmedAt: state === "quoted" ? null : createdAt,
    };
    const funding: NgnFundingIntent = {
      tenantId, userId, quoteId,
      fundingReference: "funding-replay-123",
      txRef: "wallet-replay-123",
      amountKobo: 10000,
      state: "creating",
      accountNumber: null, bankName: null,
      providerOrderRef: null, providerReference: null,
      providerTransactionId: null, expiresAt, createdAt, updatedAt: createdAt,
    };
    const readBalance = vi.fn(async () => 0);
    const createFundingIntent = vi.fn(async () => funding);
    const bindFundingAccount = vi.fn(async () => ({
      ...funding,
      state: "awaiting" as const,
      accountNumber: "0123456789",
      bankName: "Test bank",
    }));
    const createDynamicVirtualAccount = vi.fn(async () => ({
      txRef: funding.txRef,
      accountNumber: "0123456789",
      bankName: "Test bank",
      amount: "100",
      orderRef: "order-123",
      providerReference: "fw-123",
      expiryDate: expiresAt,
    }));
    const confirmQuote = vi.fn(async () => {
      quote = { ...quote, state: "confirmed", confirmedAt: createdAt };
      return quote;
    });
    const purchaseOwned = vi.fn(async () => ({
      state: "succeeded" as const,
      fulfillmentReference: "bill-replay-123",
      deliveryCode: null,
    }));
    const service = createBillingWalletService({
      sessions: {
        async authorize() { return { tenantId, userId }; },
      },
      quotes: {
        async readQuote() { return quote; },
        confirmQuote,
      } as unknown as BillingQuoteRepository,
      wallet: {
        readBalance, createFundingIntent, bindFundingAccount,
      } as unknown as NgnWalletRepository,
      funding: {
        createDynamicVirtualAccount,
      } as unknown as FlutterwaveFundingClient,
      billing: { purchaseOwned } as unknown as BillingFinancialService,
      webhookSecretHash: "test-webhook-hash",
    });
    const confirm = () => service.confirmAndPurchase({
      authorizationHeader: "Bearer fixture",
      quoteId, quoteRevision: quote.revision,
    });
    return {
      tenantId, userId, quoteId, funding,
      readBalance, createFundingIntent, bindFundingAccount,
      createDynamicVirtualAccount, confirmQuote, purchaseOwned, confirm,
      setQuote(next: BillingQuote) { quote = next; },
      getQuote() { return quote; },
    };
  }

  it.each([
    "checkout-dispatching", "checkout-created", "funded", "succeeded",
    "refund-pending", "refund-dispatching", "refund-submitted",
    "refunded", "expired",
  ] as const)("never creates a second funding path for %s quotes", async (state) => {
    const t = setup(state);
    await expect(t.confirm()).rejects.toThrow(
      "financial.billing.wallet_confirm_not_allowed",
    );
    expect(t.createFundingIntent).not.toHaveBeenCalled();
    expect(t.createDynamicVirtualAccount).not.toHaveBeenCalled();
    expect(t.purchaseOwned).not.toHaveBeenCalled();
    expect(t.readBalance).not.toHaveBeenCalled();
  });

  it("rejects expired confirmed terms before funding or purchase", async () => {
    const t = setup();
    t.setQuote({
      ...t.getQuote(),
      expiresAt: new Date(Date.now() - 1000).toISOString(),
    });
    await expect(t.confirm()).rejects.toThrow("financial.billing.quote_expired");
    expect(t.createFundingIntent).not.toHaveBeenCalled();
    expect(t.purchaseOwned).not.toHaveBeenCalled();
  });

  it("rejects an expired unconfirmed quote before changing quote state", async () => {
    const t = setup("quoted");
    t.setQuote({
      ...t.getQuote(),
      expiresAt: new Date(Date.now() - 1000).toISOString(),
    });
    await expect(t.confirm()).rejects.toThrow("financial.billing.quote_expired");
    expect(t.confirmQuote).not.toHaveBeenCalled();
  });

  it("resumes a reserved purchase without opening another top-up at zero balance", async () => {
    const t = setup("reserved");
    t.setQuote({
      ...t.getQuote(),
      expiresAt: new Date(Date.now() - 1000).toISOString(),
    });
    const view = await t.confirm();
    expect(view.phase).toBe("fulfilled");
    expect(t.purchaseOwned).toHaveBeenCalledOnce();
    expect(t.purchaseOwned).toHaveBeenCalledWith(
      expect.objectContaining({
        tenantId: t.tenantId, userId: t.userId, quoteId: t.quoteId,
      }),
    );
    expect(t.createFundingIntent).not.toHaveBeenCalled();
    expect(t.createDynamicVirtualAccount).not.toHaveBeenCalled();
  });

  it("rejects a reserved quote with no confirmed authorization", async () => {
    const t = setup("reserved");
    t.setQuote({ ...t.getQuote(), confirmedAt: null });
    await expect(t.confirm()).rejects.toThrow(
      "financial.billing.wallet_confirm_not_allowed",
    );
    expect(t.purchaseOwned).not.toHaveBeenCalled();
  });

  it.each([
    ["different tenant", (f: NgnFundingIntent) => ({ ...f, tenantId: createCanonicalId("tenant") })],
    ["different owner", (f: NgnFundingIntent) => ({ ...f, userId: createCanonicalId("user") })],
    ["different quote", (f: NgnFundingIntent) => ({ ...f, quoteId: createCanonicalId("quote") })],
    ["different amount", (f: NgnFundingIntent) => ({ ...f, amountKobo: f.amountKobo + 1 })],
  ] as const)("refuses persisted intent with %s", async (_reason, mutate) => {
    const t = setup();
    t.createFundingIntent.mockResolvedValueOnce(mutate(t.funding));
    await expect(t.confirm()).rejects.toThrow(
      "financial.wallet.funding_intent_mismatch",
    );
    expect(t.createDynamicVirtualAccount).not.toHaveBeenCalled();
    expect(t.bindFundingAccount).not.toHaveBeenCalled();
  });

  it("rejects a provider account bound to a different transfer reference", async () => {
    const t = setup();
    t.createDynamicVirtualAccount.mockResolvedValueOnce({
      txRef: "wallet-different-reference",
      accountNumber: "0123456789",
      bankName: "Test bank",
      amount: "100",
      orderRef: "order-123",
      providerReference: "fw-123",
      expiryDate: t.funding.expiresAt,
    });
    await expect(t.confirm()).rejects.toThrow(
      "financial.wallet.virtual_account_binding_mismatch",
    );
    expect(t.bindFundingAccount).not.toHaveBeenCalled();
    expect(t.purchaseOwned).not.toHaveBeenCalled();
  });

  it("reuses a correctly bound awaiting account without calling the provider twice", async () => {
    const t = setup();
    t.createFundingIntent.mockResolvedValueOnce({
      ...t.funding,
      state: "awaiting",
      accountNumber: "0123456789",
      bankName: "Test bank",
    });
    const result = await t.confirm();
    expect(result.phase).toBe("awaiting-funds");
    expect(result.funding?.txRef).toBe(t.funding.txRef);
    expect(t.createDynamicVirtualAccount).not.toHaveBeenCalled();
    expect(t.bindFundingAccount).not.toHaveBeenCalled();
    expect(t.purchaseOwned).not.toHaveBeenCalled();
  });
});
