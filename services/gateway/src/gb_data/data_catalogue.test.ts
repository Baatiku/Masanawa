import { describe, expect, it } from "vitest";
import type { FlutterwaveBillItem } from "@masanawa/providers";
import {
  normalizeNigerianMobile,
  projectVerifiedWholeGbBundles,
  quoteVerifiedWholeGb,
  type ApprovedWholeGbBundle,
} from "./data_catalogue.js";

const now = new Date("2026-10-25T12:00:00.000Z");
const approval: ApprovedWholeGbBundle = {
  version: "bundle-review-v1",
  country: "NG", network: "MTN", billerCode: "BIL100",
  itemCode: "DAT200", allowanceGb: 2, validityDays: 30,
  providerAmount: "850.00", evidenceRef: "review-20261025",
  reviewedBy: "admin-reviewed", reviewedAt: "2026-10-24T10:00:00Z",
  expiresAt: "2026-11-20T10:00:00Z", enabled: true,
};
const providerItem: FlutterwaveBillItem = {
  billerCode: "BIL100", itemCode: "DAT200",
  name: "MTN FLASH 200 MB plus 2GB bonus - misleading",
  amount: "850", currency: "NGN", labelName: "Phone",
};
const live = [providerItem];

describe("operator-reviewed Flutterwave whole-GB catalogue", () => {
  it("uses explicit integer MB for approved fractional and small plans without rounding or bonus credit", () => {
    for (const allowanceMb of [40,100,350,500,750,1050,2500,3900,10800]) {
      const approved={...approval,allowanceMb,allowanceGb:allowanceMb/1000,
        extrasLabel:"Restricted YouTube extra"};
      expect(projectVerifiedWholeGbBundles([approved],live,now)[0])
        .toMatchObject({allowanceMb,costMb:allowanceMb,
          allowanceGb:allowanceMb/1000,extrasLabel:"Restricted YouTube extra"});
      expect(()=>projectVerifiedWholeGbBundles([{...approved,allowanceMb:allowanceMb+1}],live,now)).toThrow();
    }
    for(const allowanceMb of [0,-1,1.5,1000001,NaN])
      expect(()=>projectVerifiedWholeGbBundles([{...approval,allowanceMb}],live,now)).toThrow();
  });
  it("maps only approved exact IDs and ignores untrusted product names", () => {
    expect(projectVerifiedWholeGbBundles([approval], live, now)).toEqual([{
      id: "BIL100:DAT200", version: "bundle-review-v1", network: "MTN",
      allowanceGb: 2, costMb: 2000, validityDays: 30,
      providerAmount: "850.00", billerCode: "BIL100",
      itemCode: "DAT200", expiresAt: "2026-11-20T10:00:00Z",
    }]);
    expect(projectVerifiedWholeGbBundles([], live, now)).toEqual([]);
    expect(projectVerifiedWholeGbBundles([approval], [], now)).toEqual([]);
    expect(projectVerifiedWholeGbBundles([approval], [{
      ...providerItem, itemCode: "DAT201", name: "2GB",
    }], now)).toEqual([]);
  });

  it("fails closed on provider repricing or expired, disabled and mismatched identifiers", () => {
    expect(projectVerifiedWholeGbBundles([approval], [{
      ...providerItem, amount: "850.01",
    }], now)).toEqual([]);
    expect(projectVerifiedWholeGbBundles([{...approval,enabled:false}], live,now)).toEqual([]);
    expect(projectVerifiedWholeGbBundles([{...approval,expiresAt:"2026-10-25T10:00:00Z"}],live,now)).toEqual([]);
    expect(()=> projectVerifiedWholeGbBundles([approval,approval],live,now)).toThrow("Duplicate");
    expect(()=> projectVerifiedWholeGbBundles([approval],[providerItem, providerItem],now)).toThrow("duplicate");
  });

  it("rejects fractional GB, absent independent review evidence and currency mismatch", () => {
    expect(()=> projectVerifiedWholeGbBundles([{...approval,allowanceGb:1.5}],live,now)).toThrow();
    expect(()=> projectVerifiedWholeGbBundles([{...approval,evidenceRef:""}],live,now)).toThrow();
    expect(projectVerifiedWholeGbBundles([approval], [{
      ...providerItem, currency: "USD" as "NGN",
    }],now)).toEqual([]);
  });

  it("requires original configuration version and revalidated provider item before quote", () => {
    expect(quoteVerifiedWholeGb({approved:[approval],liveItems:live,now,
      itemId:"BIL100:DAT200",version:"bundle-review-v1",
      recipientPhone:"08012345678",
    })).toMatchObject({
      recipientPhone:"+2348012345678", costMb:2000, feeMb:0,
      quoteExpiresAt:"2026-10-25T12:02:00.000Z",
      requiresWalletReservation:true,
    });
    expect(()=>quoteVerifiedWholeGb({approved:[approval],liveItems:live,now,
      itemId:"BIL100:DAT200",version:"retired-v0",recipientPhone:"08012345678",
    })).toThrow("configuration changed");
    expect(()=>quoteVerifiedWholeGb({approved:[approval],liveItems:[],now,
      itemId:"BIL100:DAT200",version:"bundle-review-v1",recipientPhone:"08012345678",
    })).toThrow("unavailable");
  });

  it("accepts another recipient's SIM but rejects non-Nigerian/invalid phone", () => {
    expect(normalizeNigerianMobile("+2349012345678")).toBe("+2349012345678");
    expect(normalizeNigerianMobile("07012345678")).toBe("+2347012345678");
    for (const invalid of ["0012345678","+2338012345678","8012345678","garbage",""]) {
      expect(()=>normalizeNigerianMobile(invalid)).toThrow();
    }
  });
});
