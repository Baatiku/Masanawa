# Masanawa Creator-Owned Masana — implementation blueprint

**Status:** APPROVED REQUIREMENTS + PROPOSED DEFAULTS; **implementation status:** PLANNED / NOT IMPLEMENTED.
**Date:** 2026-10-18
**Baseline:** `Baatiku/Masanawa` main `801106e348fa588aacfb3350ac074f0e6c4ea61a`.
**Authority:** owner decisions in 2026-10-18 conversation, then current `AGENTS.md` and `CONTINUE-HERE.md`. Read fresh main and live ownership/PR state before coding. Preserve all other windows' merged work.

## 1. Outcome, principles and scope

Turn existing Masanawa into a community whose signed-in members can create, preview, publish, operate, share and earn from professional Masana agents. Use **the existing Chats · Status · Wallet · Calls · Rooms navigation** (Chats default per current AGENTS.md), existing server-side character identity, existing Status/feed and existing canonical **MSNW** money authority. No new main tab, secondary creator wallet/currency, prompt-engineering workflow or separate social app.

**Approved rules:**
- One **free successfully published character per account for life**; deleting, hiding or pausing does not restore the entitlement.
- Every subsequent successfully created/published character costs **5,000 MSNW** by default, charged once through canonical authorized MSNW ledger; admin may set prices for future quoted operations.
- Creator chooses **name, profession/purpose, languages, gender/persona presentation, age range, optional image**; engine produces coherent abilities, bio, personality, greeting, content topics and voice recommendation. Skills are NOT manually entered.
- Owner may preview, edit, publish, pause, resume, retire, share, and view their own agents; owner can enable/disable automated profession-related Status posts.
- Public can discover, follow, message/call eligible agents, react to/comment on their Status, and see creator attribution.
- Creator earns a configurable portion of **eligible actually settled agent usage/service revenue**, not from raw views, likes, fake calls, self-spend, referral loops or gross third-party purchase principal.
- An **optional voice-reference upload** may use Gemini's Voice Replication with prescribed adult speaker consent; it must NOT complicate the core flow. Gender/age guide synthetic voice design, not proof of true speaker age/identity.

**Proposed reversible defaults; admin-editable:** 3 substantive free published-agent edits per character lifetime; 100 MSNW for subsequent substantive revisions; two scheduled posts weekly per enabled agent; initial creator split 30% of *positive eligible net contribution after direct fulfillment costs*, not a promise of a fixed percentage or on-chain return. Cosmetic typo fixes, status toggles, repairing broken image, and preview-stage edits never consume edit quota. Do not expose fee or share assumptions as production-authorized until finance tests pass.

**Explicit exclusions:** resurrected personal clones/Twins or clone float, unbounded developer tools, arbitrary agent credentials, bots that autonomously move money, creator-operated WhatsApp personal-account automation, creation of personal Rooms, six-tab shell, view/reaction rewards, crypto staking/yield, unrestricted generative video, automatic paid services enrollment, guaranteed professional licensure, clone of a third party without their own consent.

## 2. Verified repository reuse and change map

**Existing and reusable:**
- `apps/mobile/lib/src/screens/profile/{person_profile_screen,edit_profile_screen,masana_profile_screen,masana_status_posts_screen}.dart`, `apps/mobile/lib/src/social/{own_profile_transport,profile_header,talk_social_profiles*}.dart`: profile layout, social identity, follow and editing.
- `apps/mobile/lib/src/screens/status/status_screen.dart` and `apps/mobile/lib/src/features/home_feed/**`: Status feed, likes/comments, account fencing and media playback.
- `apps/mobile/lib/src/screens/chat/masana_list_screen.dart`, `apps/mobile/lib/src/agents/agent_directory.dart`, `apps/mobile/lib/src/shell/five_tab_shell.dart`: directory and existing shell.
- `apps/mobile/lib/src/tokens/masanawa_tokens.dart`, `apps/mobile/lib/src/theme/masanawa_theme.dart` and reusable list/skeleton components: exact green/white brand system.
- `apps/admin_mobile/lib/src/screens/{admin_masana_page,admin_masana_forms}.dart` and admin API: platform Masana administration.
- `services/gateway/src/modules/masana/service.ts`, `packages/masana/migrations/0001_masana_profiles.sql`, `packages/agents/src/configuration.ts`: character profiles, revisions, directory and skill assignment.
- `services/gateway/src/masana_voice_catalog.ts`, `services/gateway/src/paid_voice*.ts`, Google/provider infrastructure: official voice choices and voice billing.
- `services/gateway/src/msn_wallet/**`, `packages/commerce/**`: canonical financial authority; `packages/masana/**` and existing worker for content scheduling.
- `services/gateway/src/talk_profiles/**` and corresponding client: public human profile/follow read/edit.

