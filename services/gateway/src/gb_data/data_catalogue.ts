import type { FlutterwaveBillItem } from "@masanawa/providers";

/**
 * Server-admin approved mapping: the Flutterwave catalogue does NOT establish
 * exact data allowance, expiry, or absence of bonus MB. Every item code must
 * have separately reviewed structured evidence. Never parse provider names.
 */
export type NigerianNetwork = "MTN" | "AIRTEL" | "GLO" | "9MOBILE";

export interface ApprovedWholeGbBundle {
  readonly version: string;
  readonly country: "NG";
  readonly network: NigerianNetwork;
  readonly billerCode: string;
  readonly itemCode: string;
  readonly allowanceGb: number;
  readonly validityDays: number;
  /** Exact NGN provider amount approved for this item; no client price. */
  readonly providerAmount: string;
  readonly evidenceRef: string;
  readonly reviewedBy: string;
  readonly reviewedAt: string;
  readonly expiresAt: string;
  readonly enabled: boolean;
}

export interface VerifiedWholeGbBundle {
  readonly id: string;
  readonly version: string;
  readonly network: NigerianNetwork;
  readonly allowanceGb: number;
  readonly costMb: number;
  readonly validityDays: number;
  readonly providerAmount: string;
  readonly billerCode: string;
  readonly itemCode: string;
  readonly expiresAt: string;
}

export interface WholeGbQuote extends VerifiedWholeGbBundle {
  readonly recipientPhone: string;
  readonly quoteExpiresAt: string;
  readonly requiresWalletReservation: true;
  readonly feeMb: 0;
}

export class GbDataCatalogueError extends Error {
  constructor(
    readonly code: "invalid_configuration" | "invalid_phone" |
      "bundle_unavailable" | "stale_selection",
    message: string,
  ) {
    super(message);
    this.name = "GbDataCatalogueError";
  }
}

const approvedCode = /^[A-Za-z0-9][A-Za-z0-9_.:-]{0,127}$/;
const networkCodes = new Set<NigerianNetwork>(["MTN", "AIRTEL", "GLO", "9MOBILE"]);

function invalid(message: string): never {
  throw new GbDataCatalogueError("invalid_configuration", message);
}
function validUtcDate(text: string): number {
  if (typeof text !== "string" || !/^\d{4}-\d{2}-\d{2}T.*Z$/.test(text)) {
    return Number.NaN;
  }
  const value = Date.parse(text);
  return Number.isFinite(value) ? value : Number.NaN;
}

function normalizeNgn(value: string): bigint {
  if (typeof value !== "string" || !/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(value)) {
    return invalid("Invalid exact NGN provider amount");
  }
  const [naira, fraction = ""] = value.split(".");
  const kobo = BigInt(naira!) * 100n + BigInt(fraction.padEnd(2, "0") || "0");
  if (kobo <= 0n || kobo > BigInt(Number.MAX_SAFE_INTEGER)) {
    return invalid("Provider amount out of supported range");
  }
  return kobo;
}

function bundleKey(billerCode: string, itemCode: string): string {
  return `${billerCode}:${itemCode}`;
}

/**
 * The exact approved biller+item match must also exist in a freshly fetched
 * Flutterwave catalogue. No approval -> no offer. A name with "2GB" or bonus
 * text has zero authority. Divergent live NGN amounts fail closed.
 */
