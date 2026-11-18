import { createCanonicalId } from "@masanawa/contracts";
import type { CharacterSessionScope } from "@masanawa/agents";
import type {
  CryptoChatAction, CryptoChatActionRepository,
} from "@masanawa/commerce";
import type { MsnBalanceAuthority } from "./msn_wallet/routes.js";
import type { createMsnwUsdtConversion } from "./msn_wallet/usdt_conversion.js";
import type { AgentCryptoAssistant, AgentCryptoResult } from "./agent_crypto_assistant.js";

type Service = ReturnType<typeof createMsnwUsdtConversion>;
type Owner = Readonly<{ tenantId: string; userId: string }>;
type Quote = Awaited<ReturnType<Service["quote"]>>;
const tag = /<masanawa_crypto_action>([\s\S]{1,5000}?)<\/masanawa_crypto_action>/u;
const routeWhitelist = new Set(["USDTTRC20", "USDTMATIC", "USDCMATIC"]);
const confirmPhrase = /^(?:confirm msnw conversion|pay msnw conversion|convert my msnw now)$/iu;
const cancelPhrase = /^(?:cancel msnw conversion|stop msnw conversion)$/iu;
const amountPattern = /^[1-9][0-9]{0,17}(?:\.[0-9]{1,6})?$/u;

function response(reply: string): AgentCryptoResult {
  return Object.freeze({ reply, parts: Object.freeze([]) });
}

function parseAmountMicro(decimal: string): string {
  if (!amountPattern.test(decimal)) throw new TypeError("msnw.convert.amount_invalid");
  const [whole, fraction = ""] = decimal.split(".");
  return (BigInt(whole!) * 1_000_000n +
    BigInt(fraction.padEnd(6, "0") || "0")).toString();
}

function decimal(micro: string): string {
  if (!/^(0|[1-9][0-9]{0,23})$/u.test(micro)) {
    throw new TypeError("msnw.convert.amount_invalid");
  }
  const value = BigInt(micro);
  const fraction = (value % 1_000_000n).toString().padStart(6, "0")
    .replace(/0+$/u, "");
  return (value / 1_000_000n).toString() + (fraction ? `.${fraction}` : "");
}

type QuoteDirective = Readonly<{
  type: "msnw.convert.quote";
  amount: string; providerCode: string; destinationAddress: string;
}>;
function parseDirective(raw: string): QuoteDirective | null {
  const embedded = tag.exec(raw)?.[1];
  if (!embedded) return null;
  let value: unknown;
  try { value = JSON.parse(embedded); } catch { return null; }
  if (!value || typeof value !== "object" || Array.isArray(value)) return null;
  const record = value as Record<string, unknown>;
  if (record.type !== "msnw.convert.quote" ||
      typeof record.amount !== "string" ||
      typeof record.providerCode !== "string" ||
      typeof record.destinationAddress !== "string" ||
      !amountPattern.test(record.amount) ||
      !routeWhitelist.has(record.providerCode.trim().toUpperCase()) ||
      !/^[A-Za-z0-9]{20,128}$/u.test(record.destinationAddress)) return null;
  return {
    type: "msnw.convert.quote",
    amount: record.amount,
    providerCode: record.providerCode.trim().toUpperCase(),
    destinationAddress: record.destinationAddress.trim(),
  };
}

export const MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS = Object.freeze([
  "The single customer-facing Masanawa wallet credit is MSNW. Do not offer legacy Credits, MSN, NGN Wallet or unrelated NOWPayments custody as if it were the user's MSNW balance.",
  "For converting MSNW to USDT or USDC ask the amount of MSNW, approved receiving network and exact external destination address. Do not invent exchange rates, addresses, provider availability or payout success.",
  "Once details are clear emit one <masanawa_crypto_action>{\"type\":\"msnw.convert.quote\",\"amount\":\"10\",\"providerCode\":\"USDTMATIC\",\"destinationAddress\":\"verified-address\"}</masanawa_crypto_action>. Only live allowed routes are USDTTRC20, USDTMATIC and USDCMATIC, subject to the user's whitelisted destinations and the provider.",
  "The runtime returns a quote in MSNW and stablecoin with network fee, availability and deadline. The user must independently send 'Confirm MSNW conversion' after seeing that quote. No model-generated command, generic 'yes', screenshot or voice transcript of a quote can authorize spending.",
  "If the user asks for balances, deposit or history direct them to Wallet's verified MSNW and stablecoin screens. Fiat only buys MSNW through Paystack. Do not make a separate crypto or NGN wallet.",
]);

