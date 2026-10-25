import type { FlutterwaveBillsClient, FlutterwaveBillItem } from "@masanawa/providers";
import type { ApprovedWholeGbBundle } from "./data_catalogue.js";

/**
 * Reuse the current server-side credentialed Flutterwave Bills client. A
 * catalogue read always calls the provider instead of assuming yesterday's
 * approved item is still on sale. Failure of any biller aborts all results.
 * This is intentionally not a bill purchase, wallet charge or callback.
 */
export function createLiveFlutterwaveGbDataItems(
  client: Pick<FlutterwaveBillsClient, "listItems">,
) {
  return async (approved: readonly ApprovedWholeGbBundle[]): Promise<readonly FlutterwaveBillItem[]> => {
    const billers = [...new Set(approved.filter(a => a.enabled).map(a => a.billerCode))].sort();
    const result: FlutterwaveBillItem[] = [];
    // Sequential to avoid bursting one biller API for unrelated customer
    // visits; no credentials, provider errors or transient cache leak to users.
    for (const billerCode of billers) {
      const items = await client.listItems(billerCode);
      for (const item of items) {
        if (item.billerCode !== billerCode) {
          throw new Error("gb.data.provider_biller_mismatch");
        }
        result.push(item);
      }
    }
    return Object.freeze(result);
  };
}
