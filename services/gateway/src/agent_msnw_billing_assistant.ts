import type { AgentBillingAssistant, AgentBillingResult } from "./agent_billing_assistant.js";
import type { BillingCheckoutService } from "./billing_checkout.js";
import type { BillingFinancialService } from "./financial_billing.js";
import type { createMsnwBillingService } from "./msn_wallet/billing_service.js";

type MsnwBillingService = ReturnType<typeof createMsnwBillingService>;
type Service = "airtime" | "data" | "electricity" | "tv";
type QuoteCommand = Readonly<{
  type: "billing.quote";
  service: Service;
  provider: string;
  recipient: string;
  amount?: string;
  plan?: string;
}>;
type Command = QuoteCommand |
  Readonly<{ type: "billing.confirm" | "wallet.balance" | "wallet.fund" }>;
type Category = Readonly<{ code: string; name: string }>;
type Biller = Readonly<{ billerCode: string; name: string }>;
type Item = Readonly<{ billerCode: string; itemCode: string; name: string; amount: string }>;

const actionTag = /<masanawa_action>([\s\S]{1,4000}?)<\/masanawa_action>/u;
const confirmPhrase = /^(?:confirm bill|confirm payment for bill|pay the quoted bill|pay bill|proceed with bill|biya bill|na tabbatar da biyan bill)$/iu;
const money = /^[1-9][0-9]*(?:\.[0-9]{1,2})?$/u;
const codeFor = (service: Service): string => ({
  airtime: "AIRTIME",
  data: "MOBILEDATA",
  electricity: "UTILITYBILLS",
  tv: "CABLEBILLS",
})[service];
const normalize = (value: string): string =>
  value.toLowerCase().replace(/[^a-z0-9]+/gu, " ").trim();
const list = <T>(input: unknown): readonly T[] =>
  Array.isArray(input) ? input as readonly T[] : [];

function response(reply: string): AgentBillingResult {
  // Legacy NGN billing documents contain a deprecated wallet payment button.
  // Render MSNW pricing in text until the unified MSNW document contract lands.
  return Object.freeze({ reply, parts: Object.freeze([]) });
}

export function formatMsnwMicro(value: string): string {
  if (!/^(0|[1-9][0-9]{0,30})$/u.test(value)) {
    throw new TypeError("msnw.billing.amount_invalid");
  }
  const micro = BigInt(value);
  const whole = micro / 1_000_000n;
  const remainder = (micro % 1_000_000n).toString().padStart(6, "0")
    .replace(/0+$/u, "");
  return remainder ? `${whole}.${remainder}` : whole.toString();
}

function parseCommand(modelReply: string): Command | null {
  const raw = actionTag.exec(modelReply)?.[1];
  if (!raw) return null;
  let parsed: unknown;
  try { parsed = JSON.parse(raw); } catch { return null; }
  if (!parsed || typeof parsed !== "object" || Array.isArray(parsed)) return null;
  const record = parsed as Record<string, unknown>;
  if (record.type === "wallet.balance" || record.type === "wallet.fund" ||
      record.type === "billing.confirm") {
    return { type: record.type };
  }
  if (record.type !== "billing.quote" ||
      !["airtime", "data", "electricity", "tv"].includes(String(record.service)) ||
      typeof record.provider !== "string" ||
      typeof record.recipient !== "string" ||
      record.provider.length > 120 || record.recipient.length > 120 ||
      (record.amount !== undefined && typeof record.amount !== "string") ||
      (record.plan !== undefined && typeof record.plan !== "string")) {
    return null;
  }
  return {
    type: "billing.quote",
    service: record.service as Service,
    provider: record.provider.trim(),
    recipient: record.recipient.trim(),
    ...(typeof record.amount === "string" ? { amount: record.amount.trim() } : {}),
    ...(typeof record.plan === "string" ? { plan: record.plan.trim() } : {}),
  };
}

function selectBiller(items: readonly Biller[], name: string): Biller | null {
  const wanted = normalize(name);
  if (!wanted) return null;
  return items.find((item) => normalize(item.name) === wanted) ??
    items.find((item) => normalize(item.name).includes(wanted) ||
      wanted.includes(normalize(item.name))) ?? null;
}

