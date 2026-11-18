-- Current-authority Room list paging. No data reset or new product/ledger.
CREATE INDEX rooms_public_page ON rooms.rooms(tenant_id,updated_at DESC,room_id DESC)
 WHERE state='published' AND visibility='public';
CREATE INDEX rooms_joined_page ON rooms.memberships(tenant_id,user_id,pinned DESC,room_id)
 WHERE state='active';