**Must not reuse as-is:** `services/gateway/src/creator_clone.ts`, `creator_economy.ts`, `creator_economy_shell.ts`, mobile `agents/creator_clone.dart` / `creator_economy.dart`, and personal-clone/float schema: old one-clone-per-person and legacy Credits assumptions conflict with owner-approved MSNW and new many-agent creation. Inventory callsites, version/deprecate old routes/projections, migrate only if real customer liabilities exist; never silently rename credits into MSNW.
**Structural blockers in present schema:** `identity.character_ownership` only permits platform, personal-clone, business; unique personal-clone-per-user index; `masana.character_revisions` and follow eligibility enforce **platform-owned** agents; approval requires staff-approved portrait **and banner**. Do NOT weaken these globally: add owner-scoped creator-agent type and audited creator review path while preserving the platform-owned rules. Do not make a public creator profile depend on mandatory banner/media review if optional media is permitted.

## 3. Complete end-user UX and screen inventory

All layouts use the present white page/header, dark readable text, Masanawa green primary action, slim dividers, 12–16 px rhythm, 48 px minimum touch area, native back, accessibility labels, responsive keyboard/small-device layouts, existing navigation stack and no new main tab. Use user language and `MSNW` label exactly. Redesign existing profile surfaces once, reuse for public/own variants. No duplicate Profile objects.

| ID | Entry / layout | Controls, journeys and permissions |
| --- | --- | --- |
| CR-01 Own profile | Existing Settings/profile entry; optional slim cover, identity/avatar, bio, compact counts, **My Masana** cards, Creator earnings row, Edit profile | My Masana, Create Masana, Earnings, Share profile; private account fields never public |
| CR-02 Public user/creator profile | Existing user-profile route: avatar, bio, creator attribution/follow, Published Masana list (optional authored public posts if already supported) | Follow/Unfollow, Share, select Masana, Report/Block; no Wallet or private management |
| CR-03 Create Masana | Single short vertical form; portrait upload/generate optional, Name, Profession/Purpose, Languages chips, Gender expression and Age range; optional **Add voice reference** collapsible row | Continue, Back, Save draft; no skills/prompt fields; inline unique name/handle validation and language coverage feedback |
| CR-04 Generated preview | Character picture, bio, specialties, spoken-language list, greeting + **Try chat**, **Listen to voice**, edited name/photo; generated professional boundaries remain server-controlled | Regenerate (bounded), Edit basics, Publish/Deploy, Cancel; user sees final **free / 5,000 MSNW** before any money is moved |
| CR-05 Publish review | Small modal/bottom sheet, final character name and visibility, creation quote (first free/otherwise admin-price), public AI disclosure, Status posting toggle default Off, spending/usage expectations | Confirm once, Change, Cancel; expired quote refreshes without hidden charge |
| CR-06 My Masana list | Own-profile entry, simple avatar rows and state badge (Draft, Published, Paused, Restricted); active follower count and usage hint | Open details, Create Masana; empty screen has one CTA |
| CR-07 Creator-agent manage | Agent header/avatar, public link, concise status metrics, editable basics, Status toggle, earnings summary, safety status | Preview as visitor, Edit, Pause/Resume, Share, Retire (with consequence sheet), Earnings; do NOT expose users' private chats |
| CR-08 Creator-agent edit | Existing Create form prefilled plus optional voice chooser; visible free-edit count or server quote for paid substantive edit; revision preview | Save revision, Cancel, Revert unsupported changes; only successful substantive publication consumes edit entitlement |
| CR-09 Voice reference | Optional sheet from create/edit; Record or upload 10–30s adult reference, record mandatory same-speaker Google consent clip, play preview, submit/delete | Explicit permission/consent, provider-processing/error, non-clone fallback; do not block publishing without custom voice |
| CR-10 Public Masana profile | Reuse existing Masana profile: portrait, title/profession, AI label, languages, creator link, follow count, status posts, greeting | Chat, Call only if server-capable, Follow, Share, Report; no owner controls for visitors |
| CR-11 Status/feed | Existing Status; eligible creator Masana posts blend with platform ones using discovery/follow rules | Likes, comments, open agent/creator, share/report; creator moderation can hide or delete their agent's posts |
| CR-12 Earnings | Own profile/Wallet activity entry; current eligible settlement, pending, available, per-agent summary, recent entries, period filter | Open receipts, withdraw/transfer only via actual qualified MSNW Wallet path; never create parallel balance |
| CR-13 Admin Creator Settings | Existing admin app Settings/management: configurable price/free quota/edit fee/revenue share/post caps with effective date | Save with role/step-up, audit history, rollback future settings, display live impact |
| CR-14 Admin Creator Moderation | Existing admin Masana list expands scope to submitted creator agents, complaints, voice-consent incidents, status abuse and fraud | View, suspend/reinstate, policy review, creator/support reason, settlement hold/release through money authority |
| CR-15 Shared public link | Lightweight public web card with AI identity, profession, creator, safe greeting, Open in app / Continue in Masanawa | Auth return to intended agent; restricted/removed/private agent gets non-leaking unavailable screen |

