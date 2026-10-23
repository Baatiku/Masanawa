# Rooms — exhaustive broadcast/discussion screen, moderation and acceptance contract

**Audit:** 22 October 2026, source SHA `15be4fa807893ae0a8edb6fc4c9d368a9f5293c8`. **Authoritative roadmap:** Phase 5 P5-R01–R09/P5-T01 and Phase 8. This detailed contract supplements `SCREEN-JOURNEYS.md`, never replaces the canonical roadmap or claims launch completion. **S** source observed; **P** partial; **N** no bounded source evidence; **Q** provider/device/security qualification; **C** conditional; **X** excluded.

**Owner's nonnegotiable decision:** Rooms are user-created *broadcast/discussion* communities, not lessons, classes or the obsolete Twin product. Old Rooms lesson product/history was deliberately reset, not archived. `room_discussion_screen.dart` retains “lessons/questions” text but its `RoomDiscussionScreen` has **no references elsewhere in current mobile lib**, so classify as *legacy likely unreachable* pending router/build inspection, not a verified live user-facing defect. Human Room content is not silently sent to an AI agent; only permitted explicit Masana mention triggers may receive scoped content.

**Inspected Masanawa source:** `apps/mobile/lib/src/features/rooms/{rooms_screen,room_community_screen,room_community_api,room_membership_screen,room_membership_client,room_discussion_screen}.dart`, `services/gateway/src/room_community/index.ts`, corresponding Room tests. Existing routes include `/v1/rooms/{mine,discover,invitations}`, create/edit/retire, `/v1/rooms/:roomId/community`, timeline, media, participants, reactions, reports/reviews, preferences, invitations and member roles. Files/source are NOT deployed proof. Original Masanawa design borrows Telegram Channels broadcast/discussion separation, pinned post and granular rights; WhatsApp Communities announcement/member clarity; Telegram 2026 connected Communities/welcome messages as *optional* patterns, not mandatory new product. No copied trademarks/assets, no sixth root or classroom resurrection.

**Navigation/layout:** Rooms root → Joined/Discover/Invitations → Room feed → Post/comment → Room Info/Media/Members → Manage controls only if permitted. Back restores selected tab/search/scroll/draft and source post. Deep links reauthorize membership and auth epoch; hidden/private/retired content fails closed. Every screen needs signed-out, initial loading, empty, stale/offline, error/Retry, no permission, blocked, account change, and screenreader/320dp/200%/RTL states. Use one clear primary action and secondary overflow management, not admin buttons in everyone's composer.

## Screens and sheets: appearance, controls, navigation and negative paths

| ID/status | Hierarchy and controls | Permissions / failure / return |
|---|---|---|
| **RM00 S/P** Rooms landing | title/search, Joined/Discover, invitations badge and Create action | empty/offline, tab+scroll restore, per-user scope |
| **RM01 S/P** Joined Rooms | compact unread/pinned/muted avatar/name/post preview | left/revoked member private rows disappear |
| **RM02 S/P** Discover | searchable public broadcast/discussion cards, Join button | blocked owner, private non-disclosure, no eligible Rooms |
| **RM03 S/P** Invitations | sender/context, pending invite, Accept/Decline | expired/replayed/revoked invitation, no public token |
| **RM04 S/P** Create Room | name/description/photo, Public/Private, Admins/All post, comments, Create | validate, original request, failed create retains safe draft |
| **RM05 S/P** Timeline | Room header+count/pin, chronological posts, comment/compose | guest Join; admins-only author, stale/removed hidden |
| **RM06 P** Broadcast feed | admin-signed posts, media, reactions and Comment | subscriber cannot top-level post, muted/archived state |
| **RM07 P** Discussion feed | member messages, replies/mentions, clear membership | removed member cannot send, no lesson UI |
| **RM08 P** Post detail | author/date/body/media/actions and source permalink | retired/scheduled/private post gated for every read |
| **RM09 S/P** Comments | parent, reply list, per-reply actions and composer | disabled comments, revoked membership, pagination |
| **RM10 P** Post media composer | file preview/caption/progress/cancel/retry original ID | MIME/size/permission, app loss, unresolved upload |
| **RM11 P** Shared media | Media/Files/Links, source jump, authorized viewer | expired links, media deletion, private ownership |
| **RM12 S/P** Room Info | name/purpose/visibility/owner/count, Mute/Pin/Leave | guest, admin, owner controls separate; Back to feed |
| **RM13 S/P** Members | avatars/roles/count/search, manager actions | large paging, privacy, removed/banned/member state |
| **RM14 S/P** Add participants | People/Masana search, selection and confirmation | block, owner consent and agent disclosure |
| **RM15 S/P** Invitations manager | issue one-time code, private copy, expiry/revoke | token only shown once, scope+status, failure original ID |
| **RM16 P** Join/private redemption | public Join or code input, Room rules and confirmation | invalid/revoked/expired/blocked, no data leakage |
| **RM17 S/P** Edit Room | name/photo/purpose, visibility, post/comment rules, Save | version/permissions, failed save rollback, back |
| **RM18 S/P** Role management | promote/demote/remove/ban menu, confirmation | protect owner, stale role/admin race, appeal |
| **RM19 S/P** Report review | confidential count/snippet, Dismiss or Remove | manager-only, audit readback and reporter privacy |
| **RM20 S/P** Moderation log | decisions/count/time/reviewer reference, redacted | only qualified reviewer, no forged/deleted history |
| **RM21 P** Reports | post/Room/member reason, evidence, Submit and case | duplicates/false-report, no disclosure to target |
| **RM22 P** Pin/schedule/edit | pin/unpin, if qualified schedule/retire/edit/delete | scheduled/retired unreadable by alternate routes |
| **RM23 S/P** Reactions/mentions | emoji count/toggle, mention and reply parent | no mass agent spam, revoked member denied |
| **RM24 P** Notification preferences | Room mute/pin/mentions/unread/OS permission | lockscreen redaction, quiet hours, stale push |
| **RM25 P** Transfer/leave/delete | choose owner, explicit transfer then Leave/Retire | last-owner blocked, retention and active invites |
| **RM26 S/P** Masana mentions | owner selected agents, mention-only response, activate/remove | explicit trigger, AI identity, private data boundary |
| **RM27 C** Optional community collection | link related Rooms within Rooms tab if demand proven | not new root or mandatory Telegram clone |

