import { describe, expect, it, vi } from "vitest";
import type { BillingCheckoutService } from "./billing_checkout.js";
import type { BillingFinancialService } from "./financial_billing.js";
import type { createMsnwBillingService } from "./msn_wallet/billing_service.js";
import {
  createMsnwAgentBillingAssistant,
  formatMsnwMicro,
  MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS,
} from "./agent_msnw_billing_assistant.js";

const quote = Object.freeze({
  quoteId: "quote-1234567",
  revision: 1,
  originatingCharacterId: "gwani",
  expiresAt: new Date(Date.now() + 60_000).toISOString(),
  itemName: "MTN Airtime",
  customerId: "2348000000000",
  totalAmountKobo: 10500,
});
function harness(options?: { sufficient?: boolean; quoteOwner?: string; previewThrows?: boolean }) {
  const selectedQuote = { ...quote, originatingCharacterId: options?.quoteOwner ?? "gwani" };
  const preview = vi.fn(async () => {
    if (options?.previewThrows) throw new Error("provider temporarily unavailable");
    return {
      asset: "MSNW", quoteId: selectedQuote.quoteId,
      quoteRevision: selectedQuote.revision, itemName: selectedQuote.itemName,
      customerId: selectedQuote.customerId,
      amountMicro: "1050000", rateKoboPerMsnw: "10000",
      availableMicro: options?.sufficient === false ? "100" : "2000000",
      sufficient: options?.sufficient !== false, expiresAt: selectedQuote.expiresAt,
    };
  });
  const execute = vi.fn(async () => ({
    state: "processing", fulfillmentReference: "msnw-bill-quote-1234567",
  }));
  const read = vi.fn(async () => ({
    state: "processing", fulfillmentReference: "msnw-bill-quote-1234567",
  }));
  const list = vi.fn(async () => [{
    quote: selectedQuote, phase: "quoted",
  }]);
  const createQuote = vi.fn(async () => ({
    quote: selectedQuote, phase: "quoted", document: { legacy: true },
  }));
  const listCategories = vi.fn(async () => [{ code: "AIRTIME", name: "Airtime" }]);
  const listBillers = vi.fn(async () => [{
    billerCode: "mtn", name: "MTN",
  }]);
  const listItems = vi.fn(async () => [{
    billerCode: "mtn", itemCode: "airtime", name: "MTN Airtime", amount: "0",
  }]);
  const assistant = createMsnwAgentBillingAssistant({
    checkout: { createQuote, list } as unknown as BillingCheckoutService,
    billing: { listCategories, listBillers, listItems } as unknown as BillingFinancialService,
    msnw: { preview, execute, read } as unknown as ReturnType<typeof createMsnwBillingService>,
  });
  return { assistant, preview, execute, read, list, createQuote, listCategories, listBillers, listItems };
}
const request = (text: string, characterId = "gwani") => ({
  authorizationHeader: "Bearer verified-customer", characterId, text,
});

