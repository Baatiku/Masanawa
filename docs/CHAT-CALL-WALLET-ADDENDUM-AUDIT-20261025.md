# Chats, calls, portraits and wallet addendum audit

Owner-requested addition to [the Status/wallet plan](FEED-WALLET-UX-AUDIT-AND-PLAN-20261025.md). Source baseline: GitHub main **0c1dc595e0f592e57c67e6cea27c822de7902e26** (merged #421). This is an audit and implementation contract, not a claim that the repairs below have shipped. The **only active implementation checklist** is the stable-ID section in [the canonical roadmap](PRODUCT-ROADMAP-20261019.md#owner-ux-and-communication-repair-checklist). Earlier implemented behavior remains distinguishable from requested changes.

## Confirmed source findings

| Area | Evidence | Required change |
|---|---|---|
| Chats filters | `apps/mobile/lib/src/screens/chat/unified_chat_inbox.dart` owns `_filter` and renders All/Unread/Archived chips; search and local filtering depend on that state. | Remove the three chips and filter state/branches; keep search and a single account-scoped conversation list. |
| Conversation order | The inbox sorts pins first, then `ChatThread.updatedAt`; `ai_chat_state.dart` changes `updatedAt` during drafts, queue/delivery operations and edits as well as messages. | Define order by latest real sent/received message activity, with stable tie breaking. Opening/closing a route, draft edits and failed retries must not reorder old conversations. Keep one thread per Masana; receive events update the existing row. Preserve unread/read state and all history. Legacy archived rows must remain recoverable/visible under the unified-list compatibility policy; removing a filter is not deleting messages. |
| Wallet shortcuts | `gb_wallet_screen.dart` renders a two-column Wrap in Add data, Send, Request, Redeem order. | First row **Redeem · Add data**; second row **Request · Send**. Update visual, focus and semantic traversal order together. Preserve route destinations and balance state. |
| Notifications | `notification_preferences_screen.dart` has Preferences then Activity in both TabBar and TabBarView; default index is zero. | **Activity on the left and selected by default; Preferences on the right.** Swap both labels and bodies, ensure account change/deep links select the right content and preserve server-backed preferences. |
| Call/inline-voice admission | `ai_chat_screen.dart` `_admitInlineVoice` and full-call entry require paid admission for non-support Masana. `_capturePaidController` constructs `GroupPaidVoiceTransport`; that transport still calls `/agent/twin/voice/quote`, `/start`, `/media-started`, `/complete` using Credits-era DTOs. The customer route registrar is retired. | Replace the incompatible admission contract with retained one-to-one Masana MB reservation/settlement; connect UI and server atomically. Do not restore legacy customer Credits APIs or bypass admission to conceal the failure. |
| Call avatar size | `MasanaLiveCallScreen` in `ai_chat_screen.dart` renders a 76-pixel avatar and clustered controls. | Larger canonical portrait with prominent labeled Mute, audio-route and End controls; responsive safe areas and full lifecycle states below. |
| Portrait initials | `masana_only_calls_screen.dart` history rows construct `MasanaPortraitAvatar(characterId: ..., displayName: ...)` **without `agent`**. The component deliberately refuses display-name lookup for canonical IDs, so neither approved stock key nor URL can resolve on this path. | Resolve the matching canonical directory entry and pass it; preserve identity-safe fallback. Add a test that supplies a renamed identity and asserts the correct portrait asset rather than an initial. |
| Other portrait surfaces | Chat header/list and call details already pass directory entries; Status cards still use a generic robot (earlier audit). The directory reader binds only approved platform-owned stock media; absent/mismatched metadata or cache misses yield initials. | Audit directory → JSON → cache → component end to end across every retained surface. Do not assume all initials have the same cause or assign portraits by mutable names/guessed UUID mappings. |

## Runtime evidence and what remains unknown

Read-only Railway inspection found these relevant requests in the recent retained sample (24–25 October; bounded, not a full incident census):

- One `POST /agent/twin/voice/quote` **404**. This corroborates the source-level retired-endpoint mismatch.
- Two `POST /agent/live/token` **500** responses. Their internal cause was **not established** by the available logs; the exact `agent.live_token_failed` event query returned no matching entries. Do not label missing credentials, provider model, a particular voice or SQL failure as proven without the failing stage/error evidence.
- History/shell/event requests include transient **502**, **499**, **401** and successful 200 responses. Investigate deployment/upstream availability and auth restoration separately; do not equate every failure with the retired quote endpoint.
- A media upload and `media-turn-stream` request returned **200**, with subsequent turn-status polling. An SSE 200 is not proof that inference or audio output succeeded: `conversation_stream.ts` can emit an error event after headers. Voice-note/transcription/generation/playback failure still needs correlation and reproduction.

No secret values, user messages, audio, phone numbers, source IPs or request/session identifiers are included here. No customer call, provider purchase or live bill was initiated for this audit. No device session was available. Provider/device recovery is **NOT_RUN**, and the 500/voice-note/text-chat root causes remain open P0 work, rather than being collapsed into one unverified explanation.

### Repair investigation sequence

1. Establish the affected app's source SHA, API/agent origin and Gateway deployment SHA; compare with the last independently verified working build. Check retired routes and feature readiness against that exact version pair, not just current main.
2. Trace text: restored auth → directory identity/version → session open → request upload/turn stream → terminal event → original-request status/history → displayed reply. Classify network/auth/authorization/model/store/stream errors separately.
3. Trace recorded note independently of live calls: permission and recorder lifecycle → durable local file → MIME/size → upload authorization → media-turn stream/transcription → meaningful text → PCM/audio completion/playback. Never mark delivered on headers or a partial chunk. Preserve text if audio fails and retry/read back with the original request key.
4. Trace call: resolved platform Masana → MB admission/reservation → authorized token → actual Gemini setup → microphone/uplink/downlink → connected event → bounded usage reconciliation/receipt → teardown. Resolve the live-token 500 with redacted stage/code logging, and test both support and non-support characters. Keep approved voice/persona identity; provider rejection requires explicit evidence, not a silent replacement voice.
5. Retain server-bound principal, account/authorization epochs, quote expiry and original idempotency; no welcome MB for transfer/tip/redemption, no charge for ringing/setup/failed reply/call, and no duplicate charge on reconnect. Ensure fail/retry/account-switch release/settle the correct reservation.
6. Add cross-layer tests that mount the actual reduced-product Gateway routes with the mobile contract. Existing mocks passing while production calls a deleted endpoint is an acceptance gap. Finish with real authorized provider/device evidence; no APK in this work request.

## OPay decoded reference: reinspection and adaptation

The owner's “OP compiled folder” is present as **`opay-decloned/`**. Inspected decoded XML/resources (not a running OPay application):

- `res/layout/fragment_airtime_data_topup.xml`: a compact phone entry row with operator icon/arrow, phone hint, clear/select/contact affordances, inline error region and recent-number area.
- `res/layout/stub_airtime_operator_select.xml`: operator chooser hosted adjacent to phone entry.
- `res/layout/fragment_base_airtime_data_detail.xml` and `fragment_base_airtime_data_rv.xml`: separate bundle content region, list/grid and explicit empty state.
- `res/layout/topup_data_bundle_item.xml`: allowance/title, subtitle, amount and selected/promotional regions; this variant uses a fixed 128 dp card height.
- `res/layout/topup_data_bundletwo_column_item.xml`: distinct price and validity labels/values, with allowance/title above.
- `res/layout/fragment_topup_pending.xml`: pending icon/explanation and explicit Done/Confirm action.
- Confirmation vocabulary in `res/values/strings.xml` and `payment/airtimeMobileData` activity/fragment names support investigating the next-step flow; XML alone does not prove every runtime navigation or payment behavior. The prior `OPAY-WALLET-PAYMENT-BENCHMARK.md` contains superseded MSNW/crypto scope; use only layout observations under the current MB roadmap.

Adaptation for Masanawa:

1. **Phone/network area:** compact explicit network-logo selector beside a well-labeled phone field; visible inline format errors; normalize Nigerian local/+234 input; allow another person's SIM. Prefix is only a suggestion because numbers can be ported. Contact/recent-recipient convenience is optional and account-private; manual entry always works without contacts permission.
2. **Bundle area:** Daily/Weekly/Monthly for the selected verified network, clear allowance, exact validity, MB cost and selected state; adaptive one/two-column layout without fixed-height clipping at 200% text. Browse while entering a number, but allow Continue only with a valid selection and recipient. Use loading/empty/stale/error states and a clear retry rather than ambiguous blank space.
3. **Separate review page:** Continue opens a normal route showing network logo/name, normalized phone, bundle allowance/validity, exact MB debit, spendable balance and fees. Change recipient/bundle returns with the draft and invalidates the old quote. Confirm is the only purchase submission action.
4. **Result:** original-reference pending/check status, confirmed delivered receipt or actionable failure; no automatic resubmission and no success from a provider acknowledgement alone. The existing durable purchase panel must retain its owner/idempotency protections during restructuring.
5. Apply the same choose → review → instructions/result hierarchy to Add data, while its persistent bank account stays on a later screen. Wallet funding quantity/pricing and network redemption catalogue are separate authorities.

Keep Masanawa's own branding and artwork. Airtime is a design reference, not a request to reintroduce retired non-data bills, crypto or financial controls.

## Call screen presentation contract

Proposed portrait 144–176 dp on a normal phone, scaled down for short/landscape screens without hiding controls. Use the approved portrait shared with directory/chat; show Masana name, accurate connecting/ringing/listening/speaking/reconnecting/ended state and connected elapsed time. An initial or stale presence is not proof of a live call.

Use clearly labeled Mute/Unmute and Speaker/Earpiece controls with strong selected/disabled states, at least 48 dp hit areas, and a distinct prominent End action (approximately 64–72 dp target). Announce state changes accessibly. Handle microphone denial, interruption/resume, headset/Bluetooth/earpiece/speaker, noisy room, reconnect and audio routing without duplicated greetings or speech. Masana speaks first after actual connection; ringback stops before speech. End/Back/account switch stops the session, microphone, timers, tones and foreground service, then reconciles original usage once. Call recording, where already retained, remains explicit and privacy-safe; visual changes do not create new recording behavior.

Verify 320 dp, short height, 200% text, RTL, keyboard/focus, reduced motion, navigation teardown and account switching. Separate portrait/control widget checks from real two-way audible device/provider acceptance.

## Audit validation

- **PASS_SIMULATED:** 57 Flutter tests in six existing suites: professional portraits, chat voice actions, voice recorder, live session, live call presentation and directory readiness.
- **PASS_SIMULATED:** 37 server tests in six existing suites: live token, conversation routes/service, native audio, private media routes and canonical identity reader.
- **PASS_REAL (observations only):** read-only Railway HTTP evidence above. It verifies responses existed, not that all reported failures are diagnosed or repaired.
- **NOT_RUN:** new repair tests/implementation, failing user-device reproduction, successful real text/note/call recovery, device screenshot acceptance or a new APK.

All requested work is itemized under stable UX IDs in the canonical roadmap. Mark an item complete only with implementation commit/PR, relevant tests and any required device/provider evidence; a plan commit or mock pass is not completion.
