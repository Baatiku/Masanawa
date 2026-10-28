-- Nonpayable, consented public Status evidence. This table is deliberately
-- separate from qualified_views and promotion_view_charges: no unverified
-- browser/cookie claim can produce a counter, debit or reward.
CREATE TABLE IF NOT EXISTS feed.guest_view_proofs (
 tenant_id text NOT NULL,
 id uuid NOT NULL DEFAULT gen_random_uuid(),
 post_id uuid NOT NULL,
 consent_digest text NOT NULL CHECK(consent_digest ~ '^[0-9a-f]{64}$'),
 viewer_digest text NOT NULL CHECK(viewer_digest ~ '^[0-9a-f]{64}$'),
 referral_link_id uuid,
 consent_version text NOT NULL DEFAULT 'status-guest-2026-10-28-v1',
 started_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 observed_at timestamptz,
 review_state text NOT NULL DEFAULT 'started'
   CHECK(review_state IN ('started','pending_review')),
 PRIMARY KEY(tenant_id,id),
 UNIQUE(tenant_id,post_id,consent_digest),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 FOREIGN KEY(tenant_id,referral_link_id) REFERENCES feed.share_links(tenant_id,id),
 CHECK((review_state='started' AND observed_at IS NULL) OR
       (review_state='pending_review' AND observed_at IS NOT NULL))
);
CREATE INDEX IF NOT EXISTS feed_guest_evidence_expiry
 ON feed.guest_view_proofs(started_at,id);
CREATE INDEX IF NOT EXISTS feed_guest_evidence_consent
 ON feed.guest_view_proofs(consent_digest,started_at DESC);

-- Revocation survives a deleted browser cookie and blocks a captured token
-- until that token's original signed 24-hour lifetime expires. No raw cookie,
-- network address, device fingerprint, user ID or visitor profile is stored.
CREATE TABLE IF NOT EXISTS feed.guest_consent_revocations (
 consent_digest text PRIMARY KEY CHECK(consent_digest ~ '^[0-9a-f]{64}$'),
 revoked_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 expires_at timestamptz NOT NULL,
 CHECK(expires_at>revoked_at)
);
CREATE INDEX IF NOT EXISTS feed_guest_revocations_expiry
 ON feed.guest_consent_revocations(expires_at);

REVOKE ALL ON feed.guest_view_proofs FROM PUBLIC;
REVOKE ALL ON feed.guest_consent_revocations FROM PUBLIC;
