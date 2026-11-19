# WhatsApp voice-reply milestone, history import and calling research — 18 November 2026

## Immutable source checkpoint

The owner confirmed on a real linked WhatsApp phone that Masanawa's Gemini Live
voice-and-transcription replies worked. The subsequent tested improvement merge
is `dccebe9c61bc783c1baa4993de415f241a20f828` with the protected recovery
reference `checkpoint/whatsapp-live-voice-replies-20261118` in `Baatiku/Masanawa`.

The milestone is a **source-code checkpoint**, not an assertion that this exact
commit has been tested on the owner's DigitalOcean host. The server's currently
running image ID, private env, persistent session keys and database must be
backed up *before* upgrading. Do not delete or regenerate the WhatsApp session
key; never publish backups, raw histories or Gemini keys to GitHub.

## Linked-device WhatsApp history

Baileys emits available prior chats and messages using `messaging-history.set`.
The Worker now imports every supported direct-chat message supplied in that
event into the existing tenant/channel/contact-scoped message ledger, with the
original timestamp and WhatsApp message ID for idempotency. The import runs in
small sequential slices; it deliberately does not enqueue AI replies, add unread
counts, update human-away signals, or authorize wallet/account access. Import
excludes groups, status, disappearing/view-once messages, invalid timestamps and
unsupported content. The aggregate count is recorded in the admin audit log;
individual private bodies/contacts never appear in application logs.

This is not a promise of a full WhatsApp backup. WhatsApp only copies *some*
prior chats to linked devices. Baileys documents optional `syncFullHistory` and
`fetchMessageHistory` mechanisms. The existing paired number's browser identity
and `syncFullHistory:false` remain unchanged: enabling a bulk full-history
restart blindly could destabilize the successful pair or exhaust the 2-GiB
pilot host. Later archive backfill requires bounded retrieval or chat exports,
plus explicit user-facing progress/retention controls.

Primary documentation:

- https://github.com/WhiskeySockets/docs/blob/main/advanced/history-sync.mdx
- https://faq.whatsapp.com/653480766448040/

## Experimental QR-linked WhatsApp calls

Pinned `@whiskeysockets/baileys@7.0.0-rc14` handles call signaling and rejecting
but does not provide a tested answer/dial media stream. Current Worker records
incoming call notifications in the WhatsApp audit without claiming an answer.

Research candidates (independent, **not yet accepted into production**):

- `@innovatorssoft/baileys`: documents incoming `call.incoming`, session
  `accept()`, `initiateCall()`, remote Float32 PCM audio and FFmpeg/WASM transport.
  Source: https://github.com/innovatorssoft/Baileys
- `wwebjs/whatsapp-web.js` experimental PR #201881: Chromium-based call
  acceptance/dialing and synthesized audio insertion, not merged upstream.
  Source: https://github.com/wwebjs/whatsapp-web.js/pull/201881
- `SheIITear/baileys-caller`: documented outbound media but no inbound answer.
  Source: https://github.com/SheIITear/baileys-caller

Call qualification requires reviewing third-party code and its auth handling,
a separately paired disposable test number (never sharing a production Signal
session between two sockets), a bounded Gemini Live PCM conversation bridge,
call hangup and timeout, explicit per-number opt-in, no automatic unsolicited
outbound dialing, a tested caller disclosure and a measured memory profile.
VoIP/WASM memory and Chromium overhead need particular care on the 2-GiB host.
No part of the current milestone claims that a phone call was answered by AI.

### Incoming AI call pilot

The call implementation uses a second linked-device QR for the same number.
It uses a pinned calling-capable Baileys adapter and separate encrypted QR
credentials. The messaging socket continues to use `@whiskeysockets/baileys`
and owns message ingestion and dispatch. A QR scanned from a different number
does not authorize the calling socket. Enable calling in the pilot runtime with
`MASANAWA_WHATSAPP_CALLS_ENABLED=true` after deploying the matching Worker, Ops,
and migration `security/0128`.

In **WhatsApp AI → Call answering**, choose a connected number, select **Pair
call device**, and scan its QR under **WhatsApp → Linked Devices** on the phone
holding that number. Confirm the device is connected, then select **Enable call
answering**. Call answering is initially paused. **Pause call answering** stops
the calls feature by itself. The number-level **Pause AI replies now** and
**Manual takeover** also suspend answering and terminate active AI calls. Away
mode refrains from answering while recent human reply activity is within the
number’s configured grace period.

The Worker accepts one fresh one-to-one voice call at a time. The caller hears
the AI disclosure before any of their audio is streamed to Gemini Live. The
Worker processes both audio directions in memory, relays interruptions, and
ends the call on provider failure, a pause, disconnection, or the five-minute
limit. The admin activity shows timing and end reason. It stores no caller
audio or transcripts. Call answering has no account, wallet, or purchase tools.

For the pilot, pair the same disposable number in both slots. Verify that a new
caller hears the disclosure, can speak and hear two responses, can interrupt the
assistant, and can hang up. Pause during a second call and verify the active
AI call ends and the next call is left for the owner. Confirm text and voice
notes still work on the messaging slot, and check Worker memory during the live
test before enabling the feature on the owner's number. Automated audio tests
simulate the WhatsApp call and Gemini endpoints.
