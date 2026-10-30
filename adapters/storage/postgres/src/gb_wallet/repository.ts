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

export interface GbTipRequest extends GbAccountKey {
  readonly postId: string;
  readonly characterId: string;
  readonly amountMb: number;
  readonly operationId: string;
  readonly idempotencyKey: string;
}

export interface GbTipReceipt extends GbReceipt {
  readonly postId: string;
  readonly characterId: string;
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
    /** Idempotent 500 MB restricted allowance for an authenticated active
     * customer, including accounts created after the existing-user backfill.
     * Earlier verified-phone welcome claims count as already awarded. */
    async ensureUniversalWelcome({tenantId,userId}:GbAccountKey):Promise<boolean> {
      assertKey(tenantId,'tenant');
      assertKey(userId,'user');
      return withTransaction(pool,async client=>{
        const identity=await client.query<{state:string}>(
          `SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE`,
          [tenantId,userId]);
        if(identity.rows[0]?.state!=='active')
          throw new Error('gb.wallet.ineligible_welcome_identity');
        const prior=await client.query(
          `SELECT 1 FROM gb_wallet.welcome_claims WHERE tenant_id=$1 AND account_id=$2`,
          [tenantId,userId]);
        const hasPrior=prior.rowCount!==0;
        const operationId='launch500_'+createHash('md5')
          .update(tenantId+':'+userId).digest('hex');
        const claim=await client.query(
          `INSERT INTO gb_wallet.universal_welcome_claims
           (tenant_id,account_id,granted_mb,operation_id)
           VALUES($1,$2,$3,$4) ON CONFLICT DO NOTHING
           RETURNING account_id`,
          [tenantId,userId,hasPrior?0:500,hasPrior?null:operationId]);
        if(claim.rowCount!==1||hasPrior)return false;
        await ensureAccount(client,tenantId,'human',userId);
        await client.query(
          `INSERT INTO gb_wallet.operations
           (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
            operation_kind,amount_mb,state)
           VALUES ($1,$2,$3,'welcome:universal:v1',$4,
            'welcome_grant',500,'completed')`,
          [tenantId,operationId,userId,createHash('sha256')
            .update(tenantId+':'+userId+':launch500').digest('hex')]);
        await client.query(
          `INSERT INTO gb_wallet.movements
           (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
            source_bucket,target_bucket,amount_mb)
           VALUES ($1,$2,'issuance','welcome','human',$3,
            'issuance','welcome',500)`,[tenantId,operationId,userId]);
        await client.query(
          `UPDATE gb_wallet.accounts SET welcome_mb=welcome_mb+500,
            version=version+1 WHERE tenant_id=$1 AND
            account_kind='human' AND account_id=$2`,[tenantId,userId]);
        return true;
      });
    },
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
        // Serialize with universal welcome on the same identity before either
        // path issues a movement. The older phone grant must never give an
        // already-credited universal customer a second 500 MB.
        await client.query(
          `SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE`,
          [input.tenantId,input.userId]);
        const universal = await client.query(
          `SELECT 1 FROM gb_wallet.universal_welcome_claims
           WHERE tenant_id=$1 AND account_id=$2`,
          [input.tenantId,input.userId]);
        if (universal.rowCount !== 0) return false;
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
    /** Reviewed, immutable purchased-MB tip to an approved platform Masana.
     * Only a published, still-authorized post can receive a new tip. A
     * previously committed original operation remains readable on takedown. */
    async tip(input: GbTipRequest): Promise<GbTipReceipt> {
      for (const [value,label] of [
        [input.tenantId,"tenant"], [input.userId,"actor"],
        [input.characterId,"Masana"], [input.operationId,"operation"],
        [input.idempotencyKey,"idempotency"],
      ] as const) assertKey(value,label);
      if (!/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(input.postId)) {
        throw new TypeError("Invalid Status post");
      }
      if (!/^tip_[A-Za-z0-9_-]{22,128}$/.test(input.operationId) ||
          input.idempotencyKey !== input.operationId) {
        throw new TypeError("Invalid original tip operation");
      }
      const amount=positiveMb(input.amountMb);
      const fingerprint=createHash("sha256")
        .update(JSON.stringify(["status_tip_v1",input.userId,input.postId,
          input.characterId,amount])).digest("hex");
      return retrySerialization(() => withTransaction(pool, async client => {
        await ensureAccount(client,input.tenantId,"human",input.userId);
        await ensureAccount(client,input.tenantId,"masana",input.characterId);
        const locked=await client.query<WalletRow & {account_kind:string;account_id:string}>(`
          SELECT account_kind,account_id,purchased_mb::text,welcome_mb::text,
                 reserved_purchased_mb::text,reserved_welcome_mb::text,frozen
          FROM gb_wallet.accounts
          WHERE tenant_id=$1 AND (
            (account_kind='human' AND account_id=$2) OR
            (account_kind='masana' AND account_id=$3))
          ORDER BY account_kind,account_id FOR UPDATE
        `,[input.tenantId,input.userId,input.characterId]);
        const source=locked.rows.find(row=>row.account_kind==="human"&&row.account_id===input.userId);
        const target=locked.rows.find(row=>row.account_kind==="masana"&&row.account_id===input.characterId);
        if(!source||!target||source.frozen||target.frozen)
          throw new Error("gb.wallet.account_unavailable");
        const existing=await client.query<{operation_id:string;
          request_sha256:string;amount_mb:string;state:string;operation_kind:string}>(`
          SELECT operation_id,request_sha256,amount_mb::text,state,operation_kind
          FROM gb_wallet.operations
          WHERE tenant_id=$1 AND actor_id=$2 AND idempotency_key=$3
        `,[input.tenantId,input.userId,input.idempotencyKey]);
        if(existing.rows[0]){
          const prior=existing.rows[0];
          if(prior.operation_id!==input.operationId ||
              prior.request_sha256!==fingerprint || prior.operation_kind!=="tip")
            throw new Error("gb.wallet.idempotency_conflict");
          if(prior.state!=="completed")throw new Error("gb.wallet.pending_operation");
          const saved=await client.query<{post_id:string;character_id:string}>(`
            SELECT post_id::text,character_id FROM gb_wallet.tip_receipts
            WHERE tenant_id=$1 AND operation_id=$2
          `,[input.tenantId,input.operationId]);
          if(saved.rows[0]?.post_id!==input.postId ||
             saved.rows[0]?.character_id!==input.characterId)
            throw new Error("gb.wallet.tip_receipt_mismatch");
          return {operationId:input.operationId,postId:input.postId,
            characterId:input.characterId,amountMb:bigintMb(prior.amount_mb),
            state:"completed" as const};
        }
        // Lock the published post through settlement so takedown cannot race
        // a successful debit. Client-submitted post/author IDs never grant
        // permission to pay an arbitrary or retired Masana.
        const eligible=await client.query<{author_masana_id:string}>(`
          SELECT p.author_masana_id FROM feed.posts p
          WHERE p.tenant_id=$1 AND p.id=$2::uuid AND p.state='published'
            AND p.author_masana_id=$3 AND EXISTS (
              SELECT 1 FROM masana.character_revisions r
              JOIN identity.characters c ON c.tenant_id=r.tenant_id
                AND c.character_id=r.character_id AND c.state='active'
              JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id
                AND o.character_id=c.character_id AND o.kind='platform'
              WHERE r.tenant_id=p.tenant_id
                AND r.character_id=p.author_masana_id AND r.state='approved')
          FOR SHARE OF p
        `,[input.tenantId,input.postId,input.characterId]);
        if(!eligible.rows[0])throw new Error("gb.wallet.tip_post_unavailable");
        if(BigInt(source.purchased_mb)-BigInt(source.reserved_purchased_mb)<BigInt(amount))
          throw new RangeError("gb.wallet.insufficient_purchased_mb");
        await client.query(`
          INSERT INTO gb_wallet.operations
            (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
             operation_kind,amount_mb,state)
          VALUES($1,$2,$3,$4,$5,'tip',$6,'completed')
        `,[input.tenantId,input.operationId,input.userId,input.idempotencyKey,
          fingerprint,amount]);
        await client.query(`
          UPDATE gb_wallet.accounts SET purchased_mb=purchased_mb-$3,version=version+1
          WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2
        `,[input.tenantId,input.userId,amount]);
        await client.query(`
          UPDATE gb_wallet.accounts SET purchased_mb=purchased_mb+$3,version=version+1
          WHERE tenant_id=$1 AND account_kind='masana' AND account_id=$2
        `,[input.tenantId,input.characterId,amount]);
        await client.query(`
          INSERT INTO gb_wallet.movements
            (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
             source_bucket,target_bucket,amount_mb)
          VALUES($1,$2,'human',$3,'masana',$4,'purchased','purchased',$5)
        `,[input.tenantId,input.operationId,input.userId,input.characterId,amount]);
        await client.query(`
          INSERT INTO gb_wallet.tip_receipts(tenant_id,operation_id,post_id,character_id)
          VALUES($1,$2,$3::uuid,$4)
        `,[input.tenantId,input.operationId,input.postId,input.characterId]);
        return {operationId:input.operationId,postId:input.postId,
          characterId:input.characterId,amountMb:amount,state:"completed" as const};
      },{isolation:"serializable"}));
    },

