import { apiError, apiReply, authorizedOps, setTokens } from "../../../../lib/server";

export async function GET() {
  try {
    const { response, renewed } = await authorizedOps("/v1/admin/me");
    if (!response.ok) return apiReply({ operator: null }, response.status === 403 ? 403 : 401);
    const result = apiReply({ operator: await response.json() });
    if (renewed) setTokens(result, renewed);
    return result;
  } catch (error) { return apiError(error); }
}
