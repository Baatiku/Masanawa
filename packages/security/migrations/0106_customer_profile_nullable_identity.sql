-- An absent optional identifier is not an identity shared by all customers.
-- Preserve uniqueness for supplied identifiers without rewriting profiles.
ALTER TABLE security.platform_user_profiles
  DROP CONSTRAINT platform_user_profiles_tenant_id_email_key,
  DROP CONSTRAINT platform_user_profiles_tenant_id_phone_key,
  ADD CONSTRAINT platform_user_profiles_tenant_id_email_key UNIQUE (tenant_id,email),
  ADD CONSTRAINT platform_user_profiles_tenant_id_phone_key UNIQUE (tenant_id,phone);
