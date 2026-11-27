-- One deliberately coarse, delayed early snapshot per subject and question.
-- Do not retain raw counts, individual votes or a series of small-cohort snapshots.
CREATE TABLE agents.civic_early_assessments (
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 measure text NOT NULL CHECK(measure IN ('record','confidence')),
 observed_day date NOT NULL,
 band_low integer NOT NULL CHECK(band_low IN (0,25,50,75)),
 PRIMARY KEY(tenant_id,character_id,measure),
 FOREIGN KEY(tenant_id,character_id) REFERENCES identity.characters(tenant_id,character_id) ON DELETE CASCADE
);
REVOKE ALL ON agents.civic_early_assessments FROM PUBLIC;
