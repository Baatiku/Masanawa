# Masanawa adaptation acceptance matrix — 20 October 2026

**Planning-only gate, NOT test results.** Canonical execution is [PRODUCT-ROADMAP-20261019.md](../PRODUCT-ROADMAP-20261019.md); candidates: [FEATURE-REGISTER.csv](FEATURE-REGISTER.csv) plus [204 unified Room entries](../ROOMS-REFERENCE-FEATURE-INVENTORY.md). Authoritative screen contracts: [SCREEN-JOURNEYS.md](../SCREEN-JOURNEYS.md) and [UNIFIED-ROOMS-PRODUCT-SPEC.md](../UNIFIED-ROOMS-PRODUCT-SPEC.md). The "expected" column is an assertion the future automated/device test MUST prove, never a claim of a passed test.

| Gate | Register / roadmap | Actor -> screen/API/data or provider journey | Expected proof / negative case |
|---|---|---|---|
| AC01 | WA-MSG / P4-12 | Human A -> H03/H04 -> human transport -> talks persistence -> recipient B | Unknown A request, accept/block, delivered/read authority, retry duplicate rejected, C denied; never model-bill human text |
| AC02 | WA-MSG / P4-12 | Message edit/star/pin/archive/filter -> readback from API -> switch device | Historical edit attribution, pinned state and unread correct, no two independent inboxes |
| AC03 | WA-MEDIA / P4-13 | Voice composer -> record/lock/cancel/pause/play -> upload -> B playback | Background/restart, permission-denied, account switch, stale signed-media URL |
| AC04 | WA-MEDIA / P4-13 | File/photo/video attachments -> scoped object storage -> reply/forward | Captions, progress, revoked recipient sees no media and cannot replay upload |
| AC05 | WA-CALL / P4-14 | Voice call A -> B on two actual devices via qualified RTC and push | Ring/busy/decline/reconnect/teardown; no fake connected or unjustified Masana charge |
| AC06 | WA-CALL / P4-14 | Video or participant group call -> call history and in-Room launch | Actual device/media tokens and screen sharing only if qualified; privacy and participant removal |
| AC07 | WA-PRIV / P4-15 | App lock, private media, deleted messages, block lists | Lost device/key reauth, login recovery, media/metadata nonleak; no unsupported E2EE claim |
| AC08 | WA-STATUS / P5-S01 | Human/creator/Masana posts -> Status viewer -> expiry | Scoped audience/seen/muted/reaction/reply, stale content and account switch |
| AC09 | UR-IDENTITY / P5-R01/R10 | Creator -> R03 -> create Room -> R01/R04 + public profile | One immutable ID; no Group/Channel option; duplicate create returns same result |
| AC10 | UR-ACCESS / P5-R03/R11 | Creator invites Member; outsider attempts R04 and media | Hashed limited invite, role/approval, last-owner transfer, ban revokes push/media |
| AC11 | UR-UPDATES / P5-R04/R12 | Creator-only broadcast -> follower R04/R10 reactions/comments | Follower cannot create Update; scheduling after revoke canceled; private follower list |
| AC12 | UR-CHAT / P5-R04/R13 | Member enabled Chat -> posts voice/media/replies -> owner turns Chat off | Composer hidden; old posts retain IDs and authorization, drafts not silently transmitted |
| AC13 | UR-TOPICS / P5-R14 | Creator enables R09 topics -> topic chats/history/notification | Same Room membership and old Room deep link, no duplicate Room, private topic not leaked |
| AC14 | UR-EVENTS / P5-R15 | Member votes in poll/RSVP with owner deadline | Vote replay/stale close prevented, event notifications idempotent, attendee privacy |
| AC15 | UR-MOD / P5-R16 | Moderator R13 report/hold/delete/ban -> audit | Moderator cannot transfer owner or change paid entitlement; restoration retains trace |
| AC16 | UR-PRIVACY / P5-R17 | Creator R18 switches private -> public -> outsider attempts old URL | Old private posts/media/reactions/identity not exposed; explicit publish-only new content |
| AC17 | UR-AI / P5-R05/R18 | Member @Masana in one Room topic -> bounded agent reply | No unrelated private memory, prompt-injection role expansion, AI spending or agent loop |
| AC18 | UR-LIVE / P5-R19 | Real Room stage qualified devices -> speaker/host/record | Clear disabled state without provider; consented recording, logout and teardown |
| AC19 | UR-GROWTH / P5-R20 | Creator R17 insights -> public followers | Aggregate only, no sensitive individual analytics or small-cohort identity re-identification |
| AC20 | UR-ENTITLEMENT / P5-R07/R21 | Old professional Room -> schema migration -> subscription/reopen | Same room ID, lesson/Q&A and historical receipt; expired subscription denied |
| AC21 | UR-STORAGE / P5-R08/R22 | Private Room ban -> offline other device reconnect -> notification | No old account data, revoked topic push/media, idempotent catch-up and backfill |
| AC22 | OP-ACCOUNT / P6-W01–W11 | User wallet -> account/name inquiry -> review -> receipt | Wrong account, blocked target, stale lookup, exact ledger readback |
| AC23 | OP-TRANSFER / P6-W12 | Request-money card from human chat/Room -> Wallet review | Forwarded/expired/forged card cannot authorize debit; human explicit step-up |
| AC24 | OP-TRANSFER / P6-W04/W08 | Duplicate MSNW send after timeout -> backend state recovery | Same client operation ID, one debit, pending/unknown not fake-refunded |
| AC25 | OP-BILLS / P7-S01–S04 | Electricity/TV/airtime/data -> provider lookup -> quote -> Wallet approval | Wrong customer, price drift, provider partial/outage, no duplicate fulfillment |
| AC26 | OP-SAFETY / P8-X03–X06 | Sensitive transfer -> device step-up + risk and eligibility | Biometric enrollment change/lockout, session revocation and authoritative limit |
| AC27 | OP-SUPPORT / P8-X09 | Receipt -> open support case -> real operational resolution | Tenant/account authorized read, no duplicate complaint/fake refund, pending retry |
| AC28 | WA-DEVICE / P8-X07 | Linked device/backup -> login/switch/restore -> Chat/Rooms/Status | No wrong-account secrets, old key/device access revoked, restore validated |
| AC29 | WA-SERVICE / P5-C08/P8-X08 | Creator subscriber inquiry -> staff/AI handoff -> opt-out | No merchant storefront/POS/card UI, no subscriber profile leak or spam sends |
| AC30 | Cross-platform / P8-X10 | All register IDs -> disposition and exact SHA/evidence | No CANDIDATE rows at release without a documented reason, planned missing tasks not disguised as implemented |

