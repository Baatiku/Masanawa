import { describe, expect, it } from "vitest";
import {
  DEFAULT_RECHARGE_RATE_BOOK as rates,
  decimalGbFromMb,
  quotePackage,
  quoteVerifiedDeposit,
  validateRechargeRateBook,
} from "./pricing.js";

describe("GB recharge actual-bank-deposit pricing", () => {
  it("quotes editable package defaults in exact integer kobo", () => {
    expect(rates.tiers.map((tier) => tier.totalKobo)).toEqual([
      400000, 750000, 1750000, 3250000, 5500000, 7000000,
    ]);
    expect(quotePackage(280, rates)).toMatchObject({
      expectedMb: 280000, totalKobo: 7000000, pricePerGbKobo: 25000,
    });
  });

  it("uses verified amount, not selected package, for tier thresholds", () => {
    expect(quoteVerifiedDeposit(350000, rates)).toMatchObject({
      creditedMb: 8750, qualifyingPackageGb: 10,
    });
    expect(quoteVerifiedDeposit(500000, rates)).toMatchObject({
      creditedMb: 12500, qualifyingPackageGb: 10,
    });
    expect(quoteVerifiedDeposit(750000, rates)).toMatchObject({
      creditedMb: 20000, qualifyingPackageGb: 20,
    });
    expect(quoteVerifiedDeposit(7100000, rates)).toMatchObject({
      creditedMb: 284000, qualifyingPackageGb: 280,
    });
  });

  it("retains fractional monetary change over later deposits without floating point", () => {
    const first = quoteVerifiedDeposit(400001, rates);
    expect(first.creditedMb).toBe(10000);
    expect(first.remainder).toEqual({ numerator: "1", denominator: "1" });
    const second = quoteVerifiedDeposit(400039, rates, first.remainder);
    expect(second.creditedMb).toBe(10001);
    expect(second.remainder).toEqual({ numerator: "0", denominator: "1" });
  });

  it("does not silently give underpayment a selected-package discount", () => {
    expect(quoteVerifiedDeposit(749999, rates).qualifyingPackageGb).toBe(10);
  });

  it("rejects inconsistent edits and negative or fractional deposits", () => {
    expect(() => quoteVerifiedDeposit(-1, rates)).toThrow();
    expect(() => quoteVerifiedDeposit(12.5, rates)).toThrow();
    expect(() => validateRechargeRateBook({
      version: "bad-v1",
      tiers: [{ sizeGb: 10, totalKobo: 400000 }, { sizeGb: 20, totalKobo: 900000 }],
    })).toThrow();
    expect(() => quoteVerifiedDeposit(400000, rates, {
      numerator: "1", denominator: "0",
    })).toThrow();
  });

  it("formats decimal GB without rounding away exact MB", () => {
    expect(decimalGbFromMb(10375)).toBe("10.375");
    expect(decimalGbFromMb(10000)).toBe("10");
    expect(decimalGbFromMb(50)).toBe("0.05");
  });
});
