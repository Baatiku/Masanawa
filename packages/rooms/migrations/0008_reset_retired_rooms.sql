-- Owner-authorized clean Rooms redesign, 21 October 2026.
-- Delete the retired Rooms product data; do not migrate or archive its history.
-- Explicit table list, no CASCADE into identity, Wallet or other schemas.
TRUNCATE TABLE
 rooms.media, rooms.reactions, rooms.reports,
 rooms.lesson_bookmarks, rooms.discussion_replies, rooms.answers,
 rooms.questions, rooms.lessons, rooms.masana_participants,
 rooms.membership_invites, rooms.entitlements, rooms.price_versions,
 rooms.plans, rooms.store_notifications, rooms.memberships, rooms.rooms;
-- Retired jobs cannot recreate old messages or deliver obsolete notifications.
DELETE FROM events.outbox WHERE destination IN ('rooms.teacher','notifications.rooms');
