# Workstream 2 — Chat, Voice, Calls and Channels
Date: 2026-10-15. Repository: `Baatiku/Masanawa`.
Baseline: `1d6d47fbd8065aa0ba6ee4d2cd94a3cfc4d338f4`.
Branch: `work/ws2-chat-attachments-20261015`.

This record distinguishes **committed source** from provider, live-device and release qualification. Statuses below are for **Workstream 2 only**. Workstreams 1 (MSNW), 3 (Status/Rooms/Admin) and 4 (P2P) are parallel owner assignments; their incompleteness is not counted as a WS2 success. Their shared dependencies remain explicit below. No Railway/database/ledger/native configuration was changed by this branch.

## Integration history

- **PR #20 — MERGED:** Chat attachment MIME/preview and Telegram media/dedupe source. Merge commit `ad940610b66c7f8817add88a3bd4ac1ad8aa50cd` (https://github.com/Baatiku/Masanawa/pull/20). No automatic jobs executed test steps; source-tested status remains unverified.
- **Second scoped integration (this branch) — IN PROGRESS:** `services/gateway/src/customer_channel_bridge.ts` now accepts explicit WhatsApp/Telegram commands to switch to user-authorized entries from the 26 seeded professional Masana catalog instead of obsolete public Twins, preserving the linked account and separate professional session. `services/gateway/src/main.ts` connects the existing authorized agent directory. Gwana selection uses `Fora`, never the retired voice. Channel turns identify platform-owned professionals as `platform-agent`. Added `services/gateway/src/customer_channel_masana_routing.test.ts`, retired the obsolete `customer_channel_twin_routing.test.ts`, and corrected Telegram tappable menu expectations in `customer_channel_routes.test.ts`. Source qualification remains pending.

- **PR #23 — MERGED:** Authorized professional Masana switching, retire Twin channel routing, Gwana/Fora, chat-linked identity/Telegram menus. Merge commit `e6a557433a54f7e287fc7b074cfe1a7651f29083` (https://github.com/Baatiku/Masanawa/pull/23).
- **PR #27 — MERGED:** `services/gateway/src/whatsapp_linked_device.ts` now accepts linked-device videos, streams/decrypts media under the same 8 MB ceiling without buffering oversized files, reports oversize attempts, scopes message receipts to the remote chat, and serializes incoming turns per customer while allowing independent senders. `services/gateway/src/whatsapp_linked_device.test.ts` tests media classification, byte ordering and streaming limits. Merge commit `cab068d2b7035ad084262fd363438fb03773afb7` (https://github.com/Baatiku/Masanawa/pull/27); the real paired-device and persistent Railway auth-directory behavior still requires acceptance.

- **Current continuation — source prepared:** Corrected personal WhatsApp LID/PN identity resolution in `services/gateway/src/whatsapp_linked_device.ts` and added negative tests in `services/gateway/src/whatsapp_linked_device.test.ts`. Unknown `@lid` users are not converted to guessed phone numbers; signed `remoteJidAlt` and durable Baileys mapping are used to identify actual phone customers. Corrected established Gemini Live lifetime in `apps/mobile/lib/src/core/live_voice_session.dart`: an ephemeral token expires for connection establishment, while admitted call duration/deadline governs already connected calls; added Flutter tests in `apps/mobile/test/live_voice_session_test.dart`. No DB changes. Real provider/phone qualification remains distinct.

- **Offline media and account-fenced cache continuation — IN PROGRESS integration:** `apps/mobile/lib/src/state/ai_chat_state.dart` now preserves outgoing OS picker media inside private per-customer application support storage before online sends or offline queues. It cleans abandoned partial copies and removes customer media on account change. The local thread JSON save captures owner+payload before async work and serializes writes to prevent cross-account or out-of-order overwrites. `apps/mobile/lib/src/screens/chat/ai_chat_screen.dart` restores unsent drafts when file retention fails. `apps/mobile/test/chat_attachment_policy_test.dart` adds private-cache survival and size-failure cleanup tests. Server-side durable media retrieval across devices is still pending and not claimed here.

