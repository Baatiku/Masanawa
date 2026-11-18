-- Contact phone is for provider application and Data recipient defaults.
-- It is never a phone authentication identity or a verified phone claim.
ALTER TABLE security.platform_user_profiles
  ADD COLUMN first_name text,
  ADD COLUMN last_name text,
  ADD COLUMN contact_phone text;

ALTER TABLE security.platform_user_profiles
  ADD CONSTRAINT platform_user_profiles_contact_phone_format
  CHECK (contact_phone IS NULL OR contact_phone ~ '^0(70|80|81|90|91)[0-9]{8}$');
