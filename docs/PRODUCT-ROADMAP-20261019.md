# Masanawa — canonical global product roadmap
**Approved planning baseline:** 2026-10-19 · **Repository:** `Baatiku/Masanawa` · **Source inspected:** `40071bc8e88d80d2ce7affb25dfefe6cd37a0989`
**Authority:** This document plus `AGENTS.md` governs consumer product scope and sequencing. Operational/security/API and token runbooks remain authoritative within their specific technical domains. No dated product plan or retired workstream supersedes this roadmap.

## 1. Product and design rules
**Mission:** Masanawa is a global human and Masana communication and creator platform with integrated communities, useful digital services and a unified MSNW Wallet. Characters are **Masana**. Users discover, chat with, call and follow them; creators build and operate their own characters. Gwani is a prominent Masana/service assistant, not a duplicate root product.
**Canonical navigation:** **Chats · Status · Wallet · Calls · Rooms**, Chats default. Profiles, My Masana, creator earnings, search, transaction history, billing and P2P use secondary routes, **not extra tabs**. Adopt a consistent white/green, compact, approachable WhatsApp-like visual rhythm; do not copy protected assets.
**Currency:** **MSNW** is the only customer-facing platform credit and designated official token. Never expose a second MSN/Cr/Credits wallet or silently equate historical liabilities with MSNW. Keep single-chain Base first; the token is **not claimed deployed**, pegged to a fiat currency, liquid, exchange-listed or globally redeemable. No direct platform fiat withdrawals.
**Trust:** Platform-owned Masana and creator-owned Masana share discoverable character behavior but have distinct ownership/permission rules. Clearly disclose generated identity, distinguish actual professional credentials from fictional personas, and require explicit authorization for money movement. AI must never autonomously release escrow or spend user funds.
**Geography:** International by design, not tied to any country, currency or provider. Fund/bill/crypto/P2P rails are enabled only where merchant terms, operating licenses and provider capability allow.
**Excluded:** Retired Twins/personal-clone consumer product, arbitrary third-party WhatsApp personal-account automation, additional root tabs, second wallets, financial speculation/leverage/staking, raw-like/view rewards, sophisticated exchange-terminal charts, unlimited auto-published video and forced voice cloning.

## 2. Evidence and checklist semantics
- `[x] SOURCE PRESENT`: merged implementation or direct repository inspection shows the feature exists. **Not** an assertion of live product readiness.
- `[ ] IMPROVE`: a real implementation already exists; do **not rebuild**; improve its specified defect or finish the connection.
- `[ ] COMPLETE`: missing or only partially connected functionality needs implementation end-to-end.
- `[ ] VERIFY`: source/test evidence exists but the named device/provider/production behavior remains unproven.
- `[ ] DECIDE`: economic/regulatory product decision, not a coding task; record before its financial activation.
- `[ ] LATER`: intentionally not required for initial global launch.
For each completed checkbox: attach **exact source SHA, paths, tests executed, screenshots/device/provider evidence where relevant and end-to-end customer journey**. Only a real, qualified run earns VERIFIED_E2E or DEPLOYED_VERIFIED. Merges and generated examples alone do not.

**Verified source snapshot:** Flutter 5-tab root is in `apps/mobile/lib/src/shell/five_tab_shell.dart`; Wallet custody card and MSNW P2P screens exist. PR #207 merged notification/search/deep-link source; #212 creator creation/publication/fees; #214 creator voice use; #218 fixed P2P large-text overflow and ran 2,075 backend tests (222 skipped), 16 P2P Flutter tests. Railway Gateway, Worker and Postgres were all online at the 2026-10-19 audit, but previous deployment attempts failed and on-device/payment/chain workflows were not comprehensively accepted. **Issue #220 describes an unmerged checklist checkpoint; do not attribute it to main.** Evidence: [PRs](https://github.com/Baatiku/Masanawa/pulls?q=is%3Apr+is%3Amerged), [open issue #220](https://github.com/Baatiku/Masanawa/issues/220). `main` evolves: re-check fresh SHA before touching each item.

## Phase 0 — Canonical product authority and repository cleanup
**Outcome:** Only current product guidance remains in the working tree; operational programs and financial history remain intact.
- [x] SOURCE PRESENT — Inspect current root navigation, finance, agent, creator and notification source on `40071bc8e88d`.
- [x] SOURCE PRESENT — Retire dated workstream handoff documents and conflicting product descriptions from current Git tree; no history-preserving archive directory.
- [x] SOURCE PRESENT — Remove old donor coverage narratives, retired Alpha/Twin CLI tooling and redundant era-specific workflows; retain runtime, SQL migrations, legal notices and provider qualification scripts.
- [x] SOURCE PRESENT — Replace README, CONTINUE-HERE, contributor rules and documentation index to point to this single roadmap.
- [ ] VERIFY — Scan all surviving source/tests/workflows for references to deleted paths or user-facing outdated terms; repair **actual** broken import, CI and link consumers.
- [ ] VERIFY — Re-run exact-commit TypeScript/Flutter/build/architecture checks in a reachable runner; do not present structural Git inspection as executed suite.
- [ ] COMPLETE — Maintain a single milestone status ledger inside this roadmap, not a fresh parallel dated checklist per window.