- **Durable received voice reply continuation — pending integration:** `apps/mobile/lib/src/state/ai_chat_state.dart` now retains server-provided Gemini PCM/WAV audio replies in the same owner-isolated application support cache used for outgoing messages. Message playback after restart no longer depends on OS temporary files. `apps/mobile/test/chat_attachment_policy_test.dart` covers retained bytes, cleanup and format/size bounds. This is local device durability only; the server-backed cross-device readback and signed provider/audio acceptance remain unfinished.

- **Incoming call Firebase notifications — source implemented (not device-qualified):** `services/gateway/src/mobile_push.ts` now routes canonical incoming-call IDs to the high-priority `masanawa_calls` channel with short TTL; ordinary work remains in `masanawa_work`. `apps/mobile/lib/src/core/mobile_push.dart` registers both channels and routes foreground and data-only background incoming calls to a call-category, maximum-importance local notification with a validated call deep link. Added `services/gateway/src/mobile_push_channel.test.ts` and `apps/mobile/test/mobile_push_call_channel_test.dart`. Requires running Android/Firebase acceptance, not a new provider or independent push implementation.

- **PR #32 — MERGED:** WhatsApp PN/LID identity fencing and Gemini connected-call duration correction. Merge `b430f6b4debe2a4eed2158dcc0b1cca043615a2b`.
- **PR #36 — MERGED:** Account-private outgoing media retained for offline retry and ordered local history writes. Merge `b6f4bd6c87b7e5ff0e2b9cc721d98f4e4647036f`.
- **PR #38 — MERGED:** Incoming Gemini voice replies retained in private account media storage across local restarts. Merge `b1c47e26571d6269cd605a8d60e1b35b33456f00`.
- **Incoming-call push continuation — IMPLEMENTED_UNVERIFIED:** `services/gateway/src/mobile_push.ts`, `apps/mobile/lib/src/core/mobile_push.dart` implement explicit high-priority Android ringing notification channels with 60s FCM TTL, foreground and background handling, canonical call-id validation and deep links. `services/gateway/src/mobile_push_channel.test.ts` and `apps/mobile/test/mobile_push_call_channel_test.dart` add regression cases. Actual Firebase delivery, Android background/lock-screen behavior and call expiry still require device/provider acceptance. No paid-call financial authority modified.

## Exact Workstream 2 checklist

