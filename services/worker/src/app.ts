import { createHash, timingSafeEqual } from "node:crypto";
import Fastify from "fastify";
import type { Instant } from "@masanawa/contracts";
import { nowInstant } from "@masanawa/contracts";
import {
  admitTelemetryCorrelation,
  injectCorrelationHeaders,
} from "@masanawa/telemetry";
import type { TypeBoxTypeProvider } from "@fastify/type-provider-typebox";
import Type from "typebox";

export interface ReadinessCheck {
  readonly name: string;
  check(): Promise<{ readonly ready: boolean; readonly reason?: string }>;
}

export interface JobHealthSnapshot {
  readonly name: string;
  readonly enabled: boolean;
  readonly runningSeconds: number;
  readonly lastSuccessAgeSeconds: number | null;
  readonly stuck: number;
  readonly consecutiveFailures: number;
}

export interface DurableJobSnapshot {
  readonly name: string;
  readonly stuck: number;
  readonly oldestPendingSeconds: number;
}

export interface WorkerAppOptions {
  readonly readinessChecks?: readonly ReadinessCheck[];
  readonly now?: () => Instant;
  readonly isDraining?: () => boolean;
  readonly opsMonitorToken?: string;
  readonly jobsHealth?: () => readonly JobHealthSnapshot[];
  readonly databaseJobs?: () => Promise<readonly DurableJobSnapshot[]>;
}

const HealthResponseSchema = Type.Object(
  {
    service: Type.Literal("worker"),
    status: Type.Literal("ok"),
    time: Type.String(),
  },
  { additionalProperties: false },
);

const ReadinessCheckSchema = Type.Object(
  {
    name: Type.String(),
    ready: Type.Boolean(),
    reason: Type.Optional(Type.String()),
  },
  { additionalProperties: false },
);

const ReadinessResponseSchema = Type.Object(
  {
    service: Type.Literal("worker"),
    status: Type.Union([Type.Literal("ready"), Type.Literal("not-ready")]),
    time: Type.String(),
    checks: Type.Array(ReadinessCheckSchema),
  },
  { additionalProperties: false },
);

const JobsResponseSchema = Type.Object({
  jobs: Type.Array(Type.Union([
    Type.Object({
      name: Type.String(),
      enabled: Type.Boolean(),
      runningSeconds: Type.Number(),
      lastSuccessAgeSeconds: Type.Union([Type.Number(), Type.Null()]),
      stuck: Type.Integer(),
      consecutiveFailures: Type.Integer(),
    }, { additionalProperties: false }),
    Type.Object({
      name: Type.String(),
      stuck: Type.Integer(),
      oldestPendingSeconds: Type.Number(),
    }, { additionalProperties: false }),
  ])),
}, { additionalProperties: false });

export function createWorkerApp(options: WorkerAppOptions = {}) {
  const app = Fastify({
    logger: false,
    bodyLimit: 1_048_576,
    requestTimeout: 30_000,
  }).withTypeProvider<TypeBoxTypeProvider>();

  const now = options.now ?? nowInstant;
  const checks = options.readinessChecks ?? [];

  app.addHook("onRequest", async (request, reply) => {
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
    });
    const headers = injectCorrelationHeaders(correlation);

    request.headers.traceparent = headers.traceparent;
    request.headers["x-request-id"] = headers["x-request-id"];
    request.headers["x-correlation-id"] = headers["x-correlation-id"];
    reply.headers(headers);
  });

  app.get(
    "/healthz",
    {
      schema: {
        response: {
          200: HealthResponseSchema,
        },
      },
    },
    async () => ({
      service: "worker" as const,
      status: "ok" as const,
      time: now(),
    }),
  );

  app.get(
    "/readyz",
    {
      schema: {
        response: {
          200: ReadinessResponseSchema,
          503: ReadinessResponseSchema,
        },
      },
    },
    async (_request, reply) => {
      const dependencyResults = await Promise.all(
        checks.map(async (check) => {
          try {
            const result = await check.check();
            return {
              name: check.name,
              ready: result.ready,
              ...(result.reason ? { reason: result.reason } : {}),
            };
          } catch {
            return {
              name: check.name,
              ready: false,
              reason: "readiness check failed",
            };
          }
        }),
      );

      const results = [
        ...(options.isDraining?.()
          ? [
              {
                name: "lifecycle",
                ready: false,
                reason: "service is shutting down",
              },
            ]
          : []),
        ...dependencyResults,
      ];

      const ready = results.every((result) => result.ready);
      if (!ready) {
        reply.code(503);
      }

      return {
        service: "worker" as const,
        status: ready ? ("ready" as const) : ("not-ready" as const),
        time: now(),
        checks: results,
      };
    },
  );

  // Never expose operational job data without an operator-secret. Public
  // readiness stays separate, so a missing monitor credential cannot reveal
  // financial queues or change the readiness lifecycle.
  const opsToken = options.opsMonitorToken;
  if (opsToken) {
    if (opsToken.length < 32) throw new Error("ops_monitor_token_too_short");
    const expected = createHash("sha256").update("Bearer " + opsToken).digest();
    app.get("/v1/ops/jobs/health", {
      schema: { response: { 200: JobsResponseSchema } },
    }, async (request, reply) => {
      const candidate = createHash("sha256")
        .update(request.headers.authorization ?? "").digest();
      if (!timingSafeEqual(candidate, expected)) {
        reply.code(401);
        return { error: "unauthorized" };
      }
      try {
        const durable = await options.databaseJobs?.() ?? [];
        return { jobs: [...(options.jobsHealth?.() ?? []), ...durable] };
      } catch {
        reply.code(503);
        return { error: "job_metrics_unavailable" };
      }
    });
  }

  return app;
}