**Navigation contracts:** own profile -> My Masana -> Create / Manage / Earnings. Masana & Contacts search -> public agent profile -> chat/call. Status author tap -> Masana profile -> creator profile. Wallet -> creator earnings detail/receipt. Public links enter app via existing authenticated deep-link handler, preserve source and Back semantics.

**Required states for every affected screen:** loading skeleton and actionable empty state; offline cached public content with stale label; offline local edit draft retained but never submitted/charged; permission denied (storage/mic); quota/rate limit; server revision conflict with reload; generation/review failure; partial audio result; price changed/quote expired; payment pending/uncertain -> status lookup; insufficient MSNW; suspended/hidden/retired/404; account switching clears private state, drafts, voice input and financial caches; duplicate tap protection; large type and RTL where locale relevant. Privacy-sensitive voice samples must not be cached across accounts.

## 4. Generation engine and durable agent profile

A single backend agent-builder service behind authenticated endpoints:
1. Normalize limited user input, media rights, supported languages and creator eligibility.
2. Generate structured, versioned `MasanaGeneratedDefinition` from profession plus language/gender/age-range; include biography, distinct personality, communication manners, specialization taxonomy, example tasks, greeting, boundaries, safe content topics and suggested built-in voice. NO requirement for users to write prompts, define skills or understand model names.
3. Schema-validate output, dedupe overlaps, reject invented certificates/employers, distinguish fiction from real-world qualifications, check tool access. Choose **only already-supported certified skills** via allowlisted registry, not free-form model-proposed tool privileges.
4. Persist immutable candidate version and bounded preview; support safe regenerate with request/cost quotas. Platform prompts/skill policies remain protected from creator editing.
5. Publish versioned agent atomically with creation entitlement/ledger capture and public directory eligibility; idempotent operation ID. Inactive/blocked statuses always govern runtime and scheduled posts.
6. Edits create new versions with compare-and-swap, preserve existing chat identities, previous financial references and approved content audit. Avoid unnecessary full regeneration for one-field edits.
7. Prompt updates can only affect future requests/post jobs; no historical mutation.

**Inputs:** `name`, `profession`, `languages[]`, `genderPresentation` (male/female/neutral or applicable local translations), `ageRange` (18–24, 25–39, 40–59, 60+), optional `portraitMediaId`, optional `voiceSelection`, optional `publicHandle` derived by server. Name/portrait are not evidence of real professional credentials. Optional basic `briefDescription` may be offered as one non-required field when professionally essential, not a separate advanced wizard.

