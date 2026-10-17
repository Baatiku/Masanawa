# Owner feedback implementation and handset acceptance

## Latest changes

| Request | Implementation / acceptance |
|---|---|
| Preserve supplied voice roster | `docs/voices/APPROVED-MASANA-VOICES-20261017.md`; exact owner spellings and profiles |
| Different voice for every Masana | 26 distinct approved assignments; bootstrap updates Gemini profile revisions; no unapproved fallback |
| Persistent bottom tab highlight | Translucent green Material navigation indicator; selected dark icons and labels |
| Dark Wallet and Masana header icons | Shared header action icon theme uses textPrimary |
| Header name | Masanawa, without Agents subtitle |
| Wallet shortcut | WalletScreen rather than CryptoWalletScreen |
| Full chat search | Header-wide field, back arrow, result controls below; other header actions hidden during search |
| OTP paste and sizing | Compact 28–42 by 50 fields, normalized international digits, explicit Paste code action |
| Branded OTP email and copying | Branded HTML + plain text; secure browser copy helper; no unsupported JavaScript in inbox HTML |
| Welcome email | Verified email signup triggers welcome once, not returning logins; idempotent provider key; failure does not invalidate signup |
| Automatic usernames | Unique canonical public profile handle created in the signup transaction and returned in auth profile; existing handles preserved |

## Verification

- 28 gateway tests: catalog/bootstrap, authentication, welcome behavior, branded email and helper routes.
- One additional embedded PostgreSQL check against the canonical public-profile schema: same-name uniqueness, existing-handle preservation and non-Latin name fallback.
- Scoped TypeScript check passes for changed backend modules with their source dependencies.
- 11 mobile widget tests: dark header icons, persistent selection indicator, OTP rendering/paste, full-width search/back navigation, voice-note controls, profile navigation and emoji sending.
- Mobile analysis: no compilation errors; pre-existing chat-list unused declarations and a chat recorder style lint remain. No claim of a clean repository-wide typecheck.
- PostgreSQL integration fixture now includes Talks migrations and checks username consistency across duplicate signup and uniqueness for another same-name user. A standalone PostgreSQL server was not available in this session; that fixture was not executed here.

## Previous handset fixes included in base PR 106

1. Green splash symbol on white, without the green square background.
2. Chat avatar opens that Masana's detail profile.
3. Voice recorder releases microphone before calls.
4. Recorder closes once the outgoing voice note is accepted.
5. Voice-note progress uses recording feedback instead of generic attachment processing.
6. Typing/recording indicators replace the cycling message spinner.
7. Stream completion/recovery preserves the final transcription.
8. Centered offline/error feedback.
9. Completed playback stops rather than looping.
10. Voice-note turns produce one reply rather than duplicate text and audio responses.
11. Incoming audio is buffered until complete and then plays once.
12. Per-Masana voice assignments are now replaced by the latest owner roster above.
13. Search surfaces use a subtle background tint.

## Handset follow-up after installation

Check microphone handoff (record/send/call), playback completion and next-note behavior, offline placement, streaming under a network interruption, full response before autoplay, and absence of duplicate replies. Check header shortcuts, tab persistence, search width, OTP paste and email copy flow. Complete two new signups with the same display name and confirm different usernames.

Provider acceptance and the actual sound of the requested new voice names require live qualification with the configured Google model. Unit tests verify exact configuration and uniqueness, not provider availability. Email templates and delivery behavior were checked with test transports; actual inbox delivery and rendering require the deployed service. Phone signup does not send a welcome email to an unverified address.

Wait for the owner's handset feedback before a further round of product changes.
