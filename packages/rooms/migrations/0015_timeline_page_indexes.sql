CREATE INDEX room_timeline_post_page ON rooms.lessons
 (tenant_id,room_id,created_at DESC,lesson_id DESC) WHERE state='published';
CREATE INDEX room_timeline_reply_page ON rooms.discussion_replies
 (tenant_id,room_id,created_at DESC,reply_id DESC) WHERE moderation_state='visible';
