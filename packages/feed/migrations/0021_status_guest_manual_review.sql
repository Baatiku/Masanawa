-- Nonpayable manual guest-fraud triage. Review cannot transform self-reported
-- evidence into qualified views or charges; no visitor identifiers leave SQL.
ALTER TABLE feed.guest_view_proofs
 ADD COLUMN review_decision text NOT NULL DEFAULT 'none'
   CHECK(review_decision IN ('none','held','rejected')),
 ADD COLUMN reviewed_by text,
 ADD COLUMN reviewed_at timestamptz,
 ADD COLUMN review_reason text
   CHECK(review_reason IN ('suspicious_automation','invalid_referral',
    'duplicate_exposure','other_risk')),
 ADD CONSTRAINT guest_proof_manual_review_complete CHECK(
   (review_decision='none' AND reviewed_by IS NULL
    AND reviewed_at IS NULL AND review_reason IS NULL)
   OR (review_decision<>'none' AND length(btrim(reviewed_by))>0
    AND reviewed_at IS NOT NULL AND review_reason IS NOT NULL));

CREATE INDEX feed_guest_manual_review_queue
 ON feed.guest_view_proofs(tenant_id,observed_at,id)
 WHERE review_state='pending_review' AND review_decision='none';

-- Existing 24-hour proof erasure also removes decision/reviewer metadata.
-- Do not turn this short-lived triage into an immutable financial audit.