## 5. Voice: simple selection, with optional reference

**Default:** server chooses an available prebuilt/extended Gemini voice appropriate to requested language and perceived gender/age; allow preview/change. Where differentiation truly requires it, Gemini Voice Design creates a persistent prompted voice from age range + gender + accent/style and stores provider reference. Prefer catalog matching over designing thousands of new voices.

**Optional Add voice reference:** authenticated adult speaker adds 10–30 second speech sample and separately records required Google's same-speaker, same-session consent script; normalization to 24kHz mono WAV server-side; provider `POST /v1beta/voices` replicated `store=true`; save scoped voice ID, ownership, consent provenance, retention/deletion status; offer test output. Reject impersonation or missing consent. Users can delete/revoke samples and disassociate voice; revoke provider voice where supported. Do not expose provider voice keys to the mobile app or other creators. Do not retain raw voice media longer than needed; encrypted, limited-access processing.

**Hard provider limits verified 2026-10-18:** Gemini custom Voice design/replication works for Gemini 3.8 Flash/Flash-Lite **TTS**, not evidence that a custom voice works in interactive Gemini Live calls. Stored prompted+replicated voices share a **200-voice per project** active limit and **1-year inactivity TTL**. Implement quota reconciliation and fallback to prebuilt voice; don't launch unbounded one-custom-voice-per-agent pricing without a quota strategy. Custom voice creation/replication is beta; inspect actual Google account capability, language/accent output and provider pricing. Preserve platform Bodi/Fola identities and user-approved catalog where already configured.
Official references: https://ai.google.dev/gemini-api/docs/voice-design ; https://ai.google.dev/gemini-api/docs/voice-replication ; https://ai.google.dev/gemini-api/docs/speech-generation ; https://ai.google.dev/api/voices .

## 6. Creation fee, edits and entitlement authority

Use **server-configured fee policy** with version/effective timestamp; do not hardcode `5000` into Flutter or calculate financial completion client-side.

- Free one-time `first_creator_agent_publication` entitlement is attached to canonical authenticated user, tenant and audit history, not to currently-active agent count. Even after deletion, pausing, suspension, export or account reinstall it is consumed forever. Platform seed/admin agents and legacy clone records require explicit migration classifications, not automatic consumption.
- Draft/preview free subject to provider budgets. Only the first completed *publication* creates a free agent, and additional publications require quoted **5000 MSNW**, editable for future operations by admin. Clarify in checkout that a new agent creation is charged on deployment. Admin may grant explicitly audited waivers.
- Quote includes policy revision, character candidate and version, exact MSNW atomic amount, one-use action authorization, expiry and idempotency key. Verify available balance, actor/session, risk state and invariant of exactly one settled capture per character. Use existing wallet reservation/ledger semantics; settle when publication is accepted, reverse on failure; after timeout read operation status before a retry. No double debit on concurrent devices, spoofed callbacks, changing admin policy or multiple taps.
- **Three free substantial successful revisions per agent** (proposed), then admin-set fee (proposed 100 MSNW); receipt and remaining edit quota displayed BEFORE confirmation. Preview edits and non-substantive maintenance remain free; toggle status/posting, profile view, media failure correction, suspend/resume and changing draft never debit. Paid revision failure refunds and never consumes quota.
- Price changes apply to new quotes only; already issued non-expired quotes honor their server-bound policy or are explicitly invalidated and re-reviewed under a documented rule. No retroactive fee changes to published agents.
- Edit/publish entitlement and MSNW charge committed through one auditable canonical operation, never separate counters written by client. Historical Credits/Cr/MSN MUST NOT be equated to MSNW.

## 7. Agent usage monetization and creator settlement

