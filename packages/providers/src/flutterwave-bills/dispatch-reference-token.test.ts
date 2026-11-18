import { describe, expect, it, vi } from "vitest";
import {
  BillingCommerceOrchestrator,
  type BillingFulfillmentRecord,
  type BillingFulfillmentStore,
  type FlutterwaveBillingPort,
} from "./commerce-orchestrator.js";
import {
  FlutterwaveBillsClient,
  type FlutterwaveBillsTransport,
} from "./client.js";

const reference = "bill-owner-reference-001";
const bill = {
  fulfillmentReference: reference,
  billerCode: "BIL119",
  itemCode: "CB141",
  itemName: "Utility",
  customerId: "0000111122",
  amount: "100",
  catalogAmount: "100",
};

class MemoryStore implements BillingFulfillmentStore {
  record: BillingFulfillmentRecord | null = null;
  async createIfAbsent(input: BillingFulfillmentRecord) {
    if (this.record) return { record: this.record, created: false };
    this.record = input;
    return { record: input, created: true };
  }
  async read(id: string) {
    return this.record?.fulfillmentReference === id ? this.record : null;
  }
  async compareAndSet(version: number, next: BillingFulfillmentRecord) {
    if (!this.record || this.record.revision !== version) throw new Error("stale revision");
    this.record = next;
    return next;
  }
}

function successfulResponse(extra: Record<string, unknown> = {}) {
  return {
    customer_reference: reference,
    flw_ref: "BPUSSD-PROVIDER-1",
    status: "successful",
    amount: "100.0000",
    currency: "NGN",
    customer_id: bill.customerId,
    product: "ELECTRICITY",
    recharge_token: "1234-5678-9012",
    ...extra,
  };
}

describe("Flutterwave Bills POST reference / real recharge-token readback", () => {
  it("does not mistake Flutterwave's BPUSSD provider reference for our immutable request", async () => {
    const post = vi.fn(async (body: unknown) => body);
    let reads = 0;
    const transport: FlutterwaveBillsTransport = {
      async request(req) {
        if (req.method === "GET" && req.path === "/v3/bill-items/CB141/validate") {
          return {
            status: 200,
            body: { status: "success", data: {
              response_code: "00", response_message: "Valid",
              customer: bill.customerId,
              biller_code: bill.billerCode,
              product_code: bill.itemCode,
            } },
          };
        }
        if (req.method === "POST") {
          await post(req.body);
          return {
            status: 200,
            body: { status: "success", message: "Bill payment successful", data: {
              phone_number: bill.customerId,
              amount: 100,
              network: "Electricity",
              code: "200",
              tx_ref: "CF-FLYAPI-PROVIDER-1",
              reference: "BPUSSD-PROVIDER-1",
              batch_reference: null,
              recharge_token: "1234-5678-9012",
              fee: 0,
            } },
          };
        }
        if (req.method === "GET" && req.path === `/v3/bills/${reference}`) {
          reads += 1;
          return { status: 200, body: { status: "success", data: successfulResponse() } };
        }
        throw new Error(`unexpected ${req.method} ${req.path}`);
      },
    };
    const client = new FlutterwaveBillsClient({
      secretKey: "test-only-secret",
      transport,
    });
    const store = new MemoryStore();
    const service = new BillingCommerceOrchestrator({ store, provider: client });
    await service.prepare(bill);
    const dispatch = await service.dispatch(reference);
    expect(dispatch).toMatchObject({
      fulfillmentReference: reference,
      providerReference: "BPUSSD-PROVIDER-1",
      state: "checking",
    });
    // POST's code 200 and recharge_token do not prove recipient/currency;
    // do not reveal the token or call it fulfilled until independent readback.
    expect(dispatch.deliveryCode).toBeUndefined();
    expect(post).toHaveBeenCalledOnce();
    expect(post.mock.calls[0]?.[0]).toMatchObject({
      reference,
      customer_id: bill.customerId,
      amount: "100",
    });

    const delivered = await service.reconcile(reference);
    expect(delivered).toMatchObject({
      state: "succeeded",
      fulfillmentReference: reference,
      providerReference: "BPUSSD-PROVIDER-1",
      deliveryCode: "1234-5678-9012",
    });
    expect(reads).toBe(1);
    expect(post).toHaveBeenCalledOnce();
  });

  it("does not replace a conflicting explicit customer_reference with the requested reference", async () => {
    const transport: FlutterwaveBillsTransport = {
      async request() {
        return {
          status: 200,
          body: { status: "success", data: successfulResponse({
            customer_reference: "different-merchant-request",
          }) },
        };
      },
    };
    const client = new FlutterwaveBillsClient({
      secretKey: "test-only-secret", transport,
    });
    const result = await client.getStatus(reference);
    expect(result?.reference).toBe("different-merchant-request");
    expect(result?.providerReference).toBe("BPUSSD-PROVIDER-1");
  });

  it("never exposes an unverified token from pending status or a mismatched reference", async () => {
    const store = new MemoryStore();
    const provider: FlutterwaveBillingPort = {
      async validateCustomer(_item, customer) {
        return {
          valid: true,
          responseCode: "00",
          responseMessage: "Valid",
          customer,
          name: null,
          billerCode: bill.billerCode,
          productCode: bill.itemCode,
          minimum: null,
          maximum: null,
        };
      },
      async createPayment(input) {
        return {
          reference: input.reference,
          providerReference: "BP-1",
          status: "pending",
          amount: input.amount,
          currency: "NGN",
          customerId: input.customerId,
          product: "ELECTRICITY",
          productName: "Utility",
          rechargeToken: "UNVERIFIED-CODE",
          extra: null,
        };
      },
      async getStatus() {
        return {
          reference: "wrong-customer-reference",
          providerReference: "BP-1",
          status: "successful",
          amount: "100",
          currency: "NGN",
          customerId: bill.customerId,
          product: "ELECTRICITY",
          productName: "Utility",
          rechargeToken: "WRONG-REFERENCE-TOKEN",
          extra: null,
        };
      },
    };
    const service = new BillingCommerceOrchestrator({ store, provider });
    await service.prepare(bill);
    const pending = await service.dispatch(reference);
    expect(pending.state).toBe("checking");
    expect(pending.deliveryCode).toBeUndefined();
    const wrong = await service.reconcile(reference);
    expect(wrong.state).toBe("manual_review");
    expect(wrong.deliveryCode).toBeNull();
  });

  it("does not interpret provider code 200 as the recipient's delivery token", async () => {
    const client = new FlutterwaveBillsClient({
      secretKey: "test-only-secret",
      transport: {
        async request() {
          return {
            status: 200,
            body: { status: "success", data: {
              customer_reference: reference,
              reference: "BP-1",
              status: "successful",
              amount: "100",
              currency: "NGN",
              customer_id: bill.customerId,
              product: "ELECTRICITY",
              code: "200",
              recharge_token: null,
              extra: null,
            } },
          };
        },
      },
    });
    await expect(client.getStatus(reference)).resolves.toMatchObject({
      reference,
      providerReference: "BP-1",
      rechargeToken: null,
    });
  });
});
