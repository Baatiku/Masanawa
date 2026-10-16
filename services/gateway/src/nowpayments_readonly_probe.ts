import type {
  NowPaymentsClient,
  NowPaymentsCustodyClient,
} from "@masanawa/nowpayments";

type ReadOnlyPaymentApi = Pick<
  NowPaymentsClient, "checkApiStatus" | "listPaymentCurrencies"
>;
type ReadOnlyCustody = Pick<NowPaymentsCustodyClient, "readBalances">;

/**
 * Qualify only read-only NOWPayments transport and custody access.
 * Never creates payments, payout batches, account mutations or IP approvals.
 * No balances, provider responses, credentials or URLs are logged.
 */
export async function probeNowPaymentsReadOnly(input: Readonly<{
  payments: ReadOnlyPaymentApi;
  custody?: ReadOnlyCustody | undefined;
  proposedConversionCodes: readonly string[];
  signal?: AbortSignal | undefined;
}>): Promise<Readonly<{
  apiStatus: "reachable" | "unavailable";
  currencyCatalog: "reachable" | "unavailable";
  custody: "reachable" | "unavailable" | "not_configured";
  currencyCount: number | null;
  configuredConversionCodesSupported: boolean | null;
  payoutTested: false;
}>> {
  let apiStatus: "reachable" | "unavailable" = "unavailable";
  let currencyCatalog: "reachable" | "unavailable" = "unavailable";
  let custodyStatus: "reachable" | "unavailable" | "not_configured" =
    input.custody ? "unavailable" : "not_configured";
  let currencyCount: number | null = null;
  let configuredConversionCodesSupported: boolean | null = null;

  try {
    await input.payments.checkApiStatus(input.signal);
    apiStatus = "reachable";
  } catch {
    // Only a boolean state is exposed: provider error payloads may be sensitive.
  }
  try {
    const currencies = await input.payments.listPaymentCurrencies(input.signal);
    currencyCatalog = "reachable";
    currencyCount = currencies.length;
    const available = new Set(
      currencies.map((value) => value.providerCode.toUpperCase()),
    );
    configuredConversionCodesSupported = input.proposedConversionCodes.every(
      (code) => available.has(code.trim().toUpperCase()),
    );
  } catch {
    // Do not infer provider/account readiness from a successful /status alone.
  }
  if (input.custody) {
    try {
      await input.custody.readBalances(input.signal);
      custodyStatus = "reachable";
    } catch {
      // Custody login can fail independently of ordinary payment credentials.
    }
  }
  return Object.freeze({
    apiStatus,
    currencyCatalog,
    custody: custodyStatus,
    currencyCount,
    configuredConversionCodesSupported,
    payoutTested: false as const,
  });
}
