import { createHash } from "node:crypto";
import type { Pool, PoolClient } from "pg";
import { withTransaction } from "../transaction.js";

/** Storage-only boundary. Verify user/phone/recipient identity BEFORE calling. */
export interface GbAccountKey {
  readonly tenantId: string;
  readonly userId: string;
}

export interface GbWalletSnapshot {
  readonly purchasedMb: number;
  readonly welcomeMb: number;
  readonly reservedPurchasedMb: number;
  readonly reservedWelcomeMb: number;
  readonly frozen: boolean;
}

export interface GbTransferRequest extends GbAccountKey {
  readonly recipientId: string;
  readonly amountMb: number;
  readonly operationId: string;
  readonly idempotencyKey: string;
}

export interface GbReceipt {
  readonly operationId: string;
  readonly amountMb: number;
  readonly state: "completed";
}

type WalletRow = {
  purchased_mb: string;
  welcome_mb: string;
  reserved_purchased_mb: string;
  reserved_welcome_mb: string;
  frozen: boolean;
};

function validKey(value: string) {
  return /^[a-zA-Z0-9][a-zA-Z0-9_:.-]{0,159}$/.test(value);
}

function positiveMb(amount: number) {
  if (!Number.isSafeInteger(amount) || amount <= 0) {
    throw new TypeError("MB amount must be a positive safe integer");
  }
  return amount;
}

function bigintMb(value: string): number {
  const n = BigInt(value);
  if (n < 0n || n > BigInt(Number.MAX_SAFE_INTEGER)) {
    throw new RangeError("MB balance exceeds supported range");
  }
  return Number(n);
}

/** Concurrent serializable transactions may abort. Retry a bounded number
 * of entire transactions, preserving the same original idempotency key. */
async function retrySerialization<T>(work: () => Promise<T>): Promise<T> {
  for (let attempt = 0; attempt < 4; attempt++) {
    try {
      return await work();
    } catch (error) {
      const code = (error as { code?: unknown } | null)?.code;
      if ((code !== "40001" && code !== "40P01") || attempt === 3) throw error;
    }
  }
  throw new Error("gb.wallet.serialization_retry_exhausted");
}

function snapshot(row: WalletRow): GbWalletSnapshot {
  return {
    purchasedMb: bigintMb(row.purchased_mb),
    welcomeMb: bigintMb(row.welcome_mb),
    reservedPurchasedMb: bigintMb(row.reserved_purchased_mb),
    reservedWelcomeMb: bigintMb(row.reserved_welcome_mb),
    frozen: row.frozen,
  };
}

function assertKey(value: string, label: string) {
  if (!validKey(value)) throw new TypeError(`Invalid ${label}`);
}

async function ensureAccount(
  client: PoolClient, tenantId: string, kind: "human" | "masana", accountId: string,
): Promise<void> {
  await client.query(
    `INSERT INTO gb_wallet.accounts(tenant_id, account_kind, account_id)
     VALUES ($1, $2, $3) ON CONFLICT DO NOTHING`,
    [tenantId, kind, accountId],
  );
}