## Executable proof contract

When implementing, split gates into **CONTRACT** (typed DTO/route validation), **SQL** (tenant/role/immutability/idempotency), **WIDGET** (all UI states 320px/200%/RTL), **INTEGRATION** (real Gateway/Worker/PostgreSQL with migrations/restart) and **DEVICE/PROVIDER** (actual audio/video/push/custody/bill when enabled). Record commands, environment, commit SHA, pass/skip counts and uncovered external permissions. Distinguish SOURCE_PRESENT, PASS_SIMULATED, PASS_REAL, BLOCKED and NOT_RUN. For each register row, evidence must include exact source path, API endpoint, status, automated test and screen/journey, or an explicit user exclusion/provider-gated note.

## Current PR coordination and launch gates

- Before writing overlapping code, reconcile [human conversations/calls #227](https://github.com/Baatiku/Masanawa/pull/227) and [Masana memory #228](https://github.com/Baatiku/Masanawa/pull/228); both are open at this planning baseline. Shared canonical roadmap and SCREEN-JOURNEYS.md are touched by #227, so one integrator must preserve additions rather than overwrite either branch.
- [Wallet name inquiry #230](https://github.com/Baatiku/Masanawa/pull/230) and [OPay roadmap work #231](https://github.com/Baatiku/Masanawa/pull/231) are merged at the inspected baseline. Do not recreate another Wallet service.
- No signed APK, live provider settlement, actual schema migration or client/provider test is claimed from this docs-only plan.
- Owner exclusions are release-invariant: no merchant-commerce or card UI/API, no invented Room-type selector, no additional root tabs or second membership/financial ledger.
