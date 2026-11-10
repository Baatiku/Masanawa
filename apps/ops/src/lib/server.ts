import { cookies } from "next/headers";
import { NextResponse } from "next/server";

const ACCESS = "masanawa_ops_access";
const REFRESH = "masanawa_ops_refresh";

function endpoint(name: "MASANAWA_GATEWAY_API_URL" | "MASANAWA_OPS_API_URL"): string {
  const raw = process.env[name];
  if (!raw) throw new Error(`${name} is not configured`);
  const url = new URL(raw);
  if ((url.protocol !== "https:" && !(url.protocol === "http:" && ["127.0.0.1", "localhost", "::1"].includes(url.hostname))) ||
      url.username || url.password || url.search || url.hash || url.pathname !== "/") {
    throw new Error(`${name} must be an HTTPS service origin`);
  }
  return url.origin;
}

export async function upstream(service: "gateway" | "ops", path: string, init?: RequestInit): Promise<Response> {
  const base = endpoint(service === "gateway" ? "MASANAWA_GATEWAY_API_URL" : "MASANAWA_OPS_API_URL");
  return fetch(`${base}${path}`, {
    ...init,
    cache: "no-store",
    signal: AbortSignal.timeout(12_000),
    headers: { accept: "application/json", ...(init?.headers ?? {}) },
  });
}

export function originAllowed(request: Request): boolean {
  const origin = request.headers.get("origin");
  const fetchSite = request.headers.get("sec-fetch-site");
  return origin === new URL(request.url).origin && (!fetchSite || fetchSite === "same-origin");
}

export function apiReply(data: unknown, status = 200): NextResponse {
  return NextResponse.json(data, { status, headers: { "cache-control": "no-store" } });
}

export function apiError(error: unknown): NextResponse {
  return apiReply({ error: error instanceof Error && /not configured/.test(error.message)
    ? "Admin services are not configured on this server." : "Unable to reach the administration service." }, 503);
}

export async function limitedJson(request: Request): Promise<Record<string, unknown>> {
  const body = await request.text();
  if (body.length > 4096) throw new Error("Request too large");
  const value: unknown = JSON.parse(body);
  if (!value || typeof value !== "object" || Array.isArray(value)) throw new Error("Invalid request body");
  return value as Record<string, unknown>;
}

export async function tokens() {
  const jar = await cookies();
  return { access: jar.get(ACCESS)?.value, refresh: jar.get(REFRESH)?.value };
}

export function setTokens(response: NextResponse, data: Record<string, unknown>): void {
  const access = data.accessToken;
  const refresh = data.refreshToken;
  if (typeof access !== "string" || typeof refresh !== "string" || !access || !refresh) throw new Error("Invalid authentication response");
  const options = { httpOnly: true, secure: process.env.NODE_ENV === "production", sameSite: "strict" as const, path: "/", priority: "high" as const };
  response.cookies.set(ACCESS, access, { ...options, maxAge: Math.max(60, Math.min(3600, Number(data.accessExpiresIn) || 900)) });
  response.cookies.set(REFRESH, refresh, { ...options, maxAge: 30 * 86400 });
}

export function clearTokens(response: NextResponse): void {
  for (const key of [ACCESS, REFRESH]) response.cookies.set(key, "", { httpOnly: true, secure: process.env.NODE_ENV === "production", sameSite: "strict", path: "/", maxAge: 0 });
}

export async function refreshAdmin(refreshToken: string): Promise<Record<string, unknown> | null> {
  const response = await upstream("gateway", "/auth/refresh", { method: "POST", headers: { "content-type": "application/json" }, body: JSON.stringify({ refreshToken }) });
  if (!response.ok) return null;
  const data = await response.json() as Record<string, unknown>;
  if (typeof data.accessToken !== "string") return null;
  const authorized = await upstream("ops", "/v1/admin/me", { headers: { authorization: `Bearer ${data.accessToken}` } });
  return authorized.ok ? data : null;
}

export async function authorizedOps(path: string, init?: RequestInit): Promise<{ response: Response; renewed?: Record<string, unknown> }> {
  const { access, refresh } = await tokens();
  if (!access && !refresh) return { response: new Response(null, { status: 401 }) };
  let response = access ? await upstream("ops", path, { ...init, headers: { ...init?.headers, authorization: `Bearer ${access}` } })
    : new Response(null, { status: 401 });
  if (response.status === 401 && refresh) {
    const renewed = await refreshAdmin(refresh);
    if (renewed) {
      response = await upstream("ops", path, { ...init, headers: { ...init?.headers, authorization: `Bearer ${renewed.accessToken}` } });
      return { response, renewed };
    }
  }
  return { response };
}
