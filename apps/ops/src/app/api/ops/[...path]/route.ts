import { apiError, apiReply, authorizedOps, originAllowed, setTokens } from "../../../../lib/server";

type Context = { params: Promise<{ path: string[] }> };

function permitted(path: string, method: string): boolean {
  if (method === "GET") return [
    "/v1/admin/me", "/v1/admin/summary", "/v1/admin/users", "/v1/admin/agent-runs",
    "/v1/admin/operations", "/v1/admin/audit", "/v1/admin/news", "/v1/admin/wallet",
    "/v1/admin/data", "/v1/admin/calls", "/v1/admin/moderation", "/v1/agents", "/v1/skills", "/readyz",
  ].includes(path) || /^\/v1\/agents\/[^/]+\/skills$/.test(path);
  if (method === "PUT") return /^\/v1\/agents\/[^/]+\/(presentation|skills)$/.test(path);
  return false;
}

async function route(request: Request, context: Context, method: "GET" | "PUT") {
  if (method !== "GET" && !originAllowed(request)) return apiReply({ error: "Origin not allowed." }, 403);
  try {
    const { path: segments } = await context.params;
    if (!Array.isArray(segments) || segments.some((segment) => !/^[a-zA-Z0-9_.-]{1,128}$/.test(segment))) return apiReply({ error: "Invalid resource." }, 400);
    const path = `/${segments.join("/")}`;
    if (!permitted(path, method)) return apiReply({ error: "This admin action is not available." }, 404);
    const url = new URL(request.url);
    const query = new URLSearchParams(url.searchParams);
    for (const key of query.keys()) if (!["state", "limit", "offset"].includes(key)) return apiReply({ error: "Invalid filter." }, 400);
    const body = method === "PUT" ? await request.text() : undefined;
    if (body && body.length > 8_192) return apiReply({ error: "Request too large." }, 413);
    if (path === "/readyz") {
      const gate = await authorizedOps("/v1/admin/me");
      if (!gate.response.ok) return apiReply({ error: "Administrator grant required." }, gate.response.status);
    }
    const { response, renewed } = await authorizedOps(`${path}${query.size ? `?${query}` : ""}`, {
      method, ...(body ? { body, headers: { "content-type": "application/json" } } : {}),
    });
    const result = apiReply(response.ok ? await response.json() : { error: response.status === 403 ? "Your role does not permit this action." :
      response.status === 401 ? "Sign in again to continue." : response.status === 404 ? "This capability is not connected yet." : "Service request failed." }, response.status);
    if (renewed) setTokens(result, renewed);
    return result;
  } catch (error) { return apiError(error); }
}

export const GET = (request: Request, context: Context) => route(request, context, "GET");
export const PUT = (request: Request, context: Context) => route(request, context, "PUT");
