import { parseCanonicalId } from "@masanawa/contracts";
import type { Pool } from "@masanawa/postgres";
import type { MobilePushSender } from "@masanawa/mobile-push";

type ClaimedNotice = {
  tenant_id: string;
  user_id: string;
  event_id: string;
  category: string;
  kind: string;
  deep_link: string;
  lease_id: string;
  attempts: number;
};

const copy: Readonly<Record<string, { title: string; body: string }>> = {
  wallet: {
    title: "Wallet update",
    body: "Open Wallet to review this update",
  },
  calls: {
    title: "Missed Masana call",
    body: "Open Calls to view your call history",
  },
  p2p: {
    title: "P2P deadline",
    body: "Open Wallet to review your order",
  },
};

/** Durable, fenced worker. A notification must never re-run a financial
 * operation, infer a customer's balance or deliver a cross-account event.
 */
export function createFinancialNotificationRuntime(input: {
  readonly pool: Pool;
  readonly sender: MobilePushSender;
}) {
  return Object.freeze({
    async runOnce(): Promise<{ claimed: number; delivered: number; retried: number }> {
      // Remind the payer once, based only on an active escrow's canonical
      // server-side deadline. This does not extend or mutate any order.
      await input.pool.query(`
        SELECT agents.queue_mobile_notice(
          o.tenant_id,o.buyer_id,
          'p2p-deadline-'||o.order_id::text,'p2p',
          'P2P payment deadline approaching','p2p_deadline',
          'masanawa://wallet/transaction/'||o.order_id::text)
        FROM commerce.msnw_p2p_orders o
        JOIN identity.users u
          ON u.tenant_id=o.tenant_id AND u.user_id=o.buyer_id
        WHERE u.state='active' AND o.state='awaiting_payment'
          AND o.payment_deadline>clock_timestamp()
          AND o.payment_deadline<=clock_timestamp()+interval '30 minutes'
        ORDER BY o.payment_deadline LIMIT 50`);
      const result = await input.pool.query<ClaimedNotice>(`
        WITH candidate AS (
          SELECT o.tenant_id,o.user_id,o.event_id
          FROM agents.mobile_notification_outbox o
          JOIN identity.users u
            ON u.tenant_id=o.tenant_id AND u.user_id=o.user_id
          WHERE u.state='active'
            AND o.delivered_at IS NULL
            AND o.available_at<=clock_timestamp()
            AND (o.lease_until IS NULL OR o.lease_until<clock_timestamp())
          ORDER BY o.available_at,o.event_id
          LIMIT 20 FOR UPDATE OF o SKIP LOCKED
        )
        UPDATE agents.mobile_notification_outbox o
           SET lease_id=gen_random_uuid(),
               lease_until=clock_timestamp()+interval '45 seconds',
               attempts=attempts+1
          FROM candidate c
         WHERE o.tenant_id=c.tenant_id AND o.user_id=c.user_id
           AND o.event_id=c.event_id
         RETURNING o.tenant_id,o.user_id,o.event_id,o.category,
           o.kind,o.deep_link,o.lease_id::text,o.attempts`);
      let delivered = 0;
      let retried = 0;
      for (const event of result.rows) {
        let success = false;
        try {
          const copyForEvent = copy[event.category];
          if (!copyForEvent) throw new Error("unsupported_notice_category");
          const sent = await input.sender.send({
            scope: {
              tenantId: parseCanonicalId("tenant", event.tenant_id),
              userId: parseCanonicalId("user", event.user_id),
            },
            title: copyForEvent.title,
            body: copyForEvent.body,
            data: {
              type: event.kind,
              eventId: event.event_id,
              deepLink: event.deep_link,
            },
          });
          // Disabled categories, no device permission and quiet hours do not
          // requeue old alerts; they remain readable in Activity.
          success = sent.attempted === sent.delivered;
          delivered += sent.delivered;
        } catch {
          // No exception strings or provider response bodies go into logs.
        }
        if (!success) retried += 1;
        await input.pool.query(`
          UPDATE agents.mobile_notification_outbox
             SET delivered_at=CASE WHEN $5::boolean THEN clock_timestamp()
                     ELSE delivered_at END,
                 available_at=CASE WHEN $5::boolean THEN available_at
                     ELSE clock_timestamp()+
                       (LEAST(3600,10*power(2,LEAST(attempts,8))) * interval '1 second') END,
                 lease_id=NULL,lease_until=NULL
           WHERE tenant_id=$1 AND user_id=$2 AND event_id=$3
             AND lease_id=$4::uuid AND delivered_at IS NULL`,
          [event.tenant_id,event.user_id,event.event_id,event.lease_id,success]);
      }
      return { claimed: result.rows.length, delivered, retried };
    },
  });
}
