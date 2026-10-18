import { afterEach, describe, expect, it } from "vitest";
import { toInstant } from "@masanawa/contracts";
import { createWorkerApp } from "./app.js";

const apps: Array<ReturnType<typeof createWorkerApp>> = [];

afterEach(async () => {
  await Promise.all(apps.splice(0).map((app) => app.close()));
});

describe("worker service bootstrap", () => {
  it("reports health without implying dependency readiness", async () => {
    const app = createWorkerApp({
      now: () => toInstant("2026-10-01T16:00:00Z"),
      readinessChecks: [
        {
          name: "database",
          check: async () => ({ ready: false, reason: "unavailable" }),
        },
      ],
    });
    apps.push(app);

    const health = await app.inject({ method: "GET", url: "/healthz" });
    expect(health.statusCode).toBe(200);
    expect(health.json()).toEqual({
      service: "worker",
      status: "ok",
      time: "2026-10-01T16:00:00.000Z",
    });

    const readiness = await app.inject({ method: "GET", url: "/readyz" });
    expect(readiness.statusCode).toBe(503);
    expect(readiness.json().status).toBe("not-ready");
  });

  it("fails readiness closed when a probe throws", async () => {
    const app = createWorkerApp({
      readinessChecks: [
        {
          name: "dependency",
          check: async () => {
            throw new Error("secret internal failure");
          },
        },
      ],
    });
    apps.push(app);

    const response = await app.inject({ method: "GET", url: "/readyz" });
    expect(response.statusCode).toBe(503);
    expect(response.json().checks).toEqual([
      {
        name: "dependency",
        ready: false,
        reason: "readiness check failed",
      },
    ]);
    expect(response.body).not.toContain("secret internal failure");
  });
  it("keeps job health hidden without an operator credential", async () => {
    const app = createWorkerApp({
      jobsHealth: () => [{ name: "status", enabled: true, stuck: 0,
        runningSeconds: 0, lastSuccessAgeSeconds: 0, consecutiveFailures: 0 }],
    });
    apps.push(app);
    const denied = await app.inject({ method: "GET", url: "/v1/ops/jobs/health" });
    expect(denied.statusCode).toBe(404);
  });

  it("fences job scheduler health with an exact bearer and omits private data", async () => {
    const app = createWorkerApp({
      opsMonitorToken: "s".repeat(48),
      jobsHealth: () => [{ name: "msnw_finality", enabled: true,
        stuck: 1, runningSeconds: 121,
        lastSuccessAgeSeconds: 60, consecutiveFailures: 2 }],
    });
    apps.push(app);
    const denied = await app.inject({
      method: "GET", url: "/v1/ops/jobs/health",
      headers: { authorization: "Bearer invalid" },
    });
    expect(denied.statusCode).toBe(401);
    const accepted = await app.inject({
      method: "GET", url: "/v1/ops/jobs/health",
      headers: { authorization: "Bearer " + "s".repeat(48) },
    });
    expect(accepted.statusCode).toBe(200);
    expect(accepted.json()).toEqual({ jobs: [{ name: "msnw_finality",
      enabled: true, stuck: 1, runningSeconds: 121,
      lastSuccessAgeSeconds: 60, consecutiveFailures: 2 }] });
    expect(accepted.body).not.toContain("secret");
  });

  it("rejects weak operational tokens before serving requests", () => {
    expect(() => createWorkerApp({
      opsMonitorToken: "weak", jobsHealth: () => [],
    })).toThrow("ops_monitor_token_too_short");
  });

});
