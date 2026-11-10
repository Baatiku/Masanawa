import { apiError, apiReply, limitedJson, originAllowed, setTokens, upstream } from "../../../../lib/server";

export async function POST(request: Request) {
  if (!originAllowed(request)) return apiReply({ error: "Origin not allowed." }, 403);
  try {
    const body = await limitedJson(request);
    const identifier = body.identifier;
    const code = body.code;
    if (typeof identifier !== "string" || identifier.length > 320 || typeof code !== "string" || !/^\d{6}$/.test(code)) return apiReply({ error: "Enter your identifier and six-digit code." }, 400);
    const field = identifier.includes("@") ? "email" : "phone";
    const gateway = await upstream("gateway", "/auth/verify", { method: "POST", headers: { "content-type": "application/json" }, body: JSON.stringify({ [field]: identifier.trim(), code }) });
    if (!gateway.ok) return apiReply({ error: "The code is invalid, expired, or the account is not eligible." }, gateway.status === 429 ? 429 : 401);
    const data = await gateway.json() as Record<string, unknown>;
    if (typeof data.accessToken !== "string") return apiReply({ error: "Invalid sign-in response." }, 503);
    const authorized = await upstream("ops", "/v1/admin/me", { headers: { authorization: `Bearer ${data.accessToken}` } });
    if (!authorized.ok) {
      await upstream("gateway", "/auth/logout", { method: "POST", headers: { authorization: `Bearer ${data.accessToken}` } }).catch(() => undefined);
      return apiReply({ error: "This account does not have an administrator grant." }, 403);
    }
    const response = apiReply({ operator: await authorized.json() });
    setTokens(response, data);
    return response;
  } catch (error) { return apiError(error); }
}
