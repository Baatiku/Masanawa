import type { PaystackDvaPg } from "./paystack_dva.js";

/**
 * Reconcile one irrevocable provider-observed NGN funding obligation.
 * Token issuance, balance and pricing MUST never be inferred from it.
 */
export async function ensureMsnwFundingObligation(
  pool: PaystackDvaPg,
  input: Readonly<{ tenantId: string; userId: string; reference: string }>,
): Promise<Readonly<{ reference: string; amountKobo: string; state: "backing_pending" }>> {
  if (!/^[A-Za-z0-9][A-Za-z0-9:._-]{0,127}$/.test(input.tenantId) ||
      !/^[A-Za-z0-9][A-Za-z0-9:._-]{0,127}$/.test(input.userId) ||
      !/^[A-Za-z0-9_.:-]{1,128}$/.test(input.reference))
    throw new Error("msnw.obligation.identity_invalid");
  // INSERT ... SELECT ensures amount, custody claim and ownership originate
  // exclusively from immutable independently verified Paystack evidence.
  await pool.query(
    "INSERT INTO commerce.msnw_funding_obligations " +
    "(reference,tenant_id,user_id,amount_kobo,paystack_evidence_sha256) " +
    "SELECT reference,tenant_id,user_id,amount_kobo,provider_evidence_sha256 " +
    "FROM commerce.msnw_paystack_fiat_evidence " +
    "WHERE reference=$1 AND tenant_id=$2 AND user_id=$3 " +
    "ON CONFLICT DO NOTHING",
    [input.reference, input.tenantId, input.userId],
  );
  const result = await pool.query(
    "SELECT reference,tenant_id,user_id,amount_kobo::text AS amount_kobo," +
    "paystack_evidence_sha256 FROM commerce.msnw_funding_obligations " +
    "WHERE reference=$1",
    [input.reference],
  );
  const record = result.rows[0];
  if (result.rowCount !== 1 || !record ||
      record.reference !== input.reference ||
      record.tenant_id !== input.tenantId ||
      record.user_id !== input.userId ||
      typeof record.amount_kobo !== "string" ||
      !/^[1-9][0-9]*$/.test(record.amount_kobo) ||
      typeof record.paystack_evidence_sha256 !== "string" ||
      !/^[0-9a-f]{64}$/.test(record.paystack_evidence_sha256))
    throw new Error("msnw.obligation.owner_or_evidence_conflict");
  return Object.freeze({
    reference: input.reference, amountKobo: record.amount_kobo,
    state: "backing_pending" as const,
  });
}

/** No token holdings are claimed by this read-only liability inventory. */
export async function listMsnwFundingObligations(
  pool: PaystackDvaPg, tenantId: string, userId: string,
): Promise<readonly Readonly<{
  reference: string; amountKobo: string; state: "backing_pending";
  registeredAt: string;
}>[]> {
  const result = await pool.query(
    "SELECT reference,amount_kobo::text AS amount_kobo,registered_at " +
    "FROM commerce.msnw_funding_obligations WHERE tenant_id=$1 AND user_id=$2 " +
    "ORDER BY registered_at DESC,reference DESC LIMIT 100",
    [tenantId, userId],
  );
  return Object.freeze(result.rows.map(row => {
    const registeredAt = row.registered_at instanceof Date
      ? row.registered_at.toISOString() : row.registered_at;
    if (typeof row.reference !== "string" ||
        typeof row.amount_kobo !== "string" ||
        !/^[1-9][0-9]*$/.test(row.amount_kobo) ||
        typeof registeredAt !== "string" || !Number.isFinite(Date.parse(registeredAt)))
      throw new Error("msnw.obligation.readback_invalid");
    return Object.freeze({
      reference: row.reference, amountKobo: row.amount_kobo,
      state: "backing_pending" as const, registeredAt,
    });
  }));
}
