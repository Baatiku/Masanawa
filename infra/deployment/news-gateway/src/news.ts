// Structural subset shared by Cloudflare D1 and the SQLite integration harness.
export interface D1PreparedStatement {
  bind(...values: Array<string | number>): D1PreparedStatement;
  first<T>(): Promise<T | null>;
  all<T>(): Promise<{ results: T[] }>;
  run(): Promise<{ meta: { changes: number } }>;
}
export interface D1Database {
  prepare(sql: string): D1PreparedStatement;
  batch(statements: D1PreparedStatement[]): Promise<Array<{ meta: { changes: number } }>>;
}

export const PUBLISHERS = [
  { id: "bbc", name: "BBC News", feed: "https://feeds.bbci.co.uk/news/rss.xml", hosts: ["bbc.com", "bbc.co.uk"] },
  { id: "aljazeera", name: "Al Jazeera", feed: "https://www.aljazeera.com/xml/rss/all.xml", hosts: ["aljazeera.com"] },
  { id: "dw", name: "DW News", feed: "https://rss.dw.com/xml/rss-en-all", hosts: ["dw.com"] },
  { id: "france24", name: "France 24", feed: "https://www.france24.com/en/rss", hosts: ["france24.com"] },
  { id: "guardian", name: "The Guardian", feed: "https://www.theguardian.com/world/rss", hosts: ["theguardian.com"] },
  { id: "africanews", name: "Africanews", feed: "https://www.africanews.com/feed/", hosts: ["africanews.com"] },
  { id: "globalvoices", name: "Global Voices", feed: "https://globalvoices.org/feed/", hosts: ["globalvoices.org"] },
] as const;

export type Publisher = (typeof PUBLISHERS)[number];
type Story = { id: string; publisherId: string; title: string; summary: string; url: string; publishedAt: string };
type ItemRow = { id: string; publisher_id: string; title: string; summary: string; source_url: string; published_at: string };
const MAX_BYTES = 600_000;
const REFRESH_INTERVAL_MS = 15 * 60_000;
const LEASE_MS = 100_000;

function decodeEntities(value: string): string {
  return value.replace(/&#(x[0-9a-f]+|[0-9]+);|&(amp|lt|gt|quot|apos|nbsp);/gi,
    (raw, numeric: string | undefined, named: string | undefined) => {
      if (named) return ({ amp: "&", lt: "<", gt: ">", quot: '"', apos: "'", nbsp: " " } as Record<string, string>)[named.toLowerCase()] ?? raw;
      if (!numeric) return raw;
      const code = numeric.toLowerCase().startsWith("x") ? Number.parseInt(numeric.slice(1), 16) : Number.parseInt(numeric, 10);
      return Number.isInteger(code) && code > 0 && code <= 0x10ffff && !(code >= 0xd800 && code <= 0xdfff)
        ? String.fromCodePoint(code) : "";
    });
}

function xmlValue(xml: string, tag: string): string {
  const pattern = new RegExp("<" + tag + "(?:\\s[^>]*)?>([\\s\\S]*?)<\\/" + tag + ">", "i");
  return pattern.exec(xml)?.[1] ?? "";
}

function plain(value: string): string {
  return decodeEntities(value
    .replace(/<!\[CDATA\[([\s\S]*?)\]\]>/g, "$1")
    .replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi, " ")
    .replace(/<style\b[^>]*>[\s\S]*?<\/style>/gi, " ")
    .replace(/<[^>]+>/g, " "))
    .replace(/\s+/g, " ").trim();
}

export function safeArticleUrl(publisher: Publisher, raw: string): string | null {
  const upgraded = publisher.id === "africanews" && /^http:\/\/(?:www\.)?africanews\.com\//i.test(raw)
    ? "https://" + raw.slice(7) : raw;
  if (upgraded.length > 2048) return null;
  try {
    const url = new URL(upgraded);
    if (url.protocol !== "https:" || url.username || url.password || url.port || url.hash) return null;
    const host = url.hostname.toLowerCase();
    if (!publisher.hosts.some((domain) => host === domain || host.endsWith("." + domain))) return null;
    if (url.pathname === "/" || /\.(?:xml|rss)$/i.test(url.pathname)) return null;
    for (const key of [...url.searchParams.keys()]) {
      if (/^(utm_|fbclid$|gclid$|at_medium$|at_campaign$)/i.test(key)) url.searchParams.delete(key);
    }
    url.searchParams.sort();
    return url.toString();
  } catch {
    return null;
  }
}

