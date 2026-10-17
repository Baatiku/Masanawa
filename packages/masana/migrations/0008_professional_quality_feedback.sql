-- Professional-answer quality feedback; separate from safety reports.
-- Store only a constrained category, no prompt, transcript or response content.
-- Existing finance, character identities and conversations remain untouched.
CREATE TABLE IF NOT EXISTS masana.professional_quality_feedback (
  tenant_id text NOT NULL,
  fan_user_id text NOT NULL,
  character_id text NOT NULL,
  reason text NOT NULL CHECK (reason IN
    ('factual_error','off_topic','repetition','unhelpful','unprofessional')),
  feedback_day date NOT NULL DEFAULT (now() AT TIME ZONE 'UTC')::date,
  created_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (tenant_id,fan_user_id,character_id,reason,feedback_day),
  FOREIGN KEY (tenant_id,fan_user_id)
    REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE,
  FOREIGN KEY (tenant_id,character_id)
    REFERENCES identity.characters(tenant_id,character_id) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS masana_quality_by_professional
 ON masana.professional_quality_feedback(tenant_id,character_id,created_at DESC,reason);
