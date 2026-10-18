import { createHash } from "node:crypto";
import { describe, expect, it } from "vitest";
import { createMsnwPaystackFiatService } from "./paystack_fiat_evidence.js";

const secret = "sk_test_statusOnly123";
const tenantId = "tenant-A", userId = "customer-A";
const reference = "PSK-funding-12345";
const paidAt = "2026-10-18T09:00:00.000Z";
const evidenceHash = createHash("sha256").update(JSON.stringify([
  "msnw-paystack-dva-fiat-v1", reference, "12345", "50000",
  "67890", "0123456789", paidAt, "test",
])).digest("hex");
type Status = "backing_pending" | "merchant_payout_verified" | "msnw_issued";

function fixture(options: { replay: boolean; status: Status; foreignOwner?: boolean }) {
  const calls: string[] = [];
  const evidenceRow = {
    reference, amount_kobo: "50000", provider_paid_at: paidAt,
    tenant_id: options.foreignOwner ? "other-tenant" : tenantId,
    user_id: userId,
    customer_id: "67890", provider_transaction_id: "12345",
    funding_account_number: "0123456789",
    provider_evidence_sha256: evidenceHash,
  };
  const pool = {
    async query(sql: string, params: unknown[] = []) {
      calls.push(sql);
      if (sql.includes("FROM commerce.msnw_paystack_dva")) {
        return { rowCount: 1, rows: [{customer_id:"67890",
          account_number:"0123456789"}] };
      }
      if (sql.includes("INSERT INTO commerce.msnw_paystack_fiat_evidence")) {
        return options.replay
          ? {rowCount:0,rows:[]}
          : {rowCount:1,rows:[evidenceRow]};
      }
      if (sql.includes("WHERE reference=$1") &&
          sql.includes("provider_evidence_sha256") &&
          sql.includes("FROM commerce.msnw_paystack_fiat_evidence")) {
        return {rowCount:1,rows:[evidenceRow]};
      }
      if (sql.includes("INSERT INTO commerce.msnw_funding_obligations")) {
        return {rowCount:0,rows:[]};
      }
      if (sql.includes("FROM commerce.msnw_funding_obligations") &&
          sql.includes("paystack_evidence_sha256")) {
        return {rowCount:1,rows:[{
          reference,tenant_id:tenantId,user_id:userId,amount_kobo:"50000",
          paystack_evidence_sha256:evidenceHash,
        }]};
      }
      if (sql.includes("LEFT JOIN commerce.msnw_custody_issuances")) {
        expect(params).toEqual([tenantId,userId,reference]);
        expect(sql).toContain("e.reference=$3");
        return { rowCount:1,rows:[{
          reference,amount_kobo:"50000",provider_paid_at:paidAt,
          obligation_state:options.status,
          issued_micro: options.status==="msnw_issued" ? "3500000":null,
        }] };
      }
      throw new Error("Unexpected funding SQL: " + sql);
    },
  };
  const response = {status:true,data:{
    reference,status:"success",domain:"test",currency:"NGN",
    channel:"bank_transfer",id:12345,amount:50000,paid_at:paidAt,
    customer:{id:67890},
    authorization:{channel:"dedicated_nuban",
      receiver_bank_account_number:"0123456789"},
  }};
  const service = createMsnwPaystackFiatService({
    pool:pool as any,
    authorizer:{async authorize(){return {tenantId,userId};}},
    paystackSecretKey:secret,
    fetchImpl: async()=>new Response(JSON.stringify(response),{
      status:200,headers:{"content-type":"application/json"},
    }),
  });
  return { service,calls };
}

describe("verified MSNW funding status remains truthful on retry",()=>{
  it.each(["backing_pending","merchant_payout_verified","msnw_issued"] as const)(
    "new Paystack verification reads the authoritative %s state",async status=>{
      const f=fixture({replay:false,status});
      const result=await f.service.verify(tenantId,userId,reference);
      expect(result).toMatchObject({
        reference,state:"fiat_verified_backing_pending",
        obligationState:status,amountKobo:"50000",
      });
      expect(result.issuedMicro).toBe(status==="msnw_issued"?"3500000":undefined);
      expect(f.calls.some(sql=>sql.includes("LEFT JOIN commerce.msnw_custody_issuances")))
        .toBe(true);
    },
  );
  it.each(["backing_pending","merchant_payout_verified","msnw_issued"] as const)(
    "replayed Paystack verification never downgrades %s",async status=>{
      const f=fixture({replay:true,status});
      const result=await f.service.verify(tenantId,userId,reference);
      expect(result.obligationState).toBe(status);
      expect(result.issuedMicro).toBe(status==="msnw_issued"?"3500000":undefined);
    },
  );
  it("denies a provider-confirmed reference owned by another tenant",async()=>{
    const f=fixture({replay:true,status:"msnw_issued",foreignOwner:true});
    await expect(f.service.verify(tenantId,userId,reference))
      .rejects.toMatchObject({code:"funding.replay_conflict",statusCode:409});
    expect(f.calls.some(sql=>sql.includes("LEFT JOIN commerce.msnw_custody_issuances")))
      .toBe(false);
  });
});
