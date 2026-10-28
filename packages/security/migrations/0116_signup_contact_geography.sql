-- Private country/state selections are self-reported; not authentication or
-- provider service-area proof. Legacy Nigerian local phones remain readable.
ALTER TABLE security.platform_user_profiles
 DROP CONSTRAINT IF EXISTS platform_user_profiles_contact_phone_format;
ALTER TABLE security.platform_user_profiles
 ADD CONSTRAINT platform_user_profiles_contact_phone_format
 CHECK(contact_phone IS NULL OR
   contact_phone ~ '^0(70|80|81|90|91)[0-9]{8}$' OR
   contact_phone ~ '^\+[1-9][0-9]{6,14}$');
ALTER TABLE security.platform_user_profiles
 ADD COLUMN country_iso text,
 ADD COLUMN subdivision_iso text,
 ADD COLUMN country_source text CHECK(country_source IN ('user_selected','legacy_phone_hint'));
ALTER TABLE security.platform_user_profiles
 ADD CONSTRAINT platform_user_profiles_country_iso_format
 CHECK(country_iso IS NULL OR country_iso ~ '^[A-Z]{2}$');
ALTER TABLE security.platform_user_profiles
 ADD CONSTRAINT platform_user_profiles_subdivision_iso_format
 CHECK(subdivision_iso IS NULL OR
   (country_iso IS NOT NULL AND left(subdivision_iso,2)=country_iso
    AND subdivision_iso ~ '^[A-Z]{2}-[A-Z0-9]{1,3}$'));
UPDATE security.platform_user_profiles SET country_iso='NG',country_source='legacy_phone_hint'
 WHERE country_iso IS NULL AND contact_phone ~ '^0(70|80|81|90|91)[0-9]{8}$';
