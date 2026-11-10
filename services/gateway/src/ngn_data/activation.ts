/** Separate direct-NGN data readiness from retired GB/MB customer flags.
 * A positive purchase gate cannot exist without a reviewed live catalogue. */
export function ngnDataActivation(env: Readonly<Record<string, string | undefined>>) {
  const catalogue = env.MASANAWA_NGN_DATA_CATALOG_ENABLED === "true";
  const purchases = env.MASANAWA_NGN_DATA_PURCHASE_ENABLED === "true";
  if (purchases && !catalogue) {
    throw new TypeError("Direct NGN data purchase requires an approved NGN catalogue");
  }
  return Object.freeze({ catalogue, purchases });
}
