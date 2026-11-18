import { describe, expect, it } from "vitest";
import type { FlutterwaveBillsClient, FlutterwaveBillItem } from "@masanawa/providers";
import { createLiveFlutterwaveGbDataItems } from "./flutterwave_live_items.js";
import type { ApprovedWholeGbBundle } from "./data_catalogue.js";

function approval(billerCode: string, enabled = true): ApprovedWholeGbBundle {
  return { version:"v1", country:"NG", network:"GLO", billerCode,
    itemCode:"GB_1", allowanceGb:1, validityDays:7,
    providerAmount:"300", evidenceRef:"evidence", reviewedBy:"admin",
    reviewedAt:"2026-10-01T00:00:00Z", expiresAt:"2026-11-01T00:00:00Z", enabled };
}
function item(billerCode: string): FlutterwaveBillItem {
  return { billerCode,itemCode:"GB_1",name:"Any name",currency:"NGN",
    amount:"300",labelName:"Phone" };
}
describe("live Flutterwave GB catalogue adapter", () => {
  it("loads unique current approved billers, never a client-supplied name or price", async () => {
    const seen: string[] = [];
    const provider = { listItems: async (code: string) => {
      seen.push(code);
      return [item(code)];
    }} as Pick<FlutterwaveBillsClient,"listItems">;
    const live = createLiveFlutterwaveGbDataItems(provider);
    expect(await live([approval("BIL2"),approval("BIL1"),approval("BIL1"),approval("DISABLED",false)]))
      .toEqual([item("BIL1"),item("BIL2")]);
    expect(seen).toEqual(["BIL1","BIL2"]);
    expect(await live([])).toEqual([]);
  });
  it("fails closed for partial outages and wrong provider biller identity", async () => {
    const failing = createLiveFlutterwaveGbDataItems({
      listItems: async code => {
        if(code==="OFFLINE") throw new Error("provider offline");
        return [item(code)];
      },
    } as Pick<FlutterwaveBillsClient,"listItems">);
    await expect(failing([approval("OK"), approval("OFFLINE")])).rejects.toThrow();
    const mismatch = createLiveFlutterwaveGbDataItems({
      listItems: async () => [item("WRONG")],
    } as Pick<FlutterwaveBillsClient,"listItems">);
    await expect(mismatch([approval("BIL1")])).rejects.toThrow("mismatch");
  });
});
