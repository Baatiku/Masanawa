import { createHash, randomBytes } from "node:crypto";
import type { Pool, PoolClient } from "pg";
import { withTransaction } from "../transaction.js";

export interface GbPaymentRequest {
  readonly requestId: string;
  readonly requesterId: string;
  readonly payerId: string;
  readonly requesterUsername: string | null;
  readonly payerUsername: string | null;
  readonly amountMb: number;
  readonly state: "open" | "paid" | "cancelled" | "declined" | "expired";
  readonly createdAt: string;
  readonly expiresAt: string;
  readonly operationId: string | null;
}

export interface GbRequestActor {
  readonly tenantId: string;
  readonly userId: string;
}

export class GbRequestStoreError extends Error {
  constructor(
    readonly status: 400 | 403 | 404 | 409 | 410 | 422 | 503,
    readonly code: string,
  ) {
    super(code);
  }
}

const validId = (x: string) =>
  typeof x === "string" && /^[a-zA-Z0-9][a-zA-Z0-9_.:-]{0,159}$/.test(x);
const validKey = (x: string) =>
  typeof x === "string" && /^[a-zA-Z0-9_-]{12,128}$/.test(x);
function safeMb(n: string | number): number {
  const i = typeof n === "string" ? BigInt(n) : BigInt(n);
  if (i < 1n || i > 1000000000n) {
    throw new GbRequestStoreError(422, "invalid_mb_amount");
  }
  return Number(i);
}
function checkActor(a: GbRequestActor): void {
  if (!validId(a.tenantId) || !validId(a.userId)) {
    throw new GbRequestStoreError(403, "unauthorized");
  }
}

