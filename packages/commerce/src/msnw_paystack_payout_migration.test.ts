import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

const sql = readFileSync(new URL(
  "../migrations/0129_msnw_paystack_payout_proof.sql",import.meta.url),"utf8");

describe("MSNW Paystack merchant payout settlement schema",()=>{
  it("references immutable funding obligations and exact provider transactions",()=>{
    expect(sql).toContain("REFERENCES commerce.msnw_funding_obligations(reference)");
    for(const identity of [
      "original.provider_transaction_id IS DISTINCT FROM NEW.provider_transaction_id",
      "original.amount_kobo IS DISTINCT FROM NEW.original_amount_kobo",
      "original.currency IS DISTINCT FROM 'NGN'",
    ]) expect(sql).toContain(identity);
    expect(sql).toContain("msnw_paystack_payout_require_original");
  });
  it("keeps provider payouts separate from issuance and immutable",()=>{
    expect(sql).toContain("msnw_paystack_payout_matches_immutable");
    expect(sql).toContain("msnw_paystack_merchant_settlement_immutable");
    expect(sql).not.toContain("UPDATE commerce.msnw_custody_accounts");
    expect(sql).not.toContain("INSERT INTO commerce.msnw_settlement_events");
    expect(sql).toContain("REVOKE ALL ON commerce.msnw_paystack_payout_matches FROM PUBLIC");
  });
});