async function articleId(sourceUrl: string): Promise<string> {
  const bytes = new Uint8Array(await crypto.subtle.digest("SHA-256", new TextEncoder().encode(sourceUrl)));
  bytes[6] = (bytes[6]! & 0x0f) | 0x80;
  bytes[8] = (bytes[8]! & 0x3f) | 0x80;
  const hex = [...bytes.slice(0, 16)].map((b) => b.toString(16).padStart(2, "0")).join("");
  return [hex.slice(0, 8), hex.slice(8, 12), hex.slice(12, 16), hex.slice(16, 20), hex.slice(20, 32)].join("-");
}

export function parseFeed(xml: string, publisher: Publisher): Array<Omit<Story, "id">> {
  if (xml.length > MAX_BYTES || /<!DOCTYPE|<!ENTITY/i.test(xml)) throw new Error("invalid_feed");
  const blocks = xml.match(/<(?:item|entry)\b[^>]*>[\s\S]*?<\/(?:item|entry)>/gi) ?? [];
  const seen = new Set<string>();
  const stories: Array<Omit<Story, "id">> = [];
  for (const block of blocks.slice(0, 60)) {
    const title = plain(xmlValue(block, "title")).slice(0, 280);
    const summary = plain(xmlValue(block, "description") || xmlValue(block, "summary")).slice(0, 520);
    const atomLink = /<link\b[^>]*\bhref=["']([^"']+)["']/i.exec(block)?.[1] ?? "";
    const url = safeArticleUrl(publisher, decodeEntities(plain(xmlValue(block, "link")) || atomLink));
    const date = plain(xmlValue(block, "pubDate") || xmlValue(block, "published") || xmlValue(block, "updated"));
    const published = Date.parse(date);
    if (!url || seen.has(url) || title.length < 3 || summary.length < 15 || !Number.isFinite(published)) continue;
    if (published > Date.now() + 300_000 || published < Date.now() - 30 * 86400_000) continue;
    seen.add(url);
    stories.push({ publisherId: publisher.id, title, summary, url, publishedAt: new Date(published).toISOString() });
    if (stories.length === 30) break;
  }
  return stories;
}

async function fetchFeedOnce(publisher: Publisher): Promise<Array<Omit<Story, "id">>> {
  const response = await fetch(publisher.feed, {
    redirect: "error",
    signal: AbortSignal.timeout(8000),
    headers: { Accept: "application/rss+xml, application/atom+xml, application/xml", "User-Agent": "MasanawaNews/1.0" },
  });
  if (!response.ok || Number(response.headers.get("content-length") ?? 0) > MAX_BYTES) throw new Error("publisher_unavailable");
  const reader = response.body?.getReader();
  if (!reader) throw new Error("publisher_empty");
  const pieces: Uint8Array[] = [];
  let total = 0;
  try {
    for (;;) {
      const part = await reader.read();
      if (part.done) break;
      total += part.value.byteLength;
      if (total > MAX_BYTES) { await reader.cancel(); throw new Error("publisher_too_large"); }
      pieces.push(part.value);
    }
  } finally {
    reader.releaseLock();
  }
  const all = new Uint8Array(total);
  let offset = 0;
  for (const piece of pieces) { all.set(piece, offset); offset += piece.length; }
  return parseFeed(new TextDecoder().decode(all), publisher);
}

export async function fetchFeed(publisher: Publisher): Promise<Array<Omit<Story, "id">>> {
  // Bounded retry; never fetch article HTML or operator-supplied URLs.
  try { return await fetchFeedOnce(publisher); }
  catch { return fetchFeedOnce(publisher); }
}

