import { apiReply, clearTokens, originAllowed, tokens, upstream } from "../../../../lib/server";

export async function POST(request: Request) {
  if (!originAllowed(request)) return apiReply({ error: "Origin not allowed." }, 403);
  const { access } = await tokens();
  if (access) await upstream("gateway", "/auth/logout", { method: "POST", headers: { authorization: `Bearer ${access}` } }).catch(() => undefined);
  const result = apiReply({ signedOut: true });
  clearTokens(result);
  return result;
}
