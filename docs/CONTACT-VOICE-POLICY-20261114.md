# Contact voice policy and custom-voice pilot

Owner request: transparent green web logo; female AI contacts use Sulafat; male AI contacts use Algenib or Algieba. Google spells the second smooth male voice **Algieba** (not Algeiba). Its speech-generation documentation describes Sulafat as Warm, Algenib as Gravelly and Algieba as Smooth.

## Source implementation

The catalog now carries an explicit editorial voice gender for all 26 professional/support personas, 106 official-roster personas and 16 independent agency AI guides. Agency voice gender is an app-defined alternating narrator assignment, not an attribute of an institution or its director. Official roster voice assignments retain canonical person IDs; Aishatu Dahiru's persona is female. This metadata is configuration for synthetic narration, not a verified demographic database or a claim to reproduce a real official's voice.

The shared selector restricts stock Gemini voices to Sulafat/Algenib/Algieba. Existing platform profile rows reconcile through their repository's optimistic revision check during bootstrap; no identity, history or money record is replaced. Both native and web use these canonical Gateway profiles. Explicit project custom IDs (`voice_...`) and non-Gemini providers survive reconciliation. No new customer gender field, provider key, paid service, database replacement or financial switch is introduced.

## Custom voice research, 14 November 2026

Primary Google documentation retrieved this session:

- https://ai.google.dev/gemini-api/docs/speech-generation
- https://ai.google.dev/gemini-api/docs/voice-replication
- https://ai.google.dev/gemini-api/docs/voice-design
- https://ai.google.dev/gemini-api/docs/voice-remixing

Google's current replication docs describe `POST /v1beta/voices` for Gemini 3.8 Flash TTS / Flash-Lite TTS, a paid-tier project and two recordings by the same adult speaker: 10–30 seconds of clean natural reference speech and a separate recording of the mandatory consent sentence. English wording:

> I am the owner of this voice and I consent to Google using this voice to create a synthetic voice model.

Stateful creation returns a project-scoped `voice_...` ID (200 shared voice limit; documented one-year sliding inactivity expiry). Stateless `voicekey_...` is documented as seven-day and is unsuitable for a durable contact field. Do not store raw audio, API keys or biometric keys in browser code or Git. Google documents deletion, authenticated human source/consent checks and SynthID watermarking. These are documentation claims, not verified capabilities of our currently configured project/model.

## One-contact pilot

1. Select one existing contact ID and use the owner's own voice or a consenting adult speaker. Obtain reference and consent WAV clips, preferably mono 24 kHz / 16-bit, privately. No sample is attached yet.
2. Check project/model/region access and actual quote/quota before creating a paid resource. Do not activate new billing/services under the existing budget constraint.
3. In Google AI Studio Generate Speech (https://aistudio.google.com/generate-speech), or a private server CLI, create one profile and retain only its ID server-side. Audition a fixed short English/Hausa phrase in an owner-only preview; record pronunciation, latency, cost and deletion behavior.
4. Add a separately qualified text-to-speech adapter for that exact model/ID before changing the contact profile. The existing native-audio / Live API uses prebuiltVoiceConfig; a replicated TTS voice ID must NOT be assumed compatible with realtime Live calls. Keep calls on the approved stock voice until separately verified.
5. Enable for only that contact after preview acceptance, retain explicit fallback to its stock gender voice, and measure latency/retry behavior without duplicate paid chat charges. Do not make this an open public cloning/upload endpoint.

No custom voice has been created, no paid project enabled, and no authentic speech/sample or live-call acceptance is claimed. Backend deployment and live persisted-profile readback are separate from source tests and merge. Current execution environment has no usable SSH identity for the existing Droplet; do not claim a live voice cutover without authorized access/readback.
