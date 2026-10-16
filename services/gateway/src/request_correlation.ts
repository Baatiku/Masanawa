import type { FastifyInstance } from "fastify";
import {
  admitTelemetryCorrelation,
  injectCorrelationHeaders,
} from "@masanawa/telemetry";

export function registerGatewayRequestCorrelation(app: FastifyInstance): void {
  app.addHook("onRequest", async (request, reply) => {
    // These validated identifiers are retry/correlation keys, never authority.
    // Business repositories still scope every operation to the signed-in owner.
    const correlation = admitTelemetryCorrelation({
      carrier: {
        ...(request.headers.traceparent !== undefined
          ? { traceparent: request.headers.traceparent }
          : {}),
        ...(request.headers["x-request-id"] !== undefined
          ? { "x-request-id": request.headers["x-request-id"] }
          : {}),
        ...(request.headers["x-correlation-id"] !== undefined
          ? { "x-correlation-id": request.headers["x-correlation-id"] }
          : {}),
      },
      acceptInboundCanonicalIds: true,
    });
    const headers = injectCorrelationHeaders(correlation);
    request.headers.traceparent = headers.traceparent;
    request.headers["x-request-id"] = headers["x-request-id"];
    request.headers["x-correlation-id"] = headers["x-correlation-id"];
    reply.headers(headers);
  });
}
