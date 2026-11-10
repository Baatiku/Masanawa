/** One worker binary supports historical services, but the new NGN pilot must
 * not schedule retired P2P/MSNW/status effects when recovering private chats,
 * processing verified deletion or importing publisher-only news. */
export function workerProductJobs(env: Readonly<Record<string, string | undefined>>) {
  const lite = env.MASANAWA_PRODUCT_SCOPE === "masana-lite";
  return Object.freeze({
    privacyAndChatRecovery: true,
    publisherNews: env.MASANAWA_NEWS_INGEST_ENABLED === "true",
    legacyFinanceAndStatus: !lite,
  });
}
