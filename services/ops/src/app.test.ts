import { afterEach, describe, expect, it } from "vitest";
import { toInstant } from "@masanawa/contracts";
import { readFileSync } from "node:fs";
import type { createUsageBillingAdmin } from "./usage_billing_admin.js";
import { createOpsApp } from "./app.js";

const apps: Array<ReturnType<typeof createOpsApp>> = [];

afterEach(async () => {
  await Promise.all(apps.splice(0).map((app) => app.close()));
});

describe("ops service bootstrap", () => {
  it("exposes secured billing configuration routes when wired from the Ops bootstrap", async () => {
    const policy = {billingEnabled:true,replyKobo:200,callKoboPerStartedSecond:100,revision:1};
    const billing = {
      read: async (authorization:string|undefined) => {
        if (!authorization) throw new Error("Missing admin authorization");
        return policy;
      },
      write: async (_authorization:string|undefined, body:{
        expectedRevision:number;billingEnabled:boolean;replyKobo:number;callKoboPerStartedSecond:number
      }) => ({...body,revision:body.expectedRevision+1}),
    } as ReturnType<typeof createUsageBillingAdmin>;
    const app=createOpsApp({usageBillingAdmin:billing});
    apps.push(app);

    const read=await app.inject({method:"GET",url:"/v1/admin/billing",headers:{authorization:"Bearer acceptance-token"}});
    expect(read.statusCode).toBe(200);
    expect(read.json()).toEqual(policy);
    const write=await app.inject({method:"PUT",url:"/v1/admin/billing",headers:{authorization:"Bearer acceptance-token"},
      payload:{expectedRevision:1,billingEnabled:false,replyKobo:200,callKoboPerStartedSecond:100}});
    expect(write.statusCode).toBe(200);
    expect(write.json()).toMatchObject({billingEnabled:false,revision:2});
  });

  it("forwards the billing dependency in the deployed Ops service composition", () => {
    const source=readFileSync(new URL("./main.ts",import.meta.url),"utf8");
    expect(source).toMatch(/\.\.\.\(database\.usageBillingAdmin\s*\?\s*\{usageBillingAdmin:database\.usageBillingAdmin\}\s*:\s*\{\}\)/);
  });

  it("reports health without implying dependency readiness", async () => {
    const app = createOpsApp({
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
      service: "ops",
      status: "ok",
      time: "2026-10-01T16:00:00.000Z",
    });

    const readiness = await app.inject({ method: "GET", url: "/readyz" });
    expect(readiness.statusCode).toBe(503);
    expect(readiness.json().status).toBe("not-ready");
  });

  it("fails readiness closed when a probe throws", async () => {
    const app = createOpsApp({
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
});
