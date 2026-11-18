import { describe, expect, it } from "vitest";
import { ngnDataActivation } from "./activation.js";

describe("direct NGN data activation", () => {
  it("does not inherit retired MB flags or guessed provider readiness", () => {
    expect(ngnDataActivation({ MASANAWA_GB_DATA_CATALOG_ENABLED: "true", MASANAWA_GB_DATA_PURCHASE_ENABLED: "true" }))
      .toEqual({ catalogue: false, purchases: false });
    expect(ngnDataActivation({})).toEqual({ catalogue: false, purchases: false });
  });
  it("enables approved discovery without enabling money movement", () => {
    expect(ngnDataActivation({ MASANAWA_NGN_DATA_CATALOG_ENABLED: "true" }))
      .toEqual({ catalogue: true, purchases: false });
  });
  it("enables purchases only with the explicit catalogue plus purchase readiness", () => {
    expect(() => ngnDataActivation({ MASANAWA_NGN_DATA_PURCHASE_ENABLED: "true" })).toThrow(/approved NGN catalogue/);
    expect(ngnDataActivation({ MASANAWA_NGN_DATA_CATALOG_ENABLED: "true", MASANAWA_NGN_DATA_PURCHASE_ENABLED: "true" }))
      .toEqual({ catalogue: true, purchases: true });
  });
});
