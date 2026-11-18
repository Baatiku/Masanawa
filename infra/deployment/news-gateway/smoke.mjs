import assert from "node:assert/strict";
const base = process.argv[2];
assert(base && new URL(base).protocol === "https:", "Pass the deployed HTTPS origin");
async function get(path, expected = 200, init) {
  const response = await fetch(new URL(path, base), { ...init, signal: AbortSignal.timeout(30000) });
  assert.equal(response.status, expected, path);
  assert.equal(response.headers.get("access-control-allow-origin"), "*", path + " CORS");
  return response;
}
await get("/healthz");
const sources = await (await get("/v1/news/publishers")).json();
assert.equal(sources.length, 7);
const page = await (await get("/v1/news")).json();
assert(Array.isArray(page.items));
assert(page.items.length > 0, "At least one real publisher story must import");
for (const item of page.items) assert.equal(new URL(item.news.url).protocol, "https:");
const filtered = await (await get("/v1/news?publisher=" + page.items[0].author.id)).json();
assert(filtered.items.every(item => item.author.id === page.items[0].author.id));
await get("/v1/news?publisher=invalid", 422);
await get("/v1/news?cursor=invalid", 422);
await get("/v1/news", 204, { method: "OPTIONS" });
await get("/v1/news", 405, { method: "POST" });
const ready = await (await get("/readyz")).json();
assert.equal(ready.status,"ready");
const again = await (await get("/v1/news")).json();
assert(again.items.some(item => page.items.some(previous => previous.id === item.id)), "Persisted article IDs survive requests");
const status = await (await get("/api/news/status")).json();
assert.equal(status.storage, "d1");
assert(status.articleCount > 0);
if(process.argv.includes("--require-cron")){
 assert(status.lastCron?.completed_ms > 0, "A real scheduled ingestion must complete");
 assert(status.lastCron.checked > status.lastCron.failed, "Cron must reach at least one publisher");
 assert(Date.now() - status.lastCron.completed_ms < 60*60_000, "Cron evidence must be recent");
}
console.log("PASS: public API, real stories, publisher filters, query validation, CORS, methods and D1 status");
