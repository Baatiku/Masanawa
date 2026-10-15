import type { FastifyInstance } from "fastify";
import { DvaError, type MsnwPaystackDvaService } from "./paystack_dva.js";

export function registerMsnwPaystackDvaRoutes(
  app: FastifyInstance,
  deps: MsnwPaystackDvaService,
): void {
  async function principal(header: string | undefined) {
    try {
      const identity = await deps.authorizer.authorize({ authorizationHeader: header });
      if (!identity.tenantId || !identity.userId) {
        throw new DvaError("funding.authentication_required", 401);
      }
      return identity;
    } catch (error) {
      if (error instanceof DvaError) throw error;
      if (error instanceof Error && "statusCode" in error &&
          error.statusCode === 503) {
        throw new DvaError("funding.authentication_unavailable", 503);
      }
      throw new DvaError("funding.authentication_required", 401);
    }
  }
  app.get("/v1/wallet/msnw/funding/account", async (request, reply) => {
    try {
      const owner = await principal(request.headers.authorization);
      return await deps.read(owner.tenantId, owner.userId);
    } catch (error) {
      const code = error instanceof DvaError ? error.statusCode : 503;
      reply.code(code);
      return { error: error instanceof DvaError ? error.message : "funding.unavailable" };
    }
  });
  app.post("/v1/wallet/msnw/funding/account", async (request, reply) => {
    try {
      const body = request.body;
      if (!body || typeof body !== "object" || Array.isArray(body) ||
          Object.keys(body).length !== 1 ||
          (body as { consent?: unknown }).consent !== true) {
        throw new DvaError("funding.explicit_consent_required", 400);
      }
      const owner = await principal(request.headers.authorization);
      const value = await deps.request(owner.tenantId, owner.userId, true);
      reply.code(value.state === "pending" ? 202 : 200);
      return value;
    } catch (error) {
      const code = error instanceof DvaError ? error.statusCode : 503;
      reply.code(code);
      return { error: error instanceof DvaError ? error.message : "funding.unavailable" };
    }
  });
}
