# Calls — exhaustive voice, human/Masana, group and lifecycle contract

**Audit:** 22 October 2026; exact source baseline `15be4fa807893ae0a8edb6fc4c9d368a9f5293c8`. **Canonical parent acceptance:** `PRODUCT-ROADMAP-20261019.md` P4-08/09/P4-A01–A04, applicable P5/P8 and `SCREEN-JOURNEYS.md`. Source exists ≠ handset/provider verified. **S** source present; **P** partial; **N** not evidenced/missing; **Q** real provider, entitlement, security or installed-device gate; **C** conditional later; **X** excluded.

**Source inspected:** `apps/mobile/lib/src/screens/calls/calls_screen.dart`, `src/calls/{call_history,call_details_screen,incoming_call_controller,incoming_call_screen,incoming_call_transport,incoming_call_coordinator,group_call_controller,group_call_screen,group_call_transport,group_call_audio,group_paid_voice_outbox,group_paid_voice_transport,call_recordings_screen,call_lifecycle_reporter}.dart`, `src/core/{live_voice_session,call_signaling_tone,microphone_capture,live_call_foreground,live_pcm_audio,call_recording,mobile_push}.dart`; Gateway `incoming_calls/`, `human_communication/index.ts`, `talk_live/`, `live_voice_token.ts`, `human_call_media.ts`, `paid_voice*`, call tests. `LiveVoiceState` source enumerates **idle/connecting/listening/speaking/interrupted/ended/failed**; source is not assurance live app audio works. Group calls currently involve **multiple Masana** and separately admitted paid voice, NOT proof of WhatsApp-like group human calls.

**Benchmark:** WhatsApp familiar Calls list/missed/redial, secure group-call user controls, voice chat and 2026 Web calling/transfer/guest-call waiting room; Telegram 2025 secure group calls, invitation, ongoing call layout and 2026 comment/chat model. These features have different service/security costs: do not claim matching participant limits, E2EE, guest join, call transfer or screen-sharing when our actual signaling/media service lacks them. Emphasize excellent **basic** Masana and human 1:1 voice calling first, transparent microphone permission, audible ringback, natural Masana agent-first hello, no forced professional conversation, honest failure/cleanup. Calls remain one root alongside Chats/Status/Wallet/Rooms.

## Calls screen and modal map, layout, controls and states

Entry Chats person/Masana → Call; Calls root history/search → Call details/profile/redial; incoming foreground or native notification → authenticated invitation → Accept/Decline → live in-call; group Masana selection → qualification/consent → group call → billing readback. Every Back/End/resume and push link must bind correct call/account/epoch. Support phone locked, app background/terminated, mic disabled, OS DND, another app owns mic, offline, permission revoked, 320dp/200%/RTL/TalkBack and provider disconnect. Never draw a connected timer before actual authenticated media session.

