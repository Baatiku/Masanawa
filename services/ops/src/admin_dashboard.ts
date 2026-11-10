import { hashPlatformSessionToken, type PlatformSessionRepository } from "@masanawa/security";
import type { Pool } from "@masanawa/postgres";

export type AdminCapability =
  | "dashboard.read"
  | "users.read"
  | "runtime.read"
  | "operations.read"
  | "audit.read"
  | "news.read"
  | "wallet.read"
  | "data.read"
  | "calls.read"
  | "moderation.read"
  | "agents.presentation.read"
  | "agents.presentation.write"
  | "agents.skills.read"
  | "agents.skills.write"
  | "skills.catalog.read";

type Grant = Readonly<{
  tenantId: string;
  userId?: string;
  email?: string;
  phone?: string;
  capabilities: readonly string[];
}>;

export class OpsAdminAccessError extends Error {
  constructor(readonly statusCode: 401 | 403, message: string) {
    super(message);
  }
}

/** No implicit superuser, dev-mode bypass, or frontend-supplied tenant selector. */
export function parseOpsAdminGrants(value: string | undefined): readonly Grant[] {
  if (!value?.trim()) return [];
  let parsed: unknown;
  try { parsed = JSON.parse(value); } catch { throw new TypeError("Invalid Ops grants JSON"); }
  if (!Array.isArray(parsed) || parsed.length > 100) throw new TypeError("Invalid Ops grants list");
  return Object.freeze(parsed.map((entry: unknown) => {
    if (!entry || typeof entry !== "object" || Array.isArray(entry)) throw new TypeError("Invalid Ops grant");
    const grant = entry as Record<string, unknown>;
    const selectors = ["userId", "email", "phone"].filter((key) => typeof grant[key] === "string" && Boolean((grant[key] as string).trim()));
    if (typeof grant.tenantId !== "string" || !grant.tenantId.startsWith("tenant_") || selectors.length !== 1 ||
        !Array.isArray(grant.capabilities) || grant.capabilities.length < 1 || grant.capabilities.length > 40 ||
        !grant.capabilities.every((item: unknown) => typeof item === "string" && (item === "*" || /^[a-z]+(?:\.[a-z]+)+$/.test(item)))) {
      throw new TypeError("Invalid Ops grant fields");
    }
    const key = selectors[0]!;
    const selector = (grant[key] as string).trim();
    return Object.freeze({ tenantId: grant.tenantId, [key]: key === "email" ? selector.toLowerCase() : selector, capabilities: Object.freeze([...grant.capabilities]) }) as Grant;
  }));
}

export interface AdminActor {
  readonly tenantId: string;
  readonly actorId: string;
  readonly name: string;
  readonly capabilities: readonly string[];
}

export interface OpsAdminDashboardService {
  authorize(input: { authorizationHeader: string | undefined; capability: AdminCapability }): Promise<AdminActor>;
  me(input: { authorizationHeader: string | undefined }): Promise<AdminActor>;
  summary(input: { authorizationHeader: string | undefined }): Promise<Record<string, number>>;
  users(input: { authorizationHeader: string | undefined; state?: string; limit: number; offset: number }): Promise<readonly unknown[]>;
  runs(input: { authorizationHeader: string | undefined; state?: string; limit: number; offset: number }): Promise<readonly unknown[]>;
  operations(input: { authorizationHeader: string | undefined; state?: string; limit: number; offset: number }): Promise<readonly unknown[]>;
  audit(input: { authorizationHeader: string | undefined; limit: number; offset: number }): Promise<readonly unknown[]>;
  news(input: { authorizationHeader: string | undefined; state?: string; limit: number; offset: number }): Promise<readonly unknown[]>;
  wallet(input: { authorizationHeader: string | undefined; limit: number; offset: number }): Promise<readonly unknown[]>;
  data(input: { authorizationHeader: string | undefined; state?: string; limit: number; offset: number }): Promise<readonly unknown[]>;
  calls(input: { authorizationHeader: string | undefined; state?: string; limit: number; offset: number }): Promise<readonly unknown[]>;
  moderation(input: { authorizationHeader: string | undefined; limit: number; offset: number }): Promise<readonly unknown[]>;
}

