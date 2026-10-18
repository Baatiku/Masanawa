import { describe, expect, it, vi } from "vitest";
import { createFinancialNotificationRuntime } from "./outbox.js";

const event = {
  tenant_id: "tenant_test",
  user_id: "user_0199ea9d-60c5-7c69-8bbb-0f5d119fc203",
  event_id: "finance-receive-7",
  category: "wallet",
  kind: "wallet_transfer",
  deep_link: "masanawa://wallet/transaction/order_abc",
  lease_id: "427823d8-5912-4192-9185-6940b3e23e80",
  attempts: 1,
};

describe("notification outbox delivery", () => {
  it("fences delivery and never passes money or private content to FCM", async () => {
    const query = vi.fn(async () => ({ rows: [event] }));
    const send = vi.fn(async () => ({ attempted: 1, delivered: 1 }));
    const service = createFinancialNotificationRuntime({
      pool: { query } as never, sender: { send },
    });
    expect(await service.runOnce()).toMatchObject({
      claimed: 1, delivered: 1, retried: 0,
    });
    expect(query.mock.calls[0]?.[0]).toContain("payment_deadline");
    expect(query.mock.calls[1]?.[0]).toContain("SKIP LOCKED");
    expect(query.mock.calls[2]?.[0]).toContain("lease_id=$4");
    expect(query.mock.calls[2]?.[1]).toEqual([
      event.tenant_id, event.user_id, event.event_id, event.lease_id, true,
    ]);
    expect(send).toHaveBeenCalledWith({
      scope: { tenantId: event.tenant_id, userId: event.user_id },
      title: "Wallet update",
      body: "Open Wallet to view the verified update",
      data: {
        type: "wallet_transfer", eventId: event.event_id,
        deepLink: event.deep_link,
      },
    });
  });

  it("retries partial push without double-submitting any payment", async () => {
    const query = vi.fn(async () => ({ rows: [event] }));
    const send = vi.fn(async () => ({ attempted: 2, delivered: 1 }));
    const service = createFinancialNotificationRuntime({
      pool: { query } as never, sender: { send },
    });
    expect(await service.runOnce()).toMatchObject({
      claimed: 1, delivered: 1, retried: 1,
    });
    expect(query.mock.calls[2]?.[1]?.[4]).toBe(false);
    expect(send).toHaveBeenCalledTimes(1);
  });

  it("retains quiet-hour muted notices without retry flood", async () => {
    const query = vi.fn(async () => ({ rows: [event] }));
    const send = vi.fn(async () => ({ attempted: 0, delivered: 0 }));
    const service = createFinancialNotificationRuntime({
      pool: { query } as never, sender: { send },
    });
    expect(await service.runOnce()).toMatchObject({
      claimed: 1, delivered: 0, retried: 0,
    });
    expect(query.mock.calls[2]?.[1]?.[4]).toBe(true);
  });
});
