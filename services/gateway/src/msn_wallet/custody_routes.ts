import type { FastifyInstance } from "fastify";
import type { MsnBalanceAuthority } from "./routes.js";
import { MsnwCustodyError, createMsnwCustodyService } from "./custody_send.js";

type Custody = ReturnType<typeof createMsnwCustodyService>;
export function registerMsnwCustodyRoutes(
  app: FastifyInstance, input: Readonly<{ authorizer: MsnBalanceAuthority; ledger: Custody }>,
): void {
  async function owner(header: string | undefined) {
    try {
      const value = await input.authorizer.authorize({ authorizationHeader: header });
      if (!value.tenantId || !value.userId) throw new MsnwCustodyError("msnw.auth_required",401);
      return value;
    } catch (error) {
      if (error instanceof MsnwCustodyError) throw error;
      throw new MsnwCustodyError(
        error instanceof Error && "statusCode" in error && error.statusCode === 503
          ? "msnw.auth_unavailable" : "msnw.auth_required",
        error instanceof Error && "statusCode" in error && error.statusCode === 503 ? 503 : 401,
      );
    }
  }
  function failed(reply: { code(value: number): unknown }, error: unknown) {
    const mapped = error instanceof MsnwCustodyError
      ? error : new MsnwCustodyError("msnw.custody_unavailable");
    reply.code(mapped.statusCode);
    return { error: mapped.code };
  }
  app.get("/v1/wallet/msnw/custody", async (request, reply) => {
    try { return await input.ledger.balance(await owner(request.headers.authorization)); }
    catch (error) { return failed(reply,error); }
  });
  app.get("/v1/wallet/msnw/transactions", async (request, reply) => {
    try { return { items: await input.ledger.history(await owner(request.headers.authorization)) }; }
    catch (error) { return failed(reply,error); }
  });
  app.post("/v1/wallet/msnw/send/preview", {
    bodyLimit: 1024,
  }, async (request, reply) => {
    try {
      const identity = await owner(request.headers.authorization);
      const value = request.body as Record<string, unknown>;
      if (!value || typeof value !== "object" || Array.isArray(value) ||
          Object.keys(value).sort().join(",") !== "amountMicro,recipient")
        throw new MsnwCustodyError("msnw.confirmation_invalid",400);
      return await input.ledger.preview(identity,value.recipient,value.amountMicro);
    } catch (error) { return failed(reply,error); }
  });
  app.post("/v1/wallet/msnw/send", {
    bodyLimit: 2048,
  }, async (request, reply) => {
    try {
      const identity = await owner(request.headers.authorization);
      const value = request.body as Record<string, unknown>;
      if (!value || typeof value !== "object" || Array.isArray(value) ||
          Object.keys(value).sort().join(",") !==
            "amountMicro,idempotencyKey,recipient,recipientUserId")
        throw new MsnwCustodyError("msnw.confirmation_invalid",400);
      return await input.ledger.send(identity,value);
    } catch (error) { return failed(reply,error); }
  });
}