## Atomic Room features — testable and individually identifiable

IDs R0–R5 are children of P5-R01–R09 and P5-T01. Mark S/P when source exists but completeness/handset operation isn't established; do not check any parent checkbox simply because this table exists.

### R0 Discover, list, create, enter
| ID | State | Required small action / observable result |
|---|---|---|
| R0-01 | S/P | Rooms root has Joined and Discover, consistent back path. |
| R0-02 | S/P | Unread/pinned/muted preview reflects server-scoped state. |
| R0-03 | S/P | Search by Room name/public description with debounced query. |
| R0-04 | P | Public discovery shows only active/eligible visible Rooms. |
| R0-05 | P | Signed-out, loading, empty, offline, stale and Retry views. |
| R0-06 | S/P | Create Room validates name, description and visibility. |
| R0-07 | S/P | Broadcast versus discussion posting policy picked explicitly. |
| R0-08 | S/P | Public Join versus private invite requirement explained. |
| R0-09 | P | Create request uses stable idempotency and error retains inputs. |
| R0-10 | P | Private token exact format, expiry and user ownership checked. |
| R0-11 | S/P | Incoming invitation accept shows room and result/status. |
| R0-12 | P | Decline/revoke/expired invite resolved without membership leak. |
| R0-13 | S/P | Leave and rejoin public only when server policy allows. |
| R0-14 | P | Search/tab/scroll preserved after create/join/view/back. |
| R0-15 | P | Account switch removes old joined Rooms/unauthorized cached media. |
| R0-16 | P | Type/avatar/owner/member count readable on 320dp/200% text. |
| R0-17 | N/P | Recommendation ranking honest; no fabricated popularity or ads. |
| R0-18 | X | No resurrected lesson creation/class/course product. |

### 23 October 2026 — Joined/Discover server search and Room pages (partial source)

