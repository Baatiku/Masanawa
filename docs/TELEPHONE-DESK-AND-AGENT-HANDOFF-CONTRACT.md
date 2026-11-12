# Masanawa telephone desk, agent handoff and language contract

**Owner direction:** 23 October 2026. **Status:** approved design direction; NOT implemented, provider/device verified, deployed, or phone number activated by this document. This contract extends the existing Calls workstream (Phase 4) with deployment/real-call acceptance in Phase 8. It does not create a sixth root tab or replace current in-app human/Masana calls.

## 1. Public experience and naming (owner decision)

- Present the first answering character as Masanawa's ordinary **front-desk officer / receptionist**. His purpose is to welcome a caller, identify **which Masanawa agent** they want to speak with, confirm selection if ambiguous, and route the same call. Do not begin by advertising AI, model, profession, expertise, or a menu of specialties.
- The primary spoken request, rendered in the caller's **confidently established language**: **“Welcome to Masanawa. Which of the Masanawa agents would you like to speak with?”** This English sentence specifies meaning, not a hardcoded spoken-language default.
- Public caller-facing terminology is **“Masanawa agents”**. Existing source/domain identifiers such as **Masana** remain intact; this design does not silently rename database entities, user assets, public profiles, or historical contracts.
- If the caller knows the name, identify the actual published eligible agent and connect after any needed confirmation. Never invent candidates. If the name is uncertain, ask for spelling, an account clue, or a distinguishing name. If no agent is named, the desk officer may briefly ask whom the caller wants, or what kind of conversation they hope to have, and offer verified options; professions are not the directory's primary conversational identity.
- After handoff the selected agent speaks naturally as a distinct persona shaped by published backstory, personality, temperament, interests, relationships/context and authorized memory. Profession is **supporting backstory/knowledge**, not a job-first sales pitch, career funnel, lesson script or mandatory greeting. Do not repeatedly introduce title/profession, turn casual conversation into consultation, or append robotic questions.
- No gratuitous “I am an AI” intro or repeated technical framing. Equally, do not claim that an automated voice is a human employee or deny automation when asked. Provide truthful, accessible service identification and honor any legally required telephony, privacy, recording or AI disclosure. A requirement to disclose must be met unobtrusively but cannot be removed by styling.

## 2. Language: caller-led, unrestricted configuration, uncertainty-aware

- **Do not hardcode a language whitelist, country-based default, dial-code inference, or English/Hausa fixed choices** in application routing, greeting prompts, persona instructions or call handoffs. Locale/country/telephone number are not proof of spoken language.
- Before hearing the caller the system cannot reliably know their language. Answer with a short neutral audio/brand cue (e.g. Masanawa name and a listening tone), open the microphone and listen to the first meaningful utterance. Once sufficient speech evidence is available, deliver the receptionist welcome/reply in the same confidently detected language. Do not pre-play a full English greeting.
- Use model-native multilingual audio understanding and, where available, automatic-language transcription/independent confirmation without supplying fixed language codes. Evaluate evidence from real speech plus transcription/semantic agreement; ignore silence, background TV, music, noise and caller-ID origin as language signals. No fabricated numeric confidence promise when the provider supplies no calibrated probability.
- If evidence conflicts, the utterance is too short, the pronunciation is ambiguous, or two plausible languages cannot be distinguished, **do not guess**. Ask a short neutral clarification after further speech where possible; use the last genuinely confirmed language when known. If no language can be established, offer safe retry/DTMF assistance or end politely rather than pretending understanding.
- On confident code-switching, follow the caller's current language naturally, without a language-choice menu or repeated announcements. Respect an explicit request to change language. Pass the currently evidenced language/context to the destination agent; **the destination still independently follows the caller** instead of blindly treating a receptionist hint as permanent truth.
- No product promise of perfect recognition or literally every language: recognize and reply in the user's language whenever the actual provider supports it. Distinguish provider failure/unsupported speech from user refusal. Confirm unfamiliar-language behavior through real telephone tests across varied accents, noise, short utterances and code-switching. Do not silently substitute English.
- Retain ordinary turn-taking, interruptions/barge-in, no talking over a caller, and natural pauses per `docs/CONVERSATION-VOICE-AND-CALL-CONTRACT.md`.

## 3. One number, same-call routing

