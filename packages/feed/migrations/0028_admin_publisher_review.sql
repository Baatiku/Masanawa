ALTER TABLE feed.news_publishers ADD COLUMN revision bigint NOT NULL DEFAULT 1;
CREATE TABLE feed.publisher_review_events (
 tenant_id text NOT NULL,publisher_id text NOT NULL,revision bigint NOT NULL,actor_id text NOT NULL,
 state text NOT NULL,rights_basis text NOT NULL,rights_until timestamptz,reason text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,publisher_id,revision)
);
CREATE FUNCTION feed.reject_publisher_review_mutation() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'publisher_review_audit_is_immutable'; END $$;
CREATE TRIGGER publisher_review_events_immutable BEFORE UPDATE OR DELETE ON feed.publisher_review_events FOR EACH ROW EXECUTE FUNCTION feed.reject_publisher_review_mutation();
