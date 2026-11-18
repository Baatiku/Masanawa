# Masanawa persona management, identity and authorized voice — 18 November 2026

## Verified source components

| Contract | Implementation | State / limit |
| --- | --- | --- |
| Admin presentation, greeting, skill assignment, portrait | `Masanawa-Web/app/admin/page.tsx`, Ops `agent_admin.ts`, portrait endpoints | Versioned, capability-gated |
| Persona availability, prompt, tone, biography, context and research toggle | Admin `persona-controls.tsx`, Ops `persona_admin.ts`, Gateway `persona_narrative.ts` | Tenant/character scoped; paused and disabled persona refuses admission |
| Public-official reviewed identity and references | Admin `evidence-editor.tsx`, Ops `evidence_admin.ts`, Gateway `public_official_knowledge.ts` | Source URL, date, expiry, review rights and checked answer citations; missing dossier rejects official facts |
| Agency identity / civic mandate | Gateway `civic_agency_bootstrap.ts` and approved `civicAgencyId` | Independent AI guides, never actual agency help desks |
| Voice sample and speaker consent upload | Web `voice-enrollment.tsx` / `voice-upload.ts`, Ops `voice_enrollment.ts` / `voice_admin.ts` | Two same-speaker adult recordings, client conversion to 24 kHz mono PCM WAV, Google consent verification |
| Stored voice and assignment | Ops `admin_voice_enrollments`, `admin_voice_assignments`; Gateway `voiceForCharacter` | Google stores voice profile and returns `voice_...`; no raw biometrics stored in app database; first ready voice auto-assigns if none active, later uploads preserve deliberate selection |
| Text-to-speech output | Gateway `recorded_live_audio.ts`, `native_audio.ts`, conversation reply audio | Assigned `voice_...` goes to Gemini TTS; unsupported or failed synthesis falls back to text, not a false success |
| Live calls | Gemini Live token and call pipeline | Cloned TTS voices **not** a qualified Gemini Live voice; use compatible Live voice, keep disclosure |
| Persona profile → chat | Web `persona-chat-links.ts`, profile CTA | Only exact Gateway character ID, approved civic agency ID or unique reviewed official identity source can open named chat; ambiguous profiles route to the available AI-chat list |

## Context and impersonation boundaries

- A Masanawa AI simulation **speaks in a character's documented perspective** without claiming to be the real official, government office, a live human operator or a government-endorsed representative. Explicit disclosure remains mandatory.
- Public-official factual answers use only current, admitted, reviewed evidence IDs and checked quotations; missing, expired or contradictory evidence should result in uncertainty, not fabricated positions. Citizen private memory never rewrites public knowledge.
- A civic agency guide is restricted to its constitution-bound agency, public mandate and cited official starting URL. No ability to check applications, receive fees, issue documents or promise appointments without a separately verified, authorized tool and receipt.
- Administrator prompt/context changes shape style and knowledge but cannot grant capabilities, switch persona identities, authorize payments or access another user's history.
- Native client and web share canonical Gateway IDs; no matching a public profile to a billable chat from a person's display name alone.

## Release gates and outstanding provider constraints

1. **Provider entitlement and consent:** Gemini Developer API voice replication needs a paid-tier project, a clean 10–30 second sample and a distinct same-speaker consent recording. Google validates the speaker's consent. The operator must have rights to enroll a public figure's voice; archival clips, imitations or simply possessing an audio file are not permission.
2. **Provider acceptance:** A provider returning `voice_...` and a successful audition are distinct from a green mocked unit test. Run an authorized enrollment, list/readback, synthesized reply, revoke and audit trail check against the deployed project before claiming real voice cloning works end to end.
3. **Activation:** Backend source merge does not deploy or migrate a DigitalOcean Droplet. Verify the exact Gateway/Ops runtime commit, existing migration tables, provider keys, readback and a real chat/audio turn after deployment.
4. **Calls:** Do not present Gemini Live call audio as replicated voice; the registered custom voice currently applies to generated speech and voice notes, not real-time Live calls.
5. **Coverage:** Agency chat CTA covers canonical seed-linked guides; other directory entries remain unlinked until the backend publishes an unambiguous reviewed character binding. The UI must never fabricate a chat for every static civic record.
6. **Privacy and retention:** Google manages the enrolled voice profile; Masanawa stores the voice ID and audited assignment, not the raw sample or consent files. Deleting/revoking a voice must be explicit, recoverable when provider state is uncertain, and must not expose source audio in logs.

## Regression checks in this batch

- `services/ops/src/voice_admin.test.ts`: tenant/role boundary, valid enrollment, automatic assignment, pending recovery, revision fencing, preview, revocation.
- `services/gateway/src/persona_narrative.test.ts`: exact active published character plus reviewed civic agency binding.
- `services/gateway/src/persona_continuity.test.ts`: Masanawa platform and independent agency identity constraints.
- `Masanawa-Web/scripts/persona-chat-links.test.mjs`: exact canonical identity, unique reviewed official reference, approved agency ID, conflict rejection.

Google documentation: https://ai.google.dev/gemini-api/docs/voice-replication and https://ai.google.dev/gemini-api/docs/live-api
