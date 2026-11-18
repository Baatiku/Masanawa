import { describe, expect, it } from "vitest";
import {
  FlutterwaveBillsClient,
  type FlutterwaveBillsTransport,
} from "./client.js";

describe("Flutterwave item-code vs service-product response contract", () => {
  it("projects documented service product independently of an explicit item_code", async () => {
    const transport: FlutterwaveBillsTransport = {
      async request(request) {
        expect(request.method).toBe("GET");
        expect(request.path).toBe("/v3/bills/reference-123");
        return {
          status: 200,
          body: {
            status: "success",
            data: {
              customer_reference: "reference-123",
              status: "successful",
              amount: "100.0000",
              currency: "NGN",
              customer_id: "07000000000",
              product: "AIRTIME",
              item_code: "AT099",
              product_name: "Air recharge",
              extra: null,
            },
          },
        };
      },
    };
    const client = new FlutterwaveBillsClient({
      secretKey: "test-only-secret", transport,
    });
    await expect(client.getStatus("reference-123")).resolves.toMatchObject({
      product: "AIRTIME",
      itemCode: "AT099",
      amount: "100.0000",
      currency: "NGN",
    });
  });

  it("does not substitute the service category as an absent item_code", async () => {
    const transport: FlutterwaveBillsTransport = {
      async request(request) {
        expect(request.method).toBe("GET");
        return {
          status: 200,
          body: {
            status: "success",
            data: {
              customer_reference: "reference-123",
              status: "successful",
              amount: "100",
              currency: "NGN",
              customer_id: "07000000000",
              product: "AIRTIME",
              product_name: null,
            },
          },
        };
      },
    };
    const client = new FlutterwaveBillsClient({
      secretKey: "test-only-secret", transport,
    });
    await expect(client.getStatus("reference-123")).resolves.toMatchObject({
      product: "AIRTIME",
      itemCode: null,
    });
  });

  it("rejects a malformed non-text explicit item_code instead of guessing from product", async () => {
    const transport: FlutterwaveBillsTransport = {
      async request() {
        return {
          status: 200,
          body: {
            status: "success",
            data: {
              customer_reference: "reference-123",
              status: "successful",
              amount: "100",
              currency: "NGN",
              customer_id: "07000000000",
              product: "AIRTIME",
              item_code: { unexpected: true },
            },
          },
        };
      },
    };
    const client = new FlutterwaveBillsClient({
      secretKey: "test-only-secret", transport,
    });
    await expect(client.getStatus("reference-123")).rejects.toMatchObject({
      code: "invalid_response",
    });
  });
});
