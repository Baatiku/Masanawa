-- SPE-A04/A09: immutable independent editorial and advertisement-policy
-- evidence. Regulated creatives may never be approved without a recorded
-- external clearance reference and human verification note.
CREATE TABLE feed.promotion_policy_reviews (
 tenant_id text NOT NULL,campaign_id uuid NOT NULL,post_id uuid NOT NULL,
 reviewer_id text NOT NULL,
 policy_category text NOT NULL CHECK(policy_category IN
  ('general','financial','health','political','employment','regulated_other')),
 body_checked boolean NOT NULL CHECK(body_checked),
 rights_checked boolean NOT NULL CHECK(rights_checked),
 destination_checked boolean NOT NULL,
 clearance_reference text,
 evidence_note text NOT NULL CHECK(length(btrim(evidence_note)) BETWEEN 10 AND 500),
 reviewed_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,campaign_id),
 FOREIGN KEY(tenant_id,campaign_id) REFERENCES feed.promotion_campaigns(tenant_id,id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK(policy_category='general' OR
   (clearance_reference IS NOT NULL AND length(btrim(clearance_reference)) BETWEEN 6 AND 160))
);
CREATE TRIGGER paid_policy_review_immutable BEFORE UPDATE OR DELETE
 ON feed.promotion_policy_reviews FOR EACH ROW
 EXECUTE FUNCTION feed.refuse_financial_record_change();
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