type PendingQuote = Readonly<{
  sourceMicro: string;
  targetMicro: string;
  feeEstimateMicro: string;
  rateUsdMicroPerMsnw: string;
  providerCode: string;
  destinationAddress: string;
  expiresAt: string;
}>;

function readPending(action: CryptoChatAction): PendingQuote | null {
  if (action.kind !== "convert" || action.providerCode !== "MSNW" ||
      action.state !== "pending") return null;
  let pending: unknown;
  try { pending = JSON.parse(action.quoteSummary); } catch { return null; }
  if (!pending || typeof pending !== "object" || Array.isArray(pending)) return null;
  const q = pending as Record<string, unknown>;
  for (const key of ["sourceMicro", "targetMicro", "feeEstimateMicro",
      "rateUsdMicroPerMsnw", "providerCode", "destinationAddress", "expiresAt"]) {
    if (typeof q[key] !== "string") return null;
  }
  if (q.sourceMicro !== parseAmountMicro(action.amount) ||
      q.providerCode !== action.targetProviderCode ||
      q.destinationAddress !== action.destinationAddress ||
      Date.parse(q.expiresAt as string) <= Date.now() ||
      Date.parse(action.expiresAt) <= Date.now()) return null;
  return q as PendingQuote;
}

export function createMsnwAgentCryptoAssistant(input: Readonly<{
  authorizer: MsnBalanceAuthority;
  service: Service;
  pending: CryptoChatActionRepository;
}>): AgentCryptoAssistant {
  async function owner(authorizationHeader: string | undefined, scope: CharacterSessionScope): Promise<Owner> {
    const who = await input.authorizer.authorize({ authorizationHeader });
    if (who.tenantId !== scope.tenantId || who.userId !== scope.userId) {
      throw new Error("msnw.convert.auth_scope_mismatch");
    }
    return { tenantId: who.tenantId, userId: who.userId };
  }
  const current = (scope: CharacterSessionScope) => ({
    tenantId: scope.tenantId,
    userId: scope.userId,
    characterId: scope.characterId,
  });

  async function quote(
    authorizationHeader: string | undefined,
    scope: CharacterSessionScope,
    directive: QuoteDirective,
  ): Promise<AgentCryptoResult> {
    const who = await owner(authorizationHeader, scope);
    const quoted: Quote = await input.service.quote(who, {
      amountMicro: parseAmountMicro(directive.amount),
      providerCode: directive.providerCode,
      destinationAddress: directive.destinationAddress,
    });
    if (!quoted.sufficient || !quoted.providerLiquidityQualified) {
      return response("This conversion cannot proceed: settled MSNW or qualified stablecoin treasury liquidity is insufficient. Nothing has been reserved or sent.");
    }
    if (quoted.asset !== "MSNW" ||
        quoted.sourceMicro !== parseAmountMicro(directive.amount) ||
        quoted.providerCode !== directive.providerCode ||
        quoted.destinationAddress !== directive.destinationAddress) {
      throw new Error("msnw.convert.quote_mismatch");
    }
    const timestamp = Date.now();
    const expires = Math.min(timestamp + 120_000, Date.parse(quoted.expiresAt));
    if (!Number.isFinite(expires) || expires <= timestamp) throw new Error("msnw.convert.quote_expired");
    const internal: PendingQuote = {
      sourceMicro: quoted.sourceMicro,
      targetMicro: quoted.targetMicro,
      feeEstimateMicro: quoted.feeEstimateMicro,
      rateUsdMicroPerMsnw: quoted.rateUsdMicroPerMsnw,
      providerCode: quoted.providerCode,
      destinationAddress: quoted.destinationAddress,
      expiresAt: new Date(expires).toISOString(),
    };
    const action: CryptoChatAction = {
      ...current(scope),
      requestId: createCanonicalId("request"),
      kind: "convert",
      providerCode: "MSNW",
      targetProviderCode: quoted.providerCode,
      amount: directive.amount,
      destinationAddress: quoted.destinationAddress,
      quoteSummary: JSON.stringify(internal),
      state: "pending",
      createdAt: new Date(timestamp).toISOString() as never,
      updatedAt: new Date(timestamp).toISOString() as never,
      expiresAt: new Date(expires).toISOString() as never,
    };
    await input.pending.put(action);
    return response(`Quote: convert ${decimal(quoted.sourceMicro)} MSNW to ${decimal(quoted.targetMicro)} ${quoted.providerCode} at ${quoted.destinationAddress}. Estimated network fee: ${decimal(quoted.feeEstimateMicro)} stablecoins. Quote expires ${action.expiresAt}. If these details are correct, send exactly 'Confirm MSNW conversion'. Otherwise say 'Cancel MSNW conversion'.`);
  }

  async function act(
    authorizationHeader: string | undefined,
    scope: CharacterSessionScope,
    cancel: boolean,
  ): Promise<AgentCryptoResult | null> {
    const who = await owner(authorizationHeader, scope);
    const action = await input.pending.readCurrent(current(scope), new Date().toISOString() as never);
    if (!action || action.providerCode !== "MSNW") return null;
    if (cancel) {
      await input.pending.complete(current(scope), action.requestId, new Date().toISOString() as never);
      return response("MSNW conversion cancelled. Nothing was sent or reserved.");
    }
    const q = readPending(action);
    if (!q) return response("That MSNW quote expired or changed. Ask for a fresh quote; nothing has been sent.");
    try {
      const receipt = await input.service.confirm(who, {
        amountMicro: q.sourceMicro,
        providerCode: q.providerCode,
        destinationAddress: q.destinationAddress,
        expectedTargetMicro: q.targetMicro,
        expectedFeeMicro: q.feeEstimateMicro,
        expectedRateUsdMicroPerMsnw: q.rateUsdMicroPerMsnw,
        idempotencyKey: action.requestId,
      });
      await input.pending.complete(current(scope), action.requestId, new Date().toISOString() as never);
      return response(`MSNW conversion reference ${receipt.conversionId}: ${receipt.state}. This is the original order; it will be reconciled with the provider. Do not submit it twice.`);
    } catch {
      // The provider may have accepted an irreversible payout before the
      // transport failed. Keep the same persisted idempotency key for an
      // explicit customer retry; NEVER manufacture a new transaction.
      return response(`MSNW conversion outcome uncertain for request ${action.requestId}. Do not create a new order. Ask me to confirm the same quote again or review your MSNW conversion history in Wallet.`);
    }
  }

  return Object.freeze<AgentCryptoAssistant>({
    systemInstructions: MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS,
    async beforeInference(request) {
      const text = request.text.trim();
      if (confirmPhrase.test(text)) return act(request.authorizationHeader, request.scope, false);
      if (cancelPhrase.test(text)) return act(request.authorizationHeader, request.scope, true);
      return null;
    },
    async afterInference(request) {
      const directive = parseDirective(request.modelReply);
      if (directive) return quote(request.authorizationHeader, request.scope, directive);
      if (tag.test(request.modelReply)) {
        return response("Use your Wallet's verified MSNW actions. I cannot authorize a payout from a model-generated confirmation. Request a new MSNW conversion quote first.");
      }
      return null;
    },
  });
}