| ID / state | Original Masanawa top→bottom screen and user controls | Exit, error, permission and recovery |
|---|---|---|
| **CL00 S/P** Calls root | title/search, human and Masana history, favorite/recent if qualified, New call, Recordings, group Masana entry | signed-out/empty/stale/offline, role-specific filtering, preserve scroll |
| **CL01 S/P** Call history search | query, clear, paged results grouped by date/status, compact Call buttons | invalid-length, server error, account switch, back retains source |
| **CL02 S/P** Call details | caller/callee identity, type/outcome/duration/timestamp, Callback/Profile/Message | protected participants, missing/deleted user, correct call origin |
| **CL03 S/P** Human outgoing | verified human identity/photo, Calling/Ringing/Connected, Cancel and speaker | block/unavailable/busy/unanswered, no false connected time |
| **CL04 S/P** Human incoming | caller identity, Accept/Decline, source account, OS incoming surface | signed-in epoch, rejected/expired, duplicate push, lockscreen redaction |
| **CL05 S/P** Masana outgoing | agent identity+AI disclosure, connection/ringback, Cancel, voice entitlement | agent-first natural greeting on answer; provider and approved voice fallback |
| **CL06 S/P** Masana incoming | verified intended Masana identity, Accept/Decline, account/consent | token/admission refresh, expired/unexpected invite, no phantom call |
| **CL07 S/P** Live voice in-call | avatar/name, honest status/time, Mute, Speaker, End, transcript/record if permitted | mic focus, interruption, buffer, call ended, consent-safe record |
| **CL08 P** Connection/reconnect | connecting/retrying, reason, retry original session, End | transport interruption, expired admission, server gone, timeout and cleanup |
| **CL09 S/P** Call ended summary | actual time/outcome, call again, Message, recordings or help | never fabricate connected seconds/paid duration, own-only history |
| **CL10 S/P** Recordings library | local authorized list, timestamps/consent, play/share/delete | storage denied/corrupt, other account cannot read, retention/legal rights |
| **CL11 S/P** Recording detail | waveform/player, recorded-by/time, export/delete controls | stopped when consent revoked, interruption, app closure cleanup |
| **CL12 S/P** Group Masana picker | published eligible Masana cards, selection, mode/fee disclosures | per-agent admission, invalid/restricted/suspended agent, max allowed |
| **CL13 S/P** Group Masana live | selected member states, who speaking, Mute/Speaker, Remove, Resume audio, End | one mic, paid-member reservations, partial agent failure and cleanup |
| **CL14 P/Q** Group admission/review | per-agent quote and duration/fee, cost preview, explicit consent | no auto-payment, readback of reservation and original request |
| **CL15 P/Q** Paid call status | active authorized minutes/charges, pending/settled Wallet history | ambiguous billing completion checks original ID, no double charge |
| **CL16 P** In-call route/permission sheet | mic grant/settings, speaker/headset/Bluetooth when actual platform supports | app audio focus lost, unplug device, platform denial, sensitive-screen safety |
| **CL17 N/P** Call notifications/favorites | missed-call notice, authorized callback and muted caller handling | OS notification off, stale link, reject source unauthorized |
| **CL18 N/P** Human group calls (conditional) | participant lobby, invite, join/leave, participant roster and moderation | **not implemented by group-Masana call source**; separate signaling and privacy proof |
| **CL19 C** Video/screen-share | qualify device camera, video grid, permission, resolution and consent | video is not implied by audio WebSocket/LiveKit token code |
| **CL20 C** Guest link/transfer/waiting room | eligible external guest invite, moderator approval, cross-device handoff | WhatsApp 2026 pattern; **no assumed current Masanawa implementation** |
| **CL21 N/P** Call safety/support | block/report, call failure details, sensitive permissions, balance/help link | record actual technical failure without leaking audio or credentials |

## Atomic call features — each item separately verifiable

### L0 History, discoverability, contacts and call initiation
| ID | State | Exact requirement |
|---|---|---|
| L0-01 | S/P | Calls root unifies actual human and Masana call records without conflating identity. |
| L0-02 | P | Call list shows truthful outgoing/incoming/missed/busy/rejected/failed outcome. |
| L0-03 | P | Duration is only counted after accepted connected media, never ringing. |
| L0-04 | S/P | Call history search limits query and pages stable results. |
| L0-05 | P | Avatar fallback/name/contact handles sanitized; blocked person not exposed. |
| L0-06 | S/P | Call details shows original reference, participant, time and verified state. |
| L0-07 | P | Redial checks current block, voice route, account and agent availability. |
| L0-08 | P | Message/Profile entry returns to same Calls scroll/time filter. |
| L0-09 | P | New call chooser distinguishes Humans and Masana without extra root. |
| L0-10 | S/P | Group Masana selectable but not marketed as group human video calling. |
| L0-11 | P | Sign-out/session change clears private call list before next user loads. |
| L0-12 | P | Search empty/skeleton/offline/error/Retry/permission state. |
| L0-13 | P | Call detail history respects retention and user participant ACL. |
| L0-14 | N/P | Explicit favorites only if server/local persistence and privacy qualify. |
| L0-15 | P | 320dp/200% text has accessible Callback/Profile/Message targets. |
| L0-16 | X | No invented contact/telephone PSTN dialing or phone-number leakage. |