export function projectVerifiedWholeGbBundles(
  approved: readonly ApprovedWholeGbBundle[],
  liveItems: readonly FlutterwaveBillItem[],
  now: Date = new Date(),
): readonly VerifiedWholeGbBundle[] {
  if (Number.isNaN(now.getTime())) invalid("Invalid catalogue observation time");
  const approvalKeys = new Set<string>();
  for (const item of approved) {
    if (!approvedCode.test(item.version) ||
      !networkCodes.has(item.network) ||
      item.country !== "NG" ||
      !approvedCode.test(item.billerCode) ||
      !approvedCode.test(item.itemCode) ||
      !approvedCode.test(item.evidenceRef) ||
      !approvedCode.test(item.reviewedBy) ||
      !Number.isSafeInteger(item.allowanceGb) ||
      item.allowanceGb < 1 || item.allowanceGb > 1000 ||
      !Number.isSafeInteger(item.validityDays) ||
      item.validityDays < 1 || item.validityDays > 366 ||
      normalizeNgn(item.providerAmount) <= 0n ||
      !Number.isFinite(validUtcDate(item.reviewedAt)) ||
      !Number.isFinite(validUtcDate(item.expiresAt)) ||
      validUtcDate(item.expiresAt) <= validUtcDate(item.reviewedAt) ||
      typeof item.enabled !== "boolean") {
      invalid("Bundle approval is invalid or lacks reviewed whole-GB evidence");
    }
    const key = bundleKey(item.billerCode, item.itemCode);
    if (approvalKeys.has(key)) invalid("Duplicate approved biller/item identity");
    approvalKeys.add(key);
  }
  const live = new Map<string, FlutterwaveBillItem>();
  for (const item of liveItems) {
    const key = bundleKey(item.billerCode, item.itemCode);
    if (live.has(key)) invalid("Ambiguous duplicate item in live provider catalogue");
    live.set(key, item);
  }
  return Object.freeze(approved.flatMap(item => {
    if (!item.enabled || validUtcDate(item.expiresAt) <= now.getTime()) return [];
    const current = live.get(bundleKey(item.billerCode, item.itemCode));
    if (!current || current.currency !== "NGN" ||
        normalizeNgn(current.amount) !== normalizeNgn(item.providerAmount)) {
      return [];
    }
    const value: VerifiedWholeGbBundle = Object.freeze({
      id: bundleKey(item.billerCode, item.itemCode),
      version: item.version,
      network: item.network,
      allowanceGb: item.allowanceGb,
      costMb: item.allowanceGb * 1000,
      validityDays: item.validityDays,
      providerAmount: item.providerAmount,
      billerCode: item.billerCode,
      itemCode: item.itemCode,
      expiresAt: item.expiresAt,
    });
    return [value];
  }).sort((a, b) =>
    a.network === b.network
      ? a.costMb - b.costMb
      : a.network.localeCompare(b.network)
  ));
}

/**
 * Nigeria is the only currently documented Flutterwave biller geography.
 * Treat recipient as data-only, not as an account, wallet recipient, or KYC.
 */
export function normalizeNigerianMobile(value: string): string {
  if (typeof value !== "string" || value.length > 24) {
    throw new GbDataCatalogueError("invalid_phone", "Invalid mobile number");
  }
  const input = value.trim();
  const normalized = /^0(?:70|80|81|90|91)\d{8}$/.test(input)
    ? `+234${input.slice(1)}`
    : input;
  if (!/^\+234(?:70|80|81|90|91)\d{8}$/.test(normalized)) {
    throw new GbDataCatalogueError("invalid_phone", "An eligible Nigerian mobile number is required");
  }
  return normalized;
}

/**
 * Preview only: a durable execution must reload provider items and approvals,
 * confirm the quote version and identity, then reserve purchased MB under an
 * idempotent ledger operation BEFORE calling the existing provider adapter.
 */
export function quoteVerifiedWholeGb(
  options: Readonly<{
    approved: readonly ApprovedWholeGbBundle[];
    liveItems: readonly FlutterwaveBillItem[];
    itemId: string;
    version: string;
    recipientPhone: string;
    now?: Date;
  }>,
): WholeGbQuote {
  const now = options.now ?? new Date();
  const recipientPhone = normalizeNigerianMobile(options.recipientPhone);
  const matches = projectVerifiedWholeGbBundles(options.approved, options.liveItems, now)
    .filter(item => item.id === options.itemId);
  if (matches.length !== 1) {
    throw new GbDataCatalogueError("bundle_unavailable", "Verified GB bundle is unavailable");
  }
  const selected = matches[0]!;
  if (selected.version !== options.version) {
    throw new GbDataCatalogueError("stale_selection", "Bundle configuration changed; review current terms");
  }
  return Object.freeze({
    ...selected,
    recipientPhone,
    quoteExpiresAt: new Date(Math.min(now.getTime() + 120_000, Date.parse(selected.expiresAt))).toISOString(),
    requiresWalletReservation: true as const,
    feeMb: 0 as const,
  });
}
