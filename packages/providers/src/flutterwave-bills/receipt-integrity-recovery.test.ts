import { describe, expect, it, vi } from "vitest";
import {
  BillingCommerceOrchestrator,
  type BillingFulfillmentRecord,
  type BillingFulfillmentStore,
  type FlutterwaveBillingPort,
} from "./commerce-orchestrator.js";
import type { FlutterwaveBillReceipt } from "./client.js";

class TestStore implements BillingFulfillmentStore {
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
      throw new Error("stale revision");
    }
    this.record = next;
    return next;
  }
}

const bill = {
  fulfillmentReference: "bill-receipt-integrity-123",
  billerCode: "BIL119",
  itemCode: "CB141",
  itemName: "Electricity",
  customerId: "0012345678",
  amount: "2500.00",
  catalogAmount: "2500",
};

function receipt(overrides: Partial<FlutterwaveBillReceipt> = {}): FlutterwaveBillReceipt {
  return {
    reference: bill.fulfillmentReference,
    providerReference: "FLW-TEST-1",
    status: "successful",
    amount: bill.amount,
    currency: "NGN",
    customerId: bill.customerId,
    product: bill.itemCode,
    productName: bill.itemName,
    extra: "TOKEN-TEST-1",
    ...overrides,
  };
}

function fixture(options: {
  dispatchReceipt?: FlutterwaveBillReceipt;
  statusReceipt?: FlutterwaveBillReceipt | null;
  rejectDispatch?: boolean;
} = {}) {
  const store = new TestStore();
  let nextStatus = options.statusReceipt === undefined ? receipt() : options.statusReceipt;
  const createPayment = vi.fn(async () => {
    if (options.rejectDispatch) throw new Error("unknown provider outcome");
    return options.dispatchReceipt ?? receipt();
  });
  const getStatus = vi.fn(async () => nextStatus);
  const provider: FlutterwaveBillingPort = {
    async validateCustomer(_item, customer) {
      return {
        valid: true,
        responseCode: "00",
        responseMessage: "Validated",
        customer,
        name: "Example",
        billerCode: bill.billerCode,
        productCode: bill.itemCode,
        minimum: "100",
        maximum: "50000",
      };
    },
    createPayment,
    getStatus,
  };
  const orchestrator = new BillingCommerceOrchestrator({ store, provider });
  return {
    store,
    orchestrator,
    createPayment,
    getStatus,
    setStatus(next: FlutterwaveBillReceipt | null) { nextStatus = next; },
  };
}

