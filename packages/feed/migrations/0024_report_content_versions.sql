-- A later source edit can be reported again without duplicating retries of one version.
-- Existing reports have unknown original versions; never invent a historical body hash.
ALTER TABLE feed.post_reports ADD COLUMN content_sha256 text CHECK(content_sha256 IS NULL OR content_sha256 ~ '^[a-f0-9]{64}$');
ALTER TABLE feed.post_reports DROP CONSTRAINT post_reports_tenant_id_reporter_id_post_id_reason_key;
CREATE UNIQUE INDEX post_report_content_once ON feed.post_reports(tenant_id,reporter_id,post_id,reason,COALESCE(content_sha256,'legacy'));
