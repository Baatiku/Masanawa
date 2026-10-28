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
  readonly details?:GbActivityReceiptDetails;
}
export interface GbActivityReceiptDetails {
  readonly counterpartyKind?:"human"|"masana"|"service";
  readonly counterpartyId?:string;
  readonly counterpartyName?:string;readonly counterpartyHandle?:string;
  readonly sourceBucket?:string;readonly targetBucket?:string;
  readonly exchangedMb?:number;readonly exchangeKobo?:number;
  readonly rateVersion?:string;readonly reversesOperationId?:string;
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
  receipt_metadata?:unknown;
};
type SummaryRow = {unit:string;received:string;spent:string;opening:string;closing:string;
  recorded_balance:string|null;reserved:string|null;available:string|null;debt:string|null;
  account_exists:boolean;posted_count:string;from_at:string;to_at:string};
export interface GbActivityBalanceReconciliation {
  readonly state:"matched"|"mismatch"|"uninitialized";
  readonly opening:number;readonly closing:number;
  readonly recordedBalance:number|null;readonly reserved:number|null;
  readonly available:number|null;readonly debt:number|null;
}

export interface GbActivityPeriodTotals {
  readonly periodDays: 7 | 30;
  readonly fromAt: string;
  readonly toAt: string;
  readonly MB: Readonly<{received:number;spent:number;net:number}>;
  readonly NGN: Readonly<{received:number;spent:number;net:number}>;
  readonly reconciliation?:Readonly<{MB:GbActivityBalanceReconciliation;NGN:GbActivityBalanceReconciliation}>;
}

const validActor = (v: string) =>
  /^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(v);

function receiptDetails(raw:unknown):GbActivityReceiptDetails|undefined {
  if(raw==null)return undefined;
  if(typeof raw!=="object"||Array.isArray(raw))throw new TypeError("invalid_activity_receipt");
  const source=raw as Record<string,unknown>,result:Record<string,string|number>={};
  for(const key of ['counterpartyId','rateVersion','reversesOperationId']){
    const value=source[key];
    if(value==null)continue;
    if(typeof value!=="string"||!validActor(value))throw new TypeError("invalid_activity_receipt");
    result[key]=value;
  }
  const kind=source.counterpartyKind;
  if(kind!=null){
    if(kind!=="human"&&kind!=="masana"&&kind!=="service")throw new TypeError("invalid_activity_receipt");
    result.counterpartyKind=kind;
  }
  for(const key of ['counterpartyName','counterpartyHandle']){
    const value=source[key];
    if(typeof value==='string'&&value.length>0&&value.length<=160&&!/[\x00-\x1f\x7f]/.test(value))result[key]=value;
  }
  for(const key of ['sourceBucket','targetBucket']){
    const value=source[key];if(value==null)continue;
    if(typeof value!=="string"||!['purchased','welcome','issuance','usage'].includes(value))throw new TypeError("invalid_activity_receipt");
    result[key]=value;
  }
  for(const key of ['exchangedMb','exchangeKobo']){
    if(source[key]==null)continue;
    if((typeof source[key]!=="string"&&typeof source[key]!=="number")||
      !/^\d+$/.test(String(source[key])))throw new TypeError("invalid_activity_receipt");
    const n=Number(source[key]);
    if(!Number.isSafeInteger(n)||n<=0)throw new TypeError("invalid_activity_receipt");
    result[key]=n;
  }
  return Object.keys(result).length?Object.freeze(result) as GbActivityReceiptDetails:undefined;
}

const movementDetails=`jsonb_strip_nulls(jsonb_build_object(
  'counterpartyKind',CASE WHEN m.to_kind='human' AND m.to_id=$2
    THEN CASE WHEN m.from_kind IN ('human','masana') THEN m.from_kind ELSE 'service' END
    ELSE CASE WHEN m.to_kind IN ('human','masana') THEN m.to_kind ELSE 'service' END END,
  'counterpartyId',CASE WHEN m.to_kind='human' AND m.to_id=$2
    THEN CASE WHEN m.from_kind IN ('human','masana') THEN m.from_id END
    ELSE CASE WHEN m.to_kind IN ('human','masana') THEN m.to_id END END,
  'counterpartyName',COALESCE(p.display_name,a.display_name),'counterpartyHandle',p.handle,
  'sourceBucket',to_jsonb(m)->>'source_bucket','targetBucket',to_jsonb(m)->>'target_bucket',
  'exchangedMb',to_jsonb(x)->>'amount_mb','rateVersion',to_jsonb(x)->>'rate_version',
  'exchangeKobo',CASE WHEN x.operation_id IS NOT NULL THEN abs(x.delta_kobo)::text END)) AS receipt_metadata`;
