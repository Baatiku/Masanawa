import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type { Pool } from "pg";
import { createPostgresCustomerChannelRepository } from "./customer-channel.js";

const inbound = {
  channel: "telegram" as const,
  messageId: "123:456",
  externalUserId: "123",
  receivedAt: "2026-10-16T00:00:00.000Z",
};
describe("durable channel request identity", () => {
  it("requires reconciliation for legacy failed receipts with unknown turn identity",async()=>{
    const query=vi.fn().mockResolvedValueOnce({rowCount:0,rows:[]}).mockResolvedValueOnce({rowCount:1,rows:[{state:"failed",reply:null,external_user_id:"123",request_id:null}]});
    const repository=createPostgresCustomerChannelRepository({query} as unknown as Pool);
    await expect(repository.claimMessage(inbound)).rejects.toThrow("legacy_request_requires_reconciliation");
    expect(query).toHaveBeenCalledTimes(2);
  });
  it("uses the persisted original request ID for both first claim and failed reclaim", async () => {
    const requestId = createCanonicalId("request");
    const query = vi
      .fn()
      .mockResolvedValueOnce({ rowCount: 1, rows: [{ request_id: requestId }] })
      .mockResolvedValueOnce({ rowCount: 0, rows: [] })
      .mockResolvedValueOnce({
        rowCount: 1,
        rows: [{ state: "failed", reply: null, external_user_id: "123",request_id:requestId }],
      })
      .mockResolvedValueOnce({
        rowCount: 1,
        rows: [{ request_id: requestId }],
      });
    const repository = createPostgresCustomerChannelRepository({
      query,
    } as unknown as Pool);
    expect(await repository.claimMessage(inbound)).toEqual({
      state: "claimed",
      reply: null,
      requestId,
    });
    expect(await repository.claimMessage(inbound)).toEqual({
      state: "claimed",
      reply: null,
      requestId,
    });
  });
  it("refuses to expose or reclaim another sender's provider receipt", async () => {
    const query = vi
      .fn()
      .mockResolvedValueOnce({ rowCount: 0, rows: [] })
      .mockResolvedValueOnce({
        rowCount: 1,
        rows: [
          {
            state: "completed",
            reply: "Private reply",
            external_user_id: "other",
          },
        ],
      });
    const repository = createPostgresCustomerChannelRepository({
      query,
    } as unknown as Pool);
    await expect(repository.claimMessage(inbound)).rejects.toThrow(
      "message_owner_mismatch",
    );
    expect(query).toHaveBeenCalledTimes(2);
  });
  it("refuses corrupted request identities before authorizing a turn", async () => {
    const query = vi
      .fn()
      .mockResolvedValueOnce({
        rowCount: 1,
        rows: [{ request_id: "not-a-request-id" }],
      });
    const repository = createPostgresCustomerChannelRepository({
      query,
    } as unknown as Pool);
    await expect(repository.claimMessage(inbound)).rejects.toThrow();
  });
});