### L1 Outgoing, incoming, admission, permissions, sound
| ID | State | Exact requirement |
|---|---|---|
| L1-01 | P | Outgoing call creates exactly one request identity bound to initiator and target. |
| L1-02 | P | Admission verifies active account/tenant/target/blocked privacy and voice mode. |
| L1-03 | S/P | Ringing UI and audible tones reflect server/ringing state, not local guess. |
| L1-04 | S/P | Decline/Cancel works once, releases mic/session and reports canonical outcome. |
| L1-05 | P | Busy, no-answer and unavailable target have distinct friendly labels. |
| L1-06 | P | Caller/callee/agent image and type verified, truthful AI identity in call. |
| L1-07 | S/P | Incoming push requires correct signed-in account epoch and call ID. |
| L1-08 | S/P | Incoming Accept/Decline idempotent; stale or duplicated push cannot re-answer. |
| L1-09 | P | Locked/background/terminated Android route is safe without raw account tokens. |
| L1-10 | P | Foreground service and mic capture allowed by OS permissions/lifecycle. |
| L1-11 | P | Permission-denied screen offers Settings/Retry/Decline without looping. |
| L1-12 | P | Another active voice note/call owns microphone; cannot double-capture. |
| L1-13 | P | Device audio focus, route change and speaker/headset state are visible. |
| L1-14 | P | Ringing continues or stops appropriately on app lifecycle change. |
| L1-15 | P | Session grant expiry only gates establishment; does not arbitrarily end healthy call. |
| L1-16 | P | Admission expires by trusted server deadline and safe reconnect policy. |
| L1-17 | Q | Physical Android full-screen notification, sound/vibration and native mic routing. |
| L1-18 | Q | Real network caller→recipient invite→media→hangup through Gateway and provider. |
| L1-19 | N/P | Unwanted caller block/report applies before push delivery where possible. |
| L1-20 | X | No unsupported E2EE, PSTN, iOS CallKit or VoIP compliance claims. |

### L2 Live Masana/human audio, conversation and interruptions
| ID | State | Exact requirement |
|---|---|---|
| L2-01 | S/P | State machine idle→connecting→listening↔speaking→interrupted/ended/failed. |
| L2-02 | P | UI timer starts on actual connected session and stops on terminal event. |
| L2-03 | P | User Mute controls mic capture; visible status and accessible label. |
| L2-04 | P | Speaker/headset switch uses device route and handles denied change. |
| L2-05 | P | End Call is reachable at small/large sizes and cleans sessions exactly once. |
| L2-06 | P | Natural agent-first greeting delivered audibly after qualified connection. |
| L2-07 | P | Backstory/personality consistent between live voice and chat/voice note. |
| L2-08 | P | Profession is relevant skill, not automatic sales/support lesson script. |
| L2-09 | P | Incoming/outgoing audio chunks play with correct container/channel/sample rate. |
| L2-10 | P | Device headset/speaker and audio focus not shared with status/media voice. |
| L2-11 | P | Interrupt/barge-in stops overlapping Masana playback without losing user turn. |
| L2-12 | P | Audible message response and fallback if assistant playback fails. |
| L2-13 | P | Provider socket disconnect marks interrupted instead of completed. |
| L2-14 | P | Resume uses original authenticated session/call identity and bounded retries. |
| L2-15 | P | App lifecycle/background resumes only while consented foreground service valid. |
| L2-16 | P | Provider token renewal does not create duplicate paid call or new identity. |
| L2-17 | P | Buffer underrun/silence/unsupported device clearly reported and recoverable. |
| L2-18 | P | Remote hangup immediately stops mic and resets UI/OS foreground indicator. |
| L2-19 | P | Recording only explicit consent, local/private retention and matching receipt. |
| L2-20 | Q | Real handset audible ring→agent greeting→user→agent full response verified. |
| L2-21 | Q | Long call/background/relock/OS interruption actual-device recording verified. |
| L2-22 | N/P | Camera/video/screen-share are separate conditional features, not audio defaults. |
| L2-23 | P | Paused/failed call after reconnection never falsely marks connected. |
| L2-24 | P | Active AI voice never sees human-human chat/private Room content by default. |