export async function refreshIfDue(db: D1Database, trigger = "request"): Promise<{ checked: number; imported: number; failed: number; skipped: boolean }> {
  const now = Date.now();
  const claimed = await db.prepare(
    "INSERT INTO news_refresh_state (state_key, checked_ms, lease_until_ms) VALUES ('publisher_feeds', ?, ?) " +
    "ON CONFLICT(state_key) DO UPDATE SET checked_ms=excluded.checked_ms, lease_until_ms=excluded.lease_until_ms " +
    "WHERE news_refresh_state.checked_ms <= ? AND news_refresh_state.lease_until_ms < ? RETURNING state_key"
  ).bind(now, now + LEASE_MS, trigger === "cron" ? now : now - REFRESH_INTERVAL_MS, now).first<{ state_key: string }>();
  if (!claimed) return { checked: 0, imported: 0, failed: 0, skipped: true };

  const runId = crypto.randomUUID();
  await db.prepare("INSERT INTO news_refresh_runs (id,trigger,started_ms) VALUES (?,?,?)").bind(runId, trigger, now).run();
  let checked = 0, imported = 0, failed = 0;
  try {
    const results = await Promise.allSettled(PUBLISHERS.map((source) => fetchFeed(source)));
    for (let i = 0; i < results.length; i++) {
      checked++;
      const result = results[i]!;
      if (result.status !== "fulfilled" || result.value.length === 0) {
        failed++;
        console.warn(JSON.stringify({ event: "news.publisher_failed", publisher: PUBLISHERS[i]!.id }));
        continue;
      }
      const publisher = PUBLISHERS[i]!;
      const statements: D1PreparedStatement[] = [];
      for (const item of result.value) {
        const id = await articleId(item.url);
        statements.push(db.prepare(
          "INSERT INTO news_articles (id, publisher_id, source_url, title, summary, published_at, first_seen_ms, content_key) VALUES (?, ?, ?, ?, ?, ?, ?, ?) " +
          "ON CONFLICT(source_url) DO UPDATE SET title=excluded.title, summary=excluded.summary, content_key=excluded.content_key " +
          "WHERE (news_articles.title<>excluded.title OR news_articles.summary<>excluded.summary) AND NOT EXISTS " +
          "(SELECT 1 FROM news_articles other WHERE other.content_key=excluded.content_key AND other.source_url<>excluded.source_url) " +
          "ON CONFLICT DO NOTHING"
        ).bind(id, publisher.id, item.url, item.title, item.summary, item.publishedAt, now, (item.title + "\n" + item.summary).normalize("NFKC").toLowerCase().replace(/\s+/g," ").trim()));
      }
      try {
        if (statements.length) {
          const changes = await db.batch(statements);
          imported += changes.reduce((n, entry) => n + (entry.meta?.changes ?? 0), 0);
        }
      } catch {
        failed++;
      }
    }
  } finally {
    await db.prepare(
      "UPDATE news_refresh_state SET lease_until_ms=0, last_success_ms=CASE WHEN ?>0 THEN ? ELSE last_success_ms END, last_imported=?, last_failed=? WHERE state_key='publisher_feeds'"
    ).bind(checked - failed, Date.now(), imported, failed).run();
    await db.prepare("UPDATE news_refresh_runs SET completed_ms=?, checked=?, imported=?, failed=? WHERE id=?")
      .bind(Date.now(), checked, imported, failed, runId).run();
    await db.prepare("DELETE FROM news_articles WHERE published_at<?").bind(new Date(now - 30 * 86400_000).toISOString()).run();
    await db.prepare("DELETE FROM news_refresh_runs WHERE started_ms<?").bind(now - 7 * 86400_000).run();
    console.log(JSON.stringify({ event: "news.refresh_completed", trigger, checked, imported, failed }));
  }
  return { checked, imported, failed, skipped: false };
}

function decodeCursor(value: string | null): { at: string; id: string } | null {
  if (!value) return null;
  if (value.length > 700) throw new Error("invalid_cursor");
  try {
    const obj: unknown = JSON.parse(atob(value.replace(/-/g, "+").replace(/_/g, "/")));
    if (!obj || typeof obj !== "object") throw new Error();
    const parsed = obj as Record<string, unknown>;
    if (typeof parsed.at !== "string" || !Number.isFinite(Date.parse(parsed.at)) ||
      typeof parsed.id !== "string" || !/^[0-9a-f]{8}-[0-9a-f-]{27,28}$/.test(parsed.id)) throw new Error();
    return { at: parsed.at, id: parsed.id };
  } catch { throw new Error("invalid_cursor"); }
}

