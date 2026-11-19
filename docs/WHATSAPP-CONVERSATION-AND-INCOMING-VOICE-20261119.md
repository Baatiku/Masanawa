# WhatsApp conversation and incoming voice reliability — 19 November 2026

## Preserve the working milestone

The owner confirmed that linked-device QR messaging, Gemini Live voice replies,
associated text transcripts, contact memory and manual takeover are already
working. The recovery point `checkpoint/whatsapp-live-voice-replies-20261118`
is the reference for that success. This change must not unlink phones, rotate
Signal session keys, delete conversations, alter wallets or replace the outgoing
Live voice generation path. No database migration is needed.

## Diagnosed problems and fixes

1. Personal/Founder prompts overemphasized passing messages to the owner.
   Text replies were expressly limited to 700 characters and 500 output
   tokens; outgoing Live responses were told to be brief. The prompts now
   direct the assistant to engage with a contact's actual topic, vary its
   responses and scale detail with the complexity of the question. Only
   first-contact disclosure and authentic account/security boundaries remain
   obligatory. Message taking is reserved for genuine owner-directed requests.
2. The text-only assistant consulted only legacy environment Gemini keys, even
   though the administration centre provisions encrypted per-tenant Gemini
   keys. Text replies now use the same tenant-scoped key pool as outgoing Live
   replies and incoming audio transcription. Provider outages receive an
   honest, non-transactional notice, never a repeating instruction to leave
   a message. No stored identity or financial data is given to the model.
3. WhatsApp push-to-talk notes arrive as Ogg **Opus**. The transcription code
   labeled that container `audio/ogg`; Google's Gemini Ogg documentation
   distinguishes it from Opus. Incoming audio is now decoded using the
   FFmpeg already required by the outgoing voice renderer, converted to a
   bounded lossless FLAC stream, and sent with `audio/flac` to Gemini.
   Common supported non-Ogg audio continues to use its own MIME type.
   Conversion is memory-only and limited to 8 MiB of input/output with a
   30-second decoder deadline.
4. Transcription failures previously exhausted the generic three-attempt
   reply retry, then silently stopped. Transient incoming voice failures now
   have named non-sensitive job error codes and bounded increasing delays,
   capped at 16 claims or 36 hours. Explicitly invalid media gets a short
   resend-or-type response. Provider 429 receives longer cooldown. Successful
   transcripts are stored as chat text and the encrypted original envelope is
   discarded; retries after transcription do not download or transcribe again.
5. Outside working hours, a fixed notice could be repeated to the same
   contact for every message. The assistant now emits at most one notice per
   contact within six hours, preserving the operator's configured schedule.

## Intended inbound message journey

1. Baileys receives a one-to-one voice note on the existing linked session.
   `transcribeVoice` must be enabled, the channel connected, replies enabled,
   and the thread in AI mode. Ephemeral/view-once messages remain excluded.
2. The current encrypted envelope is queued without creating a second session.
3. The Worker downloads and decrypts that note, converts Ogg/Opus to FLAC,
   and transcribes using an eligible Gemini key, preserving spoken Hausa or
   English rather than translating without permission.
4. The transcript becomes the actual incoming message body. The same memory,
   general conversation, permission and owner-takeover checks used for typed
   messages determine the response.
5. If voice replies are enabled, existing Gemini Live produces the spoken
   response and corresponding text exactly as before. If text only is enabled,
   the key-pooled text generator responds. The outbox retains its duplicate-
   prevention and uncertain-send protections.

Google sources: [audio understanding](https://ai.google.dev/gemini-api/docs/audio),
[audio support](https://firebase.google.com/docs/ai-logic/analyze-audio),
[Gemini Live](https://ai.google.dev/gemini-api/docs/live-api/capabilities).

## Release / rollback guardrails

- Ensure `ffmpeg` with Ogg/Opus decoding and FLAC encoding is installed in the
  Worker container; do not change the proven outgoing Ogg/Opus encoder.
- Keep the existing `MASANAWA_WHATSAPP_SESSION_KEY` and stored administrator
  Gemini keys, and ensure the linked number still has `transcribeVoice=true`.
- Run WhatsApp worker, identity, media, linked-device, live, memory, call and
  pause tests; TypeScript typecheck/build and exact-head CI before merging.
- Deploy only the Worker image needed for this source batch, after checking its
  image and migration compatibility. Never delete/re-pair a successful session.
- Verify on the actual connected number: first and returning text contact;
  English and Hausa voice notes; short/long voice; text+voice replies; two
  successive notes; a manually paused AI; a human owner reply and session
  restart; a Gemini quota failure and recovery. Read job error codes without
  logging contact content or credentials.
- A passing source test is not proof of provider-backed WhatsApp delivery. If
  live voice delivery regresses, restore the last known-working Worker image
  or the named checkpoint without touching QR/session records.
