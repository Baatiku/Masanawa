-- Forward-only indexes for authorized keyset pages. No grants/expiry change.
CREATE INDEX membership_invites_manager_page ON rooms.membership_invites
 (tenant_id,room_id,created_at DESC,invite_id DESC);
CREATE INDEX membership_invites_recipient_page ON rooms.membership_invites
 (tenant_id,recipient_user_id,created_at DESC,invite_id DESC)
 WHERE recipient_user_id IS NOT NULL AND revoked_at IS NULL AND accepted_by IS NULL;
