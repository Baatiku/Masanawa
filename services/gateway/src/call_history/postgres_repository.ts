import { createCanonicalId } from "@masanawa/contracts";
import { CallHistoryError, encodeCallCursor, type CallHistoryRecorder, type CallHistoryRepository, type CallRecord, type CallEndReason } from "./service.js";

export interface CallHistorySqlPool {
  query<Row extends Record<string, unknown> = Record<string, unknown>>(sql: string, values?: unknown[]): Promise<{ rows: Row[]; rowCount: number | null }>;
}
interface Row extends Record<string, unknown> {
  call_id: string; character_id: string; display_name: string;
  created_at: Date; connected_at: Date | null; ended_at: Date | null; expires_at: Date;
  end_reason?: CallEndReason | null; group_id?: string | null;
  expired: boolean; direction?: "incoming" | "outgoing"; incoming_outcome?: string | null;
}
const selection = `h.*, (h.expires_at <= clock_timestamp()) AS expired,
  (SELECT jsonb_build_object('state',c.state,'verifiedConnectedMs',c.verified_connected_ms,
     'chargedMb',c.charged_mb,'admissionId',c.admission_id,'updatedAt',c.updated_at)
   FROM gb_wallet.call_admissions c WHERE c.tenant_id=h.tenant_id AND c.user_id=h.user_id
     AND c.admission_id=h.mb_admission_id AND c.character_id=h.character_id) AS mb_usage,
  (SELECT member.group_id::text FROM agents.masana_call_group_participants member
   WHERE member.tenant_id=h.tenant_id AND member.user_id=h.user_id AND member.call_id=h.call_id) AS group_id`;
const scope = `h.tenant_id=$1 AND h.user_id=$2
  AND ($3::text[] IS NULL OR h.character_id=ANY($3::text[]))`;
// Existing approved platform profiles are the Masana roster. Historical personal
// Twin identities and human contacts cannot enter this consumer projection.
const roster = `EXISTS (SELECT 1 FROM agents.platform_agent_profiles p
  JOIN agents.agent_presentations a USING (tenant_id, character_id)
  WHERE p.tenant_id=h.tenant_id AND p.character_id=h.character_id
    AND a.visible_in_user_app)`;
const singleCall = `NOT EXISTS (SELECT 1 FROM agents.masana_call_group_participants g
  WHERE g.tenant_id=h.tenant_id AND g.user_id=h.user_id AND g.call_id=h.call_id)`;
const connectedCall = `((h.mb_admission_id IS NULL AND h.connected_at IS NOT NULL) OR EXISTS
  (SELECT 1 FROM gb_wallet.call_admissions usage WHERE usage.tenant_id=h.tenant_id
    AND usage.user_id=h.user_id AND usage.character_id=h.character_id
    AND usage.admission_id=h.mb_admission_id AND usage.verified_connected_ms>0))`;