### L3 Group Masana, paid voice, recording and recovery
| ID | State | Exact requirement |
|---|---|---|
| L3-01 | S/P | Choose multiple eligible Masana; each has distinct identity and permission. |
| L3-02 | P | Per-member admission/fee/duration clearly reviewed before live join. |
| L3-03 | P | Original group request key saved for retry/reconciliation. |
| L3-04 | P | Shared microphone upstream and per-member audio playback managed coherently. |
| L3-05 | P | Member status joining/listening/speaking/failed/removed correctly visible. |
| L3-06 | P | Which Masana is speaking shown with accessible label, not color only. |
| L3-07 | S/P | Remove participant reliably stops its stream, playback and billing meter. |
| L3-08 | S/P | Mute/Speaker/Resume audio/End entire group maintain one owner. |
| L3-09 | P | Partial member failure does not falsely end working others unless policy requires. |
| L3-10 | P | Paid voice reserve/charge/settle/refund readback on original ID, no duplicate. |
| L3-11 | P | On uncertain billing completion, Wallet status is checked before new paid call. |
| L3-12 | P | Duration cap and explicit consented maximum enforced by server and client. |
| L3-13 | P | Call recording library grouped by user, date, type and permission. |
| L3-14 | P | Playback seek/delete/share/consent/retention and file cleanup per account. |
| L3-15 | P | Deleting local recording does not falsify underlying call or billing receipt. |
| L3-16 | P | Group leave/end tears down all sockets/mic/speaker/OS service once. |
| L3-17 | P | A late member token or callback cannot resurrect ended/removed agent. |
| L3-18 | Q | Validate paid group call with approved actual provider/minute accounting. |
| L3-19 | Q | Verify real audio concurrency, 2+ Masana reply quality, echo/noise. |
| L3-20 | N/P | Separate human group voice requires independent participant signaling and ACL. |
| L3-21 | C | Call transfer/waiting room/guest link/video only when new product budget/need. |
| L3-22 | X | Do not imitate WhatsApp advertised 32-person, Telegram 200-person or E2EE limits. |

### L4 Privacy, notifications, safety, mobile operations and verification
| ID | State | Exact requirement |
|---|---|---|
| L4-01 | P | Blocked caller denied both invite and actual join, not just button hidden. |
| L4-02 | P | Wrong tenant/auth actor cannot fetch call/grant/recording/history. |
| L4-03 | P | Expired canceled call tokens rejected and safe error returned. |
| L4-04 | P | Lock-screen missed/incoming notice redacts confidential identity when required. |
| L4-05 | P | User mute/DND preferences and OS notification permission respected. |
| L4-06 | P | Push after logout/account switch rejected before ringtone/detail open. |
| L4-07 | P | Duplicate push and simultaneous accept/decline on two devices are resolved. |
| L4-08 | P | Incoming call timeout, declined and canceled race produce one terminal result. |
| L4-09 | P | Device revoked while call connects enforces server authorization boundaries. |
| L4-10 | P | Screen shows network degraded/trying to reconnect, never endless spinner. |
| L4-11 | P | Recovery returns to original call record, not unintended paid second call. |
| L4-12 | P | Call/recording export redacts secrets, private person metadata and audit IDs. |
| L4-13 | P | Audio buffers/media URLs not exposed to untrusted log or crash analytics. |
| L4-14 | Q | OS airplane/Bluetooth/headset/unlock/foreground microphone test. |
| L4-15 | Q | Two-person real human call, caller/callee, reject/busy and 2-device race QA. |
| L4-16 | Q | Real provider outage/recovery and high-latency call audio/device traces. |
| L4-17 | Q | Production call recording consent, jurisdiction and retention policy reviewed. |
| L4-18 | P | Screenreader/RTL/320dp/200% mode controls and safe-area/landscape. |
| L4-19 | P | Operator failures include call ID/error code without logging audio payload. |
| L4-20 | Q | Deployment monitors missed invite, admission failure, billing and teardown. |

## Typed contracts and route ownership — source versus planned

- `services/gateway/src/human_communication/index.ts` owns scoped human conversation/call states, privacy and participant authorization under `/v1/human/*`. A successful outgoing call request is *not* proof of incoming receipt or established media.
- `services/gateway/src/incoming_calls/routes.ts` owns `/v1/calls/incoming`, `/v1/calls/incoming/:callId`, accept/decline-style actions and token/grant issue (plus protected internal create/cancel); `src/calls/incoming_call_{transport,coordinator,controller}.dart` and foreground notification must agree on account and original call ID.
- `services/gateway/src/talk_live/`, `live_voice_token.ts` and `apps/mobile/lib/src/core/live_voice_session.dart` own live authenticated voice transport and its state machine. Distinguish session grant expiry from accepted call duration; only server admission, user consent and real provider constraints can end connected call.
- `src/calls/group_call_controller.dart`, `group_call_transport.dart`, `group_paid_voice_*`, `group_call_screen.dart` implement **multi-Masana** calls and paid voice reservations where source present. They are not human group call, live video, screen-share or verified E2EE products.
- `src/core/{mobile_push,live_call_foreground,call_signaling_tone,call_recording,microphone_capture}.dart` owns OS-facing permissions, ring/answer/audio service and recording. `src/calls/call_history.dart`, `call_details_screen.dart`, `call_recordings_screen.dart` own call history/detail/media privacy.

