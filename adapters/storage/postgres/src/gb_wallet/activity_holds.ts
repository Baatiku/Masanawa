import type {Pool} from "pg";

export interface GbActivityHold {
  readonly operationId:string;readonly kind:string;readonly operationState:string;
  readonly state:"reserved"|"captured"|"released";
  readonly reservedMb:number;readonly heldMb:number;readonly chargedMb:number;readonly releasedMb:number;
  readonly purchasedReservedMb:number;readonly welcomeReservedMb:number;
  readonly createdAt:string;readonly resolvedAt:string|null;readonly entryIds:readonly string[];
}
type Actor={tenantId:string;userId:string};
export type GbActivityHoldFilter="all"|"reserved"|"captured"|"released";
export type GbActivityHoldCursor={createdAt:string;operationId:string};
type Row={operation_id:string;kind:string;operation_state:string;state:string;
  purchased_mb:string;welcome_mb:string;charged_mb:string;created_at:string;
  resolved_at:string|null;entry_ids:string[]};
const validId=(v:unknown):v is string=>typeof v==="string"&&/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(v);
const validDate=(v:unknown):v is string=>typeof v==="string"&&/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}(?:\d{3})?Z$/.test(v)&&
  Number.isFinite(Date.parse(v))&&new Date(v).toISOString()===v.slice(0,23)+"Z";
function project(row:Row):GbActivityHold {
  function mb(raw:unknown):number{
    if(typeof raw!=="string"||!/^\d+$/.test(raw)||!Number.isSafeInteger(Number(raw)))
      throw new TypeError("invalid_hold_amount");
    return Number(raw);
  }
  const purchasedReservedMb=mb(row.purchased_mb),welcomeReservedMb=mb(row.welcome_mb);
  const reservedMb=purchasedReservedMb+welcomeReservedMb,chargedMb=mb(row.charged_mb);
  if(!Number.isSafeInteger(reservedMb)||reservedMb<=0||chargedMb>reservedMb||
    !validId(row.operation_id)||typeof row.kind!=="string"||!/^[a-z][a-z0-9_]{0,63}$/.test(row.kind)||
    !["pending","reserved","completed","failed","reversed"].includes(row.operation_state)||
    !["reserved","captured","released"].includes(row.state)||!validDate(row.created_at)||
    !Array.isArray(row.entry_ids)||row.entry_ids.length>16||new Set(row.entry_ids).size!==row.entry_ids.length||
    row.entry_ids.some(id=>typeof id!=="string"||!/^mb:\d+$/.test(id)))throw new TypeError("invalid_hold_record");
  if(row.state==="reserved"){
    if(row.resolved_at!==null||chargedMb!==0||row.entry_ids.length!==0||row.operation_state!=="reserved")
      throw new TypeError("invalid_open_hold");
  }else{
    if(row.resolved_at===null||!validDate(row.resolved_at)||row.resolved_at<row.created_at)
      throw new TypeError("invalid_resolved_hold");
    if(row.state==="released"&&(chargedMb!==0||row.entry_ids.length!==0||row.operation_state!=="failed"))
      throw new TypeError("invalid_released_hold");
    if(row.state==="captured"&&(chargedMb===0||row.entry_ids.length===0||!["completed","reversed"].includes(row.operation_state)))
      throw new TypeError("invalid_captured_hold");
  }
  return Object.freeze({operationId:row.operation_id,kind:row.kind,operationState:row.operation_state,
    state:row.state as GbActivityHold["state"],reservedMb,heldMb:row.state==="reserved"?reservedMb:0,
    chargedMb,releasedMb:row.state==="reserved"?0:reservedMb-chargedMb,
    purchasedReservedMb,welcomeReservedMb,createdAt:row.created_at,resolvedAt:row.resolved_at,
    entryIds:Object.freeze([...row.entry_ids])});
}
const selection=`SELECT r.operation_id,o.operation_kind AS kind,o.state AS operation_state,r.state,
  r.purchased_mb::text,r.welcome_mb::text,COALESCE(m.charged_mb,0)::text AS charged_mb,
  to_char(r.created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at,
  to_char(r.resolved_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS resolved_at,
  COALESCE(m.entry_ids,ARRAY[]::text[]) AS entry_ids
  FROM gb_wallet.reservations r
  JOIN gb_wallet.operations o ON o.tenant_id=r.tenant_id AND o.operation_id=r.operation_id AND o.actor_id=$2
  LEFT JOIN LATERAL (SELECT SUM(v.amount_mb) AS charged_mb,
    array_agg('mb:'||v.movement_id::text ORDER BY v.movement_id) AS entry_ids
    FROM gb_wallet.movements v WHERE v.tenant_id=r.tenant_id AND v.operation_id=r.operation_id
      AND v.from_kind='human' AND v.from_id=$2) m ON true
  WHERE r.tenant_id=$1 AND r.account_kind='human' AND r.account_id=$2`;
/** Read-only lifecycle authority. A released reserve is never a posted credit. */
export function createGbWalletHoldRepository(db:Pick<Pool,"query">){
  function actor(scope:Actor){if(!validId(scope.tenantId)||!validId(scope.userId))throw new TypeError("invalid_hold_actor");}
  return Object.freeze({
    async listHolds(scope:Actor,limit:number,cursor:GbActivityHoldCursor|null,
      state:GbActivityHoldFilter,snapshotAt:string):Promise<readonly GbActivityHold[]>{
      actor(scope);
      if(!Number.isInteger(limit)||limit<1||limit>31||!["all","reserved","captured","released"].includes(state)||
        !validDate(snapshotAt)||(cursor&&(!validId(cursor.operationId)||!validDate(cursor.createdAt)||Date.parse(cursor.createdAt)>Date.parse(snapshotAt))))
        throw new TypeError("invalid_hold_query");
      const rows=await db.query<Row>(selection+`
        AND ($3::text='all' OR r.state=$3) AND r.created_at<=$4::timestamptz
        AND ($5::timestamptz IS NULL OR r.created_at<$5::timestamptz
          OR (r.created_at=$5::timestamptz AND r.operation_id<$6))
        ORDER BY r.created_at DESC,r.operation_id DESC LIMIT $7`,
        [scope.tenantId,scope.userId,state,snapshotAt,cursor?.createdAt??null,cursor?.operationId??null,limit]);
      return Object.freeze(rows.rows.map(project));
    },
    async findHold(scope:Actor,operationId:string):Promise<GbActivityHold|null>{
      actor(scope);if(!validId(operationId))throw new TypeError("invalid_hold_id");
      const result=await db.query<Row>(selection+" AND r.operation_id=$3",[scope.tenantId,scope.userId,operationId]);
      if(result.rows.length>1)throw new TypeError("ambiguous_hold_record");
      return result.rows[0]?project(result.rows[0]):null;
    },
  });
}
