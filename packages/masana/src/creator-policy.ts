/**
 * Canonical creator product policy and precise quote computations.
 * This module does not move MSNW; quotes MUST be authorized, persisted and
 * settled through the existing MSNW Wallet authority.
 */
export interface CreatorPolicy {
  readonly revision: number;
  readonly creationFeeAtomic: string;
  readonly firstFreeAgentCount: number;
  readonly freeSubstantiveEdits: number;
  readonly paidEditFeeAtomic: string;
  /** A 30% split is represented as 3000 basis points. */
  readonly creatorRevenueShareBps: number;
  readonly maxPostsPerWeek: number;
}

/** Refuse to guess token precision. The caller obtains it from the live MSNW asset registry. */
export function creatorDefaultPolicy(msnwPrecision: number): CreatorPolicy {
  return Object.freeze({
    revision: 1,
    creationFeeAtomic: creationFeeForPrecision(msnwPrecision, 5000),
    firstFreeAgentCount: 1,
    freeSubstantiveEdits: 3,
    paidEditFeeAtomic: creationFeeForPrecision(msnwPrecision, 100),
    creatorRevenueShareBps: 3000,
    maxPostsPerWeek: 2,
  });
}

export function atomic(value: string): bigint {
  if (typeof value !== "string" || !/^(0|[1-9][0-9]{0,77})$/u.test(value)) {
    throw new TypeError("creator.invalid_atomic_amount");
  }
  return BigInt(value);
}

export function validateCreatorPolicy(value: unknown): CreatorPolicy {
  if (value === null || typeof value !== "object" || Array.isArray(value)) {
    throw new TypeError("creator.invalid_policy");
  }
  const v = value as Record<string, unknown>;
  for (const name of ["revision", "firstFreeAgentCount", "freeSubstantiveEdits", "creatorRevenueShareBps", "maxPostsPerWeek"]) {
    if (typeof v[name] !== "number" || !Number.isSafeInteger(v[name]) || Number(v[name]) < 0) {
      throw new TypeError("creator.invalid_" + name);
    }
  }
  if (Number(v.revision) < 1 || Number(v.firstFreeAgentCount) > 10 ||
      Number(v.freeSubstantiveEdits) > 100 ||
      Number(v.creatorRevenueShareBps) > 10000 || Number(v.maxPostsPerWeek) > 21) {
    throw new RangeError("creator.policy_out_of_range");
  }
  atomic(v.creationFeeAtomic as string);
  atomic(v.paidEditFeeAtomic as string);
  return Object.freeze({
    revision: Number(v.revision),
    creationFeeAtomic: v.creationFeeAtomic as string,
    firstFreeAgentCount: Number(v.firstFreeAgentCount),
    freeSubstantiveEdits: Number(v.freeSubstantiveEdits),
    paidEditFeeAtomic: v.paidEditFeeAtomic as string,
    creatorRevenueShareBps: Number(v.creatorRevenueShareBps),
    maxPostsPerWeek: Number(v.maxPostsPerWeek),
  });
}

export interface CreatorFeeQuote {
  readonly kind: "creation" | "substantive_edit";
  readonly policyRevision: number;
  readonly amountAtomic: string;
  readonly asset: "MSNW";
  readonly entitlement: "free" | "paid";
}
/** Lifetime successful publications, including retired or removed agents. */
export function quoteCreatorPublication(policy: CreatorPolicy, lifetimePublications: number): CreatorFeeQuote {
  if (!Number.isSafeInteger(lifetimePublications) || lifetimePublications < 0) {
    throw new TypeError("creator.invalid_publication_count");
  }
  const free = lifetimePublications < policy.firstFreeAgentCount;
  return Object.freeze({
    kind: "creation",
    policyRevision: policy.revision,
    amountAtomic: free ? "0" : policy.creationFeeAtomic,
    asset: "MSNW",
    entitlement: free ? "free" : "paid",
  });
}
/** Successful substantive published revisions, excluding initial creation and previews. */
export function quoteCreatorEdit(policy: CreatorPolicy, completedSubstantiveEdits: number): CreatorFeeQuote {
  if (!Number.isSafeInteger(completedSubstantiveEdits) || completedSubstantiveEdits < 0) {
    throw new TypeError("creator.invalid_edit_count");
  }
  const free = completedSubstantiveEdits < policy.freeSubstantiveEdits;
  return Object.freeze({
    kind: "substantive_edit",
    policyRevision: policy.revision,
    amountAtomic: free ? "0" : policy.paidEditFeeAtomic,
    asset: "MSNW",
    entitlement: free ? "free" : "paid",
  });
}

/** An exact creator share from eligible settled proceeds AFTER direct costs and refunds. */
export function allocateCreatorRevenue(input: {
  readonly eligibleRevenueAtomic: string;
  readonly directCostAtomic: string;
  readonly refundedAtomic: string;
  readonly creatorRevenueShareBps: number;
}): {
  readonly contributionAtomic: string;
  readonly creatorShareAtomic: string;
  readonly platformShareAtomic: string;
} {
  const revenue = atomic(input.eligibleRevenueAtomic);
  const cost = atomic(input.directCostAtomic);
  const refunded = atomic(input.refundedAtomic);
  if (!Number.isSafeInteger(input.creatorRevenueShareBps) ||
      input.creatorRevenueShareBps < 0 || input.creatorRevenueShareBps > 10000) {
    throw new TypeError("creator.invalid_share");
  }
  const contribution = revenue > cost + refunded ? revenue - cost - refunded : 0n;
  const creator = contribution * BigInt(input.creatorRevenueShareBps) / 10000n;
  return Object.freeze({
    contributionAtomic: String(contribution),
    creatorShareAtomic: String(creator),
    platformShareAtomic: String(contribution - creator),
  });
}

/** Convert visible MSNW to exact atomic units ONLY after asset precision is qualified. */
export function creationFeeForPrecision(msnwPrecision: number, visibleAmount = 5000): string {
  if (!Number.isSafeInteger(msnwPrecision) || msnwPrecision < 0 || msnwPrecision > 18 ||
      !Number.isSafeInteger(visibleAmount) || visibleAmount < 0) {
    throw new TypeError("creator.invalid_msnw_precision");
  }
  return String(BigInt(visibleAmount) * (10n ** BigInt(msnwPrecision)));
}
