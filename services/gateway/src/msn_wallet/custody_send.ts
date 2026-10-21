import { createWalletActivity } from './wallet_activity.js';
import { randomUUID } from "node:crypto";
import type { Pool, PoolClient } from "@masanawa/postgres";

export class MsnwCustodyError extends Error {
  constructor(readonly code: string, readonly statusCode = 503) { super(code); }
}
type Owner = Readonly<{ tenantId: string; userId: string }>;
const amountPattern = /^[1-9][0-9]{0,23}$/;
const keyPattern = /^[A-Za-z0-9:_-]{16,128}$/;
function amount(value: unknown): string {
  if (typeof value !== "string" || !amountPattern.test(value))
    throw new MsnwCustodyError("msnw.amount_invalid",400);
  return value;
}
function decimal(raw: unknown): string {
  const value = String(raw ?? "");
  if (!/^(0|[1-9][0-9]{0,77})$/.test(value))
    throw new MsnwCustodyError("msnw.ledger_corrupt");
  return value;
}
function at(raw: unknown): string {
  const value = raw instanceof Date ? raw.toISOString() : raw;
  if (typeof value !== "string" || !Number.isFinite(Date.parse(value)))
    throw new MsnwCustodyError("msnw.receipt_corrupt");
  return value;
}
function recipient(raw: unknown): { accountNumber: string | null; handle: string | null; email: string | null; phone: string | null } {
  if (typeof raw !== "string" || raw.length > 320)
    throw new MsnwCustodyError("msnw.recipient_invalid",400);
  const value = raw.trim();
  const result = { accountNumber: null, handle: null, email: null, phone: null };
  if (/^8[0-9]{9}$/.test(value)) return { ...result, accountNumber: value };
  if (/^8[0-9]{3} [0-9]{3} [0-9]{3}$/.test(value))
    return { ...result, accountNumber: value.replaceAll(" ", "") };
  if (/^@[a-zA-Z0-9_][a-zA-Z0-9._-]{1,39}$/.test(value))
    return { ...result, handle: value.slice(1).toLowerCase() };
  if (/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value))
    return { ...result, email: value.toLowerCase() };
  if (/^\+[1-9][0-9]{6,14}$/.test(value)) return { ...result, phone: value };
  throw new MsnwCustodyError("msnw.recipient_invalid",400);
}

