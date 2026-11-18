-- Slot 8 is reserved for the Masana's synthesized audio reply to one
-- original customer turn; customer-uploaded inputs keep slots 0–7.
-- No existing media, historical ledger or request IDs are rewritten.
ALTER TABLE agents.private_chat_media
  DROP CONSTRAINT IF EXISTS private_chat_media_slot_check;
ALTER TABLE agents.private_chat_media
  ADD CONSTRAINT private_chat_media_slot_check
  CHECK (slot BETWEEN 0 AND 8);