const ngnDetails=`jsonb_strip_nulls(jsonb_build_object(
  'counterpartyKind','service','exchangedMb',to_jsonb(n)->>'amount_mb',
  'exchangeKobo',CASE WHEN n.kind='exchange' THEN abs(n.delta_kobo)::text END,
  'rateVersion',to_jsonb(n)->>'rate_version',
  'reversesOperationId',to_jsonb(n)->>'reverses_operation_id')) AS receipt_metadata`;
const exchangeJoin=`LEFT JOIN gb_wallet.ngn_entries x ON x.tenant_id=m.tenant_id
  AND x.operation_id=m.operation_id AND x.account_id=$2 AND x.kind='exchange'
  LEFT JOIN talks.public_profiles p ON p.tenant_id=m.tenant_id AND p.user_id=
    CASE WHEN m.to_kind='human' AND m.to_id=$2 AND m.from_kind='human' THEN m.from_id
      WHEN m.from_kind='human' AND m.from_id=$2 AND m.to_kind='human' THEN m.to_id END
  LEFT JOIN agents.agent_presentations a ON a.tenant_id=m.tenant_id AND a.visible_in_user_app
    AND a.character_id=CASE WHEN m.to_kind='human' AND m.to_id=$2 AND m.from_kind='masana' THEN m.from_id
      WHEN m.from_kind='human' AND m.from_id=$2 AND m.to_kind='masana' THEN m.to_id END`;

function project(row: Row): GbActivityEntry {
  const details=receiptDetails(row.receipt_metadata);
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
    ...(details?{details}:{}),
  });
}