Initial **simple** model:
- Standard chat has a bounded free tier as allowed by runtime budgets; paid voice/call and any other truly chargeable agent actions use actual existing product quotes and receipts. Do not introduce bespoke per-message price sliders to creators.
- Admin controls published price/rate cards and **revenue share** by effective-dated global policy; future per-agent overrides only for clear business need.
- Earnings base = *eligible settled customer revenue* minus eligible **direct** inference/audio/provider fulfillment expenses and refunds under an unambiguous versioned cost-allocation policy, floor at zero. Exclude third-party merchant principal, MSNW conversion, wallet moves, taxes/fees due to external parties where appropriate, fake interactions, internally funded incentives, disputed transactions and self-dealing. Suggested starting creator share **30% of positive net contribution**, to verify against cost data.
- Record immutable `usage_receipt -> settled_revenue -> allocated_direct_cost -> creator_share -> reserve/hold -> released_earning` references per agent/version/account and policy. Wallet remains source of truth; earnings UI is a scoped read projection. Settlements pending until revenue is actually reconciled, chargeback window/fraud policy passes. Use the same MSNW ledger, balanced postings, no new creator currency or implied fiat cashout.
- Cancellation/refunds/chargebacks/suspected bot farms suspend eligible earnings and post linked reversals; never quietly rewrite old receipts. Creator sees clear, non-sensitive reason.
- The creator does not receive a transcript, visitor identities, phone numbers, spending details of individual users or access to their chats. Show aggregate conversations, returning users, followers, eligible revenue and earning receipts only with privacy thresholds.

## 8. Status and creator/community exposure

Reuse existing feed, reactions/comments, moderation, follow, deep links and creator-moderation contracts. Modify **only** platform-owned eligibility checks that are intended to include approved creator-owned Masana. Do NOT broadly grant users platform-editor or financial privileges.

- Default auto-Status **Off**, explicit user toggle On; proposed up to **2 posts/week** at launch with admin budget/cadence cap. Post themes generated from profession, verified relevant knowledge, language preferences and character guidelines; avoid generic repeated posts.
- Worker pipeline: eligible + enabled + budget -> topic -> sourced/fact-checked script where appropriate -> content/media generation -> moderation -> dedupe -> publish once. Stable occurrence ID and idempotent publish even after worker crash; no empty post on generation failure. Owner can unpublish their agent's post or disable future publishing.
- Feed follows existing Following/Discover filtering and gives fair starting exposure, not artificial self-promotional floods. Public card links to Masana and publicly attributed creator. Likes/comments/report retain account and anti-abuse constraints; block and suspension propagate across feed, chat, calls, profile and public link.
- Viral path: agent public profile share link -> mobile app/web preview -> chat/follow -> viewer may create own Masana from profile action, without forced registration to view public preview. No referral-cash mechanism initially.

## 9. Admin mobile additions

Keep admin controls within current `apps/admin_mobile` shell and role-limited server routes:
- **Creator policy:** creation fee 5000 MSNW default, free-character entitlement 1, free substantive edits 3 proposed, paid edit fee 100 proposed, % earnings policy, Status cadence, generation/voice spend ceiling, concurrent agent cap (if needed). Server-side configuration revision and effective date.
- **Creator agents:** search/filter by owner, profession, publication state, rights review, quality/misuse; inspect immutable agent/version and last safe operations; suspend/reactivate with reason and appeal path; no reading private customer chats.
- **Finance:** summarized creator liabilities and pending/reversed earnings, reconciled source records, policy history, and settlement holds via financial authority; admin does not type arbitrary balance credits.
- **Voice:** see reference-consent verification state and provider ID/quota/expiration, invoke revocation/disable, never play users' private raw speech casually.
- **Moderation:** identify fraud, impersonation, fake professional credentials, toxic posts, repeated agent spam and unauthorized upload. Queue should not become mandatory human preapproval for every ordinary safe creation; automate eligibility and exception review.

## 10. New/adjusted contracts and storage (additive migrations)

