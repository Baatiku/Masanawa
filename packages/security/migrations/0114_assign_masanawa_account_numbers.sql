-- Finish 0113 without changing historical account identifiers or any ledger.
-- A transaction lock serializes generation through insertion, so concurrent
-- signups cannot select the same still-uncommitted random number.
CREATE OR REPLACE FUNCTION security.assign_masanawa_account_number()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF TG_OP = 'UPDATE' THEN
    IF OLD.masanawa_account_number IS NOT NULL AND
       NEW.masanawa_account_number IS DISTINCT FROM OLD.masanawa_account_number THEN
      RAISE EXCEPTION 'masanawa_account_number_immutable' USING ERRCODE = '23514';
    END IF;
  END IF;
  IF NEW.masanawa_account_number IS NULL THEN
    PERFORM pg_advisory_xact_lock(817420113);
    NEW.masanawa_account_number := security.generate_masanawa_account_number();
  END IF;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS assign_masanawa_account_number ON security.platform_user_profiles;
CREATE TRIGGER assign_masanawa_account_number
BEFORE INSERT OR UPDATE OF masanawa_account_number ON security.platform_user_profiles
FOR EACH ROW EXECUTE FUNCTION security.assign_masanawa_account_number();

-- The trigger assigns only missing numbers; retries retain all assigned IDs.
UPDATE security.platform_user_profiles
SET masanawa_account_number = NULL
WHERE masanawa_account_number IS NULL;
