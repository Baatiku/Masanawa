# Masanawa — Nigerian speech and persona knowledge

Date: 2026-11-23. Scope: backend change on an isolated branch; existing connected call pipeline is not replaced.

## Historical voice reference and implementation choice
Sir Abubakar Tafawa Balewa earned the epithet *Golden Voice of Africa* for his measured and eloquent public oratory. Historical reporting describes a deep, mellow, resonant speaking voice; scholarship describes an educated, historically British RP-influenced English accent with Hausa-related features. This is **not** identical to generic modern Nigerian English. Primary examples should be listened to and compared by Nigerian Hausa/English speakers before selecting a final prebuilt voice.

- https://content.time.com/time/subscriber/article/0,33009,895071-2,00.html
- https://thenationonlineng.net/balewa-48-years-after/
- https://www.asau.ru/files/pdf/1926986.pdf
- https://www.youtube.com/watch?v=b-cjdPiR4rk

Google documents two distinct routes:
- Live audio: select a prebuilt voice in `speechConfig.voiceConfig.prebuiltVoiceConfig.voiceName`; describe accent and tone in `systemInstruction`. https://docs.cloud.google.com/gemini-enterprise-agent-platform/models/live-api/configure-language-voice
- TTS: choose a regional/design voice and use concise style metadata supported by that exact model and endpoint. https://docs.cloud.google.com/gemini-enterprise-agent-platform/models/text-to-speech/prompting-guide

This change **only directs the existing Gemini Live spoken accent and tone**. It does not change model selection, stored persona voice assignment, relay framing, microphone admission, call signalling, transcription, TTS payloads, or billing. It does not claim to reproduce an archival person's exact voice. Exact voice replication requires suitable permission/consent, supported provider access, clear provenance, and separate product approval; Google warns that custom voice access is limited and users are responsible for applicable rights. The app must not misrepresent the synthetic speaker as the historical Prime Minister.

A controlled call test should record: voice assignment, model, system-instruction version, phonetic/accent impressions from Nigerian reviewers, Hausa pronunciation, first spoken audio after connected, interruptions, latency, and error rate. A provider smoke test, audio sample, and device acceptance are **not** represented by source tests.

## Root-cause inventory
1. Rich `Baatiku/Masanawa-Web/lib/civic-*.ts` directory dossiers, projects and role histories are displayed to users, but the Gateway admission path uses `identity.character_versions.constitution`, `agents.admin_persona_configs`, `masana.public_official_dossiers` and reviewed `public_official_evidence`. The web-local dossier does not automatically become backend evidence.
2. The shared official/agency system instruction previously did not include the published profile's own constitution biography in the official/agency branches. That made the chat persona appear less informed even when the identity was correct.
3. The official evidence reader previously selected six reviewed records, truncating each excerpt to 1,000 bytes with a 14,000-byte aggregate cap. Broad biographical questions can require chronology across multiple sources and projects.
4. Platform navigation and mission previously occupied one terse, partially outdated sentence. Users can now ask across Home, Contacts, Chats, Calls, Wallet, Profile, Institutions, Government map, Source desk and Response Centre.

## Change now implemented in source
- One shared `platform_assistant_guide.ts` describes product purpose, actual navigation and service boundaries and is included in text, voice-note and Live system instructions. It is explicitly informational, not a set of permissions.
- Official and civic personas receive the published constitution biography and profile introduction, labeled *unverified as public-record evidence*; referenced factual answers must still pass the checked official/agency source contract.
- Reviewed official retrieval increases to 10 selected records, 1,600 bytes per excerpt and 20,000 total bytes. Better query terms ignore broad conversational filler and concentrate excerpts around meaningful terms. Provenance gating, identity scope, expiry and source allowlist remain intact.
- Gemini Live adds a Nigerian English accent, subtle Hausa-inflected delivery and historical oratorical quality prompt while retaining the persona's selected prebuilt voice and honest synthetic identity.
- Regression tests assert the shared platform guide, Nigerian speech direction, biography context and evidence bounds.

## Next integration needed for complete profile parity
A full guarantee that *every* profile's on-screen dossier is available to Gemini requires a coordinated **two-repository publishing pipeline**, not just larger prompts.

1. Export a canonical versioned profile document for each `characterId` from the vetted public profile content in `Masanawa-Web`: biography, offices, documented achievements, initiatives, date/status, source URL, checked/retrieved date, agency founding/legal basis, services and past leadership.
2. Publish those documents **server to server**, with an operator-signed or trusted deployment identity and an explicit idempotent `profileRevision` (not client-provided chat payloads). Do not let browser users submit authoritative evidence.
3. Verify identity binding, source host, source attribution, license basis, safety/review state and canonical identity/tenant before storing facts in an admissible evidence table. Announcements and project completions must never be conflated; retain historical versions and review timestamps.
4. Build per-profile sections and keyword/semantic retrieval from reviewed records. Use targeted top-k passages with titles, dates, source IDs and authoritative revision; do not put unbounded dossiers into every request.
5. At every text, voice-note and Live turn, authorize the exact same `characterId` and revision, retrieve its relevant sections, append response-grounding instructions, and keep the user's private memories in a separate tenant/relationship scope. Live should use bounded read-only tools for follow-up retrieval, analogous to existing `read_official_evidence` but including verified agencies.
6. Publish a versioned, server-owned navigation manifest (routes, labels, enabled feature flags and availability) during web release. Inject the manifest as data, not as authority; block hallucinated payment/status claims.
7. Expose admin diagnostics: per-profile indexed revision, published facts count, approved source count, last verified date, stale/unbound dossier flag, per-turn evidence hit/miss, missing voice metadata, latency and response quality. Include a reconciliation dashboard comparing visible web profile revisions against Gateway retrieval versions.
8. Build a release gate with questions for every persona: biography, three office periods, projects (announced vs completed), controversies and provenance, platform navigation, English/Hausa, unavailable service honesty, voice-note answer parity, Live follow-up use, citation validation, source retraction and cross-persona isolation.

**Safety and quality:** Depth is desirable, but never prohibit evidence-based uncertainty or force fabricated claims. A useful partial explanation with a checked source and a concrete next step is preferable to a confident false answer. Agency personas must not impersonate agency staff; historic official personas must not claim to be the real person.

## Verification/release gates
- Run TypeScript typecheck and targeted tests: `persona_continuity.test.ts`, `public_official_knowledge.test.ts`, `official_answer.test.ts`, `official_live_evidence.test.ts`, `live_voice_token.test.ts`, and NGN relay regressions.
- Merge only after exact-head CI passes and review. Production deployment is a separate operation; this document does not claim live changes, voice evaluation or customer-device tests.
