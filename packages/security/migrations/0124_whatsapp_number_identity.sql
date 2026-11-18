-- Distinguish an owner's personal number from a dedicated Masanawa service line.
-- Additive migration: existing linked-device credentials, conversations and reply
-- permissions are deliberately untouched.
ALTER TABLE security.whatsapp_assistants
  ADD COLUMN number_purpose text NOT NULL DEFAULT 'service'
    CHECK (number_purpose IN ('service','personal')),
  ADD COLUMN owner_name text NOT NULL DEFAULT ''
    CHECK (length(owner_name) <= 100),
  ADD COLUMN owner_title text NOT NULL DEFAULT ''
    CHECK (length(owner_title) <= 120);

-- WhatsApp pushName is self-asserted and often a nickname or business name.
-- Only an administrator-confirmed preferred name is eligible for AI addressing.
ALTER TABLE security.whatsapp_threads
  ADD COLUMN verified_contact_name text NOT NULL DEFAULT ''
    CHECK (length(verified_contact_name) <= 80);
