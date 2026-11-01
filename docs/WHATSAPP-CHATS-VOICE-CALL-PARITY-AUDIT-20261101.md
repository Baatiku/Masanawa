# Masanawa Chats, voice notes and AI calls — WhatsApp reference audit (1 November 2026)

## Evidence, scope and strict boundaries

Compared the checked-in WhatsApp **v2.26.40.72** extracted resources (`whatsapp-decompiled/README.md`, `WHATSAPP-COMPONENTS-INDEX.md`, Android manifest, WDS PTT/wave resources) and `docs/WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md` with **current main** Masanawa Flutter, native Android and Gateway interfaces. The reference contains *static extracted resources and component names*, not source for WhatsApp's proprietary runtime implementation. Consequently a precise claim of pixel-perfect, behavior-for-behavior parity requires side-by-side physical-device acceptance and cannot be established by filenames, assets, or unit tests alone. No WhatsApp proprietary code, artwork or sounds may be redistributed.

Only Masana AI chat/call identities remain. Do not build contact-to-contact messages, group calls, video calls, fake online status, E2EE claims, third-party call links, WhatsApp payments or fabricated read receipts. Masanawa has distinct, compulsory AI identity disclosure and MB admission/settlement.

Legend: **existing** = source implementation observed, **improved in this batch** = new changes with regression coverage, **needs handset acceptance** = native/device behavior cannot be confirmed here, **not applicable** = human-only capability, **further work** = known limitation or unverified parity.

## Detailed interaction inventory

| Area | Reference behavior / acceptance check | Masanawa source location | Observed outcome |
|---|---|---|---|
| Chat list | Compact avatar, name, preview, time, badge | `chat_list_screen.dart`, `masanawa_conversation_tile.dart` | Existing; widget regression |
| Chat list | Pinned above activity and archived outside inbox | `unified_chat_inbox.dart`, `ai_chat_state.dart` | Existing; widget regression |
| Chat list | Header search expand and filtered results | `chat_list_screen.dart`, `unified_chat_inbox.dart` | Existing; verify keyboard/accessibility on device |
| Chat list | Remote pagination, inbox refresh | `unified_chat_inbox.dart` | Existing; requires live account acceptance |
| Chat list | Swipe actions, archive and pin menu | `chat_list_screen.dart` | Existing; device swipe acceptance |
| Chat | Compact name, avatar, voice-call and overflow controls | `ai_chat_screen.dart` | Existing; 320dp tests |
| Chat | Contextual AI simulation disclosure | `ai_chat_screen.dart` | Existing; required difference from WhatsApp |
| Chat | Light/dark bubble grouping, tails, direction | `ai_chat_screen.dart` | Existing implementation; screenshot parity unverified |
| Chat | Timestamps and truthful delivery indicator | `ai_chat_screen.dart`, `ai_chat_state.dart` | Existing; never claim human read receipt |
| Chat | Message and date separators | `ai_chat_screen.dart` | Existing |
| Chat | Composer shifts between mic, send and stop | `ai_chat_screen.dart` | Existing |
| Chat | Keyboard multiline text, emoji and camera/attachment | `ai_chat_screen.dart` | Existing |
| Chat | Reply by swipe and quoted reply | `ai_chat_screen.dart` | Existing |
| Chat | Select, copy, forward, edit, delete | `ai_chat_screen.dart` | Existing; AI conversation-specific constraints |
| Chat | Per-thread search and match navigation | `ai_chat_screen.dart` | Existing |
| Chat | Persisted draft and queued/failed send | `ai_chat_state.dart` | Existing; account-bound data handling |
| Chat | Optimistic message immediately visible | `ai_chat_state.dart` | Existing |
| Chat | Accurate streaming AI typing/reply state | `ai_chat_screen.dart`, `ai_chat_state.dart` | Existing; no fictitious human presence |
| Chat | Attachments, media viewer, captions | `ai_chat_screen.dart`, `ai_chat_state.dart` | Existing; device picker acceptance |
| Chat | Offline recovery/idempotent request ID | `ai_chat_state.dart` | Existing; server-side acceptance remains separate |
| Chat | Screenshots for 320/360/390dp, 200% text, RTL | `test/chat_whatsapp_parity_test.dart`, `test/ai_chat_voice_actions_test.dart` | Partial regression; full device visual review pending |
| Voice capture | Tap microphone to start recording | `ai_chat_screen.dart`, `voice_note_recorder.dart` | Existing, retained preview path |
| Voice capture | Long-press starts recording immediately | `voice_note_hold_region.dart` | Existing; haptic and mic permission |
| Voice capture | **Release long-press sends immediately** | `ai_chat_screen.dart` | **Improved in this batch** (previously previewed) |
| Voice capture | Slide away to cancel; do not send | `voice_note_hold_region.dart` | Existing; gesture tests |
| Voice capture | Slide up to lock; release does not end recording | `voice_note_hold_region.dart`, `ai_chat_screen.dart` | Existing; gesture tests |
| Voice capture | Locked recording manually send, stop/preview, discard | `ai_chat_screen.dart` | Existing |
| Voice capture | Elapsed recording timer, measured waveform | `voice_note_recorder.dart`, `ai_chat_screen.dart` | Existing; no fake waveform |
| Voice capture | Recording retry after denied permissions | `voice_note_recorder.dart`, `ai_chat_screen.dart` | Existing; clear error guidance |
| Voice capture | Recording retained after accepted send | `voice_note_recorder.dart`, `ai_chat_state.dart` | Existing; regression test |
| Voice capture | Cancel recording on account change or lifecycle loss | `voice_note_recorder.dart`, `ai_chat_screen.dart` | Existing; device OS behavior pending |
| Voice delivery | Voice media reaches AI inference without auxiliary upload gate | `ai_chat_state.dart` | **Improved in this batch** |
| Voice delivery | Slow-data upload/receive timeout suitable for media | `masanawa_transport.dart` | **Improved in this batch** (90s send/120s receive) |
| Voice delivery | Failed optional backup cannot reauthorize with another token | `masanawa_transport.dart` | **Improved in this batch** |
| Voice delivery | No duplicate inference/payment on stream failure | `ai_chat_state.dart`, media transport | Existing tests; provider acceptance pending |
| Voice reply | AI voice reply/real transcript and optional autoplay | `ai_chat_state.dart`, `ai_chat_screen.dart` | Existing; depends on Gateway/provider |
| Voice playback | Start/pause, elapsed duration and progress | `ai_chat_screen.dart` voice bubble | Existing |
| Voice playback | Waveform scrubbing | `_VoiceWaveform` | Existing |
| Voice playback | 1×/1.5×/2× speed selection | `_VoiceBubble` | Existing |
| Voice playback | Route playback speaker/earpiece | `_VoiceBubble`, native audio | Existing; physical proximity/Bluetooth behavior unverified |
| Voice playback | Sequential notes, stop when changing chats | `VoiceNoteSequence`, `ai_chat_screen.dart` | Existing |
| Voice playback | Remote private media restore and failure feedback | `ai_chat_state.dart`, `masanawa_transport.dart` | Existing, backup best effort; live acceptance required |
| Calls | Caller portrait, display name and AI disclaimer | `MasanaLiveCallScreen` | Existing |
| Calls | Outgoing ringing and connect only after session readiness | `MasanaLiveCallScreen`, `LiveVoiceSession` | Existing |
| Calls | True connected timer, not fake elapsed time | `MasanaLiveCallScreen` | Existing |
| Calls | Mute/unmute and speaker/earpiece | `MasanaLiveCallScreen`, `LiveVoiceSession` | Existing; device audio routing acceptance |
| Calls | Red end button always reachable, end once | `MasanaLiveCallScreen` | Existing; **duplicate-tap guard improved** |
| Calls | Failed connection reason stays visible | `MasanaLiveCallScreen` | **Improved in this batch** (previously closed route automatically) |
| Calls | Reconnecting/interrupted/audio-resume states | `LiveVoiceSession`, call status UI | Existing; verify under network changes |
| Calls | Background/lock-screen interruption and return | `LiveVoiceSession`, native bridge | Device acceptance required |
| Calls | Bluetooth and wired headset routing | `LiveVoiceSession`, Android native bridge | Device acceptance required; no verified chooser parity |
| Calls | Provider-backed audio streaming/turn-taking | `LiveVoiceSession`, Gateway | Provider/device acceptance required |
| Calls | MB review, reserve, connected-seconds settlement | `MbCallFlow` and Gateway | Masanawa-only safety/financial flow, mandatory |
| Calls | Call recording with user control | `MasanaLiveCallScreen`, `CallRecorder` | Existing; device microphone consent/OS behavior pending |
| Calls | No-Balance feedback and add funds | `ai_chat_screen.dart` | Existing; verify authenticated end-to-end flow |
| Calls | Contact-to-contact, group, video, E2EE, fake presence | None intentionally | Not applicable to AI-only Masanawa |