1. Inbound LiveKit phone participant enters a controlled receptionist session; connection is unauthenticated by default. Confirm number allocation, inbound route and actual account capabilities before claiming it works.
2. Desk officer gathers a named agent or minimal selection intention, using the caller's language.
3. Server queries the canonical tenant-scoped, published/visible/eligible agent directory. Never let the model invent identifiers, infer account authority from a display name, or bypass owner restrictions.
4. For ambiguous matching, read back distinct display names and get caller confirmation. For unavailable, removed, private or suspended agents, give a natural failure and offer another real agent/return to desk.
5. Server performs an allowlisted **same-LiveKit-room** active-agent handoff, retaining phone media. Transfer only a minimal, truthful, permission-safe summary and an optional confirmed language hint; apply destination's own published persona revision, approved voice, permissions and admission controls. Avoid requiring a separate PSTN number/SIP transfer for every agent.
6. On handoff failure, revert to the desk officer without dropping the call or reporting a fictional successful connection. Permit “back to reception”, another name and ordinary end-call. If the selected agent carries a usage fee, obtain an exact server quote and explicit authorized payment flow first; do not treat an unknown phone number as a signed-in Wallet owner.
7. End call on caller hangup, timeout, explicit goodbye or authenticated operations policy; release LiveKit room, Gemini session, audio resources and call ledger accurately.

Implementation should reuse the existing Gateway call/agent/persona and Gemini provider contracts, with a separately bounded server-side telephony audio bridge; current Flutter direct Gemini Live WebSocket is **not** automatically a LiveKit phone agent. Use our own Gemini API credentials for inference where allowed; LiveKit phone/media/hosting allowance and Google inference billing remain separate. Make cost ceilings and concurrency explicit before enabling sustained public traffic.

## 4. Public UI and internal administration

**No new root tab.** Within existing Calls surfaces, a secondary telephone-access entry may show the actual provisioned number, international call-cost warning where relevant, copy/phone-dial action, unavailable state, privacy information and retry. It must not present a not-yet-provisioned number as live.

Operator-only setup: number/dispatch status; desk character and greeting configuration; current eligible directory; successful/ambiguous/failed handoffs; minute and Gemini-cost usage; abuse/blocked-call controls; provider failure and graceful shutdown. Never expose raw phone numbers or recorded private speech unnecessarily.

## 5. Canonical state, trust, acceptance

State machine: `ringing → connected/listening → language_evidence_pending → reception → candidate_search/clarify → confirmed_handoff → active_destination → reception_or_ended`. Any live state may transition to `recoverable_failure` or `ended`. Separate `unknown_language`, `ambiguous_agent`, `agent_unavailable`, `provider_unavailable`, `policy_denied`, `cost_limit`, `caller_disconnect`; do not report transfer success on request alone.

Security: caller phone number is not identity or authentication. Do not expose private memories, transcripts, profiles, Wallet, payments, P2P, account balances or operations without separate verified user authorization and tenant/account fencing. Per-number and global abuse budgets, concurrency, rate limits and audit IDs apply. Retention/recording/transcript opt-in and legal notices depend on qualified jurisdiction/provider obligations.

**Required proof before rollout (no inference from a merge):**
- Real PSTN inbound call, connection/teardown and Google-key billing on a permitted account.
- First utterance handled in multiple real caller languages, no English/Hausa default, ambiguity asks rather than guesses, code-switching and explicit requested language switching.
- Names, near-identical names, not-found, unpublished/blocked and offline agents; natural desk responses.
- Genuine same-room handoff with destination's own backstory/voice, brief permission-safe summary, caller interruptions, transfer failure return and desk return.
- No unauthorized private data/Wallet path; accurate minutes/cost/recording policy; low-bandwidth and dropped-call recovery.
- Provider/model availability and actual supported languages evaluated from current evidence; unsupported cases transparently recover.
- Pass focused source/provider/device tests and link exact SHA, run logs and traces to canonical Phase 4/Phase 8 acceptance; never present a contract as deployed functionality.

## Technical references

- Existing Masanawa authority: `AGENTS.md`, `docs/CALLS-EXHAUSTIVE-SCREEN-FEATURE-CONTRACT.md`, `docs/CONVERSATION-VOICE-AND-CALL-CONTRACT.md`, `docs/PRODUCT-ROADMAP-20261019.md`.
- LiveKit official handoffs: https://docs.livekit.io/agents/logic/agents-handoffs/
- Google Gemini Live API languages/voice: https://ai.google.dev/gemini-api/docs/live-api/capabilities
- Google Gemini automatic real-time language detection: https://ai.google.dev/gemini-api/docs/live-api/live-transcribe
