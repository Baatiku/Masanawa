-- Read indexes only. Existing decisions, authors and access rules are retained.
CREATE INDEX room_reviews_kind_page ON rooms.report_reviews
 (tenant_id,room_id,target_kind,reviewed_at DESC,review_id DESC);
CREATE INDEX room_reviews_author_page ON rooms.report_reviews
 (tenant_id,room_id,target_author_user_id,reviewed_at DESC,review_id DESC)
 WHERE decision='removed';
CREATE INDEX room_appeal_priority_page ON rooms.moderation_appeals
 (tenant_id,room_id,(state='pending') DESC,created_at DESC,appeal_id DESC);
