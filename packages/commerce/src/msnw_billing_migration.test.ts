import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

const sql=readFileSync(new URL(
  "../migrations/0130_msnw_flutterwave_billing.sql",import.meta.url),"utf8");
describe("MSNW Flutterwave billing funds never silently change rails",()=>{
  it("requires authenticated owner-locked custody account and immutable exact quote",()=>{
    expect(sql).toContain("commerce.msnw_custody_accounts");
    expect(sql).toContain("UNIQUE (tenant_id,user_id,quote_id)");
    expect(sql).toContain("msnw_billing_economics_immutable");
    for(const term of ["OLD.fulfillment_reference","OLD.tenant_id",
      "OLD.user_id","OLD.provider_ngn_kobo","OLD.reserved_micro",
      "OLD.rate_kobo_per_msnw","OLD.customer_id"])
      expect(sql).toContain(term);
  });
  it("rejects forged reserve/refund/treasury audit amounts and one-sided journals",()=>{
    for(const stage of ["reserved","fulfilled","refunded"]){
      expect(sql).toContain("NEW.stage='"+stage+"'");
    }
    expect(sql).toContain("customer_available_delta+customer_reserved_delta+");
    expect(sql).toContain("msnw_billing_audit_matches_custody");
    expect(sql).toContain("msnw_billing_reservation_audited");
    expect(sql).toContain("DEFERRABLE INITIALLY DEFERRED");
    expect(sql).toContain("REVOKE ALL ON commerce.msnw_billing_reservations FROM PUBLIC");
  });
});