/** Read-only projection of immutable NEW ledgers. Do not join Credits/MSNW. */
export function createGbWalletActivityRepository(db: Pick<Pool, "query">) {
  return Object.freeze({
    async summary(actor:GbActivityActor,days:7|30,
      now?:Date):Promise<GbActivityPeriodTotals> {
      if(!validActor(actor.tenantId)||!validActor(actor.userId)||
         (days!==7&&days!==30)||(now!==undefined&&!Number.isFinite(now.getTime())))
        throw new TypeError("invalid_activity_summary");
      // The production cutoff is PostgreSQL's statement clock, not an earlier
      // application timestamp. All ledger/account values share this snapshot.
      const result=await db.query<SummaryRow>(`
        WITH bounds AS (
          SELECT cutoff-(($4::integer * 24) * interval '1 hour') AS from_at,cutoff AS to_at
          FROM (SELECT COALESCE($3::timestamptz,statement_timestamp()) AS cutoff) b
        ), posted AS (
          SELECT 'MB'::text AS unit,
            (CASE WHEN m.to_kind='human' AND m.to_id=$2
              THEN m.amount_mb ELSE -m.amount_mb END) AS amount,m.created_at
          FROM gb_wallet.movements m
          JOIN gb_wallet.operations o ON o.tenant_id=m.tenant_id AND o.operation_id=m.operation_id
          WHERE m.tenant_id=$1 AND ((m.from_kind='human' AND m.from_id=$2)
            OR (m.to_kind='human' AND m.to_id=$2))
          UNION ALL
          SELECT 'NGN'::text,n.delta_kobo,n.created_at FROM gb_wallet.ngn_entries n
          WHERE n.tenant_id=$1 AND n.account_id=$2
        ), flows AS (
          SELECT u.unit,b.from_at,b.to_at,
            COALESCE(SUM(p.amount) FILTER(WHERE p.created_at<b.from_at),0)::text AS opening,
            COALESCE(SUM(p.amount) FILTER(WHERE p.created_at<b.to_at),0)::text AS closing,
            COALESCE(SUM(p.amount) FILTER(WHERE p.amount>0 AND p.created_at>=b.from_at AND p.created_at<b.to_at),0)::text AS received,
            COALESCE(SUM(-p.amount) FILTER(WHERE p.amount<0 AND p.created_at>=b.from_at AND p.created_at<b.to_at),0)::text AS spent,
            COUNT(p.unit)::text AS posted_count
          FROM (VALUES ('MB'::text),('NGN'::text)) u(unit) CROSS JOIN bounds b
          LEFT JOIN posted p ON p.unit=u.unit
          GROUP BY u.unit,b.from_at,b.to_at
        )
        SELECT f.unit,f.opening,f.closing,f.received,f.spent,f.posted_count,
          f.from_at::text,f.to_at::text,
          CASE WHEN f.unit='MB' THEN a.account_id IS NOT NULL ELSE n.account_id IS NOT NULL END AS account_exists,
          CASE WHEN f.unit='MB' THEN a.purchased_mb::numeric+a.welcome_mb
            ELSE n.balance_kobo::numeric-n.debt_kobo END::text AS recorded_balance,
          CASE WHEN f.unit='MB' THEN a.reserved_purchased_mb::numeric+a.reserved_welcome_mb
            WHEN n.account_id IS NOT NULL THEN 0 END::text AS reserved,
          CASE WHEN f.unit='MB' THEN a.purchased_mb::numeric+a.welcome_mb-a.reserved_purchased_mb-a.reserved_welcome_mb
            ELSE n.balance_kobo END::text AS available,
          CASE WHEN f.unit='NGN' THEN n.debt_kobo WHEN a.account_id IS NOT NULL THEN 0 END::text AS debt
        FROM flows f
        LEFT JOIN gb_wallet.accounts a ON f.unit='MB' AND a.tenant_id=$1 AND a.account_kind='human' AND a.account_id=$2
        LEFT JOIN gb_wallet.ngn_accounts n ON f.unit='NGN' AND n.tenant_id=$1 AND n.account_id=$2
      `,[actor.tenantId,actor.userId,now?.toISOString()??null,days]);
      if(result.rows.length!==2)throw new TypeError("invalid_activity_summary_row");
      const totals={} as Record<"MB"|"NGN",{received:number;spent:number;net:number}>;
      const reconciliation={} as Record<"MB"|"NGN",GbActivityBalanceReconciliation>;
      let fromAt="",toAt="";
      const seen=new Set<string>();
      function integer(raw:unknown,nonnegative=false):number {
        if(typeof raw!=="string"||!(/^-?\d+$/).test(raw))throw new TypeError("invalid_activity_summary_amount");
        const value=Number(raw);
        if(!Number.isSafeInteger(value)||(nonnegative&&value<0))throw new TypeError("invalid_activity_summary_amount");
        return value;
      }
      for(const row of result.rows){
        if((row.unit!=="MB"&&row.unit!=="NGN")||seen.has(row.unit)||
          typeof row.account_exists!=="boolean"||!/^\d+$/.test(row.posted_count))
          throw new TypeError("invalid_activity_summary_row");
        seen.add(row.unit);
        const from=new Date(row.from_at),to=new Date(row.to_at);
        if(!Number.isFinite(from.getTime())||!Number.isFinite(to.getTime())||
          to.getTime()-from.getTime()!==days*86400000||
          (fromAt&&fromAt!==from.toISOString())||(toAt&&toAt!==to.toISOString()))
          throw new TypeError("invalid_activity_summary_window");
        fromAt=from.toISOString();toAt=to.toISOString();
        const received=integer(row.received,true),spent=integer(row.spent,true),net=received-spent;
        const opening=integer(row.opening),closing=integer(row.closing);
        if(!Number.isSafeInteger(net)||BigInt(opening)+BigInt(received)-BigInt(spent)!==BigInt(closing))
          throw new TypeError("invalid_activity_summary_amount");
        let recordedBalance:number|null=null,reserved:number|null=null,available:number|null=null,debt:number|null=null;
        let state:GbActivityBalanceReconciliation["state"]="mismatch";
        if(row.account_exists){
          recordedBalance=integer(row.recorded_balance);reserved=integer(row.reserved,true);
          available=integer(row.available,true);debt=integer(row.debt,true);
          if(closing===recordedBalance&&BigInt(available)+BigInt(reserved)-BigInt(debt)===BigInt(recordedBalance)&&
            (row.unit!=="MB"||debt===0)&&(row.unit!=="NGN"||(reserved===0&&(available===0||debt===0))))state="matched";
        }else{
          if([row.recorded_balance,row.reserved,row.available,row.debt].some(v=>v!==null))
            throw new TypeError("invalid_activity_summary_row");
          if(BigInt(row.posted_count)===0n&&opening===0&&closing===0&&received===0&&spent===0)state="uninitialized";
        }
        totals[row.unit]={received,spent,net};
        reconciliation[row.unit]=Object.freeze({state,opening,closing,recordedBalance,reserved,available,debt});
      }
      return Object.freeze({periodDays:days,fromAt,toAt,
        MB:Object.freeze(totals.MB),NGN:Object.freeze(totals.NGN),
        reconciliation:Object.freeze(reconciliation)});
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
            m.created_at,${movementDetails}
          FROM gb_wallet.movements m
          JOIN gb_wallet.operations o ON o.tenant_id=m.tenant_id
            AND o.operation_id=m.operation_id
          ${exchangeJoin}
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
            n.created_at,${ngnDetails}
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
          created_at::text AS created_at,receipt_metadata
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
          m.created_at::text AS created_at,${movementDetails}
        FROM gb_wallet.movements m
        JOIN gb_wallet.operations o ON o.tenant_id=m.tenant_id
          AND o.operation_id=m.operation_id
        ${exchangeJoin}
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
          n.created_at::text AS created_at,${ngnDetails}
        FROM gb_wallet.ngn_entries n
        WHERE n.tenant_id=$1 AND n.account_id=$2
          AND 'ngn:' || n.operation_id=$3
        LIMIT 1
      `, [actor.tenantId, actor.userId, entryId]);
      return result.rows[0] ? project(result.rows[0]) : null;
    },
  });
}
