import { describe, expect, it } from "vitest";
import { createGatewayApp } from "../app.js";
import { MsnwCustodyError } from "./custody_send.js";

describe("canonical MSNW custody Gateway routes", () => {
  it("requires a real platform session for custody and all Send operations", async () => {
    const seen: string[] = [];
    const app = createGatewayApp({
      customerAuth: { async authorizeSensitiveMutation() {} } as never,
      msnwCustody: {
        authorizer: { async authorize({ authorizationHeader }) {
          if (authorizationHeader !== "Bearer session") throw new Error("denied");
          return { tenantId: "t1", userId: "u1" };
        } },
        ledger: {
          async balance(owner: {tenantId: string; userId: string}) {
            seen.push(owner.userId);
            return { asset: "MSNW", scope: "platform_custody",
              availableMicro: "0", reservedMicro: "0" };
          },
          async preview() {
            seen.push("preview");
            throw new MsnwCustodyError("msnw.insufficient_available",409);
          },
          async send() { seen.push("send"); throw new Error("unavailable"); },
          async history() { seen.push("history"); return []; },
        } as any,
      },
    });
    const denied = await app.inject({ method: "POST",
      url: "/v1/wallet/msnw/send",
      payload: { recipient: "valid@example.com", amountMicro: "1000000",
        recipientUserId: "u2", idempotencyKey: "1234567890abcdef" },
    });
    expect(denied.statusCode).toBe(401);
    expect(seen).toEqual([]);
    const zero = await app.inject({ method: "GET",
      url: "/v1/wallet/msnw/custody", headers: { authorization: "Bearer session" },
    });
    expect(zero.statusCode).toBe(200);
    expect(JSON.parse(zero.body)).toEqual({
      asset: "MSNW", scope: "platform_custody",
      availableMicro: "0", reservedMicro: "0",
    });
    const preview = await app.inject({ method: "POST",
      url: "/v1/wallet/msnw/send/preview",
      headers: { authorization: "Bearer session" },
      payload: { recipient: "valid@example.com", amountMicro: "1000000" },
    });
    expect(preview.statusCode).toBe(409);
    expect(JSON.parse(preview.body).error).toBe("msnw.insufficient_available");
    expect(seen).toEqual(["u1","preview"]);
    await app.close();
  });

  it("recovers only the authenticated sender's completed operation and never mutates custody", async () => {
    const owners: string[] = [];
    const app=createGatewayApp({
      customerAuth: { async authorizeSensitiveMutation() {} } as never,
      msnwCustody: {
        authorizer: { async authorize({ authorizationHeader }) {
          if (authorizationHeader !== "Bearer trusted") throw new Error("denied");
          return { tenantId: "tenantA", userId: "senderA" };
        }},
        ledger: {
          async lookup(owner: {tenantId: string; userId: string}, key: string) {
            owners.push(owner.tenantId, owner.userId, String(key));
            return key === "original-send-key-001" ? {
              operationId: "committed-001", recipientUserId: "recipientB",
              amountMicro: "1200000", feeMicro: "0", asset: "MSNW",
              state: "completed", createdAt: "2026-10-18T08:00:00.000Z",
            } : null;
          },
          async send() { throw new Error("must not issue or debit"); },
        } as any,
      },
    });
    const url="/v1/wallet/msnw/send/status/original-send-key-001";
    const unauthorized=await app.inject({method:"GET",url});
    expect(unauthorized.statusCode).toBe(401);
    expect(owners).toEqual([]);
    const invalid=await app.inject({method:"GET",
      url:"/v1/wallet/msnw/send/status/short",
      headers:{authorization:"Bearer trusted"}});
    // The mock deliberately bypasses ledger validation; route delegates to it.
    expect(invalid.statusCode).toBe(404);
    const good=await app.inject({method:"GET",url,
      headers:{authorization:"Bearer trusted"}});
    expect(good.statusCode).toBe(200);
    expect(good.headers["cache-control"]).toBe("private, no-store");
    expect(JSON.parse(good.body)).toMatchObject({
      operationId:"committed-001",amountMicro:"1200000",state:"completed",
    });
    expect(owners).toEqual([
      "tenantA","senderA","short",
      "tenantA","senderA","original-send-key-001",
    ]);
    await app.close();
  });

  it("rejects unexpected user-controlled money movement fields", async () => {
    const app = createGatewayApp({
      customerAuth: { async authorizeSensitiveMutation() {} } as never,
      msnwCustody: {
        authorizer: { async authorize() { return { tenantId: "t1", userId: "u1" }; } },
        ledger: {
          async balance() { return { asset: "MSNW",scope: "platform_custody",
            availableMicro: "0",reservedMicro: "0" }; },
          async preview() { throw new Error("must not be called"); },
          async send() { throw new Error("must not be called"); },
          async history() { return []; },
        } as any,
      },
    });
    const answer = await app.inject({ method: "POST",
      url: "/v1/wallet/msnw/send",
      payload: { recipient: "valid@example.com", recipientUserId: "u2",
        amountMicro: "1000000", idempotencyKey: "1234567890abcdef",
        forceCredit: true },
    });
    expect(answer.statusCode).toBe(400);
    await app.close();
  });
});
