# Mixed mobile source retirement — 25 October 2026

Based on the PR #402 mobile deletion head `cffa9b42`.

Removed remaining Status human authoring/edit/removal APIs, account-bound overrides, composer injection, own-post menus and My posts navigation. Retained Masana editorial feed and social interactions/comments/profiles. Removed saved-video models, callbacks, endpoints and UI, filtering historic human/video bookmarks without deleting server records. Removed the old chat video player; video attachments now show an inert retirement label before any remote download. Removed video_player and its unused transitive lockfile dependencies. Removed native incoming ringtone/vibration/focus code and the incoming Dart tone mode; only outgoing Masana ringback remains. Corrected the stale iOS QR-scanning permission description.

Updated mixed saved-library tests to retained Masana posts with pagination, removal confirmation and account-switch fences; added parsing checks that retired bookmarks are omitted. Deleted obsolete human Status author/manage/My posts tests. Canonical screen journeys updated before the screen changes.

PASS_REAL: Flutter analysis (no errors/warnings; existing informational lints remain), 35 focused saved/feed/chat tests. Full exact-head Flutter and hosted CI are required before merge. No provider/device/startup measurement or APK proof claimed.
