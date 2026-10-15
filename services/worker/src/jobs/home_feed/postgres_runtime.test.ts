import {describe,expect,it,vi} from "vitest";
import {createScheduledFeedRuntime} from "./postgres_runtime.js";

describe("scheduled feed worker composition", () => {
  it("does not read the database during draining", async () => {
    const query = vi.fn();
    const worker = createScheduledFeedRuntime({
      pool: {query} as never, enabled: () => false,
    });
    expect(await worker.runOnce()).toEqual({published:0,deferred:0,tenants:0,failed:0});
    expect(query).not.toHaveBeenCalled();
  });

  it("reuses the due-feed tenant set and does not invent posts", async () => {
    const query = vi.fn()
      .mockResolvedValueOnce({rows:[{tenant_id:"tenant_a"}]})
      .mockResolvedValueOnce({rows:[]});
    const worker = createScheduledFeedRuntime({
      pool:{query} as never, enabled: () => true,
      now: () => new Date("2026-10-15T11:00:00Z"),
    });
    expect(await worker.runOnce()).toEqual({published:0,deferred:0,tenants:1,failed:0});
    expect(query).toHaveBeenCalledTimes(2);
    expect(query.mock.calls[0]?.[1]).toEqual(["2026-10-15T11:00:00.000Z"]);
    expect(query.mock.calls[1]?.[1]).toEqual(["tenant_a","2026-10-15T11:00:00.000Z",30]);
  });

  it("isolates a failed tenant without claiming a publication", async () => {
    const query = vi.fn()
      .mockResolvedValueOnce({rows:[{tenant_id:"tenant_a"},{tenant_id:"tenant_b"}]})
      .mockRejectedValueOnce(new Error("postgres_unavailable"))
      .mockResolvedValueOnce({rows:[]});
    const worker=createScheduledFeedRuntime({pool:{query} as never,enabled:()=>true});
    expect(await worker.runOnce()).toEqual({published:0,deferred:0,tenants:2,failed:1});
  });
});