**Needed canonical event shape (future contract where missing):** `{callId, tenantId, accountEpoch, type:human|masana|group_masana, callerId, intendedRecipientId, admissionId, requestKey, state, stateVersion, createdAt, ringingAt, acceptedAt, connectedAt, endedAt, durationAcceptedSeconds, reasonCode, providerSessionId, foregroundOwner, eligibleActions, billingReference?, recordingConsent?}`. Actor-safe GET never reveals bearer/media grants, other participants' hidden identities or live media payload. Every mutation has user+call+epoch authentication, original request key, terminal-state compare-and-swap and audited reasons; reconnect must reuse the same logical call and cannot reauthorize financial spend silently. The UI displays server-derived stage, with platform mic/speaker controls remaining local.

**Golden user journeys (12):** (1) Call from human chat → recipient receives native prompt → Accept → actual two-way audio → End → both see accurate history; (2) caller Cancel before answer → callee notification expires; (3) recipient Decline/Busy → distinct history/no duration; (4) user opens missed call → Message/Profile/Call back; (5) Masana profile → voice Call → audible ringing → agent-first natural hello → uninterrupted 2-turn exchange; (6) Masana agent voice provider unavailable → clear error/text chat option; (7) mic denied → grant via settings → return to original call if still valid; (8) incoming call while app background/locked → authorized route with OS privacy; (9) connect Wi-Fi→mobile network → interrupted/reconnect→same session or honest End; (10) multi-Masana picker → exact paid admission → member statuses → speaker/mute/remove → End → Wallet readback; (11) local recording only after consent → private playback/export/delete; (12) Calls history search → detail → callback, original search retained.

**Adversarial/device journeys (20):** expired incoming invite replay; same invite Accept+Decline simultaneously; two devices answer the same call; blocked callee after ringing; revoked account while streaming; malicious deep link with wrong tenant; app terminated between push and token; denied notification permission, ring tones disabled and DND; mic revoked midcall; another recorder simultaneously claims mic; Bluetooth unplugged, headset switch and speaker failure; OS background/foreground service denied; websocket/LiveKit/Gemini accepts then disconnects; stale grant renewal attempts after End; audio silence due codec mismatch; connection resumes without billing duplicate; high loss/latency and partial transcript playback; group member removed while token renews; simultaneous group end and membership disconnect; paid call reserved but billing result lost and user starts new call; recording from account A visible after B login; malicious fake call ID/recording URL; 320dp at 200%, RTL, TalkBack; call data in crash logs; false assertion of E2EE without client cryptographic proof. Test counts and source checks never substitute actual installed two-party media tests.

**Release waves:** Phase 4 human call consent/permission/invite/terminal and media; Phase 4 A01–A04 Masana natural greeting/voice stream/codec/recording and mic ownership; Phase 4/8 incoming call push/native Android/background/handset; Phase 5/8 existing multi-Masana group controls and independently qualified paid voice reserve/reconciliation; **conditional** later human group/video/guest/transfer only with real signaling, participant consent/security and operating budget. Single integrator owns call admission/media/billing/foreground lifecycle, parallel writers only exact screen/test paths and SHA-specific handoffs. No app APK unless owner separately requests one.