**Add or version** (names illustrative; reconcile real schema/migration numbering before implementation):
- `creator_agent_ownership` / extend `identity.character_ownership` with `creator-agent` type, owner ID, immutable association, status and lifecycle; do not drop platform or historical records. Remove one-per-user restriction only for new creator type; retain legacy personal-clone uniqueness unchanged.
- `creator_agent_versions`: character ID, generated definition schema version, name/profession/languages/gender/age, voice ID, revision, private/public status, generation provenance, approval/policy, content moderation.
- `creator_entitlement_events`: user, free-first consumed flag, agent/publication operation ID, admin waiver, immutable ID and uniqueness constraint; handle races.
- `creator_fee_policies`: version, effectiveAt, creation amount exact MSNW atomic string, free edits, edit price, revenue share basis/rate, publish cap; staff-only write and audited rollback.
- `creator_paid_operations`: quote/revision/idempotency/ledger references, pending/captured/reversed states and recovery.
- `creator_edit_events`: agent/version, accepted substantive edit, effective policy, fee capture; unique keys.
- `creator_voice_profiles`: agent owner, scoped Google voice ID, reference/consent provenance, adult consent/retention, expiry and delete state. No raw audio in public records.
- `creator_status_policies`: enabled, bounded cadence, time zone, last generation, dedupe occurrence, budget.
- `creator_earning_allocations`: canonical receipt IDs and split/cost-policy refs, pending/settled/reversed state and ledger refs. Ensure append-only journal; no double accounting.
- `creator_agent_share_links` or derive stable public slug with safe blocked/deleted behavior; bind to canonical IDs not display names.

**API candidates** (reuse existing prefixes and versioning, do not duplicate live routes):
- `GET /v1/me/creator`: my agents, entitlements, configured creation/edit fees, earnings summary;
- `POST /v1/creator/masana/drafts`, `POST /:id/generate`, `GET /:id/preview`, `PATCH /:id/draft`;
- `POST /:id/publish/quote`, `POST /:id/publish/confirm`, `GET /v1/creator/operations/:operationId`;
- `PATCH /v1/creator/masana/:id`, `POST /:id/edit/quote`, `POST /:id/edit/confirm`, `POST /:id/pause`, `POST /:id/resume`, `POST /:id/retire`;
- `PUT /v1/creator/masana/:id/status-policy`; `POST /v1/creator/voices/reference`, `POST /.../consent`, `DELETE /.../voice`;
- `GET /v1/creator/earnings`, `GET /v1/creator/earnings/:id`;
- existing `GET /v1/masana`, `/:id`, follow, Status read/comment and directory accept creator-owned active agents;
- `GET/PATCH /v1/admin/creator-policy`, admin creator-moderation actions, admin finance read models.

**API invariants:** Actor from session, not user-supplied ID. Every mutation idempotent/revision-checked. Explicit typed errors: `CREATOR_QUOTA`, `INSUFFICIENT_MSNW`, `QUOTE_EXPIRED`, `PUBLISH_UNCERTAIN`, `VOICE_CONSENT_REQUIRED`, `VOICE_PROVIDER_UNAVAILABLE`, `CONFLICT`, `MODERATION_BLOCKED`. Public responses never contain private voice references, internal prompts, financial records or tenant-scoped identifiers not intended for public use.

## 11. Cost, provider strategy and scalability

No new infrastructure class is needed for the pilot. Reuse Fastify Gateway, PostgreSQL migrations, existing Worker/queue, current object media store, Flutter apps, Google GenAI abstraction, existing wallet. Keep modular adapters to permit provider substitution.

- Measure actual cost of persona text generation, voice preview, voice design/replication, posted audio, paid voice/call, storage and egress. Per-create free preview budget, per-owner daily/monthly budgets, global API cost circuit breaker, bounded concurrency and abuse rate limits.
- Google's official 2026 Gemini 3.8 Flash-Lite TTS price is approximately **$0.0015 per 10 seconds** of generated audio through 2026-12-31, **$0.003** from 2027-01-01, plus text costs, storage and other services. Never treat the full 5000 MSNW as USD or set profitability without published MSNW valuation, backing and FX economics: https://ai.google.dev/gemini-api/docs/pricing
- Proposed pilot acceptance before capacity expansion: cost/account, cost/active agent, weekly auto-post expense, custom voice quota usage, paid contribution margin, earned share and fraud loss, creator retention and discovery-to-first-chat conversion. Publish visible fee quotes in MSNW, no guaranteed fiat value.
- Reconcile provider quota: 200 stored custom prompted/replicated voices per project, expire after 1 year idle; at scale favor prebuilt voices, own quota/cost policy and gracefully unavailable optional voice references. No custom voice must be necessary for publication.
- Candidate provider alternatives are evaluated only if Google cannot qualify desired latency/calls/custom voice/locale, avoiding premature extra vendor and biometric subprocessors.
- Migration/rollback: additive tables, deploy read compatibility first; new creator ownership policy behind server-authorized capability; platform roster unchanged; disable new registrations without taking existing agents/chats/financial obligations offline; reverse failed operations by compensating ledger postings.

