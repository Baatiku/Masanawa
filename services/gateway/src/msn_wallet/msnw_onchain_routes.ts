import type { FastifyInstance } from "fastify";
import {
  MsnwOnchainError,
  type MsnwOnchainBalanceDependencies,
} from "./msnw_onchain_balance.js";

/** Customer-facing MSNW balance. No old MSN/Cr ledger fallback is permitted. */
export function registerMsnwOnchainBalanceRoutes(
  app: FastifyInstance,
  deps: MsnwOnchainBalanceDependencies,
): void {
  app.get("/v1/wallet/msnw", async (request, reply) => {
    let identity: { tenantId: string; userId: string };
    try {
      identity = await deps.authorizer.authorize({
        authorizationHeader: request.headers.authorization,
      });
      if (!identity.tenantId || !identity.userId) {
        reply.code(401);
        return { error: "msnw.auth_required" };
      }
    } catch (error) {
      const code = error instanceof Error && "statusCode" in error &&
        error.statusCode === 503 ? 503 : 401;
      reply.code(code);
      return { error: code === 503 ? "msnw.auth_unavailable" : "msnw.auth_required" };
    }
    try {
      return await deps.read(identity.tenantId, identity.userId);
    } catch (error) {
      reply.code(503);
      return {
        error: error instanceof MsnwOnchainError
          ? error.code : "msnw.balance_unavailable",
      };
    }
  });
}
