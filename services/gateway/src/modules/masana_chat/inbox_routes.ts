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
  readonly archived?: boolean;
  readonly customTitle?: string | null;
  readonly unreadCount: number;
  readonly revision: number;
}
type InboxCursor = { readonly v: 1; readonly q: string; readonly a?: boolean;
  readonly at: string; readonly id: string };
const inboxId = /^character_[0-9a-f-]{36}$/i;
function decodeCursor(raw: string, query: string, archived = false): InboxCursor | null {
  if (raw.length > 1024) return null;
  try {
    const parsed: unknown = JSON.parse(Buffer.from(raw, "base64url").toString("utf8"));
    if (!parsed || typeof parsed !== "object") return null;
    const c = parsed as Partial<InboxCursor>;
    if (c.v !== 1 || c.q !== query || (c.a === true) !== archived ||
        typeof c.id !== "string" ||
        !inboxId.test(c.id) || typeof c.at !== "string" ||
        !/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}Z$/.test(c.at) ||
        !Number.isFinite(Date.parse(c.at)) ||
        new Date(c.at).toISOString() !== c.at) return null;
    return c as InboxCursor;
  } catch { return null; }
}
function encodeCursor(last: FanInboxItem, query: string, archived = false): string {
  return Buffer.from(JSON.stringify({v:1,q:query,a:archived,
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
    }, archived?: boolean): Promise<readonly FanInboxItem[]>;
    setPinned(scope: FanInboxScope, characterId: string,
      pinned: boolean, expectedRevision: number): Promise<number | null>;
    setArchived?(scope: FanInboxScope, characterId: string,
      archived: boolean, expectedRevision: number): Promise<number | null>;
    setTitle?(scope: FanInboxScope, characterId: string,
      title: string | null, expectedRevision: number): Promise<number | null>;
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
    if (parameters.archived !== undefined &&
        parameters.archived !== "true" && parameters.archived !== "false")
      return reply.code(422).send({code:"invalid_archive_filter"});
    const archived = parameters.archived === "true";
    if (archived && !deps.inbox.setArchived)
      return reply.code(503).send({code:"archive_unavailable"});
    // Old mobile clients receive the unchanged list response. Paging is
    // explicit, with a cursor tied to this exact normalized query.
    if (parameters.limit === undefined && parameters.cursor !== undefined)
      return reply.code(422).send({code:"invalid_page"});
    if (parameters.limit === undefined) {
      const chats = archived
        ? await deps.inbox.list(scope, query, undefined, true)
        : await deps.inbox.list(scope, query);
      return reply.send({chats});
    }
    const limit = Number(parameters.limit);
    if (typeof parameters.limit !== "string" ||
        !/^\d{1,2}$/.test(parameters.limit) ||
        !Number.isInteger(limit) || limit < 1 || limit > 30 ||
        (parameters.cursor !== undefined && typeof parameters.cursor !== "string"))
      return reply.code(422).send({code:"invalid_page"});
    const cursor = parameters.cursor === undefined
      ? null : decodeCursor(parameters.cursor, query, archived);
    if (parameters.cursor !== undefined && !cursor)
      return reply.code(422).send({code:"invalid_cursor"});
    const page = {limit:limit+1,
      cursor:cursor ? {lastActivityAt:cursor.at, characterId:cursor.id} : null};
    const found = archived
      ? await deps.inbox.list(scope, query, page, true)
      : await deps.inbox.list(scope, query, page);
    const chats = found.slice(0,limit);
    const nextCursor = found.length > limit && chats.length > 0
      ? encodeCursor(chats[chats.length-1]!, query, archived) : null;
    return reply.send({chats,nextCursor});
  });
  app.patch("/v1/chats/:characterId", async (request, reply) => {
    if (deps.enabled?.() === false)
      return reply.code(503).send({code:"chats_inbox_disabled"});
    const scope = await fan(request);
    if (!scope) return reply.code(401).send({code:"unauthorized"});
    const id = record(request.params).characterId;
    const body = record(request.body);
    if (!validId(id) ||
        !Number.isSafeInteger(body.expectedRevision) ||
        (body.expectedRevision as number) < 0)
      return reply.code(422).send({code:"invalid_pin"});
    const changes = ["pinned", "archived", "title"]
      .filter((field) => Object.prototype.hasOwnProperty.call(body, field));
    if (changes.length !== 1)
      return reply.code(422).send({code:"invalid_chat_preference"});
    const expectedRevision = body.expectedRevision as number;
    let updated: number | null;
    if (changes[0] === "pinned") {
      if (typeof body.pinned !== "boolean")
        return reply.code(422).send({code:"invalid_pin"});
      updated = await deps.inbox.setPinned(scope, id, body.pinned, expectedRevision);
    } else if (changes[0] === "archived") {
      if (typeof body.archived !== "boolean")
        return reply.code(422).send({code:"invalid_archive"});
      if (!deps.inbox.setArchived)
        return reply.code(503).send({code:"archive_unavailable"});
      updated = await deps.inbox.setArchived(scope, id, body.archived, expectedRevision);
    } else {
      if (body.title !== null &&
          (typeof body.title !== "string" || body.title.length < 1 ||
           body.title.length > 80 || /[\x00-\x1f\x7f]/.test(body.title)))
        return reply.code(422).send({code:"invalid_title"});
      if (!deps.inbox.setTitle)
        return reply.code(503).send({code:"rename_unavailable"});
      updated = await deps.inbox.setTitle(scope, id, body.title as string | null,
        expectedRevision);
    }
    if (updated === null)
      return reply.code(409).send({code:"stale_or_unavailable_chat"});
    return reply.send({revision: updated, [changes[0]!]: body[changes[0]!]});
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