## 12. Security, safety, privacy and compliance

- Verify creator ownership on every edit, status toggle, revenue read and voice operation; public agents cannot see owner secrets or private visitor session data. Agent tools use least-privilege allowlisted runtime contracts; users still authorize every consequential wallet/service action. Creator configuration is untrusted prompt data and cannot escalate permissions.
- Display AI identity, deny impersonation and fake professional credentials; tailored safeguards for regulated medical, legal, financial advice, election content, minors and misleading representations. Clear reporting/blocking and appeal process.
- Voice biometrics: adult speaker identity/consent capture, media encryption, access control, secure short retention/deletion, provider-revocation record, consent audit; do not permit uploading random celebrity/third-party samples without the actual speaker's consent and verification. Never publish raw source/consent recordings.
- Creator profiles: public handle/avatar/bio and published agents only; private email, phone, earnings, account/device activity and private customer chats absent.
- Fee/share edits RBAC, privileged step-up where applicable, immutable policy revisions, signed authorized financial operations, replay protections, correct refunds and cost cap enforcement.
- Account deletion: deactivate/retire created agents and voice assets; respect settled/unsettled financial legal retention and customer chat integrity with redaction where permitted. A deleted account never frees a consumed creation entitlement.

## 13. Delivery workstreams, exact-path authority and dependencies

Read current PR heads, `AGENTS.md`, `docs/MULTI-WINDOW-WORK.md`, existing claim registry and docs before claims. Each window claims exact files. Shared migrations/registry/routes/financial executor/root navigation stay under AF00/AF01 and their designated present owners; don't blindly overwrite other windows.

| Wave | Customer milestone and accountable surface | Owner/path guide | Required proof |
| --- | --- | --- | --- |
| W0 | Audit current identity/creator legacy, MSNW, existing Status rights, asset storage and current admin screens; pin updated main & migration plan | Cross-lane AF00 + finance consultation; documentation only | Evidence baseline, exact path claims, no duplicate schema |
| W1 | Public/own user-profile redesign, creator list and consistent visual components | mobile profile/social/theme reused (AF14), API profile read layer | visual 320/360/390/430 px + public/private tests |
| W2 | Agent generation/draft/preview and creator ownership; runtime chat/directory eligibility | packages/identity, packages/masana, packages/agents; gateway domain routes; shared migration owner | newly created eligible character chats; private cross-account denial; no invented skills |
| W3 | One-free/5000-MSNW creation operation, 3 edit allowances, admin fee policies and earnings contract | AF01 Wallet authority + Gateway scoped adapters; admin finance | concurrency, replay, quote, insufficient funds, capture/refund, earning reconciliation |
| W4 | Publish/manage/edit/pause/resume UI; wire quote review and persisted state | mobile My Masana, creator UI and API transport; AF00 route composition | full second-agent quote->receipt and edit free/paid journey |
| W5 | Gender/age voice matching and optional reference consent flow; voice TTS preview | Gateway Gemini/provider adapter, mobile voice sheet; existing voice owners | consent reject/accept, delete, quota and fallback; language listening test; calls explicitly qualified separately |
| W6 | Profession-driven Status schedule and engagement; creator agent public sharing link | existing Status/worker/masana feed with scoped ACL; web preview | publish once/retries, follow/likes/comments, moderation and per-agent budgets |
| W7 | Admin mobile creator policy/moderation/settings and aggregate creator earnings surfaces | admin_mobile screens + audited admin routes | RBAC, policy future-only, financial holds and creator views |
| W8 | Unified integrated qualification and release | shared integrator, signed Android/device and Railway operator | tests, staged DB, provider, backward-compatible main, exact SHA APK, rollback/restore |