- [ ] **IN PROGRESS — Authenticated Masana text, persistence, streaming, retry and history.** Existing `apps/mobile/lib/src/state/ai_chat_state.dart` has history merge, event streaming, offline queue and retries; `services/gateway/src/agent_conversation.ts` handles turns/media. Local message saves are now captured and serialized per account to prevent account-switched JSON cache contamination. Live two-account and provider qualification are outstanding. This branch does not claim end-to-end completion.
- [ ] **IN PROGRESS — Voice-note record, upload, playback, download and persistence, independently from calls.** Existing `apps/mobile/lib/src/core/voice_note_recorder.dart`, `apps/mobile/lib/src/ui/components/voice_note_composer.dart`, `apps/mobile/lib/src/screens/chat/ai_chat_screen.dart`, `apps/mobile/lib/src/state/ai_chat_state.dart` and AF05 handoff include implementation. Outgoing media and server-provided agent voice replies now use account-scoped app support storage for local replay; real Android media and cross-device persisted playback still need device/provider acceptance; do not conflate this with Gemini Live.
- [x] **DONE (source, unverified) — Photo, video, document and audio picker integration.** Updated `apps/mobile/lib/src/screens/chat/ai_chat_screen.dart`, `apps/mobile/lib/src/state/ai_chat_state.dart`. All pickers now stage drafts, imported audio retains its actual MIME (not falsely forced to a recorded M4A voice note), audio uses the existing player, draft limits align with server media caps, picker failures give useful errors, and location requires explicit customer input rather than a hardcoded address. Added `apps/mobile/test/chat_attachment_policy_test.dart`. Live transfer/playback still requires acceptance.
- [ ] **IN PROGRESS — Continuous Gemini Live, Bodi/Fora, interruption, reconnect and transcripts.** Existing `apps/mobile/lib/src/core/live_voice_session.dart` handles live PCM, microphone, interruption, output/input transcript streams and lifecycle. `services/gateway/src/live_voice_token.ts` and `services/gateway/src/platform_agent_bootstrap.ts` provide voice grants and Bodi/Fora configuration. Connection-grant expiry no longer artificially ends healthy calls; network reconnection/resumption, native audio and two-way device tests remain.
- [ ] **IN PROGRESS — Outgoing/incoming Masana calls, background ringing, missed history and push.** Call-specific FCM notification channel wiring is implemented in Gateway + Flutter with tests authored, pending Android acceptance. Existing `apps/mobile/lib/src/calls/incoming_call_*.dart`, `apps/mobile/lib/src/screens/calls/calls_screen.dart`, `services/gateway/src/incoming_calls/` and `services/gateway/src/mobile_push.ts` implement substantial source. Dedicated call notification channel, bounded push TTL and foreground/background handlers are implemented in source; native background ringing, Firebase/LiveKit provider, lock-screen and delivery receipts still need acceptance.
- [ ] **BLOCKED ON WS1 — Canonical MSNW paid-call admission and settlement.** Existing `services/gateway/src/paid_voice.ts`, `apps/mobile/lib/src/voice/` and `apps/mobile/lib/src/calls/group_paid_voice_*.dart` reference historical financial contracts. Must be reconciled through canonical MSNW ledgers and backing, not renamed or spent as legacy Credits.
- [ ] **IN PROGRESS — Personal WhatsApp linked device, admin QR, durable session and shared context.** Existing `services/gateway/src/whatsapp_linked_device.ts`, `services/gateway/src/main.ts` and linked-admin paths already provide the intended adapter (not Cloud API as default). The second integration additionally wires authorized Masana selection through the shared directory; the third adds bounded streaming/video and per-sender ordering; this continuation safely resolves LID/PN identities; confirm persistent `MASANAWA_WHATSAPP_AUTH_DIR` storage/QR and live conversation continuity before calling this done. No credentials or production volume changed here.
- [x] **DONE (source, unverified) — Telegram text/webhook/identity and supported inbound media.** Existing `services/gateway/src/telegram_webhook_registration.ts`, `customer_channel_bridge.ts`, `customer_channel_routes.ts` handle bot webhook registration, phone-controlled linking, inbound/outbound text, photos/voice/docs. This branch adds audio/video/video-note ingestion with per-chat unique durable message IDs, bounded media download, and oversize recovery. Added route tests in `customer_channel_routes.test.ts`. Provider webhook/outbound/identity flow still needs acceptance, so the complete Telegram milestone remains in progress.
- [ ] **IN PROGRESS / WS1 DEPENDENCY — Authorized Wallet and Billing operations via conversations, voice commands and channel menus with explicit spending confirmation.** Reuse existing `services/gateway/src/agent_billing_assistant.ts`, `agent_crypto_assistant.ts` and `customer_channel_bridge.ts`. No new financial authority introduced. Complete MSNW-backed execution and authorization before enabling spending.
- [ ] **IN PROGRESS — All 26 professional personas with portraits, skills, voice profiles, independent chat and Room links.** Existing `services/gateway/src/platform_agent_bootstrap.ts`, `apps/mobile/assets/masana/portraits/` (26 WebP assets), `apps/mobile/lib/src/agents/masana_portrait_avatar.dart` and `services/gateway/src/agent_directory_rooms.ts` supply source. The second integration adds channel switching by authenticated catalog identity. Must qualify actual server seed count and each runtime chat/call/Room target, not count files alone.

The current continuation modifies `services/gateway/src/whatsapp_linked_device.ts`, `services/gateway/src/whatsapp_linked_device.test.ts`, `apps/mobile/lib/src/core/live_voice_session.dart` and `apps/mobile/test/live_voice_session_test.dart`; it does not alter wallet or production credentials.

## Committed changes and scoped proof

