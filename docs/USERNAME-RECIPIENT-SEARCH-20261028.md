# Readable usernames and recipient discovery — 28 October 2026

The previous signup allocator issued `name_<16 hexadecimal characters>` handles.
Send/Request offered only exact-handle previews, and Profile treated usernames as
immutable. This explains why typing a name, email or phone did not find users.

The owner-approved replacement tries a transliterated lowercase first name,
`first.last`, then that full name plus the final two, three and four contact-phone
digits. No arbitrary suffix or complete phone number is published. If those
candidates are exhausted, email-OTP signup keeps the verified challenge available
for a deliberate username choice. Users may also choose a username during signup.
Names use 2–40 characters, an initial Latin letter and simple letters/digits with
single dots/underscores between groups. Platform identities are reserved.

Migration `talks/0018_username_claims.sql` reserves current and retired handles.
Startup repairs all eligible existing accounts in small pages and individual
transactions. Old hash-shaped names are replaced only when their suffix matches
the original deterministic allocator; deliberately selected names remain intact.
Exhausted accounts can choose a name in Settings. Backfill is restart-safe and
logs counts only. Previous public profile links resolve to the current owner;
canonical IDs, financial records and blocks remain unchanged. Moderation follows
renames, including delayed actions against an old handle. Historical names stay
reserved against reassignment even after deletion.

Authenticated Send/Request discovery returns at most eight eligible public
identities after debounced name/username prefix typing. Email and phone matching
requires a complete identifier; no partial private-contact directory is exposed.
Search uses POST `/v1/gb/wallet/recipients/search` so private identifiers do not
enter URL logs, returns no contacts, and respects tenant, active account,
bilateral blocks, moderation and account restrictions. Selection fills the
canonical username. The existing signed quote/review/explicit confirmation and
original-operation receipt recovery remain authoritative; search moves no funds.

Settings → Username and Edit Profile → Username share a fresh-read editor with
format guidance, debounced availability and explicit expected-version Save.
Database claims settle races; stale edits fail. Unknown save outcomes require
readback before another write. Requests/results are cancelled/fenced on account
or authorization-epoch changes, edits and disposal. Username availability and
recipient search have bounded per-process actor rate limits; these do not claim
to replace distributed abuse detection.

Source verification: shared policy, PGlite SQL migration/trigger/backfill/directory
acceptance, authenticated routes, signup OTP collision recovery, 95 combined
Flutter checks (including private-contact selection through signed Send recovery,
Settings availability/conflicts/uncertain readback, account changes, 320dp/200%
RTL) and Flutter analysis without errors/warnings. A PostgreSQL acceptance case
also covers concurrent signup claims and expected-version rename contention in
Foundation CI. Local full-suite and exact-head hosted results belong in the PR.
No live financial transaction or new APK is claimed by these automated checks.