describe("canonical MSNW conversational bill payments", () => {
  it("uses only MSNW, not a legacy NGN wallet or Credits", () => {
    expect(MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS.join(" ")).toContain("only MSNW");
    expect(MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS.join(" ")).toContain("legacy NGN");
    expect(formatMsnwMicro("1050000")).toBe("1.05");
    expect(formatMsnwMicro("1000000")).toBe("1");
    expect(formatMsnwMicro("1")).toBe("0.000001");
    expect(() => formatMsnwMicro("-5")).toThrow();
  });

  it("quotes live network, recipient and exact custody MSNW price without buying", async () => {
    const h = harness();
    const result = await h.assistant.afterInference({
      authorizationHeader: "Bearer verified-customer",
      characterId: "gwani",
      modelReply: '<masanawa_action>{"type":"billing.quote","service":"airtime","provider":"MTN","recipient":"2348000000000","amount":"100.00"}</masanawa_action>',
    });
    expect(h.createQuote).toHaveBeenCalledWith(expect.objectContaining({
      customerId: "2348000000000",
      originatingCharacterId: "gwani",
      categoryCode: "AIRTIME",
    }));
    expect(h.preview).toHaveBeenCalledOnce();
    expect(result?.reply).toContain("1.05 MSNW");
    expect(result?.reply).toContain("Confirm bill");
    expect(result?.parts).toEqual([]); // No misleading old NGN Wallet button.
    expect(h.execute).not.toHaveBeenCalled();
  });

  it("only the customer's explicit bill-specific message can spend", async () => {
    const h = harness();
    const model = await h.assistant.afterInference({
      authorizationHeader: "Bearer verified-customer",
      characterId: "gwani",
      modelReply: '<masanawa_action>{"type":"billing.confirm"}</masanawa_action>',
    });
    expect(model?.reply).toContain("only pay");
    expect(h.execute).not.toHaveBeenCalled();
    expect(await h.assistant.beforeInference(request("yes"))).toBeNull();
    expect(await h.assistant.beforeInference(request("okay"))).toBeNull();
    expect(h.execute).not.toHaveBeenCalled();
    const approved = await h.assistant.beforeInference(request("Confirm bill"));
    expect(approved?.reply).toContain("msnw-bill-quote-1234567");
    expect(h.execute).toHaveBeenCalledWith(expect.objectContaining({
      quoteId: "quote-1234567",
      quoteRevision: 1,
      expectedAmountMicro: "1050000",
      expectedRateKoboPerMsnw: "10000",
    }));
  });

  it("does not spend across Masana sessions or when custody is insufficient", async () => {
    const other = harness({ quoteOwner: "gwana" });
    expect(await other.assistant.beforeInference(request("Confirm bill"))).toBeNull();
    expect(other.execute).not.toHaveBeenCalled();
    const insufficient = harness({ sufficient: false });
    const notice = await insufficient.assistant.beforeInference(request("Confirm bill"));
    expect(notice?.reply).toContain("not sufficient");
    expect(insufficient.execute).not.toHaveBeenCalled();
  });

  it("handles uncertain provider responses by looking up the same original order", async () => {
    const h = harness();
    h.execute.mockRejectedValueOnce(new Error("network connection lost"));
    const view = await h.assistant.beforeInference(request("pay bill"));
    expect(h.read).toHaveBeenCalledWith({
      authorizationHeader: "Bearer verified-customer",
      reference: "msnw-bill-quote-1234567",
    });
    expect(view?.reply).toContain("Do not pay a second time");
    expect(h.execute).toHaveBeenCalledTimes(1);
  });

  it("refuses to advertise invented MSNW pricing when canonical preview fails", async () => {
    const h = harness({ previewThrows: true });
    await expect(h.assistant.afterInference({
      authorizationHeader: "Bearer verified-customer",
      characterId: "gwani",
      modelReply: '<masanawa_action>{"type":"billing.quote","service":"airtime","provider":"MTN","recipient":"2348000000000","amount":"100"}</masanawa_action>',
    })).rejects.toThrow("provider temporarily unavailable");
    expect(h.execute).not.toHaveBeenCalled();
  });

  it("rejects malformed directives and never executes wallet.fund as NGN custody", async () => {
    const h = harness();
    expect(await h.assistant.afterInference({
      authorizationHeader: "Bearer verified-customer", characterId: "gwani",
      modelReply: '<masanawa_action>{"type":"billing.quote","service":"airtime","provider":5}</masanawa_action>',
    })).toBeNull();
    const wallet = await h.assistant.afterInference({
      authorizationHeader: "Bearer verified-customer", characterId: "gwani",
      modelReply: '<masanawa_action>{"type":"wallet.fund","amount":"50000"}</masanawa_action>',
    });
    expect(wallet?.reply).toContain("Paystack");
    expect(h.execute).not.toHaveBeenCalled();
  });
});
