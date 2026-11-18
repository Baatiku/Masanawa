-- Additive metadata-history read index; no content or financial mutation.
CREATE INDEX room_shared_media_page ON rooms.media(tenant_id,room_id,created_at DESC,media_id DESC);
