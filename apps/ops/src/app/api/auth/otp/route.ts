import { apiError, apiReply, limitedJson, originAllowed, upstream } from "../../../../lib/server";

export async function POST(request: Request) {
  if (!originAllowed(request)) return apiReply({ error: "Origin not allowed." }, 403);
  try {
    const body = await limitedJson(request);
    const identifier = body.identifier;
    if (typeof identifier !== "string" || identifier.length < 5 || identifier.length > 320) return apiReply({ error: "Enter a valid email or phone." }, 400);
    const field = identifier.includes("@") ? "email" : "phone";
    const result = await upstream("gateway", "/auth/otp", { method: "POST", headers: { "content-type": "application/json" }, body: JSON.stringify({ [field]: identifier.trim() }) });
    return apiReply(result.ok ? { sent: true } : { error: result.status === 429 ? "Too many attempts. Please wait before retrying." : "We could not send a sign-in code." }, result.ok ? 200 : result.status === 429 ? 429 : 400);
  } catch (error) { return apiError(error); }
}
