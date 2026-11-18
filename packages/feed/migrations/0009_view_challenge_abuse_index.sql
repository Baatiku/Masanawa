-- Account-scoped challenge issue budget. Shared carrier IPs must not become
-- an identity or be used as the limiting key. The data itself stays private.
CREATE INDEX IF NOT EXISTS feed_view_challenge_actor_window
 ON feed.view_challenges(tenant_id,viewer_digest,started_at DESC);