## Findings and immediate repairs

1. **PTT release mismatch:** The mounted hold recognizer invoked preview on finger release. The composer now binds the same gesture to `_sendInlineVoiceNote()`, while manual tap and locked-recording preview remain intact. Cancel and lock paths are unchanged.
2. **Blocking private-media backup:** `ai_chat_state.dart` awaited an independent private backup before issuing the canonical AI inference turn. Private backup is now non-blocking and best-effort, without changing the signed-in owner/request identity or replaying an already charged turn. Canonical transport still controls user-visible delivery and recovery.
3. **Media transfer deadlines:** The Gateway Dio client inherited a short send timeout despite allocating a longer receive timeout. Media/turn requests now use 90 seconds for sending and 120 seconds for replies; ordinary calls retain their short deadlines.
4. **Cross-auth backup retry:** A background backup can fail with HTTP 401 after a session changes. A failed private backup write is no longer replayed with refreshed credentials. Normal list/auth flows remain eligible for refresh.
5. **Hidden call failure:** A failed session setup previously closed the call screen before the error could be read. Failure now stays in view with centered, actionable feedback and a Close control; speaker/mute disappear in this failed state.
6. **Call exit race:** The End/Close action ignores repeated taps while closing the live session.

## Qualification still required

The reference folder does **not** contain WhatsApp's runnable screen/source implementation, so exact UI timings, proximity hardware, gesture physics, app-to-app call setup, VoIP routing, Bluetooth, lock-screen notifications and line-by-line layout parity must be checked on real devices. No screenshots, native PCM route, audio provider, MB debits or live Railway deployment are proven by Flutter widget tests alone. Do not mark those as passed.

For acceptance, test ordinary/locked/denied-microphone PTT; release/slide-cancel/slide-lock; single/long notes; slow and interrupted uploads; single-charge retry; received voice with 1×/1.5×/2× playback; call admission, ringing, connect, mute, speaker, Bluetooth, headset removal, Android interruption, network recovery, end and settlement. Cover 320/360/390dp widths and 200% text in dark/light plus Hausa/Arabic RTL. Cross-check recorded videos of Masanawa and authorized WhatsApp installation on equivalent hardware without importing proprietary assets.