| File | Change |
| --- | --- |
| `apps/mobile/lib/src/state/ai_chat_state.dart` | Accurate audio MIME + bounded attachment draft selection |
| `apps/mobile/lib/src/screens/chat/ai_chat_screen.dart` | Preview-first gallery, audio picker/player, explicit location, actionable file errors |
| `apps/mobile/test/chat_attachment_policy_test.dart` | Media MIME and size/limit tests |
| `services/gateway/src/customer_channel_routes.ts` | Telegram audio/video media, per-chat webhook identity, streamed cap, oversize response |
| `services/gateway/src/customer_channel_routes.test.ts` | Telegram media, identity collision, oversized-file tests and updated Masana menu commands |
| `services/gateway/src/customer_channel_bridge.ts`, `services/gateway/src/main.ts` | Authorized professional Masana channel selection; Gwana/Fora |
| `services/gateway/src/customer_channel_masana_routing.test.ts` | Named professional, handle, ambiguity and retired Twin boundaries |
| `services/gateway/src/whatsapp_linked_device.ts` | Personal WhatsApp streaming video, bounded media and ordered per-user processing |
| `services/gateway/src/whatsapp_linked_device.test.ts` | Media kind and streamed byte-limit test cases |

Environment check: Flutter/Dart toolchains are not installed in the available container; Git remote network access is unavailable from it. GitHub source read/write works through the connected GitHub account. **Automated tests and APK were not executed or produced here**. Next executable checks: `cd apps/mobile && flutter test test/chat_attachment_policy_test.dart` and `cd services/gateway && pnpm exec vitest run src/customer_channel_routes.test.ts src/customer_channel_masana_routing.test.ts src/customer_channel_bridge.test.ts src/whatsapp_linked_device.test.ts`; run relevant analysis/typecheck, then two-account/provider/device acceptance.

- `apps/mobile/lib/src/state/ai_chat_state.dart`, `apps/mobile/lib/src/screens/chat/ai_chat_screen.dart`, `apps/mobile/test/chat_attachment_policy_test.dart`: private offline picker media, account-fenced cache and draft-recovery source added in this continuation.

## Real source checkpoint

As of the merged `main` containing PRs #20, #23, and #27, these exact implementation SHAs are present:

| PR | Merge SHA | Scope |
| --- | --- | --- |
| #20 | `ad940610b66c7f8817add88a3bd4ac1ad8aa50cd` | Flutter media drafts + Telegram media/idempotency |
| #23 | `e6a557433a54f7e287fc7b074cfe1a7651f29083` | Authorized 26-Masana channel switching, Gwana/Fora |
| #27 | `cab068d2b7035ad084262fd363438fb03773afb7` | Personal WhatsApp videos, streamed byte caps, ordered sessions |

Verified by repository source inspection (not handset acceptance): 26 `.webp` files exist in `apps/mobile/assets/masana/portraits/`; `apps/mobile/pubspec.yaml` includes that asset directory, and `apps/mobile/lib/src/agents/masana_portrait_avatar.dart` lists 26 matching professional names and image keys. This proves source assets and references exist, not that all server profiles are enabled or that APK/device rendering has passed.

### Remaining Workstream 2 engineering tasks

1. Finish authenticated chat sync across devices and durable provider-backed media download/playback after app restarts.
2. Complete Gemini Live transport interruption/reconnection using fresh authorizations, transcript recovery, and Bodi/Fora audio acceptance.
3. Complete incoming/outgoing calls, background ringing and Firebase/LiveKit notification delivery.
4. Replace legacy paid-call Credits handling with WS1's canonical backed MSNW ledger; no silent balance mapping.
5. Verify and complete persistent WhatsApp linked-device auth volume, admin QR lifecycle, reconnection and linked-ID handling.
6. Qualify Telegram bot webhook registration, profile linking, supported outbound media and cross-channel conversation handoff.
7. Connect authorized conversational Wallet/Billing actions to MSNW spending confirmation and final provider receipts, coordinated with WS1.
8. Activate and qualify all 26 seeded professional Masana server profiles, independent chats/calls, correct voice profiles/Room IDs and portraits.

No merged PR here establishes Android APK build, real Google/Firebase/LiveKit responses, paired-device acceptance, or source test execution. Do not mark the whole workstream DONE until these journeys are implemented and proven.

## Dependencies and next executable changes

Continue the ten checklist items above rather than interpreting this media correction as WS2 completion. Prioritize: Gemini Live reconnection/resume with correct paid-call lifecycle; live-call Firebase/background handling; real linked-device QR/session recovery; server-backed 26-persona call/Room acceptance; MSNW paid-call integration after WS1 canonical financial contract is ready. Do not create a second ledger, new bot identity, fake provider receipt, or separate chat system.
