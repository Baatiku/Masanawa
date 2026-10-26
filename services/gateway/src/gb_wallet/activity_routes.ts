import type { FastifyInstance } from "fastify";

export interface GbActivityScope {
  readonly tenantId: string;
  readonly userId: string;
}
export interface GbActivityItem {
  readonly entryId: string;
  readonly operationId: string;
  readonly unit: "MB" | "NGN";
  readonly amount: number;
  readonly kind: string;
  readonly status: "completed" | "reversed";
  readonly createdAt: string;
}
export type GbActivityUnitFilter = "all" | "MB" | "NGN";
export type GbActivityPurpose = "all" | "funding" | "transfers" | "masana" | "data" | "reversals" | "other";
export type GbActivityStatus = "all" | "completed" | "reversed";
export type GbActivityDirection = "all" | "incoming" | "outgoing";
export type GbActivityDays = "all" | "7" | "30";
export interface GbActivityFacets {
  readonly purpose: GbActivityPurpose;
  readonly status: GbActivityStatus;
  readonly direction: GbActivityDirection;
  readonly days: GbActivityDays;
  readonly reference: string;
  readonly snapshotAt: string;
}
export interface GbActivityPeriodSummary {
  readonly periodDays: 7 | 30;
  readonly fromAt: string;
  readonly toAt: string;
  readonly MB: Readonly<{received:number;spent:number;net:number}>;
  readonly NGN: Readonly<{received:number;spent:number;net:number}>;
}
export interface GbActivityPorts {
  readonly authorize: (header: string | undefined) => Promise<GbActivityScope>;
  readonly list: (actor: GbActivityScope, limit: number,
    cursor: {readonly createdAt: string; readonly entryId: string} | null,
    unit: GbActivityUnitFilter, facets: GbActivityFacets) =>
      Promise<readonly GbActivityItem[]>;
  readonly find: (actor: GbActivityScope, entryId: string) =>
    Promise<GbActivityItem | null>;
  readonly summary: (actor: GbActivityScope, days: 7 | 30) =>
    Promise<GbActivityPeriodSummary>;
}

type PageCursor = {v:2; tenant:string; user:string; at:string; id:string;
  unit:GbActivityUnitFilter; facets:GbActivityFacets};
const validEntryId = /^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$/;
const canonicalDate = (s: string) =>
  /^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}Z$/.test(s) &&
  Number.isFinite(Date.parse(s)) && new Date(s).toISOString() === s;

const validReference = (s:string) => s==="" ||
  (s.length<=160 && /^[A-Za-z0-9][A-Za-z0-9_.:-]*$/.test(s));
const sameFacets = (a:GbActivityFacets,b:GbActivityFacets) =>
  a.purpose===b.purpose && a.status===b.status && a.direction===b.direction &&
  a.days===b.days && a.reference===b.reference;
function unpack(raw: string, actor: GbActivityScope, unit:GbActivityUnitFilter,
  facets:GbActivityFacets): PageCursor | null {
  if (raw.length > 1024) return null;
  try {
    const value: unknown = JSON.parse(Buffer.from(raw,"base64url").toString("utf8"));
    if (!value || typeof value !== "object") return null;
    const c = value as Partial<PageCursor>;
    return c.v === 2 && c.tenant === actor.tenantId && c.user === actor.userId &&
      c.unit===unit &&
      typeof c.at === "string" && canonicalDate(c.at) &&
      typeof c.id === "string" && validEntryId.test(c.id) &&
      c.facets!=null && typeof c.facets==="object" &&
      typeof c.facets.snapshotAt==="string" && canonicalDate(c.facets.snapshotAt) &&
      Date.parse(c.facets.snapshotAt)<=Date.now()+1000 && sameFacets(c.facets,facets)
      ? c as PageCursor : null;
  } catch { return null; }
}
function pack(item: GbActivityItem, actor: GbActivityScope, unit:GbActivityUnitFilter,
  facets:GbActivityFacets): string {
  return Buffer.from(JSON.stringify({v:2,tenant:actor.tenantId,user:actor.userId,
    at:item.createdAt,id:item.entryId,unit,facets})).toString("base64url");
}

