import {
  PgEditorialReviewRepository,
  PgStatusEligibility,
  type Pool,
} from "@masanawa/postgres";
import { makeScheduledFeedPublisher } from "./publish_scheduled.js";

/**
 * Poll the existing feed.posts scheduled state; it is the durable task record.
 * PgEditorialReviewRepository owns the revision-CAS update and audit event.
 * No second queue, table, consumer credentials, or arbitrary rollout flag.
 */
export function createScheduledFeedRuntime(input: {
  readonly pool: Pool;
  readonly enabled: () => boolean;
  readonly now?: () => Date;
}) {
  const editorial = new PgEditorialReviewRepository(input.pool);
  const eligibility = new PgStatusEligibility(input.pool);
  const publisher = makeScheduledFeedPublisher(editorial, {
    verifiedAuthor: (tenant, character) => eligibility.author(tenant, character),
    verifiedMedia: (tenant, character, media, kind) =>
      kind === "image" || kind === "audio"
        ? eligibility.media(tenant, character, media, kind)
        : Promise.resolve(false),
  }, input.enabled);

  return Object.freeze({
    async runOnce(): Promise<{published: number; deferred: number; tenants: number; failed: number}> {
      if (!input.enabled()) return {published: 0, deferred: 0, tenants: 0, failed: 0};
      const at = input.now?.() ?? new Date();
      // Tenant-scoped selection, bounded work and canonical state/revision CAS.
      const tenants = await input.pool.query<{tenant_id: string}>(`
        SELECT tenant_id FROM feed.posts
        WHERE state='scheduled' AND scheduled_at <= $1
        GROUP BY tenant_id ORDER BY MIN(scheduled_at) ASC LIMIT 20
      `, [at.toISOString()]);
      let published = 0;
      let deferred = 0;
      let failed = 0;
      for (const row of tenants.rows) {
        if (!input.enabled()) break;
        try {
          const result = await publisher(row.tenant_id, at);
          published += result.published;
          deferred += result.deferred;
        } catch {
          // Leave scheduled state unchanged. Next poll retries; one tenant
          // cannot prevent unrelated tenants from publishing.
          failed++;
        }
      }
      return {published, deferred, tenants: tenants.rows.length, failed};
    },
  });
}
