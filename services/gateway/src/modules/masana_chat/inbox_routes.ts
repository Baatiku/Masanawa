import type { FastifyInstance } from "fastify";
export interface FanInboxScope {
  readonly tenantId: string;
  readonly fanUserId: string;
}
export interface FanInboxItem {
  readonly characterId: string;
  readonly displayName: string;
  readonly profession: string;
  readonly lastMessage: string;
  readonly lastActivityAt: string;
  readonly pinned: boolean;
  readonly unreadCount: number;
  readonly revision: number;
}
type InboxCursor = { readonly v: 1; readonly q: string; readonly at: string; readonly id: string };
const inboxId = /^character_[0-9a-f-]{36}$/i;
function decodeCursor(raw: string, query: string): InboxCursor | null {
  if (raw.length > 1024) return null;
  try {
    const parsed: unknown = JSON.parse(Buffer.from(raw, "base64url").toString("utf8"));
    if (!parsed || typeof parsed !== "object") return null;
    const c = parsed as Partial<InboxCursor>;
    if (c.v !== 1 || c.q !== query || typeof c.id !== "string" ||
        !inboxId.test(c.id) || typeof c.at !== "string" ||
        !/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}Z$/.test(c.at) ||
        !Number.isFinite(Date.parse(c.at)) ||
        new Date(c.at).toISOString() !== c.at) return null;
    return c as InboxCursor;
  } catch { return null; }
}
function encodeCursor(last: FanInboxItem, query: string): string {
  return Buffer.from(JSON.stringify({v:1,q:query,
    at:new Date(last.lastActivityAt).toISOString(),id:last.characterId})).toString("base64url");
}

export interface MasanaInboxRoutesDeps {
  /** Explicit OFF by default in production composition until schema is qualified. */
  enabled?: () => boolean;
  resolveFan: (authorizationHeader: string | undefined) => Promise<{
    tenantId: string; fanUserId: string;
  }>;
  inbox: {
    list(scope: FanInboxScope, query: string, page?: {
      readonly limit: number;
      readonly cursor: { readonly lastActivityAt: string; readonly characterId: string } | null;
    }): Promise<readonly FanInboxItem[]>;
    setPinned(scope: FanInboxScope, characterId: string,
      pinned: boolean, expectedRevision: number): Promise<number | null>;
    markRead(scope: FanInboxScope, characterId: string): Promise<number | null>;
  };
}
const validId = (x: unknown): x is string =>
  typeof x === "string" && /^character_[0-9a-f-]{36}$/i.test(x);
const record = (x: unknown): Record<string, unknown> =>
  !!x && typeof x === "object" && !Array.isArray(x)
    ? x as Record<string, unknown> : {};
/** AF00 mounts once with its canonical auth resolver and PG pool. */
export function registerMasanaInboxRoutes(
  app: FastifyInstance, deps: MasanaInboxRoutesDeps,
): void {
  async function fan(request: {headers: {authorization?: string | undefined}}):
      Promise<FanInboxScope | null> {
    if (!request.headers.authorization) return null;
    const actor = await deps.resolveFan(request.headers.authorization);
    return actor.tenantId && actor.fanUserId ? actor : null;
  }
  app.get("/v1/chats", async (request, reply) => {
    if (deps.enabled?.() === false)
      return reply.code(503).send({code:"chats_inbox_disabled"});
    const scope = await fan(request);
    if (!scope) return reply.code(401).send({code:"unauthorized"});
    const parameters = record(request.query);
    const raw = parameters.q;
    if (raw !== undefined &&
        (typeof raw !== "string" || raw.length > 80))
      return reply.code(422).send({code:"invalid_search"});
    const query = typeof raw === "string" ? raw.trim() : "";
    // Old mobile clients receive the unchanged list response. Paging is
    // explicit, with a cursor tied to this exact normalized query.
    if (parameters.limit === undefined && parameters.cursor !== undefined)
      return reply.code(422).send({code:"invalid_page"});
    if (parameters.limit === undefined) {
      const chats = await deps.inbox.list(scope, query);
      return reply.send({chats});
    }
    const limit = Number(parameters.limit);
    if (typeof parameters.limit !== "string" ||
        !/^\d{1,2}$/.test(parameters.limit) ||
        !Number.isInteger(limit) || limit < 1 || limit > 30 ||
        (parameters.cursor !== undefined && typeof parameters.cursor !== "string"))
      return reply.code(422).send({code:"invalid_page"});
    const cursor = parameters.cursor === undefined
      ? null : decodeCursor(parameters.cursor, query);
    if (parameters.cursor !== undefined && !cursor)
      return reply.code(422).send({code:"invalid_cursor"});
    const found = await deps.inbox.list(scope, query, {limit:limit+1,
      cursor:cursor ? {lastActivityAt:cursor.at, characterId:cursor.id} : null});
    const chats = found.slice(0,limit);
    const nextCursor = found.length > limit && chats.length > 0
      ? encodeCursor(chats[chats.length-1]!, query) : null;
    return reply.send({chats,nextCursor});
  });
  app.patch("/v1/chats/:characterId", async (request, reply) => {
    if (deps.enabled?.() === false)
      return reply.code(503).send({code:"chats_inbox_disabled"});
    const scope = await fan(request);
    if (!scope) return reply.code(401).send({code:"unauthorized"});
    const id = record(request.params).characterId;
    const body = record(request.body);
    if (!validId(id) || typeof body.pinned !== "boolean" ||
        !Number.isSafeInteger(body.expectedRevision) ||
        (body.expectedRevision as number) < 0)
      return reply.code(422).send({code:"invalid_pin"});
    const updated = await deps.inbox.setPinned(
      scope, id, body.pinned, body.expectedRevision as number);
    if (updated === null)
      return reply.code(409).send({code:"stale_or_unavailable_chat"});
    return reply.send({revision: updated, pinned: body.pinned});
  });
  app.post("/v1/chats/:characterId/read", async (request, reply) => {
    if (deps.enabled?.() === false)
      return reply.code(503).send({code:"chats_inbox_disabled"});
    const scope = await fan(request);
    if (!scope) return reply.code(401).send({code:"unauthorized"});
    const id = record(request.params).characterId;
    if (!validId(id)) return reply.code(422).send({code:"invalid_character"});
    const revision = await deps.inbox.markRead(scope, id);
    if (revision === null)
      return reply.code(404).send({code:"chat_unavailable"});
    return reply.send({revision});
  });
}
