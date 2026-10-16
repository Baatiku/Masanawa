import { readFileSync } from "node:fs";
import { describe,expect,it } from "vitest";

const sql=readFileSync(new URL(
  "../migrations/0131_msnw_nowpayments_usdt_conversion.sql",import.meta.url),"utf8");
describe("MSNW crypto withdrawal journal",()=>{
  it("pins destination, precise token amount, provider network and original authorized rate",()=>{
    for(const term of ["OLD.provider_code","OLD.destination_address",
      "OLD.source_micro","OLD.target_micro","OLD.idempotency_key",
      "OLD.quote_expires_at","OLD.fee_estimate_micro",
      "msnw_usdt_terms_immutable","UNIQUE(tenant_id,user_id,idempotency_key)"])
      expect(sql).toContain(term);
  });
  it("balances custody reserves and prevents unreceipted or publicly altered journals",()=>{
    expect(sql).toContain("msnw_usdt_audit_matches_money");
    expect(sql).toContain("CREATE CONSTRAINT TRIGGER msnw_usdt_reserve_audited");
    expect(sql).toContain("DEFERRABLE INITIALLY DEFERRED");
    expect(sql).toContain("available_delta+reserved_delta+treasury_collected_delta=0");
    expect(sql).toContain("REVOKE ALL ON commerce.msnw_usdt_payouts FROM PUBLIC");
    expect(sql).toContain("REVOKE ALL ON commerce.msnw_usdt_payout_audit FROM PUBLIC");
  });
});
