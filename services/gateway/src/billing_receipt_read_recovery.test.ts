import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import {
  FlutterwaveBillsClient,
  type BillingFulfillmentRecord,
  type BillingFulfillmentStore,
  type FlutterwaveBillsTransport,
} from "@masanawa/providers";
import { createBillingFinancialService } from "./financial_billing.js";

class ScopedStore implements BillingFulfillmentStore {
  record: BillingFulfillmentRecord | null = null;
  async createIfAbsent(input: BillingFulfillmentRecord) {
    if (this.record) return { record: this.record, created: false };
    this.record = input;
    return { record: input, created: true };
  }
  async read(reference: string) {
    return this.record?.fulfillmentReference === reference ? this.record : null;
  }
  async compareAndSet(expectedRevision: number, next: BillingFulfillmentRecord) {
    if (!this.record || this.record.revision !== expectedRevision) {
      throw new Error("stale bill revision");
    }
    this.record = next;
    return next;
  }
}

describe("owner-scoped Bills receipt read vs purchase admission", () => {
  it("a read-only 404 cannot strand a ready bill, open another user's receipt or dispatch payment", async () => {
    const tenantId = createCanonicalId("tenant");
    const userId = createCanonicalId("user");
    const outsiderId = createCanonicalId("user");
    const owner = { tenantId, userId };
    const reference = "bill-ready-status-probe";
    const owned = new ScopedStore();
    const other = new ScopedStore();
    await owned.createIfAbsent({
      fulfillmentReference: reference,
      billerCode: "BIL119",
      itemCode: "CB141",
      itemName: "Utility 100",
      customerId: "0000111122",
      customerName: "Test owner",
      amount: "100",
      currency: "NGN",
      revision: 1,
      state: "ready",
      providerReference: null,
      providerStatus: null,
      lastEvidenceAt: null,
    });

    const posted: unknown[] = [];
    const transport: FlutterwaveBillsTransport = {
      async request(req) {
        if (req.method === "GET" && req.path === `/v3/bills/${reference}`) {
          return { status: 404, body: { status: "error" } };
        }
        if (req.method === "GET" && req.path === "/v3/billers/BIL119/items") {
          return {
            status: 200,
            body: { status: "success", data: [{
              biller_code: "BIL119", item_code: "CB141",
              name: "Utility 100", amount: "100", currency: "NGN",
            }] },
          };
        }
        if (req.method === "GET" && req.path === "/v3/bill-items/CB141/validate") {
          return {
            status: 200,
            body: { status: "success", data: {
              response_code: "00", response_message: "Validated",
              customer: "0000111122", name: "Test owner",
              biller_code: "BIL119", product_code: "CB141",
              minimum: "50", maximum: "500",
            } },
          };
        }
        if (req.method === "POST") {
          posted.push(req.body);
          return {
            status: 200,
            body: { status: "success", data: {
              customer_reference: reference, flw_ref: "FLW-123",
              status: "successful", amount: "100",
              currency: "NGN", customer_id: "0000111122",
              product: "CB141", product_name: "Utility 100",
            } },
          };
        }
        throw new Error(`unexpected request: ${req.method} ${req.path}`);
      },
    };
    const reserveConfirmedBill = vi.fn(async () => {});
    const settleBill = vi.fn(async () => {});
    const service = createBillingFinancialService({
      billingStore: (identity) =>
        identity.tenantId === tenantId && identity.userId === userId ? owned : other,
      webhookRepository: {
        async admitProviderWebhook() { return { duplicate: false }; },
      },
      authorizer: {
        async authorize(input) {
          if (input.authorizationHeader === "Bearer owner") return owner;
          if (input.authorizationHeader === "Bearer outsider") {
            return { tenantId, userId: outsiderId };
          }
          throw new Error("financial.auth.unauthorized");
        },
      },
      flutterwaveSecretKey: "test-secret",
      flutterwaveWebhookHash: "test-webhook-hash",
      flutterwaveWebhookUrl: "https://example.test/webhooks/flutterwave",
      providerClient: new FlutterwaveBillsClient({
        secretKey: "test-secret", transport,
      }),
      billingFunding: { reserveConfirmedBill, settleBill },
    });

    await expect(service.readPurchase({
      authorizationHeader: "Bearer outsider", reference, refresh: true,
    })).rejects.toThrow("financial.billing_not_found");
    expect(posted).toHaveLength(0);

    const untouched = await service.readPurchase({
      authorizationHeader: "Bearer owner", reference, refresh: true,
    });
    expect(untouched).toMatchObject({ state: "ready", revision: 1 });
    expect(owned.record).toMatchObject({ state: "ready", revision: 1 });
    expect(posted).toHaveLength(0);
    expect(reserveConfirmedBill).not.toHaveBeenCalled();
    expect(settleBill).not.toHaveBeenCalled();

    const executed = await service.purchaseOwned({
      ...owner,
      quoteId: "confirmed-quote-123",
      quoteRevision: 1,
      requestId: reference,
      billerCode: "BIL119",
      itemCode: "CB141",
      itemName: "Utility 100",
      customerId: "0000111122",
      amount: "100",
    });
    expect(executed.state).toBe("succeeded");
    expect(posted).toHaveLength(1);
    expect(reserveConfirmedBill).toHaveBeenCalledOnce();
    expect(settleBill).toHaveBeenCalledOnce();
    expect(posted[0]).toMatchObject({
      reference,
      customer_id: "0000111122",
      amount: "100",
    });

    await expect(service.readPurchase({
      authorizationHeader: "Bearer owner", reference, refresh: true,
    })).resolves.toMatchObject({ state: "succeeded" });
    expect(posted).toHaveLength(1);
  });
});
