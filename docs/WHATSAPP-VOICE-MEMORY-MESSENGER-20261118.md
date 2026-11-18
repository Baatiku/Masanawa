# WhatsApp / Messenger voice and memory update — 18 November 2026

## Supported voice behavior

The WhatsApp management screen, Ops validation, and Worker prebuilt-voice
selection use Google's published 30 Gemini voices. Existing selected voices
remain unchanged. Custom `voice_...` enrollment IDs are not prebuilt voices.

WhatsApp Gemini Live produces *one* audio reply with output transcription;
the transcript is delivered as the accompanying text. Messenger's recorded
Live renderer is a read-aloud stage after its authenticated conversation turn;
it streams the actual PCM and returns its output transcription only if it
matches the final spoken script. Both paths now process text, Blob, ArrayBuffer
and typed-array WebSocket frames in arrival order. This is not a claim that
the underlying two applications use identical generation or billing flows.

## Returning-contact memory

- WhatsApp stores messages and per-thread summaries in PostgreSQL, scoped to
  tenant + linked number + conversation. Recent prompt history now includes
  **both incoming and successfully sent outgoing text messages** (24 most recent).
  The companion voice note shares that reply's text, so it is counted once.
- `remember_context` controls whether the assistant retrieves that history and
  the compact long-term summary. Summaries are refreshed after six new inbound
  messages using an eligible server-side Gemini key, with a safe rate/cooldown
  policy. Summary failures do not replay an already queued WhatsApp reply.
- Summaries exclude financial/authentication material and scrub identifiers.
  They are **untrusted conversational hints**: never identity proof, wallet
  authority, or instructions overriding the assistant's policy.
- First-time personal-number contacts explicitly hear they are speaking to the
  named **AI assistant helping the owner**. Returning contacts get continuity,
  without repeated introductions. The greeting marker is written only after
  WhatsApp accepts the first outbound text, not when generation is queued.
  Sender names and gender are not inferred.
- Messenger already uses canonical authenticated chat history and the
  `customerMemory` service in Gateway. Durable saved facts require its account-
  scoped user permission, extraction review, and deletion controls; we do not
  duplicate them in a second chat database.

For richer future retrieval: preserve source timestamps and deletion scope,
build consented fact extraction with provenance and semantic/lexical retrieval
per identity, and add retention/forgetting workflows. Current WhatsApp summaries
are **not** a claim of implemented semantic vector search or unlimited memory.

## QR-linked WhatsApp calling boundary

The pinned `@whiskeysockets/baileys` supports incoming call **signaling**
events and `rejectCall`; it does **not** offer a supported WebRTC media stream
to answer a call or a supported outbound dial API. Incoming call offers and
subsequent signaling states can be logged in the admin audit view with a
non-reversible correlation reference, without logging caller numbers. The AI
cannot answer or place phone calls through this connector. Do not expose
misleading Answer/Call buttons, charge for connected call time, or silently
switch to the Meta Cloud API (which is not the owner's chosen QR-link mode).

## Verification boundary

TypeScript service checks, WhatsApp/PGlite tests, and Messenger recorded-live
audio tests cover source behavior. A successful provider-backed new/returning
contact trial, audio preview of the four new voices, and a web/mobile Messenger
device check remain independent runtime verification, not implied by unit tests.
