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
export type GbActivityUnitFilter = "all" | "MB" | "NGN";
export interface GbActivityFacets {
  readonly purpose: "all"|"funding"|"transfers"|"masana"|"data"|"reversals"|"other";
  readonly status: "all"|"completed"|"reversed";
  readonly direction: "all"|"incoming"|"outgoing";
  readonly days: "all"|"7"|"30";
  readonly reference: string;
  readonly snapshotAt: string;
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
type SummaryRow = {unit:string;received:string;spent:string};

export interface GbActivityPeriodTotals {
  readonly periodDays: 7 | 30;
  readonly fromAt: string;
  readonly toAt: string;
  readonly MB: Readonly<{received:number;spent:number;net:number}>;
  readonly NGN: Readonly<{received:number;spent:number;net:number}>;
}

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
    async summary(actor:GbActivityActor,days:7|30,
      now:Date=new Date()):Promise<GbActivityPeriodTotals> {
      if(!validActor(actor.tenantId)||!validActor(actor.userId)||
         (days!==7&&days!==30)||!Number.isFinite(now.getTime()))
        throw new TypeError("invalid_activity_summary");
      const toAt=now.toISOString();
      const fromAt=new Date(now.getTime()-days*86400000).toISOString();
      const result=await db.query<SummaryRow>(`
        WITH posted AS (
          SELECT 'MB'::text AS unit,
            (CASE WHEN m.to_kind='human' AND m.to_id=$2
              THEN m.amount_mb ELSE -m.amount_mb END) AS amount,
            m.created_at
          FROM gb_wallet.movements m
          JOIN gb_wallet.operations o ON o.tenant_id=m.tenant_id
            AND o.operation_id=m.operation_id
          WHERE m.tenant_id=$1 AND (
            (m.from_kind='human' AND m.from_id=$2) OR
            (m.to_kind='human' AND m.to_id=$2))
          UNION ALL
          SELECT 'NGN'::text AS unit,n.delta_kobo AS amount,n.created_at
          FROM gb_wallet.ngn_entries n
          WHERE n.tenant_id=$1 AND n.account_id=$2
        )
        SELECT unit,
          COALESCE(SUM(CASE WHEN amount>0 THEN amount ELSE 0 END),0)::text AS received,
          COALESCE(SUM(CASE WHEN amount<0 THEN -amount ELSE 0 END),0)::text AS spent
        FROM posted
        WHERE created_at >= $3::timestamptz AND created_at < $4::timestamptz
        GROUP BY unit
      `,[actor.tenantId,actor.userId,fromAt,toAt]);
      const totals={MB:{received:0,spent:0,net:0},NGN:{received:0,spent:0,net:0}};
      const seen=new Set<string>();
      for(const row of result.rows){
        if((row.unit!=="MB"&&row.unit!=="NGN")||seen.has(row.unit))
          throw new TypeError("invalid_activity_summary_row");
        seen.add(row.unit);
        const received=Number(row.received),spent=Number(row.spent);
        const net=received-spent;
        if(!Number.isSafeInteger(received)||received<0||
           !Number.isSafeInteger(spent)||spent<0||!Number.isSafeInteger(net))
          throw new TypeError("invalid_activity_summary_amount");
        totals[row.unit]={received,spent,net};
      }
      return Object.freeze({periodDays:days,fromAt,toAt,
        MB:Object.freeze(totals.MB),NGN:Object.freeze(totals.NGN)});
    },
    async list(actor: GbActivityActor, limit: number,
        cursor: GbActivityCursor | null,
        unit: GbActivityUnitFilter="all",
        facets:GbActivityFacets={purpose:"all",status:"all",direction:"all",
          days:"all",reference:"",snapshotAt:new Date().toISOString()})
        : Promise<readonly GbActivityEntry[]> {
      if (!validActor(actor.tenantId) || !validActor(actor.userId) ||
          !Number.isInteger(limit) || limit < 1 || limit > 31 ||
          (unit!=="all" && unit!=="MB" && unit!=="NGN") ||
          !["all","funding","transfers","masana","data","reversals","other"].includes(facets.purpose) ||
          !["all","completed","reversed"].includes(facets.status) ||
          !["all","incoming","outgoing"].includes(facets.direction) ||
          !["all","7","30"].includes(facets.days) ||
          !(facets.reference==="" || (facets.reference.length<=160 &&
            /^[A-Za-z0-9][A-Za-z0-9_.:-]*$/.test(facets.reference))) ||
          !/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}Z$/.test(facets.snapshotAt) ||
          !Number.isFinite(Date.parse(facets.snapshotAt)) ||
          new Date(facets.snapshotAt).toISOString()!==facets.snapshotAt ||
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
        ,classified AS (
          SELECT *, CASE
            WHEN kind IN ('welcome_grant','verified_deposit','ngn_exchange','deposit') THEN 'funding'
            WHEN kind IN ('send','request_pay') THEN 'transfers'
            WHEN kind IN ('tip','reply','connected_call') THEN 'masana'
            WHEN kind IN ('redeem','exchange') THEN 'data'
            WHEN kind IN ('reversal','deposit_reversal') THEN 'reversals'
            ELSE 'other' END AS purpose
          FROM posted
        )
        SELECT entry_id,operation_id,unit,signed_amount,kind,status,
          created_at::text AS created_at
        FROM classified WHERE ($6::text='all' OR unit=$6::text) AND
          ($7::text='all' OR purpose=$7::text) AND
          ($8::text='all' OR status=$8::text) AND
          ($9::text='all' OR (CASE WHEN signed_amount::bigint>0
            THEN 'incoming' ELSE 'outgoing' END)=$9::text) AND
          ($10::integer IS NULL OR created_at >= $12::timestamptz -
            ($10::integer * INTERVAL '1 day')) AND
          ($11::text IS NULL OR operation_id=$11::text) AND
          created_at <= $12::timestamptz AND
          ($3::timestamptz IS NULL OR
          created_at < $3::timestamptz OR
          (created_at = $3::timestamptz AND entry_id < $4))
        ORDER BY created_at DESC, entry_id DESC
        LIMIT $5
      `, [actor.tenantId, actor.userId, cursor?.createdAt ?? null,
        cursor?.entryId ?? null, limit,unit,facets.purpose,facets.status,
        facets.direction,facets.days==="all"?null:Number(facets.days),
        facets.reference||null,facets.snapshotAt]);
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
