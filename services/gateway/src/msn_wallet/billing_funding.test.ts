import { describe, expect, it } from "vitest";
import type { Pool } from "@masanawa/postgres";
import { createMsnwBillingFunding, MsnwBillingError, msnwForKobo } from "./billing_funding.js";

describe("MSNW exact-value Flutterwave bill settlement", () => {
  it("calculates six-decimal MSNW from configured NGN price without floating point", () => {
    expect(msnwForKobo(10000,10000n)).toBe("1000000");
    expect(msnwForKobo(10001,10000n)).toBe("1000100");
    expect(msnwForKobo(1,10000n)).toBe("100");
    expect(msnwForKobo(1,2000000n)).toBe("1");
    expect(() => msnwForKobo(0,10000n)).toThrow(MsnwBillingError);
    expect(() => msnwForKobo(100,0n)).toThrow(MsnwBillingError);
  });
  it("refuses unconfigured economic pricing; never guesses token-to-NGN rate", () => {
    const pool = {} as Pool;
    expect(() => createMsnwBillingFunding({
      pool,quotes:{} as never,rateKoboPerMsnw:"0",
    })).toThrow("msnw.billing.rate_not_configured");
    expect(() => createMsnwBillingFunding({
      pool,quotes:{} as never,rateKoboPerMsnw:"1.5",
    })).toThrow("msnw.billing.rate_not_configured");
  });
  it("replays an immutable quote only after matching owner and provider terms", async () => {
    const statements:string[]=[];
    const original={tenantId:"t1",userId:"u1",quoteId:"quote-1"};
    const db={
      async query(sql:string) {
        statements.push(sql);
        if(sql.startsWith("SELECT * FROM commerce.msnw_billing_reservations"))
          return {rowCount:1,rows:[{
            tenant_id:"t1",user_id:"u1",quote_id:"quote-1",
            quote_revision:1,biller_code:"mtn",item_code:"data",
            customer_id:"08030000000",provider_ngn_kobo:"50000",
          }]};
        return {rowCount:0,rows:[]};
      },
      release() {},
    };
    const pool={async connect(){return db;}} as unknown as Pool;
    const service=createMsnwBillingFunding({
      pool,quotes:{} as never,rateKoboPerMsnw:"100",
    });
    const base={
      ...original,quoteRevision:1,fulfillmentReference:"msnw-bill-quote-1",
      categoryCode:"MOBILEDATA",billerCode:"mtn",itemCode:"data",
      customerId:"08030000000",amount:"500",currency:"NGN" as const,
    };
    await expect(service.funding.reserveConfirmedBill(base)).resolves.toBeUndefined();
    await expect(service.funding.reserveConfirmedBill({
      ...base,customerId:"08039999999",
    })).rejects.toMatchObject({code:"msnw.billing.replay_conflict"});
    expect(statements).not.toContain("UPDATE commerce.msnw_custody_accounts");
  });
  it("rejects insufficient real custody holdings before creating a reservation", async () => {
    const statements:string[]=[];
    const db={
      async query(sql:string) {
        statements.push(sql);
        if(sql.startsWith("SELECT * FROM commerce.msnw_billing_reservations"))
          return {rowCount:0,rows:[]};
        if(sql.startsWith("SELECT revision,state"))
          return {rowCount:1,rows:[{
            revision:1,state:"confirmed",expires_at:new Date(Date.now()+60000),
            checkout_tx_ref:null,payment_verified_at:null,
            biller_code:"mtn",item_code:"data",customer_id:"08030000000",
            service_amount_kobo:50000,total_amount_kobo:50000,
            currency:"NGN",confirmed_at:new Date(),
          }]};
        if(sql.startsWith("SELECT available_micro"))
          return {rowCount:1,rows:[{available_micro:"100"}]};
        return {rowCount:0,rows:[]};
      },
      release() {},
    };
    const pool={async connect(){return db;}} as unknown as Pool;
    const service=createMsnwBillingFunding({
      pool,quotes:{} as never,rateKoboPerMsnw:"100",
    });
    await expect(service.funding.reserveConfirmedBill({
      tenantId:"t1",userId:"u1",quoteId:"quote-1",
      quoteRevision:1,fulfillmentReference:"msnw-bill-quote-1",
      categoryCode:"MOBILEDATA",billerCode:"mtn",itemCode:"data",
      customerId:"08030000000",amount:"500",currency:"NGN",
    })).rejects.toMatchObject({code:"msnw.billing.insufficient_funds"});
    expect(statements.some(s=>s.startsWith("INSERT INTO commerce.msnw_billing_reservations")))
      .toBe(false);
    expect(statements).toContain("ROLLBACK");
  });
});