**Merge policy:** integrate completed safe code promptly to main through reviewed PRs, preserve protection and actual failing-test gate; mark NOT_RUN precisely when external resources unavailable; no unqualified money movements or voice impersonation activation.

## 14. End-to-end acceptance cases

| Case | Expected evidence |
| --- | --- |
| C01 | Account without characters publishes one free Masana; cross-device second free attempt rejected; disabling or deleting does not restore free slot |
| C02 | Second Masana receives **5000 MSNW** authorized quote; exactly one debit and agent after repeated taps, timeout, cross-device races |
| C03 | Insufficient MSNW leaves draft and no agent published/charge; later funding and new quote succeed; expiry and admin price change shown accurately |
| C04 | Three free successful substantial edits (default), then clear charge; typo repairs, previews and pause/resume do not consume allowance |
| C05 | Creator selects languages, gender, age; generated coherent profile/skills from server allowlist; preview test chat and name edits work |
| C06 | Agent public profile, directory, chat, eligible call, creator attribution and public link all resolve canonical identity |
| C07 | Optional own adult voice plus matching consent yields usable TTS preview, or clearly falls back; removal/revocation works; unsupported Live voice not claimed |
| C08 | Auto-Status Off produces none; On creates bounded profession-related post; retry never duplicates; anyone eligible can follow/react/comment/report |
| C09 | Owner can pause/reactivate without losing financial journal or past authorized conversations; blocked users cannot operate agents |
| C10 | Creator earnings trace to settled paid usage and admin policy; self-spend or disputes don't generate recoverable unbacked MSNW; reversals audited |
| C11 | Unrelated user cannot edit/retire/voice-clone another creator's agent or read private earnings/chats |
| C12 | Admin updates price, free edits and revenue split; old quote/receipt behavior consistent; no retroactive charge |
| C13 | Account switch, offline edits, provider error, quota, suspended/deleted agent and expensive generation attempt all have safe client states and no leaks |
| C14 | Built Android APK on low-memory phone, Railway Gateway+Worker, DB migrations and wallet/provider E2E on pinned SHA; rollback preserves identity and balances |

## 15. Completion criteria and traceability

Every CR screen maps to a supported route/model plus widget test; every C01–C14 maps to integration tests and actual owned code. Track `PLANNED / PARTIAL_IMPLEMENTATION / IMPLEMENTED_UNVERIFIED / VERIFIED_E2E / DEPLOYED_VERIFIED` by milestone and exact commit. Required implementation includes Flutter screens/transports, backend routes, migrations, queue, admin, billing, typed errors, tests, support and full lifecycle, not merely documentation.

**Immediate next engineering action:** start W0 on latest main, inspect exact schema, existing PR heads and claims, then publish a pinned API/migration contract with scoped file ownership for W1–W3. Parallelize only after contract and design states are accepted. Do not add new UI tabs, revitalize clone credits, promise custom Live voice, or conflate source merge with production qualification.

## Evidence links (checked 2026-10-18)
- Google voice design: https://ai.google.dev/gemini-api/docs/voice-design
- Google voice replication: https://ai.google.dev/gemini-api/docs/voice-replication
- Google Gemini Voices API (Beta): https://ai.google.dev/api/voices
- Google TTS: https://ai.google.dev/gemini-api/docs/speech-generation
- Google pricing: https://ai.google.dev/gemini-api/docs/pricing
- Poe bot monetization and authorization/capture approach: https://creator.poe.com/docs/server-bots/poe-bot-monetization-api-documentation
- Project rules: `AGENTS.md`, `CONTINUE-HERE.md`, `docs/MSN-WALLET-P2P-CONTRACT.md`, `docs/workstreams/UI-CONTINUATION-QUEUE-20261012.md`.
- Factory: `https://github.com/Baatiku/Software-Factory-starter-kit/blob/main/.agents/skills/software-factory/SKILL.md`.
