/**
 * Routes initiated by payment processors are NOT customer spending actions.
 * Their identity is established by the route's own signature verification,
 * never by a customer access token.
 *
 * Keep this exception list exact: no prefix exemption for other "webhook"
 * strings and no exemptions for customer-initiated financial writes.
 */
const signedProviderCallbacks = new Set([
  "/v1/financial/nowpayments/ipn",
  "/v1/financial/nowpayments/payout-ipn",
  "/v1/wallet/msnw/funding/webhook",
]);

export function requiresFinancialCustomerState(
  method: string, requestUrl: string,
): boolean {
  if (!["POST", "PUT", "PATCH", "DELETE"].includes(method)) return false;
  const path = requestUrl.split("?")[0] ?? "";
  if (signedProviderCallbacks.has(path)) return false;
  return path === "/v1/gb/wallet/virtual-account" ||
    path === "/v1/gb/data/redeem" ||
    path.startsWith("/v1/gb/data/purchases/") ||
    path.startsWith("/v1/gb/wallet/send/") ||
    path.startsWith("/v1/gb/wallet/requests") ||
    path.startsWith("/v1/financial/") ||
    path.startsWith("/v1/wallet/") ||
    path.startsWith("/v1/commerce/bills/");
}