describe("Flutterwave Bills durable receipt integrity and read recovery", () => {
  it("keeps an undispatched ready record dispatchable after repeated 404 status reads", async () => {
    const t = fixture({ statusReceipt: null });
    const initial = await t.orchestrator.prepare(bill);
    expect(initial.state).toBe("ready");
    await expect(t.orchestrator.reconcile(bill.fulfillmentReference))
      .resolves.toMatchObject({ state: "ready", revision: initial.revision });
    await expect(t.orchestrator.reconcile(bill.fulfillmentReference))
      .resolves.toMatchObject({ state: "ready", revision: initial.revision });
    expect(t.createPayment).not.toHaveBeenCalled();
    expect(t.getStatus).toHaveBeenCalledTimes(2);

    await expect(t.orchestrator.dispatch(bill.fulfillmentReference))
      .resolves.toMatchObject({ state: "succeeded" });
    expect(t.createPayment).toHaveBeenCalledOnce();
  });

  it("does not turn a prior uncertain POST into a second dispatch after 404", async () => {
    const t = fixture({ rejectDispatch: true, statusReceipt: null });
    await t.orchestrator.prepare(bill);
    await expect(t.orchestrator.dispatch(bill.fulfillmentReference))
      .resolves.toMatchObject({ state: "checking" });
    await t.orchestrator.reconcile(bill.fulfillmentReference);
    await t.orchestrator.dispatch(bill.fulfillmentReference);
    expect(t.store.record?.state).toBe("checking");
    expect(t.createPayment).toHaveBeenCalledOnce();
  });

  it.each(["successful", "failed", "reversed"] as const)(
    "requires provider product identity for a %s receipt",
    async (status) => {
      const t = fixture({
        dispatchReceipt: receipt({ status, product: "DIFFERENT-ITEM" }),
      });
      await t.orchestrator.prepare(bill);
      const result = await t.orchestrator.dispatch(bill.fulfillmentReference);
      expect(result.state).toBe("manual_review");
      expect(result.providerStatus).toBe(status);
      expect(result.deliveryCode).toBeNull();
    },
  );

  it("allows an omitted optional product when exact reference/amount/customer/currency match", async () => {
    const t = fixture({ dispatchReceipt: receipt({ product: null }) });
    await t.orchestrator.prepare(bill);
    const result = await t.orchestrator.dispatch(bill.fulfillmentReference);
    expect(result.state).toBe("succeeded");
    expect(result.deliveryCode).toBe("TOKEN-TEST-1");
  });

  it("recovers mismatched initial product only after exact later provider evidence", async () => {
    const t = fixture({
      dispatchReceipt: receipt({ product: "WRONG-PRODUCT", extra: "UNTRUSTED-CODE" }),
      statusReceipt: receipt({ extra: "VERIFIED-TOKEN" }),
    });
    await t.orchestrator.prepare(bill);
    const uncertain = await t.orchestrator.dispatch(bill.fulfillmentReference);
    expect(uncertain.state).toBe("manual_review");
    expect(uncertain.deliveryCode).toBeNull();

    const verified = await t.orchestrator.reconcile(bill.fulfillmentReference);
    expect(verified.state).toBe("succeeded");
    expect(verified.deliveryCode).toBe("VERIFIED-TOKEN");
    expect(t.createPayment).toHaveBeenCalledOnce();
    expect(t.getStatus).toHaveBeenCalledOnce();
  });

  it("clears a previously verified delivery code on an exact provider reversal", async () => {
    const t = fixture();
    await t.orchestrator.prepare(bill);
    const delivered = await t.orchestrator.dispatch(bill.fulfillmentReference);
    expect(delivered).toMatchObject({ state: "succeeded", deliveryCode: "TOKEN-TEST-1" });

    t.setStatus(receipt({ status: "reversed", extra: null }));
    const reversed = await t.orchestrator.reconcile(bill.fulfillmentReference);
    expect(reversed.state).toBe("reversed");
    expect(reversed.deliveryCode).toBeNull();
    expect(t.createPayment).toHaveBeenCalledOnce();
  });

  it("clears prior delivery code when a subsequent successful response names a different item", async () => {
    const t = fixture();
    await t.orchestrator.prepare(bill);
    await t.orchestrator.dispatch(bill.fulfillmentReference);
    t.setStatus(receipt({ product: "OTHER", extra: "FAKE-TOKEN" }));

    const checked = await t.orchestrator.reconcile(bill.fulfillmentReference);
    expect(checked.state).toBe("manual_review");
    expect(checked.deliveryCode).toBeNull();
    expect(checked.providerStatus).toBe("successful");
  });

  it("clears prior code when provider status reference itself changes", async () => {
    const t = fixture();
    await t.orchestrator.prepare(bill);
    await t.orchestrator.dispatch(bill.fulfillmentReference);
    t.setStatus(receipt({ reference: "foreign-reference", extra: "UNTRUSTED" }));

    const result = await t.orchestrator.reconcile(bill.fulfillmentReference);
    expect(result.state).toBe("manual_review");
    expect(result.deliveryCode).toBeNull();
  });

  it("preserves successful token on a temporarily absent or pending provider readback", async () => {
    const t = fixture();
    await t.orchestrator.prepare(bill);
    await t.orchestrator.dispatch(bill.fulfillmentReference);
    t.setStatus(null);
    await expect(t.orchestrator.reconcile(bill.fulfillmentReference))
      .resolves.toMatchObject({ state: "succeeded", deliveryCode: "TOKEN-TEST-1" });
    t.setStatus(receipt({ status: "pending", extra: null }));
    await expect(t.orchestrator.reconcile(bill.fulfillmentReference))
      .resolves.toMatchObject({ state: "succeeded", deliveryCode: "TOKEN-TEST-1" });
    expect(t.createPayment).toHaveBeenCalledOnce();
  });
});
