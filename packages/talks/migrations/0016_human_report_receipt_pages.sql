-- Reports are private submission evidence. This read index does not add review
-- authority, change stored reports, or grant a new visibility scope.
CREATE INDEX IF NOT EXISTS human_reports_actor_page
 ON talks.human_reports(tenant_id,user_id,created_at DESC,id DESC);
