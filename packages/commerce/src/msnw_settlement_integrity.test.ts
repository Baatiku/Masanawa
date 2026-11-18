import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

const sql = readFileSync(
  new URL("../migrations/0126_msnw_settlement_integrity.sql", import.meta.url),
  "utf8",
);

describe("MSNW immutable settlement integrity schema", () => {
  it("requires exact Paystack-verified owner, reference, amount and evidence", () => {
    for (const field of [
      "verified.tenant_id IS DISTINCT FROM NEW.tenant_id",
      "verified.user_id IS DISTINCT FROM NEW.user_id",
      "verified.amount_kobo IS DISTINCT FROM NEW.amount_kobo",
      "verified.provider_evidence_sha256 IS DISTINCT FROM NEW.paystack_evidence_sha256",
    ]) expect(sql).toContain(field);
    expect(sql).toContain("BEFORE INSERT ON commerce.msnw_funding_obligations");
  });

  it("serializes ordered mint lifecycle and refuses unmatched receipts", () => {
    expect(sql).toContain("FOR UPDATE");
    for (const state of ["backing_qualified", "mint_authorized",
                         "chain_submitted", "chain_finalized", "provider_reversed"])
      expect(sql).toContain(state);
    expect(sql).toContain("NEW.tx_hash IS DISTINCT FROM prior.tx_hash");
    expect(sql).toContain("NEW.amount_micro IS DISTINCT FROM prior.amount_micro");
    expect(sql).toContain("BEFORE INSERT ON commerce.msnw_settlement_events");
  });
});