## Phase 1 — Stable app shell, identity and global UI (P0)
**Source integration and per-item evidence:** [Phase 1 implementation/acceptance ledger](PHASE1-IMPLEMENTATION-20261019.md). A passed widget test or PR merge is not physical-device/FCM qualification.
**Outcome:** A new customer launches, signs in, navigates, searches and manages their account reliably.
- [x] SOURCE PRESENT — Five-tab Flutter shell (Chats / Status / Wallet / Calls / Rooms) with persisted visited tab state.
- [ ] IMPROVE — Audit **every detail screen** against green/white tokens, compact headers, 48dp controls, contrast, typography, cards and native back/gesture behavior.
- [ ] IMPROVE — Profile/Wallet/P2P large text (320px width, 200% font), right-to-left text and keyboard avoidance. P2P header overflow addressed in #218; qualify other routes.
- [ ] VERIFY — Cold/warm startup on low-memory Android, first useful paint, session restoration and offline return; eliminate measured blocking work rather than cosmetic loading.
- [ ] IMPROVE — Preserve Status/Rooms filters, Wallet scroll, chats drafts, search, deep-link return position and authenticated process-restoration state.
- [ ] IMPROVE — Every page must distinguish zero data from unavailable: content-shaped skeleton, empty action, partial data, typed failure, retry, offline, permission denied and account switched.
- [ ] IMPROVE — Email/phone sign-in with chosen numeric password; phone ownership not inferred from digits; complete account recovery, account-switch revocation and secure session actions.
- [ ] IMPROVE — Own/public creator profiles: compact cover/avatar/bio/follow/agent cards, accurate canonical media, private fields protected; issue #220 is not accepted source.
- [ ] IMPROVE — Settings: profile, preferences, privacy, alerts, export, security and deletion; consolidate dialogs into dedicated forms where substantive.
- [ ] VERIFY — Android adaptive/round/notification icons, Android 12 splash, light/large-font/TalkBack/reduced-motion, 320px devices, back stacks and deep-link authentication.
- [ ] IMPROVE — Unified search across authorized contacts/characters/chats/Rooms/Status plus account-fenced search history and empty/offline states (#207 exists).
- [ ] VERIFY — FCM registration, privacy-safe previews, background/terminated app navigation, quiet hours, account isolation and missed-call/financial alerts (#207 source exists).
**Screen/journey contract:** splash/auth/language → Chats; Settings → edit profile → save/retry; search → authorized target; deep link → login → correct resource; sign out → no prior-user cache. Each route needs loading/error/offline/permission/empty/readability cases.

## Phase 2 — Masana identities, conversation and live voice (P0)
**Phase 2 source audit and acceptance ledger:** [Phase 2 implementation/acceptance](PHASE2-IMPLEMENTATION-20261019.md). The roster, core chat/call flows, channel delivery outbox, signup NULL fix and canonical retry IDs already exist on Phase 1 main; follow the linked per-item evidence rather than rebuilding them. This phase adds canonical portrait guards across call history, safer Retry, bounded context preservation and bounded Worker crash reconciliation. **No on-device or actual Gemini acceptance is claimed**; corresponding VERIFY boxes remain open.
**Outcome:** Users repeatedly converse naturally with distinct Masana across text, voice notes and calls.
- [x] SOURCE PRESENT — Masana directory, profile models, text chat, voice/call client source, agent identity and platform roster.
- [x] SOURCE IMPROVED, DEVICE VERIFY OPEN — Bind **every approved portrait** to canonical character ID; verify server list, detailed profiles, chat lists, call histories and Status use same image.
- [x] SOURCE IMPROVED, DIALOGUE VERIFY OPEN — Distinct professional persona expertise/teaching method/entertainment style/safety boundaries; no identical generic personas or fake professional certification.
- [x] SOURCE PRESENT, PROVIDER VERIFY OPEN — Use approved Bodi male/Fola female voices where configured; map distinct supported voices to individual characters, test accent/language and fallback honestly.
- [x] SOURCE IMPROVED, LIVE VERIFY OPEN — Bounded authenticated user–Masana conversation memory across messages, media replies and call handoff. Open issue #98 signals missing context recovery.
- [x] SOURCE IMPROVED, LIVE VERIFY OPEN — Persist conversation identity and replay-safe client request IDs across HTTP retries (#96); message/media response continuity and exact receipts.
- [x] SOURCE PRESENT, FLUTTER/DEVICE VERIFY OPEN — Chat composer: WhatsApp-like text/attachment/hold-to-record behavior, send/cancel, waveform, playback speed and safe recordings after interruption.
- [ ] VERIFY — Actual Gemini text, audio and media completion for real accounts, native recording permission, voice playback, large messages, uploads and account isolation.
- [x] SOURCE IMPROVED, DEVICE VERIFY OPEN — Full screen call UI, incoming ringing, missed identity, reconnect/timeout and microphone teardown. Call source exists but actual handset/LiveKit proof is pending.
- [x] SOURCE IMPROVED, PROVIDER VERIFY OPEN — Recover live channel replies from provider failure, retry and worker restart; inspect open issues #88/#90.
- [x] SOURCE PRESENT, DEPLOYED MIGRATION VERIFY OPEN — Correct customer signup null-identity constraints affecting chat/call admission (#94).
- [x] SOURCE PRESENT, FLUTTER VERIFY OPEN — Message long-press copy/reply/share/delete/report, media secure retrieval, private in-chat search and accessible delivery statuses.
- [ ] VERIFY — Long call, call interruption, headset/speaker, background, multiple networks and low-memory Android on exact APK SHA.
- [ ] LATER — Optional recording/transcripts only with jurisdictional consent, deletion and storage controls.
**Screen/journey contract:** directory → profile → text/voice chat → outgoing/incoming call → history → resume chat; failure must not bill twice or lose messages. Account switches must revoke private media and stale replies.

## Phase 3 — Creators, Status, discovery and Rooms (P0/P1)
**Outcome:** Creators publish real Masana, build an audience and participate in valuable content/communities.
- [x] SOURCE PRESENT — Creator-owned type, basic wizard, server publication, one-free-lifetime rule, quoted additional MSNW charge and mobile/admin entry (#212).
- [x] SOURCE PRESENT — Suggested voice binding to recorded audio and Gemini Live (#214); optional custom voice remains unqualified.
- [ ] IMPROVE — Creation: name, profession, languages, gender expression, age range, optional media → generated bio/skills → live preview → free/paid publish review. Never expose prompt tooling to normal users.
- [ ] COMPLETE — Upload or generate rights-cleared portrait and optional cover; persist, preview and replace on public list/profile/Status.
- [ ] COMPLETE — Published-agent substantive revision rules and admin-configurable free-edit allowance/fee, with exact quote, rollback, concurrency and once-only settlement.
- [ ] IMPROVE — Manage Masana: drafts, published/paused/restricted/retired state, avatar, public share link, engagement, error recovery, creator identity.
- [ ] COMPLETE — Optional voice-reference path only when actual provider supports it and adult same-speaker permission, explicit consent, safe storage/deletion and non-clone fallback are verified.
- [ ] COMPLETE — Earnings: eligible actually **settled net contribution**, anti-self-spend, adjustments/reversals, creator statement and real MSNW transfer/withdrawal path; no phantom earnings.
- [ ] IMPROVE — Status feed: distinct Following/Discover, timely text/image/audio playback, attributable character and creator, comment/reaction/report, low-data caching.
- [ ] COMPLETE — Creator-controlled Status generation cadence, pause, content quality review, rights/license and anti-spam; avoid compulsive engagement ranking.
- [ ] IMPROVE — Rooms discovery, Masana association, membership, replies, lessons, moderation, authorized history and paid/unpaid access. Existing mobile/backend source should be reused.
- [ ] VERIFY — Two-accounts creator lifecycle: free creation → additional paid creation → publish → discovery/chat/call/Status → pause/restrict → refund/earnings where authorized.
- [ ] VERIFY — Join/leave/rejoin Room, paid Room purchase and membership resumption; protect access after account switch and on expiration.
- [ ] LATER — Scheduled live Room audio only after basic Room reliability and moderation qualification.
- [ ] LATER — External video discovery via source-compliant embeds; no native user-uploaded long-form video hosting at launch.
**Screen/journey contract:** Own profile → My Masana → create → generated preview → publication review → creator manager → public profile → follow/chat/Status. Rooms directory → Room details → join → discussion/lesson → leave. Every user-action result has a back route, empty/retry state and server authorization.

### Phase 3 source integration checkpoint — 19 October 2026

This audit starts from main commit 8f360ce9f1e6ce2951688f568855fefd243e7796, containing Phase 2 PRs #223 and #224. The original Phase 3 unchecked checklist above remains open until full vertical journeys and device/provider acceptance succeed; this checkpoint is **not full Phase 3 completion**.

| Requirement | Existing, improved or still missing | Required source / external acceptance |
| --- | --- | --- |
| Creator identity and one-free/paid publication | Existing server and client source preserved | Two distinct real accounts, Wallet exact-debit and replay acceptance still open |
| Creator voices | Existing suggested approved TTS voices preserved | Live provider and optional voice-reference qualification still open |
| Creation wizard and preview | Existing form, AI-generated biography and publication review reused | Photo admission, on-device audio preview and polished permission/offline states incomplete |
| Portrait and cover | Partial improvement: publication preserves owner-approved portrait Media ID after rights check; signed media read accepts only active published creators | File upload/processing, cover upload, replacement and client end-to-end display still missing |
| Published revision allowance/fees | DB policy and operation tables exist but editing journeys remain unimplemented | Editor, free-edit allowance, canonical quote, authorization, once-only charge/rollback and client must be added |
| Manage Masana | Existing drafts, published/paused, current manager; new earnings route | Share, engagement, restriction and retirement actions remain incomplete |
| Optional custom voice | Unqualified; keep approved voice fallback; no claim of cloning | Actual provider capability, consent, adult same-speaker attestations, delete/retention controls required |
| Earnings | Read-only owner/tenant scoped allocation statement and exact six-decimal Flutter presentation implemented; no second Wallet or phantom credit | Source allocation producer, net eligibility/self-spend review, reversal handling and receipt/Wallet transfer verification missing |
| Status feed | Existing client/feed/source reused | Creator cadence, editorial rights, anti-spam and full media/offline acceptance incomplete |
| Rooms | Existing directory, membership/discussion/lessons reused | Paid/unpaid multi-account join, leave, expiry, replay and provider verification incomplete |
| Creator two-account lifecycle | NOT VERIFIED | Free, paid, follow, chat, call, Status, pause, Wallet settlement and account switch in actual environment |
| Rooms lifecycle | NOT VERIFIED | Join, leave, paid expiry, recovery, access revocation and account switch |
| Scheduled Room audio | LATER | Explicitly deferred |
| External video discovery | LATER | Explicitly deferred |

**Source paths touched this checkpoint:** services/gateway/src/creator_agents/{store,routes,earnings.test,routes.test}.ts; services/gateway/src/modules/masana/profile_media{,.test}.ts; apps/mobile/lib/src/screens/profile/{my_masana_screen,creator_earnings_screen}.dart; apps/mobile/test/creator_earnings_format_test.dart. Risk: new earnings endpoint is read-only; no migrations, custody writes or payment/provider calls were added.

**Reproducibility:** Node v24.21.0, pnpm 12.8.2, dependency installation, full TypeScript typecheck and pnpm build completed; targeted 17 Vitest tests passed across six files including gateway owner auth, statement projections and signed-media authorizations. Runtime PostgreSQL wallet settlement, Flutter/Android compilation and physical device, provider credentials/voice, market availability, privacy/rights uploads, backup/rollback remain open. Not an issuance, settlement, promotion or E2E acceptance. Preserve the original incomplete checkboxes.

## Owner-approved revision — human communication and user-created Rooms (19 October 2026)

**Approval:** Owner approved the design in chat and explicitly authorized detailed planning and immediate Phase 4 implementation. Keep **Rooms**, never rename the product tab to Channels. Contacts has exactly **Masana / Humans** tabs. Every human uses the existing creator/public profile identity, including people with no published Masana. Existing root tabs stay unchanged. These decisions supersede old human-chat and personal-Room exclusions in all documents.

**Progress reconciliation:** Owner reports Phases 1–3 done. Phase 1 merged #222; Phase 2 #223/#224; latest main `fe04f96d46a8a82d94fc8a49072e2f6a909c4827` includes Phase 3 #225. The #225 ledger explicitly documents unfinished source. Treat Phases 1–3 as previous delivery rounds, preserve their evidence and do not relabel unchecked requirements as tested/complete. Carry unfinished source into P5-C below; carry physical device/provider/operational acceptance into Phase 8. No requirement disappears through renumbering.

| Phase | Outcome and dependencies | Current delivery state |
|---|---|---|
| 0 | Product authority/cleanup | Existing source; remaining reference/build checks preserved |
| 1 | Stable shell/identity/global UI | Previous delivery round closed by owner; remaining acceptance in Phase 8 |
| 2 | Masana text/voice/calls | Previous delivery round closed by owner; provider/device acceptance in Phase 8 |
| 3 | Creator/Status/initial Rooms | Previous delivery round closed by owner; unfinished source explicitly carried to P5-C |
| 4 | Human contacts, unified profiles, direct messages and voice calls; header Wallet | Start now, using existing profiles/auth/Flutter/call foundations |
| 5 | User-created Rooms with people and Masana; creator completion | Depends on P4 identities and participant authorization |
| 6 | Wallet/token/crypto | Former Phase 4, all existing requirements retained |
| 7 | P2P/digital services | Former Phase 5, all existing requirements retained |
| 8 | Global trust/admin/release | Former Phase 6 plus carried acceptance for Phases 1–5 |

## Phase 4 — Human contacts, unified profiles, messages and calls (P0)
**Outcome:** A person finds another member under Humans, opens the same profile used by creators, exchanges messages/voice notes, calls them and resumes the same conversation. No separate human account/profile product; no extra root tab.
**Design authority:** detailed screen and state contracts in `SCREEN-JOURNEYS.md`, section “Human communication and Rooms revision”.

- [x] P4-01 SOURCE IMPLEMENTED, FLUTTER EXECUTION OPEN — Replace **Data Bundles** in every Masana chat header with a 48dp Wallet icon, accessible label, existing `/wallet` route; back restores the conversation. Keep billing in Wallet/assistant service journeys.
- [ ] P4-02 COMPLETE — Contacts title and two tabs **Masana / Humans**, shared search, independent filter/scroll state, refresh and account reset. Preserve server-driven Masana list and creation entry. Humans uses compact avatar/name/@handle rows. Following people are the initial saved contact source; accepted conversations/connections join it when P4-05 lands. Global username discovery must not enumerate private phone/email or infer messaging permission from follows.
- [x] P4-03 SOURCE IMPLEMENTED, PGLITE API TESTED — Authenticated tenant-scoped human contact listing and public name/@handle search, stable pagination, self exclusion, active-account filter, profile moderation and bidirectional block enforcement. User identifiers/phone/email never leak through public contact projections. No contact upload or permission wall to use username lookup.
- [ ] P4-04 IMPROVE — One public human/creator profile: identity/avatar/bio, owner Edit profile/My Masana, visitor Message/Call and secondary Follow; only nonempty public published Masana and owned/public or shared-authorized Rooms sections. Reuse `/u/:handle`, existing public-profile store and creator ownership; do not resurrect Twins/Talk publishing. Restriction/paused/deleted content immediately disappears. Profile links from agent attribution, Room participant and contact avatar converge here.
- [ ] P4-05 COMPLETE — Direct-message persistence: tenant + two canonical user IDs, unique unordered pair, participant-only reads/writes, opaque conversation ID, durable client request ID and immutable author attribution. Follow does not accept a chat request. Unknown sender → request → accept/delete/block. Server checks blocks, privacy, account state and memberships on every action.
- [ ] P4-06 COMPLETE — Human conversation route and Chats inbox composition: row opens thread, avatar opens profile, text/attachments/photos/files/voice notes, timestamps, pending/sent/delivered/read, reply/copy/share/delete/report, draft recovery, pagination and in-chat search. Use existing composer/bubbles/player styles, separate typed human transport from model-generation endpoints. Retry same ID without duplicate send; deleted content and access revocation invalidate cached media.
- [ ] P4-07 COMPLETE — Real-time delivery + durable notification/outbox/catch-up; background/terminated push goes to authorized thread. Read receipts only after actual authorized visibility. Account switch cancels stale requests, recording, audio and old push/deep-link destinations. Message text never goes to Gemini for human chats.
- [ ] P4-08 COMPLETE — Human one-to-one voice call admission/signaling and authenticated media tokens; use existing qualified transport when supported, no duplicate call provider by default. Calling/ringing/accepted/declined/busy/missed/ended states, caller cancel vs recipient answer races, deadlines and idempotent teardown. No agent usage billing on human calls. Provider absence is explicit, never simulated connected.
- [ ] P4-09 COMPLETE — Calls history unifies human/Masana entries with participant kind, identity, incoming/outgoing/missed, details and callback/chat. Incoming handset notification, locked/background app answer, permission explanation, audio route/headset, reconnect, minimized return and microphone shutdown. Begin with voice, no group/video scope added silently.
- [ ] P4-10 COMPLETE — Privacy: who can message/call/add to Rooms, blocked list, presence/read receipt controls, message requests, report and delete-account handling. Private phone/email are not shared via profile/Room membership. Essential consent appears in context, not onboarding walls.
- [ ] P4-11 VERIFY — Two accounts + third unauthorized account: find/follow/profile → request/accept → text/media/voice → incoming call → history → reopen; negative tenant/participant/block/privacy/tampering/replay tests; offline/reconnect/process death/account switch, small Android and 200% text. Persist real results separately from mocks.

### Phase 4 execution plan and current ownership
**Branch/base:** `feat/phase4-human-contacts-rooms-roadmap` from `fe04f96d46a8a82d94fc8a49072e2f6a909c4827`; no open PRs observed at start. One integrator owns this milestone; do not delegate or edit unrelated finance/migration/deployment paths.
**Milestone A (start now):** P4-01 + P4-02/P4-03 public contact directory + P4-04 profile convergence foundation. First write SQL-backed API tests for following/search pagination, inactive/moderated/blocked accounts, tenant fencing and invalid queries. Implement in `services/gateway/src/talk_profiles/{model,service,postgres_repository}.ts` and `talk_profile_routes.ts`. Add separate mobile `social/human_contacts.dart`, `state/human_contacts_state.dart`, `screens/chat/human_contacts_list.dart`; integrate in `masana_list_screen.dart`, restore authenticated `/u/:handle` in `router/app_router.dart`. Reuse PersonProfileScreen; owner actions reuse EditProfile/MyMasana and public agents use the existing directory creatorHandle. No disabled Message/Call controls pretending to work: they arrive with Milestones B/C. Directory row temporarily opens the shared public profile until direct chat exists.
**Milestone B:** P4-05–07 + remaining messaging/profile actions and inbox; first pin conversation pair/idempotency/access tests, then persistent repository/API/outbox/media authorization, then Flutter transport/state/thread/inbox composition; test real two-account catch-up and account switch.
**Milestone C:** P4-08–10 + remaining profile Call action; first pin call state/race tests, then signaling/media adapter/push, then incoming/active/history mobile composition and privacy screens. Reuse call transport only after its human participant authorization is proven.
**Milestone D:** P4-11 and integration; run `pnpm typecheck`, targeted then full `pnpm test:ci`, architecture, PostgreSQL/PGlite, Flutter targeted/analyze/Android build where available. Capture exact SHA/results, review, create/merge compatible PR; external provider/device acceptance remains explicit.

### Phase 4 Milestone A — source and verification checkpoint
**Implementation source:** [`1c900437d6ff56fda347ae4504342cff4ec038a8`](https://github.com/Baatiku/Masanawa/commit/1c900437d6ff56fda347ae4504342cff4ec038a8), tree `5df52c1b9934a2f6a660c7e683ad396e877bad09`, identical to locally tested commit `14a999c75fa3f7135f0c37df8f49dc25ae1bf158`. Architecture/API compatibility checks: **90 PASS**. Production implementation unchanged by subsequent verification/fixture checkpoint edits.
**Status:** PARTIAL_IMPLEMENTATION of Phase 4; Milestone A source implemented. P4-01 and initial P4-03 source delivered; P4-02 tabs/shared search/followed contacts/pagination delivered but saved accepted-chat sources await P4-05. P4-04 unified profile route/identity/owner controls/public Masana section delivered; Message/Call actions and Rooms sections await their actual backends. **Human messaging and calls are not implemented or claimed working by this milestone.** No schema migration, financial write, provider provisioning or deployment configuration change.

**Source:** `apps/mobile/lib/src/screens/chat/{ai_chat_screen,masana_list_screen,human_contacts_list}.dart`, `social/{human_contacts,talk_social_profiles}.dart`, `state/human_contacts_state.dart`, `screens/profile/person_profile_screen.dart`, `router/app_router.dart`; `services/gateway/src/talk_profile_routes.ts`, `talk_profiles/{model,service,postgres_repository}.ts`. Human Contacts uses versioned `/v1/profiles/contacts`; blank search lists followed public people, queries search public names/handles, rows open the same creator profile until messaging lands. Owner identity is server-derived `isSelf`, not a separate account or client claim. Retired Talk publishing/activity removed from the now-reachable person profile.

**Executed checks (19 October 2026, container):** Node 24.19.0/pnpm 12.8.2; frozen dependency install; `pnpm typecheck` PASS; `pnpm build` PASS; full `pnpm test:ci` **2,121 PASS / 222 SKIP, 424 files PASS / 39 SKIP**. Final scoped API/profile/AI-seat run **32 PASS** including PGlite SQL-backed tenant/self/inactive/moderation/bidirectional-block filtering, literal wildcard/injection input, pagination, profile route bypass and blocked-follow mutation rejection. First full run exposed a new route-version inventory failure, fixed by versioning the endpoint; another run exposed an inherited randomized AI-seat test fixture, fixed by pinning its intended pending branch. No unrelated production seat logic changed. Local Dart formatter parsed all 11 touched Dart files successfully; this is syntax evidence, not analyzer/widget/build proof.

**Mobile checks:** new contact/tab/debounce/late-response/signout tests, Wallet navigation/back test, owner profile and authoritative-removal-after-follow regressions authored. Local Flutter widget/analyze/Android checks **NOT_RUN**: SDK bootstrap/direct tool execution was blocked by automatic approval review after it attempted a cloud metadata endpoint. No bypass attempted; no credentials or instance metadata obtained. Device/provider/FCM/live calling and real deployed PostgreSQL acceptance remain Phase 8. Reproduce mobile checks in a permitted environment: `cd apps/mobile && flutter pub get && flutter test test/human_contacts_test.dart test/ai_chat_voice_actions_test.dart test/talk_social_profiles_test.dart && flutter analyze && flutter build apk --debug`.

**Hosted CI follow-up:** On head `5378616191d184bb5bb6200e6c5a0435d009a565`, [Mobile Build](https://github.com/Baatiku/Masanawa/actions/runs/39217559278) passed Flutter analysis; focused Flutter chat/voice/calls, roster, startup and voice-note jobs passed. Full mobile suite/build still pending at this checkpoint. PostgreSQL chat/call assertions passed but incoming-call teardown raised PG18 `57P01` because `DROP DATABASE WITH(FORCE)` raced closing clients. Reuse the existing canonical `createIsolatedPostgresTestDatabase` idle-drain cleanup in that fixture, with no production call change. Hosted retry result is linked in PR #226; do not count an unexecuted local PostgreSQL fixture as passed.

**Independent review:** no critical finding; important inherited stale `_local` profile override removed, with a new regression test (execution open). Profile refresh also refreshes the creator directory; inactive SQL fixture now uses canonical `disabled`. Source self-review and `git diff --check` passed. Shared-path owner is this branch for the listed files and canonical documents; next work resumes **P4-05**, with exact conversation/participant/idempotency contracts before adding Message actions. Do not restart the contacts implementation or call this full Phase 4 completion.

## Phase 5 — Rooms with humans/Masana and creator completion (P0/P1)
**Outcome:** Any eligible user creates and manages a Room, invites people and adds Masana; professional lessons and existing memberships survive the upgrade.
- [ ] P5-R01 COMPLETE — Room creation: name, optional photo/description, public/private, **Who can post? Admins only / All members**, optional initial people/Masana selection, create once and open Room. Server owner/roles are authoritative. No mandatory paid creation fee introduced.
- [ ] P5-R02 IMPROVE — Rooms home: joined recent-first, unread/pinned/muted state, shared search, Discover entry and Create. Discover lists public Rooms only; detail shows purpose, participants/host, access/price if applicable, Join. Private invite target reveals only authorized preview.
- [ ] P5-R03 COMPLETE — Canonical membership/roles: owner/admin/member/Masana, invite/add according to user privacy, accept/join/leave/remove/ban, ownership transfer, revocable invitation links and optional join approval. Add directly when permitted; otherwise invite. Admins cannot grant themselves owner powers. Membership and posting checks on every read/write/media action.
- [ ] P5-R04 COMPLETE — Broadcast Room: owner/admin posts, optional per-post comments/reactions, media/audio, pins, attribution and shared-media history. Members see Join/Mute/Comment rather than a disabled composer. Discussion Room: members post using familiar chat composer and replies; owner can change posting policy without losing history.
- [ ] P5-R05 COMPLETE — Add/remove eligible Masana with role instructions and owner-controlled activation. Mention/direct reply default; explicit owner automatic reply/schedule option. Prevent agent reply loops, duplicate jobs and stale access after removal; context limited to permitted Room content, never participants’ private chats. Disclose payer/quote where paid; no automatic spending without authorized agreement.
- [ ] P5-R06 COMPLETE — Room info/manage: name/photo/description, people/Masana, roles, shared media, notification control, invite links, posting/comments setting, moderation/report/block, transfer/leave/delete. Keep advanced controls under Manage; no extra root tabs.
- [ ] P5-R07 IMPROVE — Migrate existing professional Rooms in place: same identifiers/history/lesson archives, member access, subscriptions/expiry/receipts and obligations. Additive reversible schema; professional Masana become explicit participants/hosts. Do not drop financial/history tables or copy into a parallel channel backend.
- [ ] P5-R08 COMPLETE — Search, push/deep links, offline drafts/cache, request replay and membership revoke catch-up. Removed users/agents lose private media and notifications promptly.
- [ ] P5-R09 VERIFY — Owner + member + outsider + Masana: create/invite/accept/post/comment/mention/reply/remove/leave/rejoin; public/private and paid expiry; unauthorized role changes, expired links, duplicate create, account switch and worker restart. Physical devices/provider automation tracked in Phase 8.

**P5-C: carried unfinished Phase 3 source — do not lose these requirements**
- [ ] P5-C01 COMPLETE — Portrait/cover upload, rights admission, processing, preview, replace and list/profile/Status propagation; deletion and media authorization.
- [ ] P5-C02 COMPLETE — Published revision editor, admin-configurable free allowance/fee, canonical quote, explicit approval, concurrent edit fencing, once-only settlement and rollback.
- [ ] P5-C03 IMPROVE — Creator wizard gender/age/language/personality and live preview; manager share/engagement/restricted/retired transitions and owner identity.
- [ ] P5-C04 COMPLETE — Earnings allocation producer, settled net eligibility, anti-self-spend, reversals/adjustments and actual authorized Wallet receipt/transfer; preserve read-only #225 statement.
- [ ] P5-C05 COMPLETE — Creator Status cadence/pause/content rights/review/anti-spam and complete media/offline recovery.
- [ ] P5-C06 COMPLETE — Optional voice reference only with actual qualified provider, adult same-speaker consent, retention/deletion and supported-voice fallback. Do not falsely claim voice cloning.
- [ ] P5-C07 VERIFY — Two-account creator lifecycle and existing Room/Status journeys, including paid publication, pause/restrict, access expiry and accurate earnings/reversal. Preserve scheduled live Room audio and external video as LATER, not hidden new launch requirements.

## Phase 6 — MSNW Wallet, token and crypto foundation (P0)
**Outcome:** Users see trustworthy balances and can complete only financially qualified operations.
- [x] SOURCE PRESENT — Single MSNW customer-facing Wallet direction, custody reads, funding/history/transfer/conversion UI and Base token source. **No mainnet token deployment claimed.**
- [ ] IMPROVE — Beautiful Wallet home: available MSNW, privacy eye, last refresh, conditional reserved/pending, Fund and one neat action row (Send/Convert/Receive/P2P).
- [ ] IMPROVE — Distinguish verified exact zero from unknown/unavailable/stale ledger or custody; do not fake balances.
- [ ] IMPROVE — Consolidate one sortable, paginated authorized activity history and a consistent financial receipt. Never duplicate same operation across lists.
- [ ] COMPLETE — Review all forms as dedicated pages: Fund → quote/review → provider → pending/settled receipt; Send → destination/review → step-up → receipt; Convert → quote/expiry → confirm/recovery → receipt.
- [ ] DECIDE — Publish global token utility, monetary/issuance policy, rate source, legal redemption promise (or absence), fees, liquidity and country-specific eligibility. No implicit NGN/USD peg.
- [ ] VERIFY — Base Sepolia contract, non-upgradeable governance, 2-of-3+ multisig, separation of mint/custody/admin/pauser, zero-supply launch, replay-safe references and supply invariants.
- [ ] COMPLETE — Canonical on-chain contract address and chain binding only after public source verification; test mint/transfer/receive/burn and chain reorganization handling.
- [ ] COMPLETE — Financial custody ledger, reserve/settlement approvals, exact six-decimal accounting, on-chain reconciliation, permission-bound signer controls and recovery.
- [ ] COMPLETE — Audit and economically reconcile old customer Credits/MSN/Cr liability records without silent 1:1 renaming, erasure or unauthorized issuance.
- [ ] IMPROVE — Paystack/Flutterwave/other adapter-specific international funding routes: settlement evidence, original minor currency, fee/rate quote and global coverage; provider acceptance is **not** global merchant eligibility.
- [ ] VERIFY — Actual provider callbacks, retries, reconciliation and double-submit prevention; live NOWPayments crypto currency/readback/withdrawal capability where eligible.
- [ ] COMPLETE — Supported crypto holdings/send/receive/convert/withdraw with explicit chain/network/custody/fees; do not imply MSNW exchange liquidity when none exists.
- [ ] VERIFY — Signing/provenance, upgrade/rollback, incorrect network, pending/failed/reorg and restored ledger/chain reconciliation under failure.
**Screen/journey contract:** Wallet → Fund/Send/Receive/Convert/History/Asset → review → authorized settlement → receipt → fresh verified balance. Every operation requires exact, single-use, user-confirmed authorization and recoverable idempotency.

## Phase 7 — P2P and digital services (P0/P1)
**Outcome:** An attractive, simple marketplace and real purchases with strong fraud and settlement handling.
- [x] SOURCE PRESENT — MSNW escrow/P2P marketplace components, merchant cards, order flows and financial recovery tests; #218 fixed 320px/200% P2P header overflow.
- [ ] IMPROVE — Visually polish compact offer cards: seller identity, verified payment-method state, price/currency, min/max, available MSNW, trading history and one primary Buy/Sell action.
- [ ] IMPROVE — P2P root contains only Buy, Sell and Orders, with short search/filter row and no financial-terminal jargon.
- [ ] COMPLETE — Explicit create-offer/quote/funded escrow/confirmation/order timeline/expiry/dispute/release/reconcile journeys; stable request IDs and reload recovery.
- [ ] COMPLETE — Verified payment method ownership and merchant admission, regional availability, fraud decisions, limits and risk-tier controls.
- [ ] COMPLETE — Disputes with evidence visibility, private payment details, server-authorized resolution and audited staff actions. Screenshots/claims never independently release escrow.
- [ ] VERIFY — Double submissions, concurrency, offline resumption, wrong account, forged callback, stale payment mark, expiry racing disputes, admin release and settlement recovery.
- [ ] IMPROVE — Match Wallet green/white spacing, list density, responsive keyboard, loading cards, empty marketplace, disabled action explanations and complete receipts.
- [x] SOURCE PRESENT — Airtime/data/electricity/TV gateway and mobile service integration; do not recreate catalogs.
- [ ] IMPROVE — Simple region-specific operator/service selection, recipient confirmation, recent purchases/repeat with refreshed valid price and one reusable purchase review.
- [ ] COMPLETE — Provider success/pending/failure/partial fulfillment compensation, idempotency and reconciled receipt after provider timeout/replay.
- [ ] VERIFY — Real supported provider packages/payment/billing status on eligible countries, plus Gwani conversational parity using same canonical service operation.
- [ ] LATER — Add new bill/digital service categories only after positive margin, demand, provider eligibility and support costs are measured.
**Screen/journey contract:** Wallet → P2P Buy/Sell → offer → review → order timeline → release/dispute → receipt; Wallet/Gwani → Data/Airtime/TV/Electricity → recipient/package/review → authorized purchase → durable receipt.

## Phase 8 — Global trust, admin, operations, release and growth (P0/P1)
**Outcome:** Launch only qualified capabilities for each market, keep operations observable, and manage total costs.
- [ ] COMPLETE — Country-by-country feature-capability policy for identity, fiat rails, virtual-asset activities, subscriptions and P2P. No hardcoded home-market default.
- [ ] IMPROVE — English/Hausa/Arabic/Hindi/Chinese localization where actively tested, proper RTL, country dialing, timezone, localized number/currency display and language-specific voice quality.
- [ ] IMPROVE — Low-data offline caches, media compression, bounded read retries, isolated encrypted local storage and account-switch invalidation.
- [ ] IMPROVE — Unified mobile admin: Masana, creators, voice, Rooms, Status moderation, receipts, merchant offers, disputes, settings and skills (existing admin_mobile screens reused).
- [ ] COMPLETE — Financial admin readback for settlement, reserves, issuance, blocked payouts, dispute case queues and discrepancy escalation. Never expose keys or unverified zero balance.
- [ ] VERIFY — Scoped authorization across chat/media/wallet/rooms/creator admin; security confirmations for account recovery, new payout method and each exact payment operation.
- [ ] COMPLETE — Privacy/AI-character disclosures, children safeguards, voice consent, report/block/appeals, account deletion with unresolved financial holds and audit/log retention.
- [ ] COMPLETE — Document lawful regional crypto/AML/KYC/sanctions/payment obligations with advisors before financially enabling each geography; store minimal personal data.
- [ ] IMPROVE — Actionable Worker/Gateway crash/ANR/job alerts, logs without secrets/PII, queue retry/dead-letter and provider status/cost guardrails.
- [ ] VERIFY — Latest main production builds, zero-step CI runner fallback, real PostgreSQL disposable integration suites, exact released APK SHA, signer provenance, physical Android smoke and reliable rollback.
- [ ] VERIFY — Rehearse off-account PostgreSQL/object backups, same-content restoration, schema migration restart, disaster recovery RPO/RTO and unauthorized restore rejection.
- [ ] COMPLETE — Pilot/normal/growth provider cost model (Gemini text/audio, voice calls, FCM, hosting, PostgreSQL, storage, crypto gas, fees, support); per-action margin and abuse caps.
- [ ] COMPLETE — Global customer support, FAQs, transaction help, merchant dispute escalation and uptime/incident transparency.
- [ ] LATER — Optional creator premium subscriptions/Rooms monetization and advanced discovery only after retention and positive unit economics.

## 3. Delivery rules: no duplicate implementations
1. Fresh `main`, open issues/PRs, exact file owners and existing app screens before each milestone. **Issue #220 must be reconciled against main before assuming its features landed.**
2. One approved screen/feature/journey inventory. Each P0 requirement maps to real route, loading/empty/error/offline/permission/account-switch state, data contract and negative/security tests. Avoid duplicate wallet and creator data authority.
3. Implement from current source, not stale README instructions. Build vertical slices and reuse current Flutter, Gateway, Worker, PostgreSQL and canonical financial adapters.
4. Scope independent source owners by exact paths; one central integrator owns shared router, migration registry, financial authority and production deployment. PRs/SHAs are required handoff identifiers.
5. Run actual reachable Node/Vitest/PostgreSQL/Flutter checks when available; use container fallback if CI is down; record NOT_RUN honestly. Merge safe scoped code promptly, but **do not confuse merged source with approved custody or live payments**.
6. Release only exact qualifying APK/deployed SHA with device/provider/account-isolation/backup/rollback proof. Cost, permissions, legal and financial correctness outrank superficial release labels.
7. Review this same roadmap's checkboxes after each merged phase; do not reintroduce dated parallel product plans, deprecated consumer routes, new wallet names or retired scripts.

## 4. Source-of-truth links
- [GitHub main](https://github.com/Baatiku/Masanawa/tree/main)
- [Latest baseline](https://github.com/Baatiku/Masanawa/commit/40071bc8e88d80d2ce7affb25dfefe6cd37a0989)
- [Creator publication implementation #212](https://github.com/Baatiku/Masanawa/pull/212)
- [Creator voice implementation #214](https://github.com/Baatiku/Masanawa/pull/214)
- [Notifications/discovery #207](https://github.com/Baatiku/Masanawa/pull/207)
- [P2P accessibility/regression #218](https://github.com/Baatiku/Masanawa/pull/218)
- [In-progress owner checklist #220](https://github.com/Baatiku/Masanawa/issues/220)
- [Current MSNW deployment guide](token/MSNW-GLOBAL-TOKEN-CREATION-GUIDE.md)
