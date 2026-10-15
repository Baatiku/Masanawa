/**
 * Recover incomplete Paystack-to-MSNW funding journal writes after a network
 * interruption. This does NOT authorize or execute minting, transfers or any
 * customer-spendable balance. Exact amounts and ownership come from immutable
 * independent Paystack verification, never from a customer request.
 */
export function createMsnwFundingObligationRecovery(pool: Readonly<{
  query(sql: string): Promise<{ rowCount: number | null }>;
}>) {
  return Object.freeze({
    async runOnce(): Promise<Readonly<{ registered: number }>> {
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
