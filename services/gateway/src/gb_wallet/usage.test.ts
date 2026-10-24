import { describe, expect, it } from "vitest";
import {
  allocateSpend,
  availableForUse,
  connectedCallCostMb,
  successfulReplyCostMb,
} from "./usage.js";

const balance = {
  purchasedMb: 1000, welcomeMb: 500,
  reservedPurchasedMb: 300, reservedWelcomeMb: 100,
};

describe("single-wallet restricted welcome credit policies", () => {
  it("counts free welcome MB only for connected calls and successful replies", () => {
    expect(availableForUse(balance, "reply")).toBe(1100);
    expect(availableForUse(balance, "connected_call")).toBe(1100);
    for (const use of ["send", "tip", "redeem"] as const) {
      expect(availableForUse(balance, use)).toBe(700);
      expect(allocateSpend(balance, use, 700)).toEqual({
        purchasedMb: 700, welcomeMb: 0,
      });
      expect(() => allocateSpend(balance, use, 701)).toThrow();
    }
  });

  it("spends restricted credit before purchased for allowed interactions", () => {
    expect(allocateSpend(balance, "reply", 401)).toEqual({
      purchasedMb: 1, welcomeMb: 400,
    });
    expect(() => allocateSpend(balance, "reply", 1101)).toThrow();
    expect(() => allocateSpend(balance, "send", 0)).toThrow();
  });

  it("does not charge for failed replies or ringing and charges every started connected second", () => {
    expect(successfulReplyCostMb(false)).toBe(0);
    expect(successfulReplyCostMb(true)).toBe(1);
    expect(connectedCallCostMb(null)).toBe(0);
    expect(connectedCallCostMb(0)).toBe(0);
    expect(connectedCallCostMb(1)).toBe(1);
    expect(connectedCallCostMb(1000)).toBe(1);
    expect(connectedCallCostMb(1001)).toBe(2);
    expect(connectedCallCostMb(2001)).toBe(3);
    expect(() => connectedCallCostMb(-1)).toThrow();
  });
});
