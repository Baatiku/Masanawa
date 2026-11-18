-- Explicit authored country affiliation, never inferred from name/language.
-- Additive and nullable for existing/custom identities.
ALTER TABLE agents.agent_presentations
 ADD COLUMN country_code text,
 ADD COLUMN country_name text,
 ADD CONSTRAINT agent_presentation_country_pair CHECK (
   (country_code IS NULL AND country_name IS NULL) OR
   (country_code IS NOT NULL AND country_code ~ '^[A-Z]{2}$' AND country_name IS NOT NULL
    AND length(btrim(country_name)) BETWEEN 1 AND 80)
 );
