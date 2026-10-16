import type {
  CustomerChannel,
  CustomerChannelDelivery,
  CustomerChannelDeliveryRepository,
} from "@masanawa/security";

export function createCustomerChannelDeliveryService(
  repository: CustomerChannelDeliveryRepository,
) {
  async function deliver(
    input: { channel: CustomerChannel; messageId?: string },
    send: (reply: CustomerChannelDelivery) => Promise<void>,
  ): Promise<boolean> {
    const lease = await repository.claim(input);
    if (!lease) return false;
    try {
      await send(lease);
    } catch (error) {
      await repository
        .settle({ token: lease.token, delivered: false })
        .catch(() => undefined);
      throw error;
    }
    // If acknowledgement fails, preserve the lease rather than immediately
    // replaying an operation the provider may already have accepted.
    await repository.settle({ token: lease.token, delivered: true });
    return true;
  }
  return Object.freeze({
    deliver,
    async recover(
      channel: CustomerChannel,
      send: (reply: CustomerChannelDelivery) => Promise<void>,
      shouldContinue: () => boolean = () => true,
    ) {
      for (let count = 0; count < 8; count++) {
        if (!shouldContinue()) break;
        try {
          if (!(await deliver({ channel }, send))) break;
        } catch {
          /* Database-clock backoff or lease expiry governs retry. */
        }
      }
    },
  });
}

export async function deliverCustomerChannelReply(
  bridge: {
    delivery?: ReturnType<typeof createCustomerChannelDeliveryService>;
    delivered(input: {
      channel: CustomerChannel;
      messageId: string;
    }): Promise<void>;
  },
  input: { channel: CustomerChannel; messageId: string },
  send: (reply?: CustomerChannelDelivery) => Promise<void>,
): Promise<void> {
  if (bridge.delivery) {
    await bridge.delivery.deliver(input, send);
    return;
  }
  // Compatibility for non-persistent integrations and existing test ports.
  await send();
  await bridge.delivered(input);
}