function matching(query:string,connection:string,days:string):string {
  return `AND (${query}::text='' OR position(${query} in lower(h.display_name))>0
            OR position(${query} in lower(h.character_id))>0
            OR position(${query} in lower(h.call_id::text))>0
            OR position(${query} in lower(COALESCE(to_jsonb(h)->>'direction','outgoing')))>0
            OR position(${query} in lower(CASE
              WHEN h.mb_admission_id IS NOT NULL THEN (SELECT CASE c.state
                WHEN 'completed' THEN 'ended' WHEN 'failed' THEN 'ended'
                WHEN 'connected' THEN 'active' ELSE 'connecting' END
                FROM gb_wallet.call_admissions c WHERE c.tenant_id=h.tenant_id AND c.user_id=h.user_id
                  AND c.admission_id=h.mb_admission_id)
              WHEN (to_jsonb(h)->>'incoming_outcome') IN ('missed','declined','cancelled') THEN to_jsonb(h)->>'incoming_outcome'
              WHEN h.ended_at IS NOT NULL THEN 'ended'
              WHEN h.connected_at IS NOT NULL THEN 'active'
              WHEN h.expires_at<=clock_timestamp() THEN 'expired'
              ELSE 'connecting' END))>0)
    AND (${connection}::text='all' OR (${connection}='connected' AND ${connectedCall})
      OR (${connection}='not_connected' AND NOT ${connectedCall}))
    AND (${days}::text='all' OR h.created_at >= clock_timestamp() -
      ((CASE ${days} WHEN '7' THEN 7 ELSE 30 END)*interval '1 day'))`;
}
function exactTotal(value:unknown):number {
  const n=Number(value);
  if(!Number.isSafeInteger(n)||n<0)throw new CallHistoryError('calls.summary_unavailable',503);
  return n;
}
function record(row: Row): CallRecord {
  const mb=row.mb_usage as {state:string;verifiedConnectedMs:number|string;chargedMb:number|null;admissionId:string;updatedAt:string}|null|undefined;
  const terminal=mb?.state==='completed'||mb?.state==='failed';
  const mbState=terminal?'ended':mb?.state==='connected'?'active':'connecting';
  return {
    callId: row.call_id, characterId: row.character_id, displayName: row.display_name,
    direction: row.direction ?? "outgoing", kind: "audio",
    state: mb ? mbState : row.incoming_outcome === "missed" ? "missed" : row.incoming_outcome === "declined" ? "declined" : row.incoming_outcome === "cancelled" ? "cancelled" : row.ended_at ? "ended" : row.connected_at ? "active" : row.expired ? "expired" : "connecting",
    createdAt: row.created_at.toISOString(), connectedAt: row.connected_at?.toISOString() ?? null,
    endedAt: row.ended_at?.toISOString() ?? null, expiresAt: row.expires_at.toISOString(),
    endReason: row.end_reason ?? null,groupId:row.group_id ?? null,
    connectionEvidence: mb ? "server_relay" : row.connected_at ? "client_report" : null,
    ...(mb ? {mbUsage:{admissionId:mb.admissionId,verifiedConnectedMs:Number(mb.verifiedConnectedMs),
      chargedMb:mb.chargedMb,state:mb.state}} : {}),
  };
}
export function createPostgresCallHistoryRepository(pool: CallHistorySqlPool): CallHistoryRepository & CallHistoryRecorder {
  return {
    async attachIssued(input) {
      const result = await pool.query(`UPDATE agents.masana_call_history h SET expires_at=$5
        WHERE h.tenant_id=$1 AND h.user_id=$2 AND h.character_id=$3 AND h.call_id=$4
          AND h.direction='incoming' AND h.incoming_outcome='accepted' AND h.ended_at IS NULL
          AND ${roster} RETURNING call_id`, [input.tenantId,input.userId,input.characterId,input.callId,input.expiresAt]);
      if (result.rowCount !== 1) throw new CallHistoryError("calls.incoming_unavailable", 409);
      return input.callId;
    },
    async recordIssued(input) {
      const callId = createCanonicalId("request").slice("request_".length);
      const result = await pool.query(`INSERT INTO agents.masana_call_history
        (tenant_id,user_id,call_id,character_id,display_name,expires_at)
        SELECT p.tenant_id,$2,$3,p.character_id,a.display_name,$5
          FROM agents.platform_agent_profiles p
          JOIN agents.agent_presentations a USING (tenant_id,character_id)
         WHERE p.tenant_id=$1 AND p.character_id=$4 AND a.visible_in_user_app
        RETURNING call_id`, [input.tenantId,input.userId,callId,input.characterId,input.expiresAt]);
      if (result.rowCount !== 1) throw new CallHistoryError("calls.masana_unavailable", 403);
      return callId;
    },
    async list(input) {
      const result = await pool.query<Row>(`SELECT ${selection} FROM agents.masana_call_history h
        WHERE ${scope} AND ${roster} AND ${singleCall}
          AND ($4::timestamptz IS NULL OR (h.created_at,h.call_id)<($4::timestamptz,$5::uuid))
          ${matching("$6","$8","$9")}
        ORDER BY h.created_at DESC,h.call_id DESC LIMIT $7`,
      [input.tenantId,input.userId,input.characterIds,input.cursor?.createdAt ?? null,input.cursor?.callId ?? null,input.query ?? "",input.limit+1,input.connection??"all",input.days??"all"]);
      const totals=await pool.query(`SELECT count(*)::text AS calls,
        COALESCE(sum(c.verified_connected_ms),0)::text AS verified_connected_ms,
        COALESCE(sum(CASE WHEN c.state IN ('completed','failed') THEN c.charged_mb ELSE 0 END),0)::text AS charged_mb,
        count(*) FILTER(WHERE c.admission_id IS NULL)::text AS unverified_calls,
        count(*) FILTER(WHERE c.admission_id IS NOT NULL AND
          (c.state NOT IN ('completed','failed') OR c.charged_mb IS NULL))::text AS pending_usage_calls
        FROM agents.masana_call_history h LEFT JOIN gb_wallet.call_admissions c
          ON c.tenant_id=h.tenant_id AND c.user_id=h.user_id
          AND c.character_id=h.character_id AND c.admission_id=h.mb_admission_id
        WHERE ${scope} AND ${roster} AND ${singleCall} ${matching("$4","$5","$6")}`,
        [input.tenantId,input.userId,input.characterIds,input.query??"",input.connection??"all",input.days??"all"]);
      const total=totals.rows[0]!;
      const summary={calls:exactTotal(total.calls),verifiedConnectedMs:exactTotal(total.verified_connected_ms),
        chargedMb:exactTotal(total.charged_mb),unverifiedCalls:exactTotal(total.unverified_calls),
        pendingUsageCalls:exactTotal(total.pending_usage_calls)};
      const calls = result.rows.slice(0,input.limit).map(record);
      const last = calls.at(-1);
      const connection=input.connection??"all",days=input.days??"all";
      const filters=connection==='all'&&days==='all'?'':`${connection}/${days}`;
      return { calls,summary,nextCursor: result.rows.length > input.limit && last ? encodeCallCursor(last, input.query ?? "",filters) : null };
    },
    async get(input) {
      const result = await pool.query<Row>(`SELECT ${selection} FROM agents.masana_call_history h
        WHERE ${scope} AND ${roster} AND h.call_id=$4::uuid`,
      [input.tenantId,input.userId,input.characterIds,input.callId]);
      return result.rows[0] ? record(result.rows[0]) : null;
    },
    async report(input) {
      // Atomic conditional update: duplicate reports preserve original timestamps,
      // late connected reports cannot resurrect an ended or expired call.
      const result = await pool.query<Row>(`UPDATE agents.masana_call_history h SET
        connected_at=CASE WHEN $5='connected' AND h.ended_at IS NULL AND h.expires_at>clock_timestamp()
          THEN COALESCE(h.connected_at,clock_timestamp()) ELSE h.connected_at END,
        ended_at=CASE WHEN $5='ended' THEN COALESCE(h.ended_at,clock_timestamp()) ELSE h.ended_at END,
        end_reason=CASE WHEN $5='ended' THEN COALESCE(h.end_reason,$6::text) ELSE h.end_reason END
        WHERE ${scope} AND ${roster} AND h.call_id=$4::uuid AND h.mb_admission_id IS NULL RETURNING ${selection}`,
      [input.tenantId,input.userId,input.characterIds,input.callId,input.event,input.endReason??null]);
      return result.rows[0] ? record(result.rows[0]) : null;
    },
  };
}