function encodeCursor(row: ItemRow): string {
  return btoa(JSON.stringify({ at: row.published_at, id: row.id })).replace(/\+/g, "-").replace(/\//g, "_").replace(/=+$/g, "");
}

export async function listNews(db: D1Database, url: URL) {
  const params = url.searchParams;
  if ([...params.keys()].some((key) => !["cursor", "publisher", "search"].includes(key)) ||
    ["cursor", "publisher", "search"].some((key) => params.getAll(key).length > 1)) throw new Error("invalid_news_query");
  const publisher = params.get("publisher");
  const search = params.get("search");
  if (publisher && !PUBLISHERS.some((p) => p.id === publisher)) throw new Error("invalid_news_query");
  if (search && (search.trim() !== search || search.length < 2 || new TextEncoder().encode(search).length > 80)) throw new Error("invalid_news_query");
  const cursor = decodeCursor(params.get("cursor"));
  const conditions: string[] = ["published_at>=?", "published_at<=?", "publisher_id IN (" + PUBLISHERS.map(() => "?").join(",") + ")"];
  const values: Array<string | number> = [new Date(Date.now() - 30 * 86400_000).toISOString(), new Date().toISOString(), ...PUBLISHERS.map(p => p.id)];
  if (publisher) { conditions.push("publisher_id=?"); values.push(publisher); }
  if (search) {
    conditions.push("(instr(lower(title),lower(?))>0 OR instr(lower(summary),lower(?))>0)");
    values.push(search, search);
  }
  if (cursor) {
    conditions.push("(published_at < ? OR (published_at = ? AND id < ?))");
    values.push(cursor.at, cursor.at, cursor.id);
  }
  const sql = "SELECT id,publisher_id,title,summary,source_url,published_at FROM news_articles" +
    (conditions.length ? " WHERE " + conditions.join(" AND ") : "") +
    " ORDER BY published_at DESC,id DESC LIMIT 21";
  const data = await db.prepare(sql).bind(...values).all<ItemRow>();
  const rows = data.results ?? [];
  const hasMore = rows.length > 20;
  const chosen = rows.slice(0, 20).filter(row => {
    const source = PUBLISHERS.find(p => p.id === row.publisher_id);
    return source && safeArticleUrl(source, row.source_url) === row.source_url;
  });
  return {
    items: chosen.map((row) => {
      const source = PUBLISHERS.find((p) => p.id === row.publisher_id)!;
      return {
        id: row.id,
        author: { type: "publisher", id: source.id, displayName: source.name },
        kind: "text",
        body: row.title + "\n\n" + row.summary,
        media: [],
        publishedAt: row.published_at,
        likeCount: 0,
        commentCount: 0,
        viewerLiked: false,
        viewerSaved: false,
        reactionCounts: { like: 0 },
        news: { id: source.id, name: source.name, title: row.title, summary: row.summary, url: row.source_url, verified: true, logoUrl: null }
      };
    }),
    nextCursor: hasMore && chosen.length ? encodeCursor(chosen[chosen.length - 1]!) : null
  };
}

export async function feedStatus(db: D1Database) {
  const count = await db.prepare("SELECT count(*) AS total FROM news_articles").first<{ total: number }>();
  const refresh = await db.prepare(
    "SELECT checked_ms,last_success_ms,last_imported,last_failed FROM news_refresh_state WHERE state_key='publisher_feeds'"
  ).first<{ checked_ms: number; last_success_ms: number; last_imported: number; last_failed: number }>();
  const cron = await db.prepare("SELECT completed_ms,checked,imported,failed FROM news_refresh_runs WHERE trigger='cron' AND completed_ms IS NOT NULL ORDER BY started_ms DESC LIMIT 1")
    .first<{ completed_ms: number; checked: number; imported: number; failed: number }>();
  return {
    lastCron: cron,
    status: (count?.total ?? 0) > 0 && (refresh?.last_success_ms ?? 0) > Date.now() - 60 * 60_000 ? "ready" : "not_ready",
    storage: "d1",
    publisherCount: PUBLISHERS.length,
    articleCount: count?.total ?? 0,
    lastCheckedAt: refresh?.checked_ms ? new Date(refresh.checked_ms).toISOString() : null,
    lastSuccessfulAt: refresh?.last_success_ms ? new Date(refresh.last_success_ms).toISOString() : null,
    lastBatchImported: refresh?.last_imported ?? 0,
    lastBatchFailures: refresh?.last_failed ?? 0
  };
}
