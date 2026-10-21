import { MSNW_PRICING_POLICY } from "@masanawa/commerce";
import { WalletActivityError } from './wallet_activity.js';
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
    const mapped = error instanceof MsnwCustodyError || error instanceof WalletActivityError
      ? error : new MsnwCustodyError("msnw.custody_unavailable");
    reply.code(mapped.statusCode);
    return { error: mapped.code, ...(mapped instanceof MsnwCustodyError && mapped.details ? mapped.details : {}) };
  }
  app.get('/v1/wallet/pricing-policy', async (request, reply) => {
    reply.header('Cache-Control','private, no-store');
    try { await owner(request.headers.authorization); return MSNW_PRICING_POLICY; }
    catch(error) { return failed(reply,error); }
  });
  app.get("/v1/wallet/account", async (request, reply) => {
    reply.header("Cache-Control", "private, no-store");
    try { return await input.ledger.account(await owner(request.headers.authorization)); }
    catch (error) { return failed(reply,error); }
  });
  app.get("/v1/wallet/lookup", async (request, reply) => {
    reply.header("Cache-Control", "private, no-store");
    try {
      const identity = await owner(request.headers.authorization);
      const { query } = request.query as { query?: unknown };
      if (typeof query !== "string" || !query.trim()) {
        throw new MsnwCustodyError("msnw.query_required", 400);
      }
      return await input.ledger.lookupRecipient(identity, query.trim());
    } catch (error) { return failed(reply, error); }
  });
  app.get("/v1/wallet/msnw/custody", async (request, reply) => {
    try { return {...await input.ledger.balance(await owner(request.headers.authorization)),pricingPolicy:MSNW_PRICING_POLICY}; }
    catch (error) { return failed(reply,error); }
  });
  app.get("/v1/wallet/msnw/transactions", async (request, reply) => {
    try { return { items: await input.ledger.history(await owner(request.headers.authorization)) }; }
    catch (error) { return failed(reply,error); }
  });
  app.get('/v1/wallet/msnw/activity', async (request, reply) => {
    reply.header('Cache-Control','private, no-store');
    try {
      return await input.ledger.activity.list(await owner(request.headers.authorization),
        request.query as Record<string,unknown>);
    } catch(error) {return failed(reply,error);}
  });
  app.get('/v1/wallet/msnw/activity/export', async (request, reply) => {
    reply.header('Cache-Control','private, no-store');
    try {
      const identity=await owner(request.headers.authorization);
      const {format='csv',...query}=request.query as Record<string,unknown>;
      if(format!=='csv'&&format!=='pdf')throw new WalletActivityError('wallet.export_format_invalid');
      const result=format==='csv'?await input.ledger.activity.exportCsv(identity,query):
        await input.ledger.activity.exportPdf(identity,query);
      reply.header('Content-Type',format==='csv'?'text/csv; charset=utf-8':'application/pdf');
      reply.header('Content-Disposition',`attachment; filename="masanawa-transactions.${format}"`);
      reply.header('X-Statement-Rows',String(result.count));
      reply.header('X-Statement-Snapshot',result.snapshot);
      return 'csv' in result?result.csv:result.pdf;
    } catch(error) {return failed(reply,error);}
  });
  // Lookup is strictly scoped by authenticated tenant and sender. A 404 means
  // no committed operation is visible yet, not proof an in-flight send failed.
  app.get("/v1/wallet/msnw/send/status/:idempotencyKey", async (request, reply) => {
    reply.header("Cache-Control", "private, no-store");
    try {
      const identity = await owner(request.headers.authorization);
      const { idempotencyKey } = request.params as { idempotencyKey?: unknown };
      const result = await input.ledger.lookup(identity, idempotencyKey);
      if (!result) throw new MsnwCustodyError("msnw.operation_not_found",404);
      return result;
    } catch (error) { return failed(reply,error); }
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
          !["amountMicro,idempotencyKey,recipient,recipientUserId","amountMicro,idempotencyKey,recipient,recipientUserId,repeatOf"].includes(Object.keys(value).sort().join(",")))
        throw new MsnwCustodyError("msnw.confirmation_invalid",400);
      return await input.ledger.send(identity, {
        recipient: value.recipient,recipientUserId:value.recipientUserId,
        amountMicro:value.amountMicro,idempotencyKey:value.idempotencyKey,
        ...(value.repeatOf!==undefined?{repeatOf:value.repeatOf}:{}),
      });
    } catch (error) { return failed(reply,error); }
  });
}