export function createOpsAdminDashboardService(input: {
  sessions: PlatformSessionRepository;
  pool: Pick<Pool, "query">;
  grants: readonly Grant[];
}): OpsAdminDashboardService {
  async function authorize(request: { authorizationHeader: string | undefined; capability: AdminCapability }): Promise<AdminActor> {
    const match = /^Bearer\s+([^\s]+)$/i.exec(request.authorizationHeader ?? "");
    if (!match) throw new OpsAdminAccessError(401, "Admin sign-in required");
    let identity;
    try {
      identity = await input.sessions.resolveAccess({ accessHash: hashPlatformSessionToken(match[1]!), at: new Date().toISOString() });
    } catch {
      throw new OpsAdminAccessError(401, "Admin session expired");
    }
    if (!identity) throw new OpsAdminAccessError(401, "Admin session expired");
    if (identity.profile.accountState && identity.profile.accountState !== "active") throw new OpsAdminAccessError(403, "Account is not active");
    const grants = input.grants.filter((grant) => grant.tenantId === identity.tenantId &&
      (grant.userId === identity.userId ||
        (grant.email !== undefined && grant.email === identity.profile.email?.trim().toLowerCase()) ||
        (grant.phone !== undefined && grant.phone === identity.profile.phone?.trim())));
    const capabilities = [...new Set(grants.flatMap((grant) => grant.capabilities))];
    if (!capabilities.includes("*") && !capabilities.includes(request.capability)) throw new OpsAdminAccessError(403, "Admin capability denied");
    return { tenantId: identity.tenantId, actorId: identity.userId, name: identity.profile.name, capabilities };
  }

  const scoped = async (capability: AdminCapability, authorizationHeader: string | undefined) =>
    (await authorize({ authorizationHeader, capability })).tenantId;
  const page = (limit: number, offset: number) => ({ limit: Math.min(100, Math.max(1, Math.trunc(limit))), offset: Math.min(10_000, Math.max(0, Math.trunc(offset))) });

  return Object.freeze<OpsAdminDashboardService>({
    authorize,
    me: (request) => authorize({ ...request, capability: "dashboard.read" }),
    async summary(request) {
      const tenantId = await scoped("dashboard.read", request.authorizationHeader);
      const result = await input.pool.query(`SELECT
        (SELECT count(*)::integer FROM identity.users WHERE tenant_id=$1) AS users,
        (SELECT count(*)::integer FROM identity.characters WHERE tenant_id=$1) AS characters,
        (SELECT count(*)::integer FROM security.platform_sessions WHERE tenant_id=$1 AND revoked_at IS NULL AND access_expires_at>clock_timestamp()) AS active_sessions,
        (SELECT count(*)::integer FROM agents.agent_runs WHERE tenant_id=$1 AND state='running') AS running_agent_runs,
        (SELECT count(*)::integer FROM events.operations WHERE tenant_id=$1 AND state IN ('unknown','reconciling','partial')) AS reconciliation_cases,
        (SELECT count(*)::integer FROM events.audit_events WHERE tenant_id=$1) AS audit_events`, [tenantId]);
      const row = result.rows[0] ?? {};
      return Object.fromEntries(Object.entries(row).map(([key, value]) => [key, Number(value)]));
    },
    async users(request) {
      const tenantId = await scoped("users.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT u.user_id AS "userId",p.display_name AS "displayName",u.state,u.created_at AS "createdAt",
        (SELECT count(*)::integer FROM identity.relationships r WHERE r.tenant_id=u.tenant_id AND r.user_id=u.user_id) AS "relationshipCount"
        FROM identity.users u LEFT JOIN security.platform_user_profiles p ON p.tenant_id=u.tenant_id AND p.user_id=u.user_id
        WHERE u.tenant_id=$1 AND ($2::text IS NULL OR u.state=$2) ORDER BY u.created_at DESC,u.user_id DESC LIMIT $3 OFFSET $4`, [tenantId, request.state ?? null, limit, offset]);
      return result.rows;
    },
    async runs(request) {
      const tenantId = await scoped("runtime.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT agent_run_id AS "agentRunId",user_id AS "userId",character_id AS "characterId",state,
        failure_code AS "failureCode",started_at AS "startedAt",correlation_id AS "correlationId"
        FROM agents.agent_runs WHERE tenant_id=$1 AND ($2::text IS NULL OR state=$2)
        ORDER BY started_at DESC,agent_run_id DESC LIMIT $3 OFFSET $4`, [tenantId, request.state ?? null, limit, offset]);
      return result.rows;
    },
    async operations(request) {
      const tenantId = await scoped("operations.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT operation_id AS "operationId",kind,state,provider,terminal_error_code AS "errorCode",
        created_at AS "createdAt",updated_at AS "updatedAt"
        FROM events.operations WHERE tenant_id=$1 AND ($2::text IS NULL OR state=$2)
        ORDER BY updated_at DESC,operation_id DESC LIMIT $3 OFFSET $4`, [tenantId, request.state ?? null, limit, offset]);
      return result.rows;
    },
    async audit(request) {
      const tenantId = await scoped("audit.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT audit_event_id AS "auditEventId",event_type AS "eventType",aggregate_type AS "aggregateType",
        aggregate_id AS "aggregateId",correlation_id AS "correlationId",occurred_at AS "occurredAt"
        FROM events.audit_events WHERE tenant_id=$1 ORDER BY occurred_at DESC,audit_event_id DESC LIMIT $2 OFFSET $3`, [tenantId, limit, offset]);
      return result.rows;
    },
    async news(request) {
      const tenantId = await scoped("news.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT publisher_id AS "publisherId",display_name AS "displayName",state,
        rights_basis IS NOT NULL AND rights_until > clock_timestamp() AS "rightsCurrent",
        reviewed_by IS NOT NULL AS "rightsReviewed",last_poll_at AS "lastPollAt",last_error AS "lastError",
        next_poll_at AS "nextPollAt"
        FROM feed.news_publishers WHERE tenant_id=$1 AND ($2::text IS NULL OR state=$2)
        ORDER BY display_name,publisher_id LIMIT $3 OFFSET $4`, [tenantId, request.state ?? null, limit, offset]);
      return result.rows;
    },
    async wallet(request) {
      const tenantId = await scoped("wallet.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT operation_id AS "operationId",account_id AS "userId",kind,
        delta_kobo AS "deltaKobo",created_at AS "createdAt"
        FROM gb_wallet.ngn_entries WHERE tenant_id=$1 ORDER BY created_at DESC,operation_id DESC LIMIT $2 OFFSET $3`, [tenantId, limit, offset]);
      return result.rows;
    },
    async data(request) {
      const tenantId = await scoped("data.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT operation_id AS "operationId",user_id AS "userId",biller_code AS "billerCode",
        item_code AS "itemCode",cost_kobo AS "costKobo",state,provider_ref AS "providerRef",created_at AS "createdAt"
        FROM gb_wallet.ngn_data_orders WHERE tenant_id=$1 AND ($2::text IS NULL OR state=$2)
        ORDER BY created_at DESC,operation_id DESC LIMIT $3 OFFSET $4`, [tenantId, request.state ?? null, limit, offset]);
      return result.rows;
    },
    async calls(request) {
      const tenantId = await scoped("calls.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT admission_id AS "admissionId",user_id AS "userId",character_id AS "characterId",
        state,verified_connected_ms AS "connectedMs",charged_kobo AS "chargedKobo",created_at AS "createdAt"
        FROM gb_wallet.ngn_call_admissions WHERE tenant_id=$1 AND ($2::text IS NULL OR state=$2)
        ORDER BY created_at DESC,admission_id DESC LIMIT $3 OFFSET $4`, [tenantId, request.state ?? null, limit, offset]);
      return result.rows;
    },
    async moderation(request) {
      const tenantId = await scoped("moderation.read", request.authorizationHeader);
      const { limit, offset } = page(request.limit, request.offset);
      const result = await input.pool.query(`SELECT r.report_id AS "reportId",r.target_kind AS "targetKind",r.target_id AS "targetId",
        r.reason,r.created_at AS "createdAt",e.visibility AS "visibility"
        FROM talks.safety_reports r LEFT JOIN talks.safety_enforcement e
        ON e.tenant_id=r.tenant_id AND e.target_kind=r.target_kind AND e.target_id=r.target_id
        WHERE r.tenant_id=$1 ORDER BY r.created_at DESC,r.report_id DESC LIMIT $2 OFFSET $3`, [tenantId, limit, offset]);
      return result.rows;
    },
  });
}
