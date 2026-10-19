# Phase 2 — Masana identities, conversations and live voice

**Product baseline:** `docs/PRODUCT-ROADMAP-20261019.md` + `docs/SCREEN-JOURNEYS.md`.
**Starting SHA:** `73016de631289bb9ca1b5042704f05ddb5439f58` (merged Phase 1 PR #222).
**Integration contract:** merge-source evidence is not live Gemini, signed APK or physical-phone acceptance. No paid, external-provider, recording or wallet operations were exercised by this work.

## Audit-first disposition of the 14 Phase 2 requirements

| # | Requirement | Actual source and integration disposition | Qualification still needed |
|---|---|---|---|
| 1 | Masana baseline | Existing 26-character seed/catalog, gateway directory, Chat, calls and profile UI retained, not replaced. | Server production seed/version parity |
| 2 | Portraits | Existing 26 packaged WebP assets and server `portraitKey` mapping retained; **changed** call list, call details, group call and remote inbox to require a matching canonical directory ID, never infer a stranger's image from display name. | Android visual audit of Chats, Calls, Profiles, Status and Rooms |
| 3 | Personas | Existing individual character teaching manners and starters retained; added shared text/Live guidance to respect professional voice/style without pretending real-world licensure. | Real dialogue and clinical/legal safety review per character and language |
| 4 | Voices | Existing 26 distinct approved `MASANA_VOICE_ASSIGNMENTS` remain. Gwani **Bodi**, Gwana **Fola** (per owner-approved 2026-10-17 roster). No silent voice fallback added. | Gemini accepts each exact voice, language, age/gender impression and playback on handset |
| 5 | Conversation memory | Existing owner/relationship-scoped `mobileShell.listHistory` for text/media/Live; **changed** history budget algorithm to skip oversized pairs without discarding shorter older turns; Live and text use same chronological, bounded, paired context. | Real conversation continuity after call, media, process restart, account switch |
| 6 | Replay/receipts | Existing Gateway validated canonical `x-request-id`, PostgreSQL `claimTurn`, status and event receipts retained. **Changed** client Retry: server confirmation before any resend, missing reuses original ID, pending waits, completed reconciles, terminal failed creates a **separately visible, explicitly tapped** new request. | Live lost-response/replay/money-sensitive outcome drills |
| 7 | Chat composer/voice notes | Existing WhatsApp-like single composer, attachments, hold-to-record, cancel/preview, waveform, speeds, account-private retained media reused. No parallel UI created. | Flutter widget suite and real microphone permission/storage on Android |
| 8 | Provider messaging | Existing text/media/audio turn handlers and authorized storage untouched. | Real Gemini text/media/voice-note success and negative acceptance, denied permission, large uploads |
| 9 | Calls | Existing full-screen WebSocket Gemini Live UI, grant renew/resumption, incoming/outgoing history, timeouts and microphone teardown retained. Identity-matched portraits now apply to history/group screens. | Real Android headset/speaker, incoming ring, handoffs, mobile network interruption |
| 10 | Recovery and channels | Existing lease-backed WhatsApp/Telegram delivery outbox and provider backoff reused; **added** Worker recovery of old pending conversation turns after 30 minutes. Reconciliation only changes pending→failed and appends owner-scoped event **atomically**; it cannot re-run model, payment or channel delivery. | Live provider outage, worker restart, channel provider acknowledgment uncertainty |
| 11 | Phone-only signup | Existing forward-only `0106_customer_profile_nullable_identity.sql` preserves uniqueness for non-null email/phone while allowing NULLs; existing dedicated PostgreSQL test kept. | Actual deployed migration and signup admission with separate synthetic phone accounts |
| 12 | Message actions | Existing reply, copy, forward, share, delete, report, reactions, search, encrypted owner-private media and delivery status retained. | Flutter accessibility/large-text and cross-account physical app acceptance |
| 13 | Device QA | Tests and source cannot substitute for a physical device or provider. | APK SHA-specific 320dp / 200% font / RTL / TalkBack / 30+ minute calls / reconnect / background / account-switch / low-memory acceptance |
| 14 | Recording/transcripts | **Deliberately deferred:** no new recording or transcript retention; jurisdiction, consent, deletion and retention policy must precede opt-in. | Product/legal authorization before development |

### Screen, navigation, controls and complete user journeys

No new root tab or UI theme was introduced. Canonical navigation: **Chats · Status · Wallet · Calls · Rooms** with secondary Masana Directory/Profile, Chat, Call Details/Group Call and private message/media views. All existing green/white design tokens remain.

| Route | Layout and actions | Loading / empty / offline / error / permission / account-change behavior |
|---|---|---|
| Chats / Masana directory | Compact header/search, distinct professional portrait/role/availability, one-tap profile and chat, recent/pinned/filtered conversations. | Skeleton while fetching; empty CTA to discover; retained local history and queued turns offline; scoped retry; expired auth returns to sign in; no cross-account image/thread. |
| Masana profile | Server-verified portrait/cover, title, expertise/bio, follow, Status, Room, Chat and Call actions. | Placeholder initials if portrait identity cannot be verified; absent permission/agent gracefully unavailable; never borrow another character's portrait by name. |
| One-to-one chat | Header photo/title, text/message search, scrollable timestamped bubbles/receipts, attachment tray, one composer, press/hold-to-record with preview/cancel/send, long-press reply/copy/forward/share/delete/report. | Draft and private media persisted for same account; queued/offline, uploading/streaming, received/failed receipts, Retry only after server status; vanished session reopens via authorized transport; no silent double send; account change revokes stale callbacks. |
| Outgoing/incoming Live call | One prominent avatar/name, in-call duration, microphone, speaker, end call and status; incoming identity and accept/decline via existing call flow; call history/details and group participants. | Permission denied explains action; connecting/timeout/disconnected/reconnecting/ended states; grant expiration/resumption bounded; always release microphone on teardown; history shows canonical portrait or neutral initials. |
| Call details / recovery | Outcome and dates, duration, participants, profile and Call Again, refresh/retry, copy reference. | Skeleton, missing/deleted record, network retry, group-only partial failure and account-change boundary; no invented connected duration. |
| Media viewer/actions | Authorized private media playback/download, transcripts only if present in a permitted reply, copied or shared text by explicit action. | Invalid/signed-out authorization denies data; expired media URL re-fetch; absent clip retains textual reply; no automatic recording persistence. |

**Golden journeys and boundaries:** new account → directory → professional profile → text → voice note → Live → call details → same-owner chat history; offline send → local queued → canonical status reconciliation → exactly one completed receipt; process death during send → restart → status check before retry; provider error → visible failure → voluntary new attempt; account A → log out → account B → no A-owned draft/audio/history/media or late response; worker crashes after turn claim → 30-minute conservative recovery → failed receipt + event → manual Retry without re-executing the original operation. Existing permanent channel outbox is distinct from conversation claims, and provider-side exactly-once acknowledgments cannot be guaranteed.

### Exact source change ownership

- Flutter: `apps/mobile/lib/src/agents/masana_portrait_avatar.dart`, `apps/mobile/lib/src/calls/{call_details_screen,group_call_screen}.dart`, `apps/mobile/lib/src/screens/{calls/calls_screen,chat/chat_list_screen}.dart`, `apps/mobile/lib/src/state/ai_chat_state.dart`; `apps/mobile/test/masana_professional_portraits_test.dart`.
- Gateway: `services/gateway/src/{conversation_history,persona_continuity}.ts` plus their focused tests.
- Worker: `services/worker/src/jobs/conversations/stale_turns.ts` and two tests, composed once in `services/worker/src/main.ts`.
- Persistence: existing `agents.mobile_turn_commands` / `agents.mobile_shell_events`; additive operational job uses current schema, **no migration or data deletion**. Existing owner boundaries and delivery outbox remain authoritative.
- No wallet/credits/escrow logic, provider key, identity master, deployment configuration, or contracts changed.

### Verification / reproducible acceptance

Toolchain: isolated public GitHub checkout with fresh Phase 1 starting SHA; Node 24 + pnpm 12.8.2. Execute:

```sh
pnpm install --frozen-lockfile
pnpm typecheck
pnpm exec vitest run services/gateway/src/conversation_history.test.ts services/gateway/src/persona_continuity.test.ts services/gateway/src/agent_conversation.test.ts services/worker/src/jobs/conversations/
pnpm exec vitest run services/gateway/src/request_correlation.test.ts adapters/storage/postgres/src/security/platform-session-nullable-identity.test.ts
pnpm build
cd apps/mobile
flutter pub get
flutter analyze
flutter test test/masana_professional_portraits_test.dart test/chat_turn_recovery_test.dart test/ai_chat_voice_actions_test.dart
flutter build apk --debug
```

**Executed evidence on isolated Phase 1 checkout (Node 24 / pnpm 12.8.2):**
- `pnpm install --frozen-lockfile`: PASS.
- `pnpm typecheck`: PASS, including Gateway, Worker, PostgreSQL adapters, contracts and web workspaces.
- `pnpm build`: PASS, all workspace builds including production Gateway and Worker output.
- Focused tests: 12 / 12 PASSED in the first pass; follow-up new-code suite 11 / 11 PASSED across four test files, including a PGlite test executing the actual PostgreSQL update-plus-event SQL, scoped tenants, old versus recent claims and idempotent second poll.
- Wider Masana integration tests: 39 PASSED, 1 SKIPPED (existing phone-only signup database test requires its external test database), 12 test files passed. Included authorization, request correlation, chat ingress, long-press message actions, Live token, source memory and crash recovery.
- `git diff --cached --check`: PASS, no whitespace errors.
- Full backend suite may be run separately; record its actual result rather than infer success from the smaller regression suite.

**Source merge evidence:** [Phase 2 PR #223](https://github.com/Baatiku/Masanawa/pull/223) merged as `357cf59f6471878bb25178557d8732b755d97694`, an exact full-tree match with the tested 17-file implementation. A subsequent regression follow-up addresses discovered CI tests and mobile analyzer failures; use the current `main` SHA as the release source of truth.

**Full-run regression discovery:** A wider local Vitest run on the Phase 2 checkout executed 2,332 tests: **2,107 passed / 222 skipped / 3 failed**. The three failure causes were a generated `.next` directory incorrectly being scanned as maintained source (env-contract test), the analogous generated build directory causing a 5-second timeout in reference-import policy scanning, and a stale topology expectation assuming the old CI test command instead of `--no-file-parallelism`. Added source-boundary checks, true regression fixtures and updated CI-test assertion. All 12 tests across the affected architecture files passed in the focused rerun. The **complete suite rerun then passed**: **2,112 passed, 222 skipped, 0 failed** (422 test files passed, 39 skipped; 2,334 total tests). The skipped tests are environment-gated and do not constitute successful PostgreSQL/provider qualification.

**Flutter CI discovery:** GitHub Actions on PR #223 merge ran the real Flutter toolchain. Gateway call and authentication contracts passed, but initial Mobile Build/Startup stopped at an undefined `directory` symbol in remote Chats search; a call/voice regression assertion still expected one instead of two safe canonical status lookups. Both are corrected in follow-up, with new pending/failure/retry differentiation tests. Treat Flutter, APK, and live-provider qualification as **not accepted** until the follow-up CI jobs confirm success. No handset/provider acceptance is claimed.

**Acceptance constraint:** The PGlite integration test exercises real PostgreSQL SQL for distinct tenant IDs, old vs fresh claims, one event per recovered turn and second-poll no-op, without using production data. TypeScript suite can run here; this runner has **no Flutter SDK, Android SDK, physical device or provider credentials**, so Flutter/Android/Gemini and live deployment checks remain **NOT_RUN/BLOCKED**, not marked passed. A successfully merged source commit is not production qualification.

**Manual acceptance owner/runner:** install APK actually built from final merge SHA; confirm server deployment commit SHA; register two independent test customers; test 26 approved portraits, characters and voices; send follow-up text/media/recorded message and cross-mode call continuity; deny/regrant microphone; call 30+ minutes with background/headset/reconnect; interrupt Gateway/Worker and confirm no duplicate spent transaction; verify signout isolation; exercise actual authorized WhatsApp/Telegram retry delivery and signup nullable-identity migration; record redacted per-provider logs, device/OS/build, rollback and outcome. Leave optional recording disabled.
