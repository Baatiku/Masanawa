import { createHmac } from "node:crypto";
import { describe, expect, it } from "vitest";
import { createMsnwPaystackFiatService } from "./paystack_fiat_evidence.js";

describe("Paystack MSNW signed KYC webhook bridge", () => {
  it("dispatches only HMAC-authenticated events through existing funding webhook", async () => {
    const received: string[] = [];
    const secret = "sk_test_testing123";
    const service = createMsnwPaystackFiatService({
      pool: { async query() { throw new Error("no financial ledger writes for KYC"); } },
      authorizer: { async authorize() { return { tenantId: "t", userId: "u" }; } },
      paystackSecretKey: secret,
      onCustomerIdentification: async (eventName, data) => {
        received.push(eventName);
        expect(data).toMatchObject({ customer_id: "321" });
        return true;
      },
    });
    for (const event of ["customeridentification.success",
                         "customeridentification.failed"] as const) {
      const body = Buffer.from(JSON.stringify({ event, data: {
        customer_id: "321", customer_code: "CUS_test321", email: "owner@example.com",
      } }));
      const signature = createHmac("sha512", secret).update(body).digest("hex");
      expect(await service.handleSignedWebhook(body, signature))
        .toEqual({ accepted: true, recorded: true });
      await expect(service.handleSignedWebhook(body, "0".repeat(128)))
        .rejects.toMatchObject({ code: "funding.webhook_signature_invalid" });
    }
    expect(received).toEqual([
      "customeridentification.success", "customeridentification.failed",
    ]);
  });
});
