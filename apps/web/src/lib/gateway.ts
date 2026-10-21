/** Server-only admission boundary; no provider secret, origin or bearer goes to the browser. */
import "server-only";

export const ACCESS_COOKIE = "msnw_web_at";
export const REFRESH_COOKIE = "msnw_web_rt";
export type JsonRecord = Record<string, unknown>;

export function gatewayOrigin(): string | null {
  const raw = process.env.MASANAWA_GATEWAY_URL;
  if (!raw) return null;
  try {
    const url = new URL(raw);
    const localTest = process.env.NODE_ENV !== "production" && ["localhost","127.0.0.1"].includes(url.hostname);
    if (url.username || url.password || url.search || url.hash || (!["https:"].includes(url.protocol) && !(localTest && url.protocol === "http:"))) return null;
    if (url.pathname !== "/" && url.pathname !== "") return null;
    return url.origin;
  } catch { return null; }
}
export async function gatewayFetch(
  path: string,
  method: "GET"|"POST",
  body?: JsonRecord,
  token?: string,
  options?: { timeoutMs?:number; requestId?:string },
) {
  const origin = gatewayOrigin();
  if (!origin) return {status:503, data:{code:"GATEWAY_NOT_CONFIGURED"} as JsonRecord};
  try {
    const response = await fetch(origin + path, {
      method,
      cache:"no-store",
      redirect:"manual",
      signal:AbortSignal.timeout(options?.timeoutMs??12000),
      headers:{
        accept:"application/json",
        ...(body?{"content-type":"application/json"}:{}),
        ...(token?{authorization:"Bearer "+token}:{}),
        "x-masanawa-client-platform":"web",
        ...(options?.requestId?{"x-request-id":options.requestId}:{}),
      },
      ...(body?{body:JSON.stringify(body)}:{}),
    });
    const parsed: unknown = await response.json().catch(()=>null);
    const data = parsed && typeof parsed === "object" && !Array.isArray(parsed) ? parsed as JsonRecord : {code:"INVALID_GATEWAY_RESPONSE"};
    return {status:response.status,data};
  } catch {return {status:503,data:{code:"GATEWAY_UNAVAILABLE"} as JsonRecord};}
}
export function tokensFrom(data: JsonRecord): {access:string;refresh:string;expires:number}|null {
  const a=data.accessToken, r=data.refreshToken, expires=data.accessExpiresIn;
  if(typeof a!=="string" || a.length<20 || typeof r!=="string" || r.length<20)return null;
  return {access:a,refresh:r,expires:typeof expires==="number" && Number.isFinite(expires)?Math.max(60,Math.min(expires,86400)):900};
}
export const NO_STORE = {"cache-control":"no-store", "x-content-type-options":"nosniff"};
