/** Accounting policies for the single restricted-credit GB wallet. */
export type GbUse = "reply" | "connected_call" | "send" | "tip" | "redeem";

export interface WalletSpendBuckets {
  readonly purchasedMb: number;
  readonly welcomeMb: number;
  readonly reservedPurchasedMb: number;
  readonly reservedWelcomeMb: number;
}

export function assertWalletSpendBuckets(value: WalletSpendBuckets): void {
  for (const amount of Object.values(value)) {
    if (!Number.isSafeInteger(amount) || amount < 0) {
      throw new TypeError("Wallet buckets must be nonnegative integer MB");
    }
  }
  if (value.reservedPurchasedMb > value.purchasedMb ||
      value.reservedWelcomeMb > value.welcomeMb) {
    throw new RangeError("Reservations cannot exceed source buckets");
  }
}

export function availableForUse(value: WalletSpendBuckets, use: GbUse): number {
  assertWalletSpendBuckets(value);
  const purchased = value.purchasedMb - value.reservedPurchasedMb;
  const welcome = value.welcomeMb - value.reservedWelcomeMb;
  return use === "reply" || use === "connected_call"
    ? purchased + welcome
    : purchased;
}

/**
 * Propose a reservation allocation. Must be committed under DB row locking
 * and an idempotency key; this pure calculation is NOT authorization to debit.
 */
export function allocateSpend(
  value: WalletSpendBuckets,
  use: GbUse,
  amountMb: number,
): { readonly purchasedMb: number; readonly welcomeMb: number } {
  if (!Number.isSafeInteger(amountMb) || amountMb <= 0) {
    throw new TypeError("Spend amount must be a positive whole number of MB");
  }
  if (amountMb > availableForUse(value, use)) {
    throw new RangeError("Insufficient available MB");
  }
  const freeWelcome = use === "reply" || use === "connected_call"
    ? value.welcomeMb - value.reservedWelcomeMb : 0;
  const welcomeMb = Math.min(amountMb, freeWelcome);
  return { welcomeMb, purchasedMb: amountMb - welcomeMb };
}

/** Ringing/setup/failed connections do not consume MB. */
export function connectedCallCostMb(connectedDurationMs: number | null): number {
  if (connectedDurationMs === null) return 0;
  if (!Number.isSafeInteger(connectedDurationMs) || connectedDurationMs < 0) {
    throw new TypeError("Invalid connected call duration");
  }
  return connectedDurationMs === 0
    ? 0
    : Math.floor((connectedDurationMs - 1) / 1_000) + 1;
}

/** Only successful, uniquely identified Masana replies cost 1 MB. */
export function successfulReplyCostMb(delivered: boolean): number {
  return delivered ? 1 : 0;
}