function selectItem(items: readonly Item[], command: QuoteCommand): Item | null {
  if (command.service === "airtime" || command.service === "electricity") {
    return items.find((item) => Number(item.amount) === 0) ??
      items.find((item) => normalize(item.name).includes("airtime")) ??
      items[0] ?? null;
  }
  const tokens = normalize(command.plan ?? "").split(" ").filter(Boolean);
  if (!tokens.length) return null;
  return items.find((item) =>
    tokens.every((token) => normalize(item.name).includes(token))) ?? null;
}

export const MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS = Object.freeze([
  "Masanawa customers hold only MSNW as their platform Wallet credit. Historical NGN Wallet, MSN and Credits balances are not customer spendable MSNW. Never offer a legacy NGN Wallet or claim conversion.",
  "Bills are priced by the live provider in NGN but paid only from verified settled MSNW custody at a server-configured rate. Never invent MSNW balances, prices or provider receipts.",
  "For airtime, data, electricity or TV, ask for the service provider, recipient, and the amount or exact plan. When known, append one <masanawa_action>{\"type\":\"billing.quote\",\"service\":\"airtime|data|electricity|tv\",\"provider\":\"network/company\",\"recipient\":\"number\",\"amount\":\"optional NGN decimal\",\"plan\":\"optional plan\"}</masanawa_action>.",
  "Tell the customer the returned exact MSNW amount and recipient. Customer must explicitly say 'Confirm bill' after the server-issued quote before any MSNW reservation, purchase or bill execution.",
  "Model output must never itself authorize billing.confirm, transfers, funding, or any spending. The customer's raw authenticated message is the sole source of confirmation.",
  "For MSNW funding or balances, direct the customer to Wallet for verified balance, Receive, and Paystack Buy MSNW. Do not invent a bank account or ask for separate NGN wallet funding.",
]);

