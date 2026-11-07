import { createServer } from "node:http";
import { timingSafeEqual } from "node:crypto";

// Railway retains the Flutterwave secret. This tiny server only provides
// a predictable IPv4 egress at a private VM's public IP.
const reads = [
  /^\/v3\/top-bill-categories$/,
  /^\/v3\/bills\/[A-Za-z0-9_-]{1,128}\/billers$/,
  /^\/v3\/billers\/[A-Za-z0-9_-]{1,128}\/items$/,
  /^\/v3\/bill-items\/[A-Za-z0-9_-]{1,128}\/validate$/,
  /^\/v3\/bills\/[A-Za-z0-9_-]{1,128}$/,
];
const payment = /^\/v3\/billers\/[A-Za-z0-9_-]{1,128}\/items\/[A-Za-z0-9_-]{1,128}\/payment$/;
const upstream = "https://api.flutterwave.com";
function same(provided, expected) {
  if (typeof provided !== "string") return false;
  const a = Buffer.from(provided);
  const b = Buffer.from(expected);
  return a.length === b.length && timingSafeEqual(a, b);
}
function send(res, status, code) {
  res.writeHead(status, {"content-type":"application/json","cache-control":"no-store","x-content-type-options":"nosniff"});
  res.end(JSON.stringify({error:code}));
}
async function readBody(req) {
  const parts = [];
  let length = 0;
  for await (const part of req) {
    length += part.length;
    if (length > 32768) throw new Error("request_too_large");
    parts.push(part);
  }
  return Buffer.concat(parts);
}
/**
 * No arbitrary target URLs, internal metadata hosts, user-selected methods,
 * unauthenticated catalog requests, redirects or implicit POST retries.
 * HTTPS terminates in Caddy on the same VM; localhost-only port 3098.
 */
export function createRelay({ token, fetchImpl=fetch, timeoutMs=16000 }) {
  if (typeof token !== "string" || Buffer.byteLength(token) < 32 || Buffer.byteLength(token) > 1024)
    throw new TypeError("relay_secret_invalid");
  if (!Number.isSafeInteger(timeoutMs) || timeoutMs < 1000 || timeoutMs > 30000)
    throw new TypeError("relay_timeout_invalid");
  return createServer(async (req,res) => {
    if (req.method==="GET" && req.url==="/healthz") { send(res,200,"ok"); return; }
    if (!same(req.headers["x-masanawa-relay-token"],token)) { send(res,401,"unauthorized"); return; }
    let url;
    try { url=new URL(req.url??"", "https://relay.invalid"); }
    catch {send(res,400,"invalid_path");return;}
    const isGet=req.method==="GET" && reads.some(re=>re.test(url.pathname));
    const isPayment=req.method==="POST" && payment.test(url.pathname);
    if (!isGet && !isPayment) {send(res,404,"route_not_allowed");return;}
    if (url.search.length>768 || (isPayment && url.search)) {send(res,400,"invalid_query");return;}
    const providerAuth=req.headers.authorization;
    if (typeof providerAuth!=="string" || !/^Bearer [A-Za-z0-9._-]{8,512}$/.test(providerAuth)) {
      send(res,401,"provider_auth_required");return;
    }
    if (isPayment && !(req.headers["content-type"]??"").toLowerCase().startsWith("application/json")) {
      send(res,415,"json_required");return;
    }
    let body;
    try {body=await readBody(req);}
    catch {send(res,413,"request_too_large");return;}
    if (isPayment) {
      let payload;
      try {payload=JSON.parse(body.toString("utf8"));}
      catch {send(res,400,"invalid_json");return;}
      if (!payload || typeof payload!=="object" || Array.isArray(payload) ||
        payload.country!=="NG" || typeof payload.customer_id!=="string" ||
        typeof payload.reference!=="string" ||
        !/^[A-Za-z0-9:_-]{8,128}$/.test(payload.reference) ||
        !["string","number"].includes(typeof payload.amount) ||
        !/^(?:0|[1-9]\d*)(?:\.\d{1,2})?$/.test(String(payload.amount)) ||
        Number(payload.amount)<=0 ||
        Object.keys(payload).some(k=>!["country","customer_id","amount","reference","callback_url"].includes(k)) ||
        (payload.callback_url && (typeof payload.callback_url!=="string" ||
          !payload.callback_url.startsWith("https://") || payload.callback_url.length>1000))) {
        send(res,422,"invalid_bill_dispatch");return;
      }
    }
    try {
      const response=await fetchImpl(upstream+url.pathname+url.search,{
        method:req.method,redirect:"error",signal:AbortSignal.timeout(timeoutMs),
        headers:{authorization:providerAuth,accept:"application/json",
          ...(isPayment?{"content-type":"application/json"}:{})},
        ...(isPayment?{body}:{}),
      });
      if (Number(response.headers.get("content-length"))>2097152) {
        send(res,502,"upstream_too_large");return;
      }
      // A provider can stream without content-length. Bound actual resident
      // memory, not just the advertised length (important on free 1GB VMs).
      const reader=response.body?.getReader();
      if (!reader) {send(res,502,"upstream_invalid_json");return;}
      const parts=[];
      let size=0;
      while (true) {
        const {done,value}=await reader.read();
        if (done) break;
        size+=value.byteLength;
        if (size>2097152) {
          await reader.cancel();
          send(res,502,"upstream_too_large");
          return;
        }
        parts.push(value);
      }
      const bytes=Buffer.concat(parts);
      let json;
      try {json=JSON.parse(bytes.toString("utf8"));}
      catch {send(res,502,"upstream_invalid_json");return;}
      res.writeHead(response.status,{"content-type":"application/json",
        "cache-control":"no-store","x-content-type-options":"nosniff"});
      res.end(JSON.stringify(json));
    } catch {
      // Uncertain POST outcomes MUST be reconciled by the original reference
      // by the Gateway. Never dispatch a second purchase from the relay.
      send(res,502,"upstream_unavailable_reconcile_original_reference");
    }
  });
}
if (process.argv[1] && import.meta.url === new URL("file://"+process.argv[1]).href) {
  const server=createRelay({token:process.env.MASANAWA_FLUTTERWAVE_RELAY_TOKEN});
  server.listen(3098,"127.0.0.1",()=>process.stdout.write("relay_ready 127.0.0.1:3098\n"));
}
