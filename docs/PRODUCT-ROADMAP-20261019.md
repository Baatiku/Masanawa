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

- [x] P4-01 SOURCE IMPLEMENTED — Replace **Data Bundles** in every Masana chat header with a 48dp Wallet icon, accessible label, existing `/wallet` route; back restores the conversation. Keep billing in Wallet/assistant service journeys.
- [x] P4-02 SOURCE IMPLEMENTED — Contacts title and two tabs **Masana / Humans**, shared search, independent filter/scroll state, refresh and account reset. Preserve server-driven Masana list and creation entry. Humans uses compact avatar/name/@handle rows. Following people are the initial saved contact source; accepted conversations/connections join it when P4-05 lands. Global username discovery must not enumerate private phone/email or infer messaging permission from follows.
- [x] P4-03 SOURCE IMPLEMENTED — Authenticated tenant-scoped human contact listing and public name/@handle search, stable pagination, self exclusion, active-account filter, profile moderation and bidirectional block enforcement. User identifiers/phone/email never leak through public contact projections. No contact upload or permission wall to use username lookup.
- [x] P4-04 SOURCE IMPLEMENTED — One public human/creator profile: identity/avatar/bio, owner Edit profile/My Masana, visitor Message/Call and secondary Follow; only nonempty public published Masana and owned/public or shared-authorized Rooms sections. Reuse `/u/:handle`, existing public-profile store and creator ownership; do not resurrect Twins/Talk publishing. Restriction/paused/deleted content immediately disappears. Profile links from agent attribution, Room participant and contact avatar converge here.
- [x] P4-05 SOURCE IMPLEMENTED — Direct-message persistence: tenant + two canonical user IDs, unique unordered pair, participant-only reads/writes, opaque conversation ID, durable client request ID and immutable author attribution. Follow does not accept a chat request. Unknown sender → request → accept/delete/block. Server checks blocks, privacy, account state and memberships on every action.
- [x] P4-06 SOURCE IMPLEMENTED — Human conversation route and Chats inbox composition: row opens thread, avatar opens profile, text/attachments/photos/files/voice notes, timestamps, pending/sent/delivered/read, reply/copy/share/delete/report, draft recovery, pagination and in-chat search. Use existing composer/bubbles/player styles, separate typed human transport from model-generation endpoints. Retry same ID without duplicate send; deleted content and access revocation invalidate cached media.
- [x] P4-07 SOURCE IMPLEMENTED — Real-time delivery + durable notification/outbox/catch-up; background/terminated push goes to authorized thread. Read receipts only after actual authorized visibility. Account switch cancels stale requests, recording, audio and old push/deep-link destinations. Message text never goes to Gemini for human chats.
- [x] P4-08 SOURCE IMPLEMENTED — Human one-to-one voice call admission/signaling and authenticated media tokens; use existing qualified transport when supported, no duplicate call provider by default. Calling/ringing/accepted/declined/busy/missed/ended states, caller cancel vs recipient answer races, deadlines and idempotent teardown. No agent usage billing on human calls. Provider absence is explicit, never simulated connected.
- [x] P4-09 SOURCE IMPLEMENTED — Calls history unifies human/Masana entries with participant kind, identity, incoming/outgoing/missed, details and callback/chat. Incoming handset notification, locked/background app answer, permission explanation, audio route/headset, reconnect, minimized return and microphone shutdown. Begin with voice, no group/video scope added silently.
- [x] P4-10 SOURCE IMPLEMENTED — Privacy: who can message/call/add to Rooms, blocked list, presence/read receipt controls, message requests, report and delete-account handling. Private phone/email are not shared via profile/Room membership. Essential consent appears in context, not onboarding walls.
- [ ] P4-11 VERIFY — Two accounts + third unauthorized account: find/follow/profile → request/accept → text/media/voice → incoming call → history → reopen; negative tenant/participant/block/privacy/tampering/replay tests; offline/reconnect/process death/account switch, small Android and 200% text. Persist real results separately from mocks.