export function createMsnwAgentBillingAssistant(input: Readonly<{
  checkout: BillingCheckoutService;
  billing: BillingFinancialService;
  msnw: MsnwBillingService;
}>): AgentBillingAssistant {
  async function pendingQuotes(authorizationHeader: string | undefined, characterId: string) {
    const entries = await input.checkout.list({ authorizationHeader, limit: 15 });
    return entries.filter((entry) =>
      entry.phase === "quoted" &&
      entry.quote.originatingCharacterId === characterId &&
      Date.parse(entry.quote.expiresAt) > Date.now());
  }

  async function payConfirmed(authorizationHeader: string | undefined, characterId: string) {
    const pending = await pendingQuotes(authorizationHeader, characterId);
    if (!pending.length) return response("There is no active bill quote to confirm. Ask me to prepare a bill first.");
    if (pending.length > 1) {
      return response("You have multiple active bill quotes. Please wait until the older quotes expire or pay the exact selected bill from the Wallet billing screen.");
    }
    const quote = pending[0]!.quote;
    const preview = await input.msnw.preview({
      authorizationHeader,
      quoteId: quote.quoteId,
      quoteRevision: quote.revision,
    });
    if (!preview.sufficient) {
      return response(`Your verified custody balance is not sufficient for ${formatMsnwMicro(preview.amountMicro)} MSNW. Use Wallet → Buy MSNW; this bill has NOT been purchased.`);
    }
    try {
      const receipt = await input.msnw.execute({
        authorizationHeader,
        quoteId: quote.quoteId,
        quoteRevision: quote.revision,
        expectedAmountMicro: preview.amountMicro,
        expectedRateKoboPerMsnw: preview.rateKoboPerMsnw,
      });
      const reference = "fulfillmentReference" in receipt && typeof receipt.fulfillmentReference === "string"
        ? receipt.fulfillmentReference : `msnw-bill-${quote.quoteId}`;
      const state = "state" in receipt && typeof receipt.state === "string"
        ? receipt.state : "processing";
      return response(`Your MSNW bill has been submitted. State: ${state}. Reference: ${reference}. If processing, use Check payment status in Wallet; do not purchase it again.`);
    } catch {
      // Network failure after reserving custody is outcome-unknown. Recover
      // the same original order; never dispatch a second provider request.
      try {
        const receipt = await input.msnw.read({
          authorizationHeader,
          reference: `msnw-bill-${quote.quoteId}`,
        });
        const state = "state" in receipt && typeof receipt.state === "string"
          ? receipt.state : "processing";
        return response(`Your MSNW bill status is ${state}. Reference: msnw-bill-${quote.quoteId}. Do not pay a second time.`);
      } catch {
        return response(`Payment outcome uncertain for msnw-bill-${quote.quoteId}. Funds may be reserved. Check its status in Wallet; do not pay again.`);
      }
    }
  }

  async function quoteBill(authorizationHeader: string | undefined, characterId: string, command: QuoteCommand) {
    if (!command.provider || !command.recipient) {
      return response("Please provide the exact provider and recipient number.");
    }
    const category = codeFor(command.service);
    const categories = list<Category>(await input.billing.listCategories({ authorizationHeader }));
    if (!categories.some((value) => value.code === category)) {
      return response(`The live provider currently has no ${command.service} option available.`);
    }
    const billers = list<Biller>(await input.billing.listBillers({
      authorizationHeader, categoryCode: category,
    }));
    const biller = selectBiller(billers, command.provider);
    if (!biller) return response("I could not verify that network or bill provider. Please specify its exact name.");
    const items = list<Item>(await input.billing.listItems({
      authorizationHeader, billerCode: biller.billerCode,
    }));
    const item = selectItem(items, command);
    if (!item) return response(command.service === "data"
      ? "Which exact data plan do you want (for example, 1GB monthly)?"
      : command.service === "tv" ? "Which exact TV package?" : "Which bill service option?");
    const amount = command.amount || (Number(item.amount) > 0 ? item.amount : "");
    if (!amount || !money.test(amount)) {
      return response("What is the exact bill amount in NGN? I will price the payment in MSNW before asking for confirmation.");
    }
    const created = await input.checkout.createQuote({
      authorizationHeader, categoryCode: category,
      billerCode: biller.billerCode, itemCode: item.itemCode,
      customerId: command.recipient, amount,
      originatingCharacterId: characterId,
    });
    const quote = created.quote;
    const preview = await input.msnw.preview({
      authorizationHeader, quoteId: quote.quoteId,
      quoteRevision: quote.revision,
    });
    if (preview.asset !== "MSNW" ||
        preview.quoteId !== quote.quoteId ||
        preview.quoteRevision !== quote.revision ||
        preview.customerId !== quote.customerId) {
      throw new TypeError("msnw.billing.quote_mismatch");
    }
    return response(`${quote.itemName} for ${quote.customerId}: ${formatMsnwMicro(preview.amountMicro)} MSNW (provider amount ₦${(quote.totalAmountKobo / 100).toFixed(2)}). ${preview.sufficient ? "Reply 'Confirm bill' to authorize this exact purchase." : "Insufficient settled MSNW. Use Wallet → Buy MSNW before confirming."} Quote expires ${quote.expiresAt}.`);
  }

  return Object.freeze<AgentBillingAssistant>({
    systemInstructions: MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS,
    async beforeInference(inputRequest) {
      const raw = inputRequest.text.trim();
      if (!raw) return null;
      if (confirmPhrase.test(raw)) {
        const pending = await pendingQuotes(
          inputRequest.authorizationHeader, inputRequest.characterId,
        );
        if (!pending.length) return null; // May be a non-billing yes/no.
        return payConfirmed(inputRequest.authorizationHeader, inputRequest.characterId);
      }
      return null;
    },
    async afterInference(inputRequest) {
      const command = parseCommand(inputRequest.modelReply);
      if (!command) return null;
      if (command.type === "billing.quote") {
        return quoteBill(inputRequest.authorizationHeader, inputRequest.characterId, command);
      }
      if (command.type === "billing.confirm") {
        return response("For safety I can only pay after your own message says 'Confirm bill' for the current verified MSNW quote.");
      }
      return response("Open Wallet to see your verified MSNW balance or buy MSNW with Paystack. Legacy NGN Wallet deposits are not accepted here.");
    },
  });
}
