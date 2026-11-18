-- Legacy Nigerian national contact numbers must stay readable without a
-- carrier-prefix allowlist. The Gateway's maintained phone metadata owns
-- number validity; the DB enforces only storage shape and retains legacy hints.
ALTER TABLE security.platform_user_profiles
 DROP CONSTRAINT IF EXISTS platform_user_profiles_contact_phone_format;
ALTER TABLE security.platform_user_profiles
 ADD CONSTRAINT platform_user_profiles_contact_phone_format
 CHECK(contact_phone IS NULL OR
   contact_phone ~ '^0[0-9]{10}$' OR
   contact_phone ~ '^\+[1-9][0-9]{6,14}$');