### Phase 4 implementation and verification
**Delivery:** [PR #227](https://github.com/Baatiku/Masanawa/pull/227), branch `feat/phase4-complete`, base `1dd2c447ce5dc01468322d4c86d2bb33c644c1ff`. Builds on merged contact/profile foundation #226. P4-01–10 source is implemented; final hosted checks are in progress. P4-11 external acceptance remains explicitly unverified until exercised on devices and configured services.

| Journey | Implemented screens and behavior | Server authority and recovery |
|---|---|---|
| Contacts → person | Masana/Humans tabs; following plus accepted conversation contacts; public username search; avatar → shared creator/human profile | Tenant/active/moderation/bidirectional-block filters; stable pagination; no phone/email directory |
| Profile → chat/call | Visitor Message/Call and Follow; owner Edit profile/My Masana; only nonempty published Masana/shared authorized Rooms | Existing profile identity and creator directory; shared Rooms require both active memberships and published state |
| Chats → conversation | One chronological human/Masana inbox; All/People/Masana/Unread; requests/archives; search, pin, mute, archive | Distinct human conversation route and transport, never a model or paid agent endpoint |
| Request → accepted chat | One introductory message; Accept/Delete/Block; text, photo, PDF, video, voice; reply/copy/share/delete/report | Unique unordered user pair, scoped immutable authorship, durable same-ID retries; follow never grants consent |
| Resume/reconnect | Encrypted per-account draft/pending journal; older history/search; actual-visible read receipt; media reauthorization | Persisted event cursor, authenticated SSE plus catch-up; durable notification outbox, leases/backoff; revoked content disappears |
| Human voice | Incoming/outgoing, Answer/Decline/Cancel, mute/speaker, reconnect/retry, minimized return, elapsed connected time, unified history/details/callback | Same LiveKit provider, participant-only short-lived microphone tokens; busy/ring/heartbeat deadlines; durable room teardown; no agent billing |
| Privacy/account | Who may message/call/invite to Rooms, receipts/presence, blocked list; generic locked-screen previews | Rechecked blocks/accounts/privacy; existing Room invitation admission consults setting; qualified deletion worker redacts human data and ends calls; own transcripts/account export included |

**Persistence:** additive `packages/talks/migrations/0015_human_communication.sql`. Human conversations/viewer preferences/messages/media/privacy/request replay/events/outbox/calls/reports are separate from agent billing and financial history. Apply canonical migrations before starting the upgraded Gateway/Worker. Existing schema readiness prevents a partially migrated service from presenting healthy.

**Operations:** Gateway composes `/v1/human/*` with the canonical customer session authorizer. A bounded single-flight sweep recovers ring/heartbeat expiry, revoked media rooms, orphan uploads and push leases. LiveKit absence returns an explicit unavailable response. Missing push configuration leaves outbox rows durable; no delivery claim is fabricated. Android human calls use high-priority short-lived data delivery and native private incoming-call notifications; tapping always reauthorizes before accepting. The same existing Firebase build configuration and LiveKit environment variables are used. No new paid provider is provisioned.

**Moderation:** participant-only message reports retain message ID/reason in `talks.human_reports`; authorized operations review these records under existing database access controls and apply existing profile restrictions/blocking. No public report-list API or private-message enumeration endpoint exists. Sender deletion tombstones text/media and replay snapshots; approved account deletion redacts authored content while preserving other authors and lawful records.

**Verification checkpoint:** Gateway typecheck and standalone Dart parsing PASS. Focused SQL/API/lifecycle/export/deletion tests: **35 PASS / 2 SKIP**; additional Room privacy/push regression run **17 PASS / 2 SKIP**. New real PostgreSQL multi-connection tests cover pair/message replay, same-recipient call busy and answer/cancel races; they require hosted PostgreSQL. Initial full local runs exposed only inherited PGlite timing failures under concurrent load; rerun uses bounded workers and extended test execution deadlines without changing production timeouts. Hosted Flutter analysis found a file-picker API mismatch and analyzer warnings, repaired before the next head. Final head results are recorded below when checks complete.

**External acceptance (NOT_RUN):** two real signed-in phones; Firebase registration/background/terminated/locked-screen delivery; LiveKit microphone/headset/reconnect/audio quality; process death and low-memory Android at 320px/200% text; deployed migration/readback/rollback. These are owner handset/provider acceptance, not source completion or a successful merge. Phase 5 remains the next implementation phase; keep the name **Rooms**.

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