export function createMsnwCustodyService(pool: Pool) {
  async function resolve(owner: Owner, value: unknown,
    db?: PoolClient) {
    const identifier = recipient(value);
    const r = await (db ?? pool).query(
      "SELECT p.user_id, p.display_name, p.masanawa_account_number, t.handle " +
      "FROM security.platform_user_profiles p " +
      "JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id AND u.state='active' " +
      "LEFT JOIN talks.public_profiles t ON t.tenant_id=p.tenant_id AND t.user_id=p.user_id " +
      "WHERE p.tenant_id=$1 AND (" +
      "($3::text IS NOT NULL AND p.masanawa_account_number=$3) OR " +
      "($4::text IS NOT NULL AND lower(t.handle)=lower($4)) OR " +
      "($5::text IS NOT NULL AND p.email=$5) OR ($6::text IS NOT NULL AND p.phone=$6)) " +
      "AND NOT EXISTS (SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=p.tenant_id " +
      "AND b.blocked=true AND ((b.viewer_user_id=$2 AND b.subject_user_id=p.user_id) " +
      "OR (b.subject_user_id=$2 AND b.viewer_user_id=p.user_id))) " +
      "AND NOT EXISTS (SELECT 1 FROM talks.safety_enforcement se WHERE se.tenant_id=p.tenant_id " +
      "AND se.target_kind='profile' AND se.target_id=t.handle AND se.visibility IN ('restricted','blocked')) LIMIT 2",
      [owner.tenantId, owner.userId, identifier.accountNumber, identifier.handle, identifier.email, identifier.phone],
    );
    if (r.rowCount !== 1) throw new MsnwCustodyError("msnw.recipient_not_found", 404);
    const row = r.rows[0]!;
    const userId = row?.user_id, displayName = row?.display_name;
    if (typeof userId !== "string" || typeof displayName !== "string")
      throw new MsnwCustodyError("msnw.recipient_invalid", 409);
    if (userId === owner.userId) throw new MsnwCustodyError("msnw.send_to_self", 400);
    return {
      userId,
      displayName,
      accountNumber: typeof row.masanawa_account_number === "string" ? row.masanawa_account_number : null,
      handle: typeof row.handle === "string" ? row.handle : null
    };
  }
  async function lookupRecipient(owner: Owner, query: string) {
    const target = await resolve(owner, query);
    return Object.freeze({
      found: true as const,
      userId: target.userId,
      displayName: target.displayName,
      handle: target.handle,
      accountNumber: target.accountNumber,
    });
  }
  async function account(owner: Owner) {
    const result = await pool.query(
      "SELECT masanawa_account_number FROM security.platform_user_profiles WHERE tenant_id=$1 AND user_id=$2",
      [owner.tenantId, owner.userId],
    );
    const accountNumber = result.rows[0]?.masanawa_account_number;
    if (typeof accountNumber !== "string" || !/^8[0-9]{9}$/.test(accountNumber))
      throw new MsnwCustodyError("msnw.account_unavailable",503);
    return Object.freeze({ accountNumber });
  }
  async function balance(owner: Owner) {
    const r = await pool.query(
      "SELECT available_micro::text,reserved_micro::text FROM " +
      "commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2",
      [owner.tenantId,owner.userId]);
    return Object.freeze({ asset: "MSNW" as const,
      scope: "platform_custody" as const,
      availableMicro: decimal(r.rows[0]?.available_micro ?? "0"),
      reservedMicro: decimal(r.rows[0]?.reserved_micro ?? "0") });
  }
  async function preview(owner: Owner, identifier: unknown, rawAmount: unknown) {
    const micro = amount(rawAmount), target = await resolve(owner,identifier);
    const current = await balance(owner);
    if (BigInt(current.availableMicro) < BigInt(micro))
      throw new MsnwCustodyError("msnw.insufficient_available",409);
    return Object.freeze({ asset: "MSNW" as const, recipientUserId: target.userId,
      recipientName: target.displayName, amountMicro: micro, feeMicro: "0" as const });
  }
  async function lookup(owner: Owner, rawKey: unknown) {
    if (typeof rawKey !== "string" || !keyPattern.test(rawKey))
      throw new MsnwCustodyError("msnw.idempotency_key_invalid",400);
    const r = await pool.query(
      "SELECT operation_id::text,recipient_user_id,amount_micro::text,created_at " +
      "FROM commerce.msnw_custody_operations WHERE tenant_id=$1 " +
      "AND actor_user_id=$2 AND idempotency_key=$3 AND kind='send' LIMIT 1",
      [owner.tenantId,owner.userId,rawKey]);
    if (!r.rowCount) return null;
    const item = r.rows[0]!;
    return Object.freeze({ operationId: String(item.operation_id),
      recipientUserId: String(item.recipient_user_id),
      amountMicro: amount(String(item.amount_micro)), feeMicro: "0" as const,
      asset: "MSNW" as const, state: "completed" as const,
      createdAt: at(item.created_at) });
  }
  async function send(owner: Owner, input: Readonly<{
    recipient: unknown; recipientUserId: unknown;
    amountMicro: unknown; idempotencyKey: unknown;
  }>) {
    const micro = amount(input.amountMicro);
    if (typeof input.idempotencyKey !== "string" ||
        !keyPattern.test(input.idempotencyKey) ||
        typeof input.recipientUserId !== "string")
      throw new MsnwCustodyError("msnw.confirmation_invalid",400);
    const db = await pool.connect();
    let began = false;
    try {
      await db.query("BEGIN"); began = true;
      // A replay and an original request serialize on the same identity/key.
      await db.query("SELECT pg_advisory_xact_lock(hashtext($1),hashtext($2))",
        [owner.tenantId + ":" + owner.userId,input.idempotencyKey]);
      const replay = await db.query(
        "SELECT operation_id::text,recipient_user_id,amount_micro::text,created_at " +
        "FROM commerce.msnw_custody_operations WHERE tenant_id=$1 " +
        "AND actor_user_id=$2 AND idempotency_key=$3 FOR UPDATE",
        [owner.tenantId,owner.userId,input.idempotencyKey]);
      if (replay.rowCount) {
        const item = replay.rows[0]!;
        // A committed result remains retrievable even if a recipient's
        // email/phone is later changed or their profile becomes unavailable.
        // Never resolve the recipient or dispatch a second debit on replay.
        if (item.recipient_user_id !== input.recipientUserId ||
            item.amount_micro !== micro)
          throw new MsnwCustodyError("msnw.idempotency_conflict",409);
        await db.query("COMMIT"); began = false;
        return Object.freeze({ operationId: String(item.operation_id),
          recipientUserId: String(item.recipient_user_id),
          amountMicro: micro, feeMicro: "0" as const,
          asset: "MSNW" as const, state: "completed" as const,
          createdAt: at(item.created_at) });
      }
      const target = await resolve(owner,input.recipient,db);
      if (target.userId !== input.recipientUserId)
        throw new MsnwCustodyError("msnw.recipient_changed",409);
      // Creating an empty receiving account is not issuance.
      await db.query(
        "INSERT INTO commerce.msnw_custody_accounts (tenant_id,user_id) " +
        "VALUES ($1,$2) ON CONFLICT DO NOTHING", [owner.tenantId,target.userId]);
      const users = [owner.userId,target.userId].sort();
      const held = await db.query(
        "SELECT user_id,available_micro::text FROM commerce.msnw_custody_accounts " +
        "WHERE tenant_id=$1 AND user_id=ANY($2::text[]) ORDER BY user_id FOR UPDATE",
        [owner.tenantId,users]);
      const source = held.rows.find(row => row.user_id === owner.userId);
      if (!source || BigInt(decimal(source.available_micro)) < BigInt(micro))
        throw new MsnwCustodyError("msnw.insufficient_available",409);
      if (!held.rows.find(row => row.user_id === target.userId))
        throw new MsnwCustodyError("msnw.recipient_unavailable");
      // Account locks can wait behind another operation. Re-authorize after
      // that wait so a newly disabled/blocked recipient is not paid using the
      // earlier name inquiry snapshot.
      const confirmed = await resolve(owner,input.recipient,db);
      if (confirmed.userId !== target.userId)
        throw new MsnwCustodyError("msnw.recipient_changed",409);
      const operationId = randomUUID();
      const debit = await db.query(
        "UPDATE commerce.msnw_custody_accounts " +
        "SET available_micro=available_micro-$3::numeric,updated_at=statement_timestamp() " +
        "WHERE tenant_id=$1 AND user_id=$2 AND available_micro >= $3::numeric",
        [owner.tenantId,owner.userId,micro]);
      if (debit.rowCount !== 1)
        throw new MsnwCustodyError("msnw.insufficient_available",409);
      const credit = await db.query(
        "UPDATE commerce.msnw_custody_accounts " +
        "SET available_micro=available_micro+$3::numeric,updated_at=statement_timestamp() " +
        "WHERE tenant_id=$1 AND user_id=$2",
        [owner.tenantId,target.userId,micro]);
      if (credit.rowCount !== 1)
        throw new MsnwCustodyError("msnw.recipient_unavailable");
      const op = await db.query(
        "INSERT INTO commerce.msnw_custody_operations " +
        "(operation_id,tenant_id,actor_user_id,recipient_user_id,kind,idempotency_key,amount_micro) " +
        "VALUES ($1,$2,$3,$4,'send',$5,$6::numeric) RETURNING created_at",
        [operationId,owner.tenantId,owner.userId,target.userId,input.idempotencyKey,micro]);
      await db.query(
        "INSERT INTO commerce.msnw_custody_entries " +
        "(operation_id,entry_number,tenant_id,user_id,available_delta_micro) " +
        "VALUES ($1,1,$2,$3,-$5::numeric),($1,2,$2,$4,$5::numeric)",
        [operationId,owner.tenantId,owner.userId,target.userId,micro]);
      await db.query("COMMIT"); began = false;
      return Object.freeze({ operationId, recipientUserId: target.userId,
        amountMicro: micro, feeMicro: "0" as const, asset: "MSNW" as const,
        state: "completed" as const, createdAt: at(op.rows[0]?.created_at) });
    } catch (error) {
      if (began) await db.query("ROLLBACK").catch(() => undefined);
      throw error;
    } finally { db.release(); }
  }
  async function history(owner: Owner) {
    const r = await pool.query(
      "SELECT operation_id::text,actor_user_id,recipient_user_id,amount_micro::text,created_at " +
      "FROM commerce.msnw_custody_operations WHERE tenant_id=$1 " +
      "AND (actor_user_id=$2 OR recipient_user_id=$2) " +
      "ORDER BY created_at DESC,operation_id DESC LIMIT 100",
      [owner.tenantId,owner.userId]);
    return Object.freeze(r.rows.map(row => Object.freeze({
      operationId: String(row.operation_id),
      direction: row.actor_user_id === owner.userId ? "sent" as const : "received" as const,
      counterpartyUserId: row.actor_user_id === owner.userId
        ? String(row.recipient_user_id) : String(row.actor_user_id),
      amountMicro: decimal(row.amount_micro), createdAt: at(row.created_at),
      asset: "MSNW" as const, state: "completed" as const,
    })));
  }
  return Object.freeze({ account, balance, preview, send, lookup, history, lookupRecipient, activity: createWalletActivity(pool) });
}

