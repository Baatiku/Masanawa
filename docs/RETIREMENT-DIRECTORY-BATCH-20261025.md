# Masana directory runtime retirement — 25 October 2026

The reduced five-tab product must not query published Rooms or public creator directories during a Masana roster read. This change removes the Room directory SQL service and creator enrichment inputs from `createAgentDirectoryService`, stops composing those readers in Gateway startup, and deletes the never-registered Room Community service initialization. The approved Masana identity/portrait/follow reader, authorized platform presentation, activity and user preferences remain.

Tests prove no Room/creator metadata projection and retain tenant/user-fenced approved-Masana identity checks. This is **not** deletion of historic Rooms/money tables, migrations, P2P escrow reconciliations or signed provider callbacks. Flutter still tolerates previously cached Room/creator wire keys until its own scope-qualified cleanup. No provider staging, data mutation, APK or fixed-IP relay changes.

Source and exact-head CI determine PASS_REAL, not this note.
