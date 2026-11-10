import { describe, expect, it } from "vitest";
import { ngnCallsEnabled } from "./activation.js";

describe("independent NGN call activation", () => {
  it("never inherits legacy MB activation", () => {
    expect(ngnCallsEnabled({ MASANAWA_MB_CALLS_ENABLED: "true" })).toBe(false);
    expect(ngnCallsEnabled({ MASANAWA_MB_CALLS_ENABLED: "true", MASANAWA_NGN_CALLS_ENABLED: "false" })).toBe(false);
  });

  it("activates NGN admission only with an explicit true setting", () => {
    expect(ngnCallsEnabled({ MASANAWA_NGN_CALLS_ENABLED: "true" })).toBe(true);
    expect(ngnCallsEnabled({ MASANAWA_NGN_CALLS_ENABLED: "TRUE" })).toBe(false);
    expect(ngnCallsEnabled({ MASANAWA_NGN_CALLS_ENABLED: "" })).toBe(false);
  });
});
