import type { Pool } from "pg";

export interface GbActivityActor {
  readonly tenantId: string;
  readonly userId: string;
}
export interface GbActivityCursor {
  readonly createdAt: string;
  readonly entryId: string;
}
export interface GbActivityEntry {
  readonly entryId: string;
  readonly operationId: string;
  readonly unit: "MB" | "NGN";
  /** Signed integer MB or kobo, depending strictly on unit. */
  readonly amount: number;
  readonly kind: string;
  readonly status: "completed" | "reversed";
  readonly createdAt: string;
}

type Row = {
  entry_id: string;
  operation_id: string;
  unit: string;
  signed_amount: string;
  kind: string;
  status: string;
  created_at: string;
};

const validActor = (v: string) =>
  /^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(v);

function project(row: Row): GbActivityEntry {
  const amount = Number(row.signed_amount);
  if (!Number.isSafeInteger(amount) || amount === 0 ||
      !["MB", "NGN"].includes(row.unit) ||
      !["completed", "reversed"].includes(row.status) ||
      !/^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$/.test(row.entry_id) ||
      !row.operation_id || row.operation_id.length > 160 ||
      !Number.isFinite(Date.parse(row.created_at))) {
    throw new TypeError("invalid_authoritative_activity_row");
  }
  return Object.freeze({
    entryId: row.entry_id, operationId: row.operation_id,
    unit: row.unit as "MB" | "NGN", amount,
    kind: row.kind, status: row.status as "completed" | "reversed",
    createdAt: new Date(row.created_at).toISOString(),
  });
}

/** Read-only projection of immutable NEW ledgers. Do not join Credits/MSNW. */
export function createGbWalletActivityRepository(db: Pick<Pool, "query">) {
  return Object.freeze({
    async list(actor: GbActivityActor, limit: number,
        cursor: GbActivityCursor | null): Promise<readonly GbActivityEntry[]> {
      if (!validActor(actor.tenantId) || !validActor(actor.userId) ||
          !Number.isInteger(limit) || limit < 1 || limit > 31 ||
          (cursor !== null && (!/^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$/.test(cursor.entryId) ||
            !Number.isFinite(Date.parse(cursor.createdAt))))) {
        throw new TypeError("invalid_activity_page");
      }
      const result = await db.query<Row>(`
        WITH posted AS (
          SELECT 'mb:' || m.movement_id::text AS entry_id,
            m.operation_id, 'MB'::text AS unit,
            (CASE WHEN m.to_kind='human' AND m.to_id=$2
              THEN m.amount_mb ELSE -m.amount_mb END)::text AS signed_amount,
            o.operation_kind AS kind,
            (CASE WHEN o.state='reversed' THEN 'reversed'
              ELSE 'completed' END)::text AS status,
            m.created_at
          FROM gb_wallet.movements m
          JOIN gb_wallet.operations o ON o.tenant_id=m.tenant_id
            AND o.operation_id=m.operation_id
          WHERE m.tenant_id=$1 AND (
            (m.from_kind='human' AND m.from_id=$2) OR
            (m.to_kind='human' AND m.to_id=$2))
          UNION ALL
          SELECT 'ngn:' || n.operation_id AS entry_id,
            n.operation_id, 'NGN'::text AS unit,
            n.delta_kobo::text AS signed_amount,
            n.kind,
            (CASE WHEN n.kind='deposit_reversal' THEN 'reversed'
              ELSE 'completed' END)::text AS status,
            n.created_at
          FROM gb_wallet.ngn_entries n
          WHERE n.tenant_id=$1 AND n.account_id=$2
        )
        SELECT entry_id,operation_id,unit,signed_amount,kind,status,
          created_at::text AS created_at
        FROM posted WHERE ($3::timestamptz IS NULL OR
          created_at < $3::timestamptz OR
          (created_at = $3::timestamptz AND entry_id < $4))
        ORDER BY created_at DESC, entry_id DESC
        LIMIT $5
      `, [actor.tenantId, actor.userId, cursor?.createdAt ?? null,
        cursor?.entryId ?? null, limit]);
      return Object.freeze(result.rows.map(project));
    },
    async find(actor: GbActivityActor, entryId: string): Promise<GbActivityEntry | null> {
      if (!validActor(actor.tenantId) || !validActor(actor.userId) ||
          !/^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$/.test(entryId))
        throw new TypeError("invalid_activity_entry");
      // Never fetch a journal entry by its globally unique-looking reference
      // alone. Both sides of the MB movement and NGN owner are fenced here.
      const result = await db.query<Row>(`
        SELECT 'mb:' || m.movement_id::text AS entry_id,
          m.operation_id, 'MB'::text AS unit,
          (CASE WHEN m.to_kind='human' AND m.to_id=$2
            THEN m.amount_mb ELSE -m.amount_mb END)::text AS signed_amount,
          o.operation_kind AS kind,
          (CASE WHEN o.state='reversed' THEN 'reversed'
            ELSE 'completed' END)::text AS status,
          m.created_at::text AS created_at
        FROM gb_wallet.movements m
        JOIN gb_wallet.operations o ON o.tenant_id=m.tenant_id
          AND o.operation_id=m.operation_id
        WHERE m.tenant_id=$1 AND 'mb:' || m.movement_id::text=$3
          AND ((m.from_kind='human' AND m.from_id=$2) OR
               (m.to_kind='human' AND m.to_id=$2))
        UNION ALL
        SELECT 'ngn:' || n.operation_id AS entry_id,
          n.operation_id, 'NGN'::text AS unit,
          n.delta_kobo::text AS signed_amount,
          n.kind,
          (CASE WHEN n.kind='deposit_reversal' THEN 'reversed'
            ELSE 'completed' END)::text AS status,
          n.created_at::text AS created_at
        FROM gb_wallet.ngn_entries n
        WHERE n.tenant_id=$1 AND n.account_id=$2
          AND 'ngn:' || n.operation_id=$3
        LIMIT 1
      `, [actor.tenantId, actor.userId, entryId]);
      return result.rows[0] ? project(result.rows[0]) : null;
    },
  });
}
