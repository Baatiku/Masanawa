/**
 * Recover incomplete Paystack-to-MSNW funding journal writes after a network
 * interruption. This does NOT authorize or execute minting, transfers or any
 * customer-spendable balance. Exact amounts and ownership come from immutable
 * independent Paystack verification, never from a customer request.
 */
export function createMsnwFundingObligationRecovery(pool: Readonly<{
  query(sql: string): Promise<{ rowCount: number | null; rows?: Record<string, unknown>[] }>;
}>) {
  return Object.freeze({
    async runOnce(): Promise<Readonly<{ registered: number }>> {
      const audit = await pool.query(
        "SELECT count(*)::text AS mismatches " +
        "FROM commerce.msnw_funding_obligations o " +
        "LEFT JOIN commerce.msnw_paystack_fiat_evidence e " +
        "ON e.reference=o.reference " +
        "WHERE e.reference IS NULL OR e.tenant_id IS DISTINCT FROM o.tenant_id " +
        "OR e.user_id IS DISTINCT FROM o.user_id " +
        "OR e.amount_kobo IS DISTINCT FROM o.amount_kobo " +
        "OR e.provider_evidence_sha256 IS DISTINCT FROM o.paystack_evidence_sha256",
      );
      const mismatches = audit.rows?.[0]?.mismatches;
      if (typeof mismatches !== "string" || !/^[0-9]+$/.test(mismatches))
        throw new Error("msnw.obligation.audit_unavailable");
      if (BigInt(mismatches) !== 0n)
        throw new Error("msnw.obligation.evidence_mismatch");
      const result = await pool.query(
        "WITH missing AS (" +
        " SELECT e.reference,e.tenant_id,e.user_id,e.amount_kobo," +
        " e.provider_evidence_sha256" +
        " FROM commerce.msnw_paystack_fiat_evidence e" +
        " LEFT JOIN commerce.msnw_funding_obligations o ON o.reference=e.reference" +
        " WHERE o.reference IS NULL" +
        " ORDER BY e.created_at ASC,e.reference ASC LIMIT 100" +
        ") INSERT INTO commerce.msnw_funding_obligations" +
        " (reference,tenant_id,user_id,amount_kobo,paystack_evidence_sha256)" +
        " SELECT reference,tenant_id,user_id,amount_kobo,provider_evidence_sha256" +
        " FROM missing ON CONFLICT DO NOTHING RETURNING reference",
      );
      return Object.freeze({ registered: result.rowCount ?? 0 });
    },
  });
}
