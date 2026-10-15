import type { FastifyInstance } from "fastify";
import {
  PaystackEvidenceError,
  type MsnwPaystackFiatService,
} from "./paystack_fiat_evidence.js";

/** Fiat readback only: no token mint/send/convert on these endpoints. */
export function registerMsnwPaystackFiatRoutes(
  app: FastifyInstance,
  deps: MsnwPaystackFiatService,
): void {
  async function authorize(header: string | undefined) {
    try {
      const owner = await deps.authorizer.authorize({ authorizationHeader: header });
      if (!owner.tenantId || !owner.userId) {
        throw new PaystackEvidenceError("funding.auth_required", 401);
      }
      return owner;
    } catch (error) {
      if (error instanceof PaystackEvidenceError) throw error;
      const code = error instanceof Error && "statusCode" in error &&
        error.statusCode === 503 ? 503 : 401;
      throw new PaystackEvidenceError(
        code === 503 ? "funding.auth_unavailable" : "funding.auth_required", code,
      );
    }
  }
  function failed(reply: { code(code: number): unknown }, error: unknown) {
    const statusCode = error instanceof PaystackEvidenceError
      ? error.statusCode : 503;
    reply.code(statusCode);
    return { error: error instanceof PaystackEvidenceError
      ? error.code : "funding.unavailable" };
  }

  app.get("/v1/wallet/msnw/funding/verified", async (request, reply) => {
    try {
      const owner = await authorize(request.headers.authorization);
      return { items: await deps.list(owner.tenantId, owner.userId) };
    } catch (error) { return failed(reply, error); }
  });

  app.post("/v1/wallet/msnw/funding/verify", async (request, reply) => {
    try {
      const owner = await authorize(request.headers.authorization);
      const body = request.body;
      if (!body || typeof body !== "object" || Array.isArray(body) ||
          Object.keys(body).length !== 1 ||
          typeof (body as { reference?: unknown }).reference !== "string") {
        throw new PaystackEvidenceError("funding.reference_invalid", 400);
      }
      const reference = (body as { reference: string }).reference;
      return await deps.verify(owner.tenantId, owner.userId, reference);
    } catch (error) { return failed(reply, error); }
  });
}
