import { describe, it, expect, vi } from "vitest";
import { createCustomerChannelDeliveryService } from "./customer_channel_delivery.js";
describe("durable channel delivery", () => {
  it("leases a persisted reply and acknowledges only after its provider accepts it", async () => {
    const events: string[] = [];
    const reply = {
      channel: "telegram" as const,
      messageId: "1:2",
      chatId: "1",
      reply: "Saved AI response",
      requestContact: false,
      token: "lease",
    };
    const repository = {
      claim: async () => reply,
      settle: async (value: { delivered: boolean }) => {
        events.push(value.delivered ? "ack" : "retry");
      },
    };
    const service = createCustomerChannelDeliveryService(repository);
    await service.deliver(
      { channel: "telegram", messageId: "1:2" },
      async (row) => {
        expect(row.reply).toBe(reply.reply);
        events.push("provider");
      },
    );
    expect(events).toEqual(["provider", "ack"]);
  });
  it("returns a failed send to recovery without regenerating a conversation", async () => {
    const settle = vi.fn(async () => {});
    const service = createCustomerChannelDeliveryService({
      claim: async () => ({
        channel: "telegram",
        messageId: "1:2",
        chatId: "1",
        reply: "Saved",
        requestContact: false,
        token: "lease",
      }),
      settle,
    });
    await expect(
      service.deliver({ channel: "telegram" }, async () => {
        throw new Error("offline");
      }),
    ).rejects.toThrow("offline");
    expect(settle).toHaveBeenCalledWith({ token: "lease", delivered: false });
  });
  it("does not send when another worker holds the lease or identity is no longer eligible", async () => {
    const send = vi.fn();
    const settle = vi.fn();
    const service = createCustomerChannelDeliveryService({
      claim: async () => null,
      settle,
    });
    expect(await service.deliver({ channel: "whatsapp" }, send)).toBe(false);
    expect(send).not.toHaveBeenCalled();
    expect(settle).not.toHaveBeenCalled();
  });
  it("bounds each recovery sweep and continues after an individual provider failure", async () => {
    let claimed = 0;
    const results: boolean[] = [];
    const service = createCustomerChannelDeliveryService({
      claim: async () => ({
        channel: "telegram",
        messageId: String(++claimed),
        chatId: "1",
        reply: "Saved",
        requestContact: false,
        token: String(claimed),
      }),
      settle: async (v) => {
        results.push(v.delivered);
      },
    });
    await service.recover("telegram", async (row) => {
      if (row.messageId === "2") throw new Error("offline");
    });
    expect(claimed).toBe(8);
    expect(results).toEqual([true, false, true, true, true, true, true, true]);
  });
});

it("shares the delivery lease with immediate webhook handling", async () => {
  const { deliverCustomerChannelReply } =
    await import("./customer_channel_delivery.js");
  const send = vi.fn();
  const delivered = vi.fn();
  await deliverCustomerChannelReply(
    {
      delivery: createCustomerChannelDeliveryService({
        claim: async () => null,
        settle: async () => {},
      }),
      delivered,
    },
    { channel: "telegram", messageId: "1:2" },
    send,
  );
  expect(send).not.toHaveBeenCalled();
  expect(delivered).not.toHaveBeenCalled();
});

it("stops acquiring new deliveries when the process begins draining", async () => {
  let draining = false;
  let claims = 0;
  const service = createCustomerChannelDeliveryService({
    claim: async () => ({
      channel: "telegram",
      messageId: String(++claims),
      chatId: "1",
      reply: "Saved",
      requestContact: false,
      token: "lease",
    }),
    settle: async () => {},
  });
  await service.recover(
    "telegram",
    async () => {
      draining = true;
    },
    () => !draining,
  );
  expect(claims).toBe(1);
});