type RequestRow = {
  request_id: string; requester_id: string; payer_id: string;
  requester_username: string | null; payer_username: string | null;
  amount_mb: string; state: "open" | "paid" | "cancelled" | "declined";
  created_at: Date | string; expires_at: Date | string;
  operation_id: string | null;
};
function project(row: RequestRow): GbPaymentRequest {
  const expires = new Date(row.expires_at).toISOString();
  return {
    requestId: row.request_id,
    requesterId: row.requester_id,
    payerId: row.payer_id,
    requesterUsername: row.requester_username,
    payerUsername: row.payer_username,
    amountMb: safeMb(row.amount_mb),
    state: row.state === "open" && new Date(row.expires_at) <= new Date()
      ? "expired" : row.state,
    createdAt: new Date(row.created_at).toISOString(),
    expiresAt: expires,
    operationId: row.operation_id,
  };
}
async function serializable<T>(work: () => Promise<T>): Promise<T> {
  for (let retry = 0; retry < 4; retry++) {
    try { return await work(); } catch (error) {
      const code = (error as {code?: unknown} | null)?.code;
      if ((code !== "40001" && code !== "40P01") || retry === 3) throw error;
    }
  }
  throw new GbRequestStoreError(503, "request_busy");
}
async function ensureAccount(
  c: PoolClient, tenantId: string, userId: string,
): Promise<void> {
  await c.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id)
    VALUES($1,'human',$2) ON CONFLICT DO NOTHING`,[tenantId,userId]);
}
async function partiesEligible(
  c: PoolClient, tenantId: string, requesterId: string, payerId: string,
): Promise<boolean> {
  const result = await c.query<{count: number}>(`
    SELECT count(*)::int AS count
      FROM identity.users u
     WHERE u.tenant_id=$1 AND u.user_id IN ($2,$3)
       AND u.state='active'
       AND NOT EXISTS (
         SELECT 1 FROM talks.safety_preferences b
         WHERE b.tenant_id=$1 AND b.blocked
           AND ((b.viewer_user_id=$2 AND b.subject_user_id=$3)
             OR (b.viewer_user_id=$3 AND b.subject_user_id=$2))
       )
       AND NOT EXISTS (
         SELECT 1 FROM talks.public_profiles p
         JOIN talks.safety_enforcement e
           ON e.tenant_id=p.tenant_id
          AND e.target_kind='profile'
          AND e.target_id=p.handle
         WHERE p.tenant_id=$1 AND p.user_id IN ($2,$3)
           AND e.visibility IN ('blocked','restricted')
       )`,[tenantId,requesterId,payerId]);
  return result.rows[0]?.count === 2;
}

export function createPostgresGbRequestRepository(pool: Pool) {
  return {
    async create(
      actor: GbRequestActor,
      input: {payerId:string;amountMb:number;idempotencyKey:string},
    ): Promise<GbPaymentRequest> {
      checkActor(actor);
      if (!validId(input.payerId) || input.payerId === actor.userId ||
          !validKey(input.idempotencyKey)) {
        throw new GbRequestStoreError(422,"invalid_request");
      }
      const amount = safeMb(input.amountMb);
      const hash=createHash("sha256").update(JSON.stringify(
        [actor.userId,input.payerId,amount])).digest("hex");
      return serializable(() => withTransaction(pool, async c => {
        if (!await partiesEligible(c,actor.tenantId,actor.userId,input.payerId)) {
          throw new GbRequestStoreError(404,"recipient_unavailable");
        }
        const requestId="mbreq_"+randomBytes(18).toString("base64url");
        await c.query(`INSERT INTO gb_wallet.payment_requests
          (tenant_id,request_id,requester_id,payer_id,amount_mb,
           idempotency_key,request_sha256)
          VALUES($1,$2,$3,$4,$5,$6,$7)
          ON CONFLICT(tenant_id,requester_id,idempotency_key) DO NOTHING`,[
          actor.tenantId,requestId,actor.userId,input.payerId,amount,
          input.idempotencyKey,hash,
        ]);
        const rows=await c.query<RequestRow & {request_sha256:string}>(`
          SELECT r.*,p.handle AS requester_username,
            t.handle AS payer_username
          FROM gb_wallet.payment_requests r
          LEFT JOIN talks.public_profiles p
            ON p.tenant_id=r.tenant_id AND p.user_id=r.requester_id
          LEFT JOIN talks.public_profiles t
            ON t.tenant_id=r.tenant_id AND t.user_id=r.payer_id
          WHERE r.tenant_id=$1 AND r.requester_id=$2 AND r.idempotency_key=$3`,[
            actor.tenantId,actor.userId,input.idempotencyKey,
          ]);
        const row=rows.rows[0];
        if (!row || row.request_sha256!==hash) {
          throw new GbRequestStoreError(409,"request_idempotency_conflict");
        }
        return project(row);
      },{isolation:"serializable"}));
    },
    async list(actor: GbRequestActor): Promise<readonly GbPaymentRequest[]> {
      checkActor(actor);
      const response=await pool.query<RequestRow>(`
        SELECT r.*,p.handle AS requester_username,
          t.handle AS payer_username
        FROM gb_wallet.payment_requests r
        LEFT JOIN talks.public_profiles p
          ON p.tenant_id=r.tenant_id AND p.user_id=r.requester_id
        LEFT JOIN talks.public_profiles t
          ON t.tenant_id=r.tenant_id AND t.user_id=r.payer_id
        WHERE r.tenant_id=$1 AND
          (r.requester_id=$2 OR r.payer_id=$2)
        ORDER BY r.created_at DESC,r.request_id DESC LIMIT 75`,[
        actor.tenantId,actor.userId,
      ]);
      return response.rows.map(project);
    },
    async pay(
      actor: GbRequestActor, requestId: string,
    ): Promise<{operationId:string;amountMb:number;state:"completed"}> {
      checkActor(actor);
      if (!validId(requestId))throw new GbRequestStoreError(422,"invalid_request");
      return serializable(() => withTransaction(pool, async c => {
        const found=await c.query<RequestRow>(`
          SELECT r.*,NULL::text AS requester_username,
            NULL::text AS payer_username
          FROM gb_wallet.payment_requests r
          WHERE r.tenant_id=$1 AND r.request_id=$2 FOR UPDATE`,[
          actor.tenantId,requestId,
        ]);
        const request=found.rows[0];
        if (!request || request.payer_id!==actor.userId) {
          throw new GbRequestStoreError(404,"request_not_found");
        }
        const amount=safeMb(request.amount_mb);
        const paymentOp="request_pay_"+request.request_id;
        if (request.state==="paid") {
          if (request.operation_id!==paymentOp) {
            throw new GbRequestStoreError(503,"request_receipt_unavailable");
          }
          return {operationId:paymentOp,amountMb:amount,state:"completed" as const};
        }
        if (request.state!=="open") {
          throw new GbRequestStoreError(409,"request_cancelled");
        }
        if (new Date(request.expires_at).getTime()<=Date.now()) {
          throw new GbRequestStoreError(410,"request_expired");
        }
        if (!await partiesEligible(c,actor.tenantId,request.requester_id,actor.userId)) {
          throw new GbRequestStoreError(409,"request_parties_unavailable");
        }
        // Same transaction locks the request and both wallets. A retry can
        // never pay twice, and a failed move cannot mark a request as paid.
        await ensureAccount(c,actor.tenantId,actor.userId);
        await ensureAccount(c,actor.tenantId,request.requester_id);
        const locked=await c.query<{
          account_id:string;purchased_mb:string;reserved_purchased_mb:string;frozen:boolean;
        }>(`SELECT account_id,purchased_mb::text,reserved_purchased_mb::text,frozen
          FROM gb_wallet.accounts
          WHERE tenant_id=$1 AND account_kind='human'
            AND account_id IN ($2,$3)
          ORDER BY account_id FOR UPDATE`,[
            actor.tenantId,actor.userId,request.requester_id,
          ]);
        const from=locked.rows.find(r=>r.account_id===actor.userId);
        const to=locked.rows.find(r=>r.account_id===request.requester_id);
        if (!from||!to||from.frozen||to.frozen) {
          throw new GbRequestStoreError(409,"wallet_unavailable");
        }
        if (BigInt(from.purchased_mb)-BigInt(from.reserved_purchased_mb) <
            BigInt(amount)) {
          throw new GbRequestStoreError(409,"insufficient_purchased_mb");
        }
        const fingerprint=createHash("sha256").update(JSON.stringify(
          [requestId,actor.userId,request.requester_id,amount])).digest("hex");
        await c.query(`INSERT INTO gb_wallet.operations
          (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
           operation_kind,amount_mb,state)
          VALUES($1,$2,$3,$2,$4,'request_pay',$5,'completed')`,[
          actor.tenantId,paymentOp,actor.userId,fingerprint,amount,
        ]);
        await c.query(`UPDATE gb_wallet.accounts SET
          purchased_mb=purchased_mb-$3,version=version+1
          WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,[
          actor.tenantId,actor.userId,amount,
        ]);
        await c.query(`UPDATE gb_wallet.accounts SET
          purchased_mb=purchased_mb+$3,version=version+1
          WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,[
          actor.tenantId,request.requester_id,amount,
        ]);
        await c.query(`INSERT INTO gb_wallet.movements
          (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
           source_bucket,target_bucket,amount_mb)
          VALUES($1,$2,'human',$3,'human',$4,'purchased','purchased',$5)`,[
          actor.tenantId,paymentOp,actor.userId,request.requester_id,amount,
        ]);
        await c.query(`UPDATE gb_wallet.payment_requests
          SET state='paid',paid_at=statement_timestamp(),operation_id=$3
          WHERE tenant_id=$1 AND request_id=$2 AND state='open'`,[
          actor.tenantId,requestId,paymentOp,
        ]);
        return {operationId:paymentOp,amountMb:amount,state:"completed" as const};
      },{isolation:"serializable"}));
    },
    async cancel(actor:GbRequestActor,requestId:string):Promise<GbPaymentRequest> {
      checkActor(actor);
      if (!validId(requestId)) throw new GbRequestStoreError(422,"invalid_request");
      return withTransaction(pool, async c => {
        const r=await c.query<RequestRow>(`UPDATE gb_wallet.payment_requests
          SET state='cancelled'
          WHERE tenant_id=$1 AND requester_id=$2 AND request_id=$3
            AND state='open'
          RETURNING *,NULL::text AS requester_username,
            NULL::text AS payer_username`,[actor.tenantId,actor.userId,requestId]);
        if (r.rows[0])return project(r.rows[0]);
        const prior=await c.query<RequestRow>(`SELECT *,
          NULL::text AS requester_username,NULL::text AS payer_username
          FROM gb_wallet.payment_requests
          WHERE tenant_id=$1 AND requester_id=$2 AND request_id=$3`,[
          actor.tenantId,actor.userId,requestId,
        ]);
        if (!prior.rows[0])throw new GbRequestStoreError(404,"request_not_found");
        if (prior.rows[0].state==="paid")throw new GbRequestStoreError(409,"already_paid");
        return project(prior.rows[0]);
      });
    },
    async decline(actor:GbRequestActor,requestId:string):Promise<GbPaymentRequest> {
      checkActor(actor);
      if (!validId(requestId))throw new GbRequestStoreError(422,"invalid_request");
      return withTransaction(pool, async c => {
        // The UPDATE locks the same row as Pay. Only an open, unexpired
        // original request can be declined; a concurrent Pay cannot follow.
        const updated=await c.query<RequestRow>(`
          UPDATE gb_wallet.payment_requests SET state='declined'
          WHERE tenant_id=$1 AND payer_id=$2 AND request_id=$3
            AND state='open' AND expires_at>statement_timestamp()
          RETURNING *,NULL::text AS requester_username,
            NULL::text AS payer_username`,[
            actor.tenantId,actor.userId,requestId,
          ]);
        if (updated.rows[0])return project(updated.rows[0]);
        const prior=await c.query<RequestRow>(`
          SELECT *,NULL::text AS requester_username,
            NULL::text AS payer_username
          FROM gb_wallet.payment_requests
          WHERE tenant_id=$1 AND payer_id=$2 AND request_id=$3`,[
            actor.tenantId,actor.userId,requestId,
          ]);
        const row=prior.rows[0];
        if (!row)throw new GbRequestStoreError(404,"request_not_found");
        if (row.state==="declined")return project(row);
        if (row.state==="open" && new Date(row.expires_at)<=new Date()) {
          throw new GbRequestStoreError(410,"request_expired");
        }
        throw new GbRequestStoreError(409,"request_already_closed");
      });
    },
  };
}