export function createPostgresGbWalletRepository(pool: Pool) {
  return {
    async read({ tenantId, userId }: GbAccountKey): Promise<GbWalletSnapshot | null> {
      assertKey(tenantId, "tenant");
      assertKey(userId, "actor");
      const row = await pool.query<WalletRow>(
        `SELECT purchased_mb::text, welcome_mb::text,
                reserved_purchased_mb::text, reserved_welcome_mb::text, frozen
           FROM gb_wallet.accounts
          WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
        [tenantId, userId],
      );
      return row.rows[0] ? snapshot(row.rows[0]) : null;
    },

    /** Internal-only grant; verified phone HMAC must be produced server-side. */
    async grantWelcome(input: GbAccountKey & {
      readonly verifiedPhoneHmac: string;
      readonly operationId: string;
    }): Promise<boolean> {
      assertKey(input.tenantId, "tenant");
      assertKey(input.userId, "user");
      assertKey(input.operationId, "operation");
      if (!/^[0-9a-f]{64}$/.test(input.verifiedPhoneHmac)) {
        throw new TypeError("Only a server HMAC fingerprint can be used");
      }
      return withTransaction(pool, async client => {
        await ensureAccount(client, input.tenantId, "human", input.userId);
        const operation = await client.query(
          `INSERT INTO gb_wallet.operations
            (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
             operation_kind,amount_mb,state)
           VALUES ($1,$2,$3,$4,$5,'welcome_grant',500,'completed')
           ON CONFLICT DO NOTHING RETURNING operation_id`,
          [input.tenantId,input.operationId,input.userId,
           `welcome:${input.userId}`,createHash("sha256").update(input.verifiedPhoneHmac).digest("hex")],
        );
        if (operation.rowCount !== 1) return false;
        const claim = await client.query(
          `INSERT INTO gb_wallet.welcome_claims
             (tenant_id,account_id,verified_phone_hmac,operation_id)
           VALUES ($1,$2,$3,$4)
           ON CONFLICT DO NOTHING RETURNING account_id`,
          [input.tenantId,input.userId,input.verifiedPhoneHmac,input.operationId],
        );
        if (claim.rowCount !== 1) {
          // Roll back even the operation placeholder, ensuring a duplicate
          // phone cannot permanently occupy an unused operation identity.
          throw new AlreadyGranted();
        }
        await client.query(
          `UPDATE gb_wallet.accounts
              SET welcome_mb=welcome_mb+500, version=version+1
            WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
          [input.tenantId,input.userId],
        );
        await client.query(
          `INSERT INTO gb_wallet.movements
           (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
            source_bucket,target_bucket,amount_mb)
           VALUES ($1,$2,'issuance','welcome','human',$3,'issuance','welcome',500)`,
          [input.tenantId,input.operationId,input.userId],
        );
        return true;
      }).catch(error => {
        if (error instanceof AlreadyGranted) return false;
        throw error;
      });
    },

    /** Atomic purchase-backed MB-only transfer, no restricted credit. */
    async transfer(input: GbTransferRequest): Promise<GbReceipt> {
      for (const [value,label] of [
        [input.tenantId,"tenant"], [input.userId,"actor"],
        [input.recipientId,"recipient"], [input.operationId,"operation"],
        [input.idempotencyKey,"idempotency"],
      ] as const) assertKey(value,label);
      const amount = positiveMb(input.amountMb);
      if (input.userId === input.recipientId) {
        throw new TypeError("Cannot send MB to yourself");
      }
      const fingerprint = createHash("sha256")
        .update(JSON.stringify([input.userId, input.recipientId, amount]))
        .digest("hex");
      return retrySerialization(() => withTransaction(pool, async client => {
        await ensureAccount(client,input.tenantId,"human",input.userId);
        await ensureAccount(client,input.tenantId,"human",input.recipientId);
        // Acquire locks in canonical account order across concurrent sends.
        const locked = await client.query<WalletRow & { account_id: string }>(
          `SELECT account_id,purchased_mb::text,welcome_mb::text,
                  reserved_purchased_mb::text,reserved_welcome_mb::text,frozen
             FROM gb_wallet.accounts
            WHERE tenant_id=$1 AND account_kind='human'
              AND account_id IN ($2,$3)
            ORDER BY account_id FOR UPDATE`,
          [input.tenantId,input.userId,input.recipientId],
        );
        const source = locked.rows.find(row=>row.account_id===input.userId);
        const target = locked.rows.find(row=>row.account_id===input.recipientId);
        if (!source || !target || source.frozen || target.frozen) {
          throw new Error("gb.wallet.account_unavailable");
        }

        const existing = await client.query<{
          operation_id:string; request_sha256:string; amount_mb:string; state:string;
        }>(
          `SELECT operation_id,request_sha256,amount_mb::text,state
             FROM gb_wallet.operations
            WHERE tenant_id=$1 AND actor_id=$2 AND idempotency_key=$3`,
          [input.tenantId,input.userId,input.idempotencyKey],
        );
        if (existing.rows[0]) {
          const row=existing.rows[0];
          if (row.request_sha256!==fingerprint || row.operation_id!==input.operationId) {
            throw new Error("gb.wallet.idempotency_conflict");
          }
          if (row.state!=="completed") throw new Error("gb.wallet.pending_operation");
          return { operationId:row.operation_id, amountMb:bigintMb(row.amount_mb),
            state:"completed" as const };
        }

        if (BigInt(source.purchased_mb) - BigInt(source.reserved_purchased_mb) <
            BigInt(amount)) {
          throw new RangeError("gb.wallet.insufficient_purchased_mb");
        }
        await client.query(
          `INSERT INTO gb_wallet.operations
             (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
              operation_kind,amount_mb,state)
           VALUES ($1,$2,$3,$4,$5,'send',$6,'completed')`,
          [input.tenantId,input.operationId,input.userId,input.idempotencyKey,
           fingerprint,amount],
        );
        await client.query(
          `UPDATE gb_wallet.accounts
              SET purchased_mb=purchased_mb-$3,version=version+1
            WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
          [input.tenantId,input.userId,amount],
        );
        await client.query(
          `UPDATE gb_wallet.accounts
              SET purchased_mb=purchased_mb+$3,version=version+1
            WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
          [input.tenantId,input.recipientId,amount],
        );
        await client.query(
          `INSERT INTO gb_wallet.movements
           (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
            source_bucket,target_bucket,amount_mb)
           VALUES ($1,$2,'human',$3,'human',$4,'purchased','purchased',$5)`,
          [input.tenantId,input.operationId,input.userId,input.recipientId,amount],
        );
        return { operationId:input.operationId, amountMb:amount, state:"completed" as const };
      }, { isolation:"serializable" }));
    },
  };
}

class AlreadyGranted extends Error {}