Base `main 7ce1329004bfa438c40a7234f89158629e6aaa3b`; source `17e0dd09ea52c8fc5e825107f45185e76a586483` plus navigation/test repair `f9bc0c6b`, [PR #327](https://github.com/Baatiku/Masanawa/pull/327), branch `feat/rooms-list-search-pagination-oct23`. P5-R01/R02/R08/R09; R0-01–05/14/15: Joined and Discover now page beyond the first 100 Rooms and search names/descriptions on the server with debouncing, literal wildcard escaping, full PostgreSQL microsecond ordering and personal pinned ordering. Every page rechecks current tenant/account/membership/visibility/ban/block scope; cursor scope includes collection and exact query. Migration 0013 adds indexes only. Existing canonical Room projection remains shared, preserving concurrent identity work.

Mobile retains rows/cursors on transient failures, deduplicates pages, rejects repeated cursors and fences old query/account responses. Search and collection changes preserve independent invitation pages. Returning from an existing Room retains loaded pages and canonically refreshes that Room; known lost access removes its preview, transient failure retains recoverable data. Create/join refresh the collection after return. No false successful-empty state follows denied paging. Eighteen new Flutter/transport journeys cover search, paging, back navigation, account fences and 320dp/200%-text/RTL.

**Executed:** 70 backend tests PASS, including 17 actual PostgreSQL 18 cases; Gateway strict typing/build PASS. After replacing concurrent client projections with sequential queries, all ten focused Room-list unit/PG cases PASS without the deprecated concurrent-client warning. Initial hosted backend checks PASS; hosted Flutter found an existing debounce timing assertion, now repaired. Final exact-head hosted checks remain required. Higgsfield tools are unavailable in this session; hosted Flutter is source evidence, not installed-device acceptance. No APK, production migration/deployment or provider action.

**Remain OPEN:** all parent P5/P8 and 177-screen/820-requirement acceptance gates, timeline/member/moderation pagination, whole-Room platform review/staffing, durable offline/native cache/push revocation, physical-device/provider and deployed qualification. Other windows' Status/Wallet/P2P/Bills/Calls work and #300 identity projections remain separate.

### R1 Feed, post, comments, media, receipts
| ID | State | Required small action / observable result |
|---|---|---|
| R1-01 | S/P | Only owner/admin post in broadcast mode; correct reason shown. |
| R1-02 | S/P | Members may post in discussion mode within server policy. |
| R1-03 | P | Header identity, Room mode, member count and pinned content. |
| R1-04 | P | Post body/date/author, trusted status and native attachment preview. |
| R1-05 | S/P | Server-confirmed timeline ordering and refresh/cursor state. |
| R1-06 | P | Post draft retained when navigating away, correct Room/account scope. |
| R1-07 | P | Post reply references immutable authorized parent, thread back. |
| R1-08 | P | Comment permission toggle enforced server-side on read and write. |
| R1-09 | P | Reaction tap toggles own emoji and correctly aggregates count. |
| R1-10 | P | Duplicate/replayed reaction does not inflate counters. |
| R1-11 | P | Visible post can be reported once per report event with reason. |
| R1-12 | P | Pinned notice and Unpin are role-gated; no stale pinned deleted post. |
| R1-13 | P | Media picker supports eligible types, MIME/container/size validation. |
| R1-14 | S/P | Uncertain upload retains same request+local file fingerprint on restart. |
| R1-15 | P | Retry original or Discard, and block duplicate post until resolved. |
| R1-16 | P | Media detail checks membership on every protected read. |
| R1-17 | P | Photo/video/file preview plus accessible name, size and permission errors. |
| R1-18 | P | Media/Files/Links album grouped by type/date and source post. |
| R1-19 | P | Scheduled/retired/removed posts cannot leak through reaction/comment/media APIs. |
| R1-20 | S/P | Versioned own-human post/reply Edit/Remove, original receipts and restricted audit source in #336; retention/device/deployed qualification remains open. |
| R1-21 | N/P | Long thread cursor and jump-to-parent without duplicate row. |
| R1-22 | P | Low-data/offline draft remains private and recoverable. |
| R1-23 | P | No visible post/empty comments/error states are distinct. |
| R1-24 | N/P | Reported post public state not changed by unreviewed single report. |

### Shared-media history and source navigation — 23 October 2026 (partial source)

Base `main 9d6d5a9e5188ffc683a0f25d846f0c6fdd2bb786`; source `80fd9d04add69577b27f6d20f0b63035d419c96d`, branch `feat/rooms-shared-media-library-oct23`, [PR #333](https://github.com/Baatiku/Masanawa/pull/333). P5-R04/R06/R08/R09, R1-16/18/19 and R5/P8: Room Info → Shared media → Photos/Videos/Audio/Files, literal filename search, dated rows, older pages/Retry and exact source-parent thread. Every metadata page reapplies current membership/entitlement, tenant/Room, published/due parent and visible-reply rules. Unsent uploads are excluded; full PostgreSQL microseconds and media-ID ties avoid cap/tie omissions. History selects metadata only, with no attachment byte bodies/uploader/request IDs. Additive migration 0016 adds a read index. Existing byte GET, posting/financial/provider authority and canonical identity projections are preserved.

The new secondary Flutter library replaces Info's truncated passive filename panel. Search/type changes discard old results; older pages deduplicate and reject cursor cycles, transient failures retain recoverable rows, access denial clears private metadata and invalidates pending pages. Account/Room/API changes fence old callbacks and source navigation; periodic membership readback removes revoked results. Source return revalidates previously loaded pages and retains the library's search/filter/scroll context. No persistent media cache, automatic body download or new external-share action. Existing protected thread/viewer owns attachment opening.

**Evidence:** Gateway strict typing and production dependency build PASS. All 100 consolidated Room backend tests PASS, including 25 actual PG18 cases (six new backend plus two new PostgreSQL HTTP cases). Fifteen Flutter/transport cases authored, including complete Info/library/source/Back navigation. Initial hosted checks found one older moderation assertion depended on viewport position; repaired to scroll to the existing error before checking it. Exact-head hosted Flutter/full checks remain in progress at this checkpoint. Source parser/formatter is not Flutter validation. Higgsfield unavailable in this session; final exact-head checks and merge evidence belong to #333. No APK, live provider, deployed migration or handset acceptance.

**OPEN:** all P5/P8 parent and 177-screen/820-item acceptance gates; link extraction/library, native image/video/audio/PDF preview qualification, durable cache/push/media revocation and process-death recovery, versioned author edit/delete, member pagination, central platform moderation/staffing and device/provider/deployed qualification. Preserve other windows' Status/Wallet/P2P/Calls source and pending #300 identity/layout work. Safe merge target: fresh main with all current-head checks green; next source is author editing/removal and member paging.

### Versioned human author edits/removals and durable original recovery — 23 October 2026 (partial source)

Base `main 42797204036d17222e62194c24831b5c1551f956`; source `a83196cd914e243794ab2f0567f57d66f383fe49`, branch `feat/rooms-author-content-changes-oct23`, [PR #336](https://github.com/Baatiku/Masanawa/pull/336). Integrated fresh main P2P #334 (`7875ba9b`) through normal merge `f974dcc5`, preserving the other window's source. Scope P5-R04/R06/R08/R09, R1-04/20/22, R5 and P8 recovery: own-human post/reply author controls use current server membership/entitlement, author, posting/comment policy, expected moderation revision and immutable original request fingerprint. Stale edits cannot overwrite changes; managers cannot edit another human's body. Own removal remains possible when posting/comments are closed. A parent removal hides its replies and media and clears restore markers. Additive migration 0017 adds edit times and restricted before/after audit; no audit bodies/fingerprint are returned by recovery APIs.

Actor/Room/target/key-scoped GET receipts recover accepted edit/removal outcomes even after later removal; current content is independently projected or absent. Original creation retries compare the immutable creation payload after editing, retaining the original post ID and never creating a second post. Edits do not requeue mentions, providers, notifications, charges or finance operations; earlier Masana responses can refer to earlier post text. Existing manager removal/pin/comment authority and the canonical identity projection callback remain intact.

Flutter Room timeline → Edit or remove your content → versioned original-text editor / explicit removal confirmation → canonical readback on Back. Date, Edited and truthful Masana AI labels are shown. Encrypted account/Room storage freezes the original body/target/version/key and a bounded selected-content preview before transmission; same-Room storage operations serialize, refuse replacement of another pending change and refuse a stale clear. Restart performs GET recovery only; explicit retry rechecks and sends the same original intent. The Room banner recovers a pending removal whose row is absent. Clear saved retry warns it cannot cancel a server request and rechecks status before clearing. Account/Room/API changes and fresh/periodic membership checks clear private editor state and discard old callbacks. Pending payloads are not telemetry or a persistent media cache.

**Executed:** all 112 consolidated Room backend tests PASS (23 files, 193.84s), including 29 actual PG18 cases. New tests cover duplicate/competing editors, foreign/stale revisions, policy closure, restricted audit rollback, parent/media removal, original create replay, minimal receipt readback and lost membership. Gateway strict typing and dependency production build PASS. Nineteen Flutter/storage/journey tests authored; hosted current-head Flutter/analysis/full checks remain merge gates. Parser/formatter is not Flutter validation. Higgsfield unavailable in this session. No APK, deployed migration, provider/live-money action or installed-device qualification.

**OPEN:** all P5/P8 and whole-product acceptance; restricted audit retention/erasure/staff access policy, ordinary unsaved edit draft retention, member pagination, link/native media library qualification, native cache/push/process-death recovery, platform moderation/staffing and device/provider/deployed qualification. Canonical 177-screen/820-item totals and parent checkboxes remain unchanged. Preserve pending #300 identity/layout projections and other windows' Status/Wallet/P2P/Calls work. Safe merge target: fresh main after exact-head checks/review; next independent source: complete member history/search/management paging and integrate qualified identity work.

### R2 Membership, access, visibility and permissions
| ID | State | Required small action / observable result |
|---|---|---|
| R2-01 | S/P | Owner/admin/member role from server, not route UI variable. |
| R2-02 | P | Public and private Room listings enforce membership/non-disclosure. |
| R2-03 | P | Member count based on active eligible memberships. |
| R2-04 | S/P | Member list shows authorized identity/role/status only. |
| R2-05 | S/P | Manager can invite/add eligible humans by scoped lookup. |
| R2-06 | S/P | Owner may select authorized published Masana with AI disclosure. |
| R2-07 | P | Invite code shown once, copied intentionally and safely redacted. |
| R2-08 | S/P | Invite expiry, revoke, one-time replay and join conflict handling. |
| R2-09 | S/P | Server enforces promote/demote/remove and role hierarchy. |
| R2-10 | P | Removed/banned member loses feed/media/comment/push ability immediately. |
| R2-11 | P | Membership changes invalidate cached private content/deep links. |
| R2-12 | P | Blocking member across social graph respects public privacy rules. |
| R2-13 | P | Owner cannot leave without verified transfer; no phantom ownership. |
| R2-14 | S/P | Explicit recipient ownership offer/accept/decline/cancel and original-offer recovery merged in #311; device/notification acceptance open. |
| R2-15 | P | Room retirement prevents new joins/posts/invites and preserves audit policy. |
| R2-16 | N/P | Anonymous display/role hiding only with reviewed privacy policy. |
| R2-17 | P | Rate limit joins/invites/spam and informative throttling. |
| R2-18 | P | Wrong tenant/identity/account switched denied uniformly. |
| R2-19 | P | Room user profile/media links never expose restricted human details. |
| R2-20 | C | Linked community containers only after explicit need and access rules. |

### R3 Moderation, disputes, logs and ownership
| ID | State | Required small action / observable result |
|---|---|---|
| R3-01 | S/P | Report Room vs report post vs report reply are separately scoped. |
| R3-02 | P | Report reason bounded, sanitized and linked to canonical target. |
| R3-03 | P | Duplicate reports cannot inflate unique-reporter count. |
| R3-04 | S/P | Manager summary shows confidential counts with no reporter names. |
| R3-05 | S/P | Moderator may Dismiss or Remove post under server authority. |
| R3-06 | P | Decision includes timestamp, operator ID, reason and target revision. |
| R3-07 | S/P | Immutable review log persists after dismissal and further reports. |
| R3-08 | P | New report after dismissal reopens appropriately without rewriting old audit. |
| R3-09 | S/P | In-Room author removal cases/appeals and independent manager Uphold/Restore with public feedback in #315; platform/access-lost and device acceptance remain open. |
| R3-10 | P | Removed post cannot be retrieved via attachment, comments or search. |
| R3-11 | P | Reports on scheduled/private/retired content honor legitimate visibility. |
| R3-12 | P | Member ban/remove/invite revoke confirmed with consequences. |
| R3-13 | S/P | #311 transfers only after recipient acceptance, retains members/history and fences leave/removal; deployed/device acceptance open. |
| R3-14 | P | Delete/retire Room confirms irreversible exposure changes, not arbitrary history wipe. |
| R3-15 | P | Access to moderation records limited to manager and operator roles. |
| R3-16 | P | Concurrent moderator decisions are version-fenced, no contradictory audits. |
| R3-17 | N/P | Anti-spam thresholds and repeat offender actions require server policy. |
| R3-18 | Q | PostgreSQL authorization/role/banned/revoked and audit tests on actual schema. |
| R3-19 | P | Moderation help/report feedback never claims appeal decision before review. |
| R3-20 | X | No unmoderated AI auto-removal or owner-independent covert admin rights. |

### 23 October 2026 — Moderation queue and author-history pages (partial source)

Base `main 52e1c242dc3bd8366a60ea2f7601d026e253dc98`; source `1b7dac52`, [PR #328](https://github.com/Baatiku/Masanawa/pull/328), `feat/rooms-moderation-pagination-oct23`. P5-R06/R08/R09, R3/R5 and P8 recovery/account fences: post/reply report summaries, post/reply review histories, own removal cases and manager appeals now provide scoped keyset pages beyond the old 100/30 caps. Cursors bind tenant/viewer/Room/resource, retain full PostgreSQL microseconds and ID ties, and never grant access. Every page reapplies current membership/manager/visibility/pending predicates. Aggregate report counts/excerpts omit reporter identity and reasons. Appeals retain pending-first priority; these are live queues, so Refresh is required to see changed priorities or new arrivals. Migration 0014 adds read indexes only; decisions and authority are unchanged.

Room Info → Moderation preserves Back/navigation and adds independent older-page/retry controls to removed content, reported replies, appeals and expanded reply history. Transient failures retain existing rows and original cursor; identities deduplicate, repeated cursors fail, and account/API/Room changes discard late replies. Current role is checked before paging; lost access clears details/actions, with no false successful-empty state. Actions remain disabled during paging and require existing canonical readback. Legacy first-page responses remain usable without invented pagination.

**Validation:** Gateway strict typing and production dependency build PASS. Five new unit cases and two actual PostgreSQL 18 HTTP cases cover >100 reports/>30 histories and cases, microsecond ties, cursor scope, privacy and revocation; initial consolidated Room run: 75/77 PASS, with two test expectations incorrectly asking for 403 instead of the existing private-Room concealment 404. Assertions repaired; all seven affected paging cases PASS, including both actual PG18 HTTP cases. All 77 cases are covered by the consolidated pass and focused repair; 19 actual PG18 cases are included. Twelve Flutter journeys cover each section, retry, lost access, manager demotion, repeated/legacy pages, stale API/Room replies and 320dp/200%-text/RTL. Hosted exact-head checks remain merge gates; formatting is not Flutter validation. Higgsfield tools unavailable in this session; no APK, production migration/deployment, provider or installed-device acceptance.

**Remain OPEN:** all P5/P8 parents and 177-screen/820-requirement acceptance; timeline/member pagination, whole-Room platform moderation/staffing, appeals after lost access, exact older-case outcome lookup after refresh, durable native cache/push, handset/accessibility/provider/deployed qualification. Concurrent Status/Wallet/P2P/Calls and #300 identity work remain separate.

### 23 October 2026 — Original moderation operation and older-case recovery (partial source)

Base `main 40d8ef40061448fedd2765f467ac182ee5272be1`; source `2864f6a8`, [PR #329](https://github.com/Baatiku/Masanawa/pull/329), branch `feat/rooms-moderation-operation-recovery-oct23`. P5-R06/R08/R09, R3/R5 and P8-X recovery/account isolation: exact author-case and manager-appeal reads work outside the first page. A separate operation lookup binds current tenant/member, original actor, Room, action, target/kind and request ID; only the actor's minimal canonical receipt is returned. Other actors/targets return no receipt, current permission loss remains concealed, and historical reviews are not rewritten or confused with present content state. No schema or financial authority changes.

Room Info → Moderation encrypts the exact reason/decision/request locally under account/Room before POST, clears it only after actor-bound receipt readback and local deletion, and fetches the exact older case for the visible outcome. Restart performs reads only. Explicit Retry original retains the saved identity/payload; malformed protocols/receipts, unsupported Gateways and storage/read failures block new mutations. Local Clear saved retry confirms that it cannot cancel a delayed server request, rechecks receipts and requires fresh canonical state before another decision. Reasons are private drafts, never telemetry. Current membership/manager and independent appeal authority stay server-owned.

**Executed:** consolidated Room run 83/84 PASS; the real HTTP case found missing explicit new GET registrations. Route declarations repaired; all seven affected unit/actual PostgreSQL cases then PASS. Overall 84 cases covered, including 21 actual PG18 cases; Gateway strict typing/dependency build PASS before the additive route repair, final hosted builds remain gates. Fifteen new Flutter/storage cases authored for restart/read-only recovery, exact older outcomes, original retry, local clearing, storage failures, compatibility, mismatched/late-account receipts, scoped secure storage and 320dp/200%-text/RTL. Exact-head hosted Flutter/analysis/full CI pending. No APK, production migration/deployment, provider or installed-device acceptance; Higgsfield tools unavailable in this session.

**Remain OPEN:** all P5/P8 parents and whole-product acceptance; timeline/thread/member pagination, author edit/delete and native media/cache/push catch-up, whole-Room platform review/appeals after lost access, staffing, handset/provider/deployed qualification. Status/Wallet/P2P/Calls and #300 identity paths are preserved; only additive route declarations touch the shared Room router.

### 23 October 2026 — Searchable paged Room history and exact threads (partial source)

Base `main f7398910f6c16f4389b771fcb797a076ad2b8e98`; source `bb070f05`, [PR #332](https://github.com/Baatiku/Masanawa/pull/332), `feat/rooms-timeline-search-threads-oct23`; latest Calls recording library #330 integrated without conflict. P5-R02/R04/R08/R09, R1-05/21/22 and R5/P8 recovery: one chronological keyset stream combines visible posts, human replies and active Masana approved answers, replacing separate truncating caps. Literal body search and parent-thread reads bind tenant/viewer/Room/query/parent; full PostgreSQL microseconds plus ID/kind ties avoid skipped rows. Every read rechecks membership, current visibility/schedule, parent visibility and Masana activation. Exact thread parent is independently read even outside the root cap. Migration 0015 adds read indexes only; no new financial/provider/write authority.

Mobile uses explicit search, manual Load older/Retry, deduplication, exact parent thread routes and parent-bound replies. Closed threads cannot create a root post. Back/Info return revalidates the previously loaded page count; old query/Room/API completions are discarded. Query/thread caches and drafts are isolated; fallback requires fresh membership and cannot mask denial or malformed protocol. Long-history catch-up checks current membership without downloading every older page on each poll. Delayed send/upload/report activity is scope-fenced. Large-text Room header gains bounded height and one-line identity; canonical owner/member identity work in #300 remains separate.

**Executed:** all 92 Room backend cases PASS locally, including 23 actual PG18 cases; Gateway strict typing/dependency production build PASS. Seventeen new Flutter/transport journeys authored for search/clear/stale queries, older pages/retry/repeated cursor/revoke, exact threads/closed comments/Back, account/Room fences, 320dp/200%-text/RTL and GET transport. Hosted exact-head Flutter/analysis/full checks remain merge gates. Parser/formatting is not Flutter validation. Higgsfield tools unavailable in this session; no APK, deployed migration, provider action or physical-device qualification.

**Remain OPEN:** every parent P5/P8 and whole-product acceptance; versioned author edit/delete, member/shared-media pagination, platform moderation/appeals after lost access and staffing, native cache/push/media recovery, handset/provider/deployed qualification. Other windows' Status/Wallet/P2P/Calls and #300 identity projections are preserved. Shared timeline router now delegates reads through its existing projection callback; preserve that callback and canonical identities during future integrations.

### R4 Masana, notifications, scheduling and media recovery
| ID | State | Required small action / observable result |
|---|---|---|
| R4-01 | S/P | Only qualified published agent selectable for owner-enabled Room mentions. |
| R4-02 | P | Clear AI label on every Masana response in a Room. |
| R4-03 | P | Human members expressly mention addressed agent to request response. |
| R4-04 | P | Only context allowed by server Room/AI policy enters that reply, never global memory. |
| R4-05 | P | Agent mention spam/repeat and role-controlled activation with rate limits. |
| R4-06 | P | Creator/owner can deactivate/remove agent without deleting human posts. |
| R4-07 | N/P | New members see bounded rules/welcome notes if authorized, not massive spam. |
| R4-08 | P | Room unread and mentions derive from server read cursors. |
| R4-09 | P | Mute/Pin preference owner-scoped; OS notification disabled respected. |
| R4-10 | P | Private Room push body redacts member identity/media content on lockscreen. |
| R4-11 | P | Deep link from post/invite push reauthenticates and checks membership. |
| R4-12 | P | Schedule date/time for posts only where existing service actually supports it. |
| R4-13 | P | Scheduled/retired visibility forbidden through alternate read APIs. |
| R4-14 | P | Upload after app kill resumes same identity/file, not duplicate post. |
| R4-15 | P | Missing local file requires original re-selection, not false recovered success. |
| R4-16 | Q | Real Android media picker/permission/storage/low-data/background tests. |
| R4-17 | N/P | Reported/revoked media cached copies removed according to scope and retention. |
| R4-18 | N/P | Polls/events/voice Room sessions are optional and require typed endpoints. |
| R4-19 | C | Telegram 2026 related Communities collections not an extra root/launch gate. |
| R4-20 | X | No legacy education/lesson Room, forced business identity or cloned channels UI. |

### R5 States, accessibility, telemetry and release controls
| ID | State | Required small action / observable result |
|---|---|---|
| R5-01 | P | Loading skeleton, retry and truthful stale-cached state for every Room view. |
| R5-02 | P | Offline reads disclose staleness and don't execute protected writes blindly. |
| R5-03 | P | Session epoch clears private Room data before new account renders. |
| R5-04 | P | Race: admin removes member while their post/attachment request in flight. |
| R5-05 | P | Race: manager toggles comments while member submits reply. |
| R5-06 | P | Race: post retired while someone reacts/views media, alternate routes fail closed. |
| R5-07 | P | Race: invite revoked after redemption started, exactly one membership result. |
| R5-08 | P | Race: owner transfer while creator attempts retire/leave. |
| R5-09 | P | Rate-limit abuse rejects unauthenticated and same-user multiple report spam. |
| R5-10 | P | 320dp at 200% text maintains readable action controls and form labels. |
| R5-11 | P | RTL, TalkBack, noncolor-only states and high contrast on cards. |
| R5-12 | P | Android back/drafts/search/scroll and deep link restoration. |
| R5-13 | Q | Real deployed DB migrations resetting lessons tested without unrelated data loss. |
| R5-14 | Q | Real provider and device media readback, content revocation and notification QA. |
| R5-15 | Q | Admin moderation evidence in audit logs and rollback plan for schema changes. |
| R5-16 | Q | Production abuse reporting/appeals with operator response time policy. |
| R5-17 | Q | Physical-device tests for private Room invite, join, mute, post/reply, revoke. |
| R5-18 | P | Original API and case trace IDs attached to failures, not claimed as completed. |

## API ownership, golden and adversarial journeys

`services/gateway/src/room_community/index.ts` is the single current Room authorization and data authority. Flutter `rooms_screen.dart` (index), `room_community_screen.dart` (create/feed/info/management), `room_membership_screen.dart` (invites) and account-fenced `room_community_api.dart` must share stable IDs and typed records, not invent a parallel “channels” service. Legacy `room_discussion_screen.dart` (lesson copy, no references in current mobile `lib`) must be retired or removed **only after a verified route/import/build/behavior check**; never re-enable the abolished lessons product. Post/comment/media/report read ACL must all enforce scheduled, retired, banned and revoked states. Single integrator owns contested schema, routes, migrations and authorization; widgets/tests have exact-path ownership and SHA handoff.

**Twelve golden journeys:** signed-in Joined→Discover→Join→return; private invitation→Accept→feed; Create public Broadcast→publish admin post→member comment; Create Discussion→member post→reply→reaction; upload photo/video→server readback→Media list; post pinned→source jump→unpin; owner Add member→promote admin→post controls; user Report post→manager Dismiss/Remove→audit; mute/pin toggles→restore preferences; enable Masana mention-only→qualifying user mention→clearly labelled response; owner transfer→owner leaves while Room stays; account A leaves→B session cannot read A's restricted content.

**Adversarial cases:** forged owner/admin role; private Room direct URL; revoked invite; expired invite replay; duplicate create/upload with same ID; retired/scheduled post alternate GET/comments/media; blocked human enters; admin removes posting member mid-send; media URL forwarded to outsider; malicious MIME/oversized attachment; forged report count; parallel conflicting decisions; owner tries to abandon before transfer; old lesson screen inadvertently routed; loss of notification permission; app kill after upload request accepted; 320dp/200% TalkBack and RTL; account switch while async media loads; abandoned/disputed archived post support data. **No live-device/production acceptance inferred from test source.**

**Implementation waves:** P5-R01–R03 navigation, posting and original design hierarchy; P5-R04–R06 reactions/roles/reports and immutable moderation audit; P5-R07–R09 join/revoke/mute/visibility/AI mention and shared media; P5-T01 media status/process death/Status-adjacent retries; P8-U/X/APK low data, private push, accessibility, real DB and installed devices. Do not add a new tab, a lesson calendar or Telegram monetization just because their source is available. No unsolicited APK.

**Public references:** [Telegram Channels FAQ](https://telegram.org/faq_channels?setln=en), [Telegram admin rights and discussion model](https://core.telegram.org/api/channel), [Telegram Communities and ephemeral bot replies (July 2026)](https://telegram.org/blog/communities-editor-invisible-messages?setln=en), [Telegram welcome messages (Aug 2026)](https://telegram.org/blog/welcome-messages-buttons-TG-13?setln=en), [WhatsApp Communities](https://faq.whatsapp.com/495856382464992) and [announcement controls](https://faq.whatsapp.com/582420703681043). Competitor limits/rules are evidence of design patterns, not Masanawa promises.

**23 October 2026 source continuation — #315:** R3 reply reports and author appeals use additive removal revisions and canonical Room locking. Later deletion or a different removal cannot be reversed by an old appeal; parent restoration preserves independently removed replies. Author cases and manager summaries omit reporter identity/allegations. Local 52 Room tests plus the final 15-case current-removal rerun passed; hosted exact-head Flutter/CI gates and deployed/device/staffed-platform acceptance remain separate. No parent requirement is completed by this checkpoint.

**23 October 2026 invitation-cap source continuation — #322:** R0-11/12, R2-07/08 and R5-03/07 now have scoped recipient/manager keyset pages, exact original-issuance metadata lookup beyond the first 100 records, and manual older-page/retry/account-fenced Flutter controls. PostgreSQL microseconds and invite-ID ties are preserved; current membership/revoke/expiry/block filters are reapplied. Local 60 Room tests passed including 15 real PG18 cases. Hosted exact-head Flutter/CI and all deployed/device/provider gates remain separate; other Room collection pagination is still open.