/** Read-only, no-store projection. Never invent activity for unavailable ledgers. */
export function registerGbWalletActivityRoutes(app: FastifyInstance, ports: GbActivityPorts) {
  app.get("/v1/gb/wallet/activity/summary",async(request,reply)=>{
    reply.header("cache-control","no-store");
    let actor:GbActivityScope;
    try{
      actor=await ports.authorize(request.headers.authorization);
      if(!actor?.tenantId||!actor.userId)throw new Error("unauthorized");
    }catch{return reply.code(401).send({error:{code:"activity_unauthorized"}});}
    const query=request.query as Record<string,unknown>;
    const period=query.days??"7";
    if(period!=="7"&&period!=="30")
      return reply.code(422).send({error:{code:"invalid_activity_period"}});
    try{return await ports.summary(actor,period==="7"?7:30);}
    catch{return reply.code(503).send({error:{code:"activity_ledger_unavailable"}});}
  });
  app.get("/v1/gb/wallet/activity", async (request, reply) => {
    reply.header("cache-control", "no-store");
    let actor: GbActivityScope;
    try {
      actor = await ports.authorize(request.headers.authorization);
      if (!actor?.tenantId || !actor.userId) throw new Error("unauthorized");
    } catch {
      return reply.code(401).send({error:{code:"activity_unauthorized"}});
    }
    const query = request.query as Record<string, unknown>;
    const rawLimit = query.limit ?? "5";
    const unit=query.unit??"all";
    const purpose=query.purpose??"all";
    const status=query.status??"all";
    const direction=query.direction??"all";
    const days=query.days??"all";
    const reference=query.reference??"";
    if (typeof rawLimit !== "string" || !/^\d{1,2}$/.test(rawLimit) ||
        Number(rawLimit) < 1 || Number(rawLimit) > 30 ||
        (unit!=="all" && unit!=="MB" && unit!=="NGN") ||
        !["all","funding","transfers","masana","data","reversals","other"].includes(purpose as string) ||
        !["all","completed","reversed"].includes(status as string) ||
        !["all","incoming","outgoing"].includes(direction as string) ||
        !["all","7","30"].includes(days as string) ||
        typeof reference!=="string" || !validReference(reference) ||
        (query.cursor !== undefined && typeof query.cursor !== "string"))
      return reply.code(422).send({error:{code:"invalid_activity_page"}});
    const limit = Number(rawLimit);
    const facets:GbActivityFacets={purpose:purpose as GbActivityPurpose,
      status:status as GbActivityStatus,direction:direction as GbActivityDirection,
      days:days as GbActivityDays,reference:reference as string,
      snapshotAt:new Date().toISOString()};
    const cursor = query.cursor == null ? null : unpack(query.cursor as string,actor,
      unit as GbActivityUnitFilter,facets);
    if (query.cursor !== undefined && !cursor)
      return reply.code(422).send({error:{code:"invalid_activity_cursor"}});
    const effectiveFacets=cursor?{...facets,snapshotAt:cursor.facets.snapshotAt}:facets;
    try {
      const found = await ports.list(actor,limit+1,
        cursor ? {createdAt:cursor.at,entryId:cursor.id} : null,
        unit as GbActivityUnitFilter,effectiveFacets);
      const items = found.slice(0,limit);
      const nextCursor = found.length > limit && items.length > 0
        ? pack(items[items.length-1]!,actor,unit as GbActivityUnitFilter,effectiveFacets) : null;
      return {items,nextCursor};
    } catch {
      return reply.code(503).send({error:{code:"activity_ledger_unavailable"}});
    }
  });
  app.get("/v1/gb/wallet/activity/:entryId", async (request, reply) => {
    reply.header("cache-control", "no-store");
    let actor: GbActivityScope;
    try {
      actor = await ports.authorize(request.headers.authorization);
      if (!actor?.tenantId || !actor.userId) throw new Error("unauthorized");
    } catch {
      return reply.code(401).send({error:{code:"activity_unauthorized"}});
    }
    const id = (request.params as {entryId?: unknown}).entryId;
    if (typeof id !== "string" || !validEntryId.test(id))
      return reply.code(422).send({error:{code:"invalid_activity_entry"}});
    try {
      const item = await ports.find(actor,id);
      if (!item) return reply.code(404).send({error:{code:"activity_entry_unavailable"}});
      return {item};
    } catch {
      return reply.code(503).send({error:{code:"activity_ledger_unavailable"}});
    }
  });
}