**Reference evidence:** [WhatsApp voice chat in groups](https://faq.whatsapp.com/3966323053691518/?cms_platform=android), [WhatsApp 2026 Web calls, transfer and waiting room](https://about.fb.com/news/2026/07/whatsapp-web-calling-new-features/), [WhatsApp guest calling Oct 14 2026](https://about.fb.com/news/2026/10/introducing-whatsapp-guest-calling/), [Telegram 2025 secure group calls](https://telegram.org/blog/group-calls-made-easy) and [Telegram call comments](https://telegram.org/evolution). Their stated security, caps, device support, regions and provider architecture must NOT be represented as Masanawa's until independently built and verified.

### 23 October 2026 — CL10/CL11 on-device recording library (partial source)

**Navigation:** Calls → Recordings → searchable local list → recording detail (play/pause/seek/speed/share/confirmed deletion) → Back to same list/filter; manual refresh after deletion/return. **Controls:** filter Masana display names case-insensitively, clear, sort newest/oldest/longest, explicit counts of matching/total saved on this device, independent refresh in empty/no-match states. **States:** loading with progress; genuinely empty device library; no match (without misreporting empty); storage error with Retry; signed-out/different-owner denial; old-user pending read discarded on owner/store replacement. Query/sort never leave local memory or contact a provider; id ties keep row order stable after refresh. A test-only adjacent Flutter lifecycle correction now takes resumed → inactive → hidden → paused → hidden → inactive → resumed rather than an illegal paused → resumed shortcut. **Higgsfield Flutter:** 18 focused existing/new widget/recording/focus tests PASS, scoped analyzer no errors/warnings (infos). **Not verified:** physical device, filesystem encryption/backup, regulatory recording consent, actual exported-file privacy, headset/background/OS lifecycle, provider media and Phase 8 acceptance. All parent tasks remain OPEN.

## 23 October 2026 — human-call missed outcome, session-epoch and incoming invitation reliability (P4-08/09, P8-X02 partial)
PR [#331](https://github.com/Baatiku/Masanawa/pull/331), source head before documentation `34bd366d66cd2e76c50a7d522bd3c3b27b4f9cf9`, based on main `8041d9b8efce121ac361373e97b0403bef39658c`. Scoped to `apps/mobile/lib/src/human_calls/{controller,coordinator,screen,transport}.dart`, `apps/mobile/lib/src/calls/incoming_call_coordinator.dart`, and focused incoming/human Flutter regressions.
- An expired ringing Human call is a server-owned missed/terminal outcome, **not** an implicit client Cancel/Decline; expiry now suppresses active/Answer and performs the authorized GET readback. Manual End of an expired ring also rechecks before a state-changing transition. Duplicate End presses do not issue duplicate transitions.
- Controllers/transports/banners are fenced to the signed-in **authorizationEpoch**, distinguishing a fresh sign-in to the same ID from a routine token refresh. Late responses and an old call route cannot control another active call. Expired Masana and Human invitations are filtered before display and rechecked at Open.
- **Evidence at pre-doc source head:** dedicated Chat/Voice/Calls hosted workflow PASS, 183 Flutter tests PASS including new expired Masana banner, backend call contracts PASS, affected Dart analysis 0 errors/warnings; Mobile Build Flutter analyzer and Mobile Build suite PASS. Foundation full serialized backend/Postgres check remained IN_PROGRESS when this entry was prepared. Final merged SHA and exact-head CI must be checked on PR; do **not** infer them from earlier source heads.
- **OPEN:** live two-device Human call, server expiry under timer/clock skew and overlapping accept/decline, same-ID re-login on a real handset, Android background/locked-screen ringing and microphone/DND/Bluetooth routing, screen readers/RTL/320dp/200% text, Masana provider behavior, production/session revocation and Phase 8 sign-off. No APK or provider/deployed acceptance. Parent P4/P8 and 177-screen/820-item checks remain unchecked.

## 23 October 2026 — bounded SQL history, privacy and microsecond cursor source (partial)

From fresh `main 21805db5`, the human-call history/incoming list no longer materializes every matching record before taking 50. The SQL query applies the same current active peer/profile, mutual block and profile-moderation visibility as the individual call view, then limits to 51 for a server-owned next cursor. Literal peer/outcome/ID search and exact participant-owned anchor remain intact. A driver-independent textual timestamp anchors the original `(created_at,id)` keyset, preventing a tied microsecond page from disappearing after conversion to a millisecond Date. Source covers parts of CL00/01/04 and L0-04/11/12/13, **not** entire Calls acceptance.

Focused actual PGlite SQL/communication suite: **20/20 PASS**; Gateway TypeScript typecheck **PASS**. An 80-row full-schema PostgreSQL tied-cursor/block test is authored and awaits configured real PostgreSQL and exact PR CI. Historical visibility, device notification, connected-media duration, Android mic/audio, privacy races, low-data performance, physical TalkBack/RTL/320dp/200%, deployment and P8 acceptance remain separately **OPEN**. No APK, provider action, production migration or claim of certified calling. Existing 22 Calls screens/102 atomic IDs and global 177/820 inventory are unchanged.
