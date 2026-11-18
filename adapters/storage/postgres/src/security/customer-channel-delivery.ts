import type { Pool } from "pg";
import { createCanonicalId } from "@masanawa/contracts";
import type {
  CustomerChannelDeliveryRepository,
  CustomerChannelDelivery,
} from "@masanawa/security";

// A retained provider ID is not authority to send another account's history.
// An unlinked onboarding prompt is eligible only while the sender is unlinked.
const currentOwner = `(CASE WHEN o.tenant_id IS NULL THEN NOT EXISTS (
  SELECT 1 FROM security.customer_channel_links l
   WHERE l.channel=o.channel AND l.external_user_id=o.external_user_id
) ELSE EXISTS (
  SELECT 1 FROM security.customer_channel_links l JOIN identity.users u
    ON u.tenant_id=l.tenant_id AND u.user_id=l.user_id
   WHERE l.channel=o.channel AND l.external_user_id=o.external_user_id
     AND l.chat_id=o.chat_id AND l.tenant_id=o.tenant_id AND l.user_id=o.user_id
     AND u.state='active'
) END)`;

export function createPostgresCustomerChannelDeliveryRepository(
  pool: Pool,
): CustomerChannelDeliveryRepository {
  return Object.freeze({
    async claim(
      input: Parameters<CustomerChannelDeliveryRepository["claim"]>[0],
    ) {
      await pool.query(
        `UPDATE security.customer_channel_delivery_outbox o
        SET state='cancelled',lease_token=NULL,lease_until=NULL
        WHERE o.channel=$1 AND o.state IN ('pending','leased') AND NOT ${currentOwner}`,
        [input.channel],
      );
      const token = createCanonicalId("request");
      const result = await pool.query<{
        channel: "telegram" | "whatsapp";
        message_id: string;
        chat_id: string;
        reply: string;
        request_contact: boolean;
      }>(
        `WITH candidate AS (
        SELECT o.channel,o.message_id FROM security.customer_channel_delivery_outbox o
        JOIN security.customer_channel_messages m USING(channel,message_id)
        WHERE o.channel=$1 AND ($2::text IS NULL OR o.message_id=$2)
          AND m.state='completed' AND m.reply IS NOT NULL AND length(m.reply)>0
          AND ((o.state='pending' AND o.available_at<=clock_timestamp())
            OR (o.state='leased' AND o.lease_until<=clock_timestamp()))
          AND ${currentOwner}
        ORDER BY o.created_at,o.message_id LIMIT 1 FOR UPDATE OF o SKIP LOCKED
      ), claimed AS (
        UPDATE security.customer_channel_delivery_outbox o
          SET state='leased',lease_token=$3,lease_until=clock_timestamp()+interval '2 minutes',attempts=attempts+1
        FROM candidate c WHERE o.channel=c.channel AND o.message_id=c.message_id
        RETURNING o.channel,o.message_id,o.chat_id,o.request_contact
      ) SELECT c.*,m.reply FROM claimed c JOIN security.customer_channel_messages m USING(channel,message_id)`,
        [input.channel, input.messageId ?? null, token],
      );
      const row = result.rows[0];
      return row
        ? (Object.freeze({
            channel: row.channel,
            messageId: row.message_id,
            chatId: row.chat_id,
            reply: row.reply,
            requestContact: row.request_contact,
            token,
          }) satisfies CustomerChannelDelivery)
        : null;
    },
    async settle(
      input: Parameters<CustomerChannelDeliveryRepository["settle"]>[0],
    ) {
      await pool.query(
        `WITH settled AS (
        UPDATE security.customer_channel_delivery_outbox o
           SET state=CASE WHEN $2::boolean THEN 'delivered' ELSE 'pending' END,
               available_at=clock_timestamp()+make_interval(secs=>LEAST(3600, 5 * power(2,LEAST(attempts,9)))::integer),
               lease_token=NULL,lease_until=NULL
         WHERE lease_token=$1 AND state='leased' AND lease_until>clock_timestamp()
           AND ${currentOwner}
         RETURNING channel,message_id
      ) UPDATE security.customer_channel_messages m SET state='delivered',updated_at=clock_timestamp()
        FROM settled s WHERE $2::boolean AND m.channel=s.channel AND m.message_id=s.message_id AND m.state='completed'`,
        [input.token, input.delivered],
      );
    },
  });
}
