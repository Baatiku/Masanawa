import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type { CryptoChatAction, CryptoChatActionRepository } from "@masanawa/commerce";
import type { CharacterSessionScope } from "@masanawa/agents";
import type { MsnBalanceAuthority } from "./msn_wallet/routes.js";
import type { createMsnwUsdtConversion } from "./msn_wallet/usdt_conversion.js";
import {
  createMsnwAgentCryptoAssistant, MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS,
} from "./agent_msnw_crypto_assistant.js";

function harness(options?: { sufficient?: boolean; liquidity?: boolean }) {
  const scope = {
    tenantId: createCanonicalId("tenant"),
    userId: createCanonicalId("user"),
    characterId: createCanonicalId("character"),
  } as CharacterSessionScope;
  let pending: CryptoChatAction | null = null;
  const quote = vi.fn(async () => ({
    asset: "MSNW", providerCode: "USDTMATIC",
    destinationAddress: "0x123456789abcdef0123456789abcdef0123456789",
    sourceMicro: "10000000", targetMicro: "15000000",
    rateUsdMicroPerMsnw: "1500000", feeEstimateMicro: "40000",
    sufficient: options?.sufficient !== false,
    providerLiquidityQualified: options?.liquidity !== false,
    expiresAt: new Date(Date.now() + 120000).toISOString(),
  }));
  const confirm = vi.fn(async (
    _owner: { tenantId: string; userId: string },
    _parameters: {
      amountMicro: string;
      providerCode: string;
      destinationAddress: string;
      expectedTargetMicro: string;
      expectedFeeMicro: string;
      expectedRateUsdMicroPerMsnw: string;
      idempotencyKey: string;
    },
  ) => ({
    conversionId: "b7115a19-c13b-4847-bc63-759ed1ea75a5",
    state: "processing",
  }));
  const readCurrent = vi.fn(async () => pending);
  const put = vi.fn(async (action: CryptoChatAction) => { pending = action; });
  const complete = vi.fn(async () => { pending = null; });
  const authorize = vi.fn(async () => ({ tenantId: scope.tenantId, userId: scope.userId }));
  const assistant = createMsnwAgentCryptoAssistant({
    authorizer: { authorize } as unknown as MsnBalanceAuthority,
    service: { quote, confirm } as unknown as ReturnType<typeof createMsnwUsdtConversion>,
    pending: { put, readCurrent, complete } as unknown as CryptoChatActionRepository,
  });
  const request = (text: string) => ({
    authorizationHeader: "Bearer customer",
    characterId: scope.characterId,
    scope, text,
  });
  const action = (modelReply: string) => ({
    authorizationHeader: "Bearer customer",
    characterId: scope.characterId,
    scope, modelReply,
  });
  const modelCommand = '<masanawa_crypto_action>{"type":"msnw.convert.quote","amount":"10","providerCode":"USDTMATIC","destinationAddress":"0x123456789abcdef0123456789abcdef0123456789"}</masanawa_crypto_action>';
  return { assistant, scope, quote, confirm, put, complete, authorize, readCurrent, request, action, modelCommand };
}

describe("MSNW voice/chat conversion with durable spending authorization", () => {
  it("never substitutes legacy MSN, NGN Wallet or provider balances", () => {
    const text = MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS.join(" ");
    expect(text).toContain("single customer-facing");
    expect(text).toContain("MSNW");
    expect(text).toContain("legacy Credits");
  });
  it("quotes only a whitelisted stablecoin route without spending", async () => {
    const h = harness();
    const proposed = await h.assistant.afterInference(h.action(h.modelCommand));
    expect(proposed?.reply).toContain("10 MSNW");
    expect(proposed?.reply).toContain("USDTMATIC");
    expect(proposed?.reply).toContain("Confirm MSNW conversion");
    expect(h.quote).toHaveBeenCalledWith(expect.objectContaining({
      tenantId: h.scope.tenantId,
      userId: h.scope.userId,
    }), expect.objectContaining({
      amountMicro: "10000000",
      providerCode: "USDTMATIC",
    }));
    expect(h.put).toHaveBeenCalledWith(expect.objectContaining({
      kind: "convert", providerCode: "MSNW", state: "pending",
      amount: "10", targetProviderCode: "USDTMATIC",
    }));
    expect(h.confirm).not.toHaveBeenCalled();
  });
  it("rejects model confirmations, generic yes and unapproved routes", async () => {
    const h = harness();
    await h.assistant.afterInference(h.action(h.modelCommand));
    expect(await h.assistant.beforeInference(h.request("yes"))).toBeNull();
    const model = await h.assistant.afterInference(h.action(
      '<masanawa_crypto_action>{"type":"crypto.confirm"}</masanawa_crypto_action>',
    ));
    expect(model?.reply).toContain("cannot authorize");
    expect(h.confirm).not.toHaveBeenCalled();
    const bad = await h.assistant.afterInference(h.action(
      '<masanawa_crypto_action>{"type":"msnw.convert.quote","amount":"10","providerCode":"ETH","destinationAddress":"0x123456789abcdef0123456789abcdef0123456789"}</masanawa_crypto_action>',
    ));
    expect(bad?.reply).toContain("cannot authorize");
    expect(h.confirm).not.toHaveBeenCalled();
  });
  it("only literal customer confirmation executes with original stable request ID", async () => {
    const h = harness();
    await h.assistant.afterInference(h.action(h.modelCommand));
    const view = await h.assistant.beforeInference(h.request("Confirm MSNW conversion"));
    expect(view?.reply).toContain("processing");
    expect(h.confirm).toHaveBeenCalledOnce();
    expect(h.confirm).toHaveBeenCalledWith(expect.anything(),expect.objectContaining({
      amountMicro: "10000000",expectedTargetMicro: "15000000",
      expectedFeeMicro: "40000",expectedRateUsdMicroPerMsnw: "1500000",
      idempotencyKey: expect.any(String),
    }));
    expect(h.complete).toHaveBeenCalledOnce();
    expect(await h.assistant.beforeInference(h.request("Confirm MSNW conversion"))).toBeNull();
  });
  it("never creates a pending action when settled or provider liquidity is insufficient", async () => {
    for (const options of [{ sufficient: false }, { liquidity: false }]) {
      const h = harness(options);
      expect((await h.assistant.afterInference(h.action(h.modelCommand)))?.reply)
        .toContain("cannot proceed");
      expect(h.put).not.toHaveBeenCalled();
      expect(h.confirm).not.toHaveBeenCalled();
    }
  });
  it("retains idempotency after an uncertain provider result", async () => {
    const h = harness();
    await h.assistant.afterInference(h.action(h.modelCommand));
    h.confirm.mockRejectedValueOnce(new Error("network after payout"));
    const uncertain = await h.assistant.beforeInference(h.request("Confirm MSNW conversion"));
    expect(uncertain?.reply).toContain("uncertain");
    expect(h.complete).not.toHaveBeenCalled();
    await h.assistant.beforeInference(h.request("Confirm MSNW conversion"));
    const first = h.confirm.mock.calls[0]![1] as { idempotencyKey: string };
    const second = h.confirm.mock.calls[1]![1] as { idempotencyKey: string };
    expect(second.idempotencyKey).toBe(first.idempotencyKey);
  });
  it("cancels only the account's original pending quote", async () => {
    const h = harness();
    await h.assistant.afterInference(h.action(h.modelCommand));
    const view = await h.assistant.beforeInference(h.request("Cancel MSNW conversion"));
    expect(view?.reply).toContain("cancelled");
    expect(h.complete).toHaveBeenCalledOnce();
    expect(h.confirm).not.toHaveBeenCalled();
  });
});