    /** An unknown confirmation stays unknown until its exact original receipt
     * is observed for the SAME tenant and spending human. */
    async readTip(actor:GbAccountKey,operationId:string):Promise<GbTipReceipt|null> {
      assertKey(actor.tenantId,"tenant");
      assertKey(actor.userId,"actor");
      if(!/^tip_[A-Za-z0-9_-]{22,128}$/.test(operationId))
        throw new TypeError("Invalid Status tip operation");
      const result=await pool.query<{operation_id:string;amount_mb:string;
        state:string;post_id:string;character_id:string}>(`
        SELECT o.operation_id,o.amount_mb::text,o.state,
               t.post_id::text,t.character_id
        FROM gb_wallet.operations o JOIN gb_wallet.tip_receipts t
          ON t.tenant_id=o.tenant_id AND t.operation_id=o.operation_id
        WHERE o.tenant_id=$1 AND o.actor_id=$2 AND o.operation_id=$3
          AND o.operation_kind='tip'
        LIMIT 1
      `,[actor.tenantId,actor.userId,operationId]);
      const row=result.rows[0];
      if(!row)return null;
      if(row.state!=="completed")throw new Error("gb.wallet.tip_not_confirmed");
      return Object.freeze({operationId:row.operation_id,
        amountMb:bigintMb(row.amount_mb),state:"completed" as const,
        postId:row.post_id,characterId:row.character_id});
    },

    /** Original-key confirmed Send readback. A missing row is UNKNOWN, not a
     * failed transfer. Ownership is constrained to the debit actor. */
    async readTransfer(actor:GbAccountKey,operationId:string):Promise<GbReceipt|null> {
      assertKey(actor.tenantId,"tenant");
      assertKey(actor.userId,"actor");
      if(!/^send_[A-Za-z0-9_-]{22,128}$/.test(operationId))
        throw new TypeError("Invalid Send operation ID");
      const result=await pool.query<{
        operation_id:string;amount_mb:string;state:string;
      }>(`
        SELECT operation_id,amount_mb::text,state
        FROM gb_wallet.operations
        WHERE tenant_id=$1 AND actor_id=$2 AND operation_id=$3
          AND operation_kind='send'
        LIMIT 1
      `,[actor.tenantId,actor.userId,operationId]);
      const row=result.rows[0];
      if(!row)return null;
      if(row.state!=="completed")throw new Error("gb.wallet.send_not_confirmed");
      return Object.freeze({operationId:row.operation_id,
        amountMb:bigintMb(row.amount_mb),state:"completed" as const});
    },
  };
}

class AlreadyGranted extends Error {}
