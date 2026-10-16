import type {
  NowPaymentsClient,
  NowPaymentsCustodyClient,
} from "@masanawa/nowpayments";

type ReadOnlyPaymentApi = Pick<
  NowPaymentsClient, "checkApiStatus" | "listPaymentCurrencies"
>;
type ReadOnlyCustody = Pick<
  NowPaymentsCustodyClient, "authenticate" | "readBalances"
>;

/**
 * Qualify read-only NOWPayments payment transport, authenticated custody and
 * provider-supported conversion sources. NEVER dispatch a conversion or payout.
 * Do not log balances, token values, wallet addresses or private provider data.
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
  custodyAuth: "authenticated" | "unavailable" | "not_configured";
  currencyCount: number | null;
  configuredConversionCodesSupported: boolean | null;
  supportedConversionCodeCount: number | null;
  fundedConversionSourceCount: number | null;
  payoutTested: false;
}>> {
  let apiStatus: "reachable" | "unavailable" = "unavailable";
  let currencyCatalog: "reachable" | "unavailable" = "unavailable";
  let custodyStatus: "reachable" | "unavailable" | "not_configured" =
    input.custody ? "unavailable" : "not_configured";
  let custodyAuth: "authenticated" | "unavailable" | "not_configured" =
    input.custody ? "unavailable" : "not_configured";
  let currencyCount: number | null = null;
  let configuredConversionCodesSupported: boolean | null = null;
  let supportedConversionCodeCount: number | null = null;
  let fundedConversionSourceCount: number | null = null;
  let supportedCodes: ReadonlySet<string> | null = null;

  try {
    await input.payments.checkApiStatus(input.signal);
    apiStatus = "reachable";
  } catch {
    // Return only a safe status: provider error bodies may contain secrets.
  }
  try {
    const currencies = await input.payments.listPaymentCurrencies(input.signal);
    currencyCatalog = "reachable";
    currencyCount = currencies.length;
    const available = new Set(
      currencies.map((value) => value.providerCode.toUpperCase()),
    );
    const supported = input.proposedConversionCodes.filter(
      (code) => available.has(code.trim().toUpperCase()),
    );
    supportedCodes = new Set(supported.map(code => code.trim().toUpperCase()));
    supportedConversionCodeCount = supportedCodes.size;
    configuredConversionCodesSupported =
      supportedCodes.size === new Set(input.proposedConversionCodes.map(
        (code) => code.trim().toUpperCase(),
      )).size;
  } catch {
    // A reachable /status is not itself proof the currency API works.
  }
  if (input.custody) {
    try {
      // /balance only requires the API key. /auth independently validates the
      // supplied email and password, rather than incorrectly treating a
      // successful balance read as successful credential authentication.
      await input.custody.authenticate(input.signal);
      custodyAuth = "authenticated";
    } catch {
      // Do not log or return a JWT or error body.
    }
    try {
      const balances = await input.custody.readBalances(input.signal);
      custodyStatus = "reachable";
      if (supportedCodes !== null) {
        fundedConversionSourceCount = balances.filter(
          (entry) => supportedCodes!.has(entry.currency.toUpperCase()) &&
            /^[0-9]+(?:\.[0-9]+)?$/u.test(entry.available) &&
            /[1-9]/u.test(entry.available),
        ).length;
      }
    } catch {
      // A failed custody balance read does not block payment APIs.
    }
  }
  return Object.freeze({
    apiStatus,
    currencyCatalog,
    custody: custodyStatus,
    custodyAuth,
    currencyCount,
    configuredConversionCodesSupported,
    supportedConversionCodeCount,
    fundedConversionSourceCount,
    payoutTested: false as const,
  });
}
