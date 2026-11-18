import { describe, expect, it } from "vitest";
import { workerProductJobs } from "./product_jobs.js";

describe("lite product worker scope", () => {
  it("runs canonical account/privacy recovery without retiring it alongside historical jobs", () => {
    const scoped = workerProductJobs({ MASANAWA_PRODUCT_SCOPE: "masana-lite" });
    expect(scoped).toEqual({privacyAndChatRecovery:true,publisherNews:false,legacyFinanceAndStatus:false});
  });

  it("activates reviewed publisher ingestion without P2P or paid Status jobs", () => {
    const scoped = workerProductJobs({ MASANAWA_PRODUCT_SCOPE: "masana-lite", MASANAWA_NEWS_INGEST_ENABLED: "true" });
    expect(scoped.publisherNews).toBe(true);
    expect(scoped.legacyFinanceAndStatus).toBe(false);
  });

  it("retains historical job behavior only outside the lite product scope", () => {
    expect(workerProductJobs({MASANAWA_PRODUCT_SCOPE:"full"}).legacyFinanceAndStatus).toBe(true);
  });
});
