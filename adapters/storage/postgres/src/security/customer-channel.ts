import type { Pool } from "pg";
import { createPostgresCustomerChannelDeliveryRepository } from "./customer-channel-delivery.js";
import { createCanonicalId, parseCanonicalId } from "@masanawa/contracts";
import { withTransaction } from "../transaction.js";
import {
  normalizeCustomerChannelLink,
  type CustomerChannelLink,
  type CustomerChannelRepository,
} from "@masanawa/security";

type ReadLinkInput = Parameters<CustomerChannelRepository["readLink"]>[0];
type SetCharacterSessionInput =
  Parameters<CustomerChannelRepository["setCharacterSession"]>[0];
type ClaimMessageInput =
  Parameters<CustomerChannelRepository["claimMessage"]>[0];
type CompleteMessageInput =
  Parameters<CustomerChannelRepository["completeMessage"]>[0];
type MarkDeliveredInput =
  Parameters<CustomerChannelRepository["markDelivered"]>[0];
type FailMessageInput =
  Parameters<CustomerChannelRepository["failMessage"]>[0];

export function createPostgresCustomerChannelRepository(
  pool: Pool,
): CustomerChannelRepository {
  return Object.freeze({
    delivery: createPostgresCustomerChannelDeliveryRepository(pool),
    async readLink(input: ReadLinkInput) {
      const result = await pool.query<{
        channel: "whatsapp" | "telegram";
        external_user_id: string;
        chat_id: string;
        tenant_id: string;
        user_id: string;
        character_id: string;
        character_session_id: string | null;
        updated_at: Date | string;
      }>(
        `SELECT channel,external_user_id,chat_id,tenant_id,user_id,character_id,
                character_session_id,updated_at
           FROM security.customer_channel_links
          WHERE channel=$1 AND external_user_id=$2`,
        [input.channel,input.externalUserId],
      );
      const row = result.rows[0];
      return row
        ? normalizeCustomerChannelLink({
            channel: row.channel,
            externalUserId: row.external_user_id,
            chatId: row.chat_id,
            tenantId: row.tenant_id as never,
            userId: row.user_id as never,
            characterId: row.character_id as never,
            characterSessionId: row.character_session_id as never,
            updatedAt: (row.updated_at instanceof Date
              ? row.updated_at
              : new Date(row.updated_at)).toISOString(),
          })
        : null;
    },

    async putLink(value: CustomerChannelLink) {
      const link = normalizeCustomerChannelLink(value);
      await withTransaction(pool, async (client) => {
        // Lock canonical user against the account-deletion revoker. Either
        // this link commits before disable and gets removed, or it is denied.
        const owner = await client.query<{ state: string }>(
          `SELECT state FROM identity.users
            WHERE tenant_id=$1 AND user_id=$2 FOR SHARE`,
          [link.tenantId,link.userId],
        );
        if (owner.rows[0]?.state !== "active") {
          throw new Error("customer_channel.account_inactive");
        }
        await client.query(
          `INSERT INTO security.customer_channel_links(
             channel,external_user_id,chat_id,tenant_id,user_id,character_id,
             character_session_id,updated_at
           ) VALUES ($1,$2,$3,$4,$5,$6,$7,$8)
           ON CONFLICT (channel,external_user_id)
           DO UPDATE SET chat_id=EXCLUDED.chat_id,tenant_id=EXCLUDED.tenant_id,
             user_id=EXCLUDED.user_id,character_id=EXCLUDED.character_id,
             character_session_id=EXCLUDED.character_session_id,
             updated_at=EXCLUDED.updated_at`,
          [
            link.channel,link.externalUserId,link.chatId,link.tenantId,link.userId,
            link.characterId,link.characterSessionId,link.updatedAt,
          ],
        );
      });
    },

    async setCharacterSession(input: SetCharacterSessionInput) {
      await pool.query(
        `UPDATE security.customer_channel_links
            SET character_session_id=$4,updated_at=$5
          WHERE channel=$1 AND external_user_id=$2 AND character_id=$3`,
        [
          input.channel,input.externalUserId,input.characterId,
          input.characterSessionId,input.updatedAt,
        ],
      );
    },

    async claimMessage(input: ClaimMessageInput) {
      const inserted = await pool.query(
        `INSERT INTO security.customer_channel_messages(
           channel,message_id,external_user_id,state,reply,received_at,updated_at,request_id
         ) VALUES ($1,$2,$3,'processing',NULL,$4,$4,$5)
         ON CONFLICT (channel,message_id) DO NOTHING
         RETURNING request_id`,
        [input.channel,input.messageId,input.externalUserId,input.receivedAt,createCanonicalId("request")],
      );
      if (inserted.rowCount === 1) {
        return Object.freeze({ state: "claimed" as const, reply: null,
          requestId:parseCanonicalId("request",inserted.rows[0]!.request_id) });
      }
      const existing = await pool.query<{ state: string; reply: string | null; external_user_id:string;request_id:string|null }>(
        `SELECT state,reply,external_user_id,request_id FROM security.customer_channel_messages
          WHERE channel=$1 AND message_id=$2`,
        [input.channel,input.messageId],
      );
      const row = existing.rows[0];
      if (!row || row.external_user_id !== input.externalUserId)
        throw new Error("customer_channel.message_owner_mismatch");
      if (row.state === "failed" || (row.state === "processing" && row.request_id)) {
        // Old failed receipts may already have executed a financial turn.
        // Never invent a replacement identity for an unknown legacy outcome.
        if (!row.request_id) throw new Error("customer_channel.legacy_request_requires_reconciliation");
        parseCanonicalId("request",row.request_id);
        const reclaimed = await pool.query(
          `UPDATE security.customer_channel_messages
              SET state='processing',reply=NULL,updated_at=$3
            WHERE channel=$1 AND message_id=$2 AND external_user_id=$4
              AND (state='failed' OR (state='processing'
                AND updated_at<=clock_timestamp()-interval '5 minutes'))
            RETURNING request_id`,
          [input.channel,input.messageId,input.receivedAt,input.externalUserId],
        );
        if (reclaimed.rowCount === 1) {
          return Object.freeze({ state: "claimed" as const, reply: null,
            requestId:parseCanonicalId("request",reclaimed.rows[0]!.request_id) });
        }
      }
      return Object.freeze({
        state:
          row?.state === "delivered"
            ? ("delivered" as const)
            : row?.state === "completed"
              ? ("completed" as const)
              : ("processing" as const),
        reply: row?.reply ?? null,
      });
    },

    async completeMessage(input: CompleteMessageInput) {
      await pool.query(
        `WITH completed AS (UPDATE security.customer_channel_messages
            SET state='completed',reply=$3,updated_at=$4
          WHERE channel=$1 AND message_id=$2 AND state='processing'
          RETURNING channel,message_id,external_user_id)
         INSERT INTO security.customer_channel_delivery_outbox
           (channel,message_id,external_user_id,chat_id,tenant_id,user_id,request_contact)
         SELECT channel,message_id,external_user_id,$5,$6,$7,$8 FROM completed
          WHERE $5::text IS NOT NULL AND length($3)>0
         ON CONFLICT(channel,message_id) DO NOTHING`,
        [input.channel,input.messageId,input.reply,input.completedAt,
         input.delivery?.chatId??null,input.delivery?.tenantId??null,input.delivery?.userId??null,input.delivery?.requestContact??false],
      );
    },

    async markDelivered(input: MarkDeliveredInput) {
      await pool.query(
        `UPDATE security.customer_channel_messages
            SET state='delivered',updated_at=$3
          WHERE channel=$1 AND message_id=$2 AND state='completed'`,
        [input.channel,input.messageId,input.deliveredAt],
      );
    },

    async failMessage(input: FailMessageInput) {
      await pool.query(
        `UPDATE security.customer_channel_messages
            SET state='failed',updated_at=$3
          WHERE channel=$1 AND message_id=$2 AND state='processing'`,
        [input.channel,input.messageId,input.failedAt],
      );
    },
  });
}

