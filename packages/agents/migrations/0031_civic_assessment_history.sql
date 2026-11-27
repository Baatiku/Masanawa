-- Persist only already-public coarse aggregate snapshots, never voter identities.
CREATE TABLE agents.civic_assessment_history (
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 measure text NOT NULL CHECK(measure IN ('record','confidence')),
 day date NOT NULL,
 count_bucket integer NOT NULL CHECK(count_bucket>=20 AND count_bucket%10=0),
 positive_percent integer NOT NULL CHECK(positive_percent BETWEEN 0 AND 100 AND positive_percent%5=0),
 PRIMARY KEY(tenant_id,character_id,measure,day),
 FOREIGN KEY(tenant_id,character_id) REFERENCES identity.characters(tenant_id,character_id) ON DELETE CASCADE
);
