-- Adds the unique 10-digit Masanawa Account Number to platform user profiles.
-- Decoupled from phone number, used as the primary identifier for zero-gas P2P transfers.

ALTER TABLE security.platform_user_profiles
  ADD COLUMN IF NOT EXISTS masanawa_account_number text;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint 
    WHERE conname = 'platform_user_profiles_masanawa_account_number_check'
  ) THEN
    ALTER TABLE security.platform_user_profiles
      ADD CONSTRAINT platform_user_profiles_masanawa_account_number_check
      CHECK (masanawa_account_number IS NULL OR masanawa_account_number ~ '^[0-9]{10}$');
  END IF;
END $$;

CREATE UNIQUE INDEX IF NOT EXISTS platform_user_profiles_masanawa_account_number_idx
  ON security.platform_user_profiles(tenant_id, masanawa_account_number)
  WHERE masanawa_account_number IS NOT NULL;

-- Generator function for collision-resistant 10-digit Masanawa account numbers
CREATE OR REPLACE FUNCTION security.generate_masanawa_account_number()
RETURNS text LANGUAGE plpgsql AS $$
DECLARE
  candidate text;
  collision boolean;
BEGIN
  LOOP
    -- 10-digit number starting with 8 (e.g. 8000000000 to 8999999999)
    candidate := '8' || lpad((floor(random() * 900000000 + 100000000)::bigint)::text, 9, '0');
    SELECT EXISTS (
      SELECT 1 FROM security.platform_user_profiles 
      WHERE masanawa_account_number = candidate
    ) INTO collision;
    EXIT WHEN NOT collision;
  END LOOP;
  RETURN candidate;
END;
$$;
