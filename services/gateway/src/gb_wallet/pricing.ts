/**
 * GB Wallet bank funding price authority.
 *
 * Input amounts and tier prices are integer kobo; no floating point NGN
 * arithmetic, legacy MSNW conversion or implicit crediting is permitted.
 * The selected package is a hint only. The actual verified amount determines
 * the tier. Persist the returned rate version and exact fractional carry in
 * the authoritative, transactionally serialized funding ledger.
 */
export interface RechargeTier {
  readonly sizeGb: number;
  readonly totalKobo: number;
}

export interface RechargeRateBook {
  readonly version: string;
  readonly tiers: readonly RechargeTier[];
}

export interface ExactKoboRemainder {
  /** Nonnegative integer numerator of an exact kobo fraction. */
  readonly numerator: string;
  /** Positive integer denominator. */
  readonly denominator: string;
}

export interface DepositCreditQuote {
  readonly rateVersion: string;
  readonly verifiedAmountKobo: number;
  readonly qualifyingPackageGb: number;
  readonly pricePerGbKobo: number;
  readonly creditedMb: number;
  readonly remainder: ExactKoboRemainder;
}

export const DEFAULT_RECHARGE_RATE_BOOK: RechargeRateBook = Object.freeze({
  version: "gb-recharge-initial-v1",
  tiers: Object.freeze([
    { sizeGb: 10, totalKobo: 400_000 },
    { sizeGb: 20, totalKobo: 750_000 },
    { sizeGb: 50, totalKobo: 1_750_000 },
    { sizeGb: 100, totalKobo: 3_250_000 },
    { sizeGb: 200, totalKobo: 5_500_000 },
    { sizeGb: 280, totalKobo: 7_000_000 },
  ]),
});

const isPositiveSafeInteger = (value: number) =>
  Number.isSafeInteger(value) && value > 0;

export function validateRechargeRateBook(book: RechargeRateBook): void {
  if (!/^[a-z0-9][a-z0-9._-]{0,79}$/i.test(book.version) || book.tiers.length === 0) {
    throw new TypeError("Invalid recharge rate version or empty tiers");
  }
  let lastSize = 0;
  let lastPrice = 0;
  let lastUnitPrice = Number.POSITIVE_INFINITY;
  for (const tier of book.tiers) {
    if (!isPositiveSafeInteger(tier.sizeGb) ||
        !isPositiveSafeInteger(tier.totalKobo) ||
        tier.sizeGb <= lastSize ||
        tier.totalKobo <= lastPrice ||
        tier.totalKobo % tier.sizeGb !== 0) {
      throw new TypeError("Recharge tiers must have increasing sizes and totals with exact kobo per GB");
    }
    const unitPrice = tier.totalKobo / tier.sizeGb;
    if (unitPrice >= lastUnitPrice) {
      throw new TypeError("Larger packages must have a strictly lower unit price");
    }
    lastSize = tier.sizeGb;
    lastPrice = tier.totalKobo;
    lastUnitPrice = unitPrice;
  }
}

function gcd(a: bigint, b: bigint): bigint {
  while (b !== 0n) [a, b] = [b, a % b];
  return a;
}

function parseRemainder(carry: ExactKoboRemainder | undefined): [bigint, bigint] {
  if (!carry) return [0n, 1n];
  if (!/^\d{1,64}$/.test(carry.numerator) ||
      !/^[1-9]\d{0,63}$/.test(carry.denominator)) {
    throw new TypeError("Invalid exact kobo remainder");
  }
  const numerator = BigInt(carry.numerator);
  const denominator = BigInt(carry.denominator);
  if (numerator >= denominator) {
    throw new TypeError("Kobo remainder must be less than one kobo");
  }
  return [numerator, denominator];
}

/**
 * Quote a VERIFIED deposit, never package selection. Rates apply to the
 * current deposit alone, not the sum of unrelated deposits. Any fractional
 * kobo from previous floor-to-whole-MB conversions is carried exactly.
 */
export function quoteVerifiedDeposit(
  verifiedAmountKobo: number,
  book: RechargeRateBook,
  carry?: ExactKoboRemainder,
): DepositCreditQuote {
  validateRechargeRateBook(book);
  if (!isPositiveSafeInteger(verifiedAmountKobo)) {
    throw new TypeError("A verified deposit must be a positive safe integer number of kobo");
  }
  const tier = [...book.tiers].reverse()
    .find((candidate) => verifiedAmountKobo >= candidate.totalKobo)
    ?? book.tiers[0]!;
  const pricePerGbKobo = tier.totalKobo / tier.sizeGb;
  const [oldNumerator, oldDenominator] = parseRemainder(carry);
  const monetaryNumerator = BigInt(verifiedAmountKobo) * oldDenominator + oldNumerator;
  const mbNumerator = monetaryNumerator * 1_000n;
  const mbDenominator = BigInt(pricePerGbKobo) * oldDenominator;
  const credited = mbNumerator / mbDenominator;
  if (credited > BigInt(Number.MAX_SAFE_INTEGER)) {
    throw new RangeError("Quoted credit exceeds safe MB range");
  }
  const remainderNumerator = mbNumerator % mbDenominator;
  // Remainder is a monetary fraction in kobo, not a fraction of MB.
  // NB: pricePerGbKobo can exceed 1,000, so carry might be >= one kobo.
  const koboRemainderNumerator = remainderNumerator;
  const koboRemainderDenominator = oldDenominator * 1_000n;
  const divisor = gcd(koboRemainderNumerator, koboRemainderDenominator);
  return {
    rateVersion: book.version,
    verifiedAmountKobo,
    qualifyingPackageGb: tier.sizeGb,
    pricePerGbKobo,
    creditedMb: Number(credited),
    remainder: {
      numerator: (koboRemainderNumerator / divisor).toString(),
      denominator: (koboRemainderDenominator / divisor).toString(),
    },
  };
}

export function quotePackage(sizeGb: number, book: RechargeRateBook) {
  validateRechargeRateBook(book);
  const tier = book.tiers.find((entry) => entry.sizeGb === sizeGb);
  if (!tier) throw new TypeError("Unknown recharge package");
  return {
    rateVersion: book.version,
    sizeGb: tier.sizeGb,
    expectedMb: tier.sizeGb * 1_000,
    totalKobo: tier.totalKobo,
    pricePerGbKobo: tier.totalKobo / tier.sizeGb,
  };
}

/** Unit display uses decimal GB, not binary GiB. */
export function decimalGbFromMb(mb: number): string {
  if (!Number.isSafeInteger(mb) || mb < 0) throw new TypeError("Invalid MB amount");
  const whole = Math.floor(mb / 1_000);
  const fraction = String(mb % 1_000).padStart(3, "0").replace(/0+$/, "");
  return fraction.length ? `${whole}.${fraction}` : String(whole);
}
