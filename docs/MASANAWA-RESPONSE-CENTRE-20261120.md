# Masanawa Response Centre — implementation and operational acceptance

Date: 20 November 2026. Scope: Gateway, PostgreSQL, Ops API/admin UI, and separately deployed Masanawa Site. All public claims are *independent citizen reporting*, not government dispatch. Keep the current five customer roots: Home, Chats, Wallet, Calls, Profile. Response is a utility destination reachable from multiple mobile headers, desktop rail, and More; news-only Home is unchanged.

## Authority and data flow

| Concern | Authoritative component | Contract |
| --- | --- | --- |
| 20 incident categories and subcategories | PostgreSQL repository code, Gateway | `GET /v1/response/categories` |
| Verified public agency contacts | `civic_response.agency_contacts` | `GET /v1/response/contacts?state=&serviceType=` |
| Authenticated citizen case list/detail/timeline | `civic_response.incidents`, `incident_events` | `GET /v1/response/incidents`, `/:id`, `/:id/events` |
| Report submission | Same tables, authenticated actor | `POST /v1/response/incidents` (idempotent `requestKey`) |
| Citizen additional facts | Same tables, revision-checked | `POST /v1/response/incidents/:id/update` |
| Published public summaries, no login required | Reviewed projection from `civic_response.incidents` | `GET /v1/response/public-incidents?category=&state=&limit=&offset=` |
| Citizen publication permission, reversible | Reporter-bound incident revision and append-only audit | `POST /v1/response/incidents/:id/public-consent` |
| Human publication approval or retraction | Ops `incidents.write`, curated redacted fields, audit reason | `POST /v1/admin/incidents/:id/publication` |
| Interview and voice-to-text | Gateway Gemini 2.5 Flash API, user session | `POST /v1/response/interview` / `/v1/response/transcribe` |
| Admin queue/detail/edit/hide/restore | Ops capability checks + same repository | `GET /v1/admin/incidents`, `/:id`; `POST /:id/update` |
| Admin contacts add/change/remove | Ops capability checks + audited repository | `GET/POST /v1/admin/response/contacts` |
| Public browser authentication boundary | Site BFF, HttpOnly customer session | `/api/response` and `/api/admin` proxy only, no second D1 incident store |

Citizen records always bind to a bearer-resolved tenant and user; administrative reads and writes require `incidents.read/write` and `contacts.read/write`, respectively, and fresh admin authentication for writes. The original case list and evidence remain private; a separately approved public summary feed allows other users to follow eligible issues. A staff-only queue shows all incidents in the authorized tenant. `hidden_at` is a recoverable visibility change; the report and history are not physically erased. Reporter additional information is captured in the event history. Field changes store previous/new values in staff-only events, with operator identity and mandatory justification. Optimistic revisions prevent stale overwrites.

## Citizen UI and supported intake

- `Report an issue`: text, voice note→reviewable transcript, or one-question-at-a-time conversational interview with optional browser voice readout and push-to-talk answers. Microphone permission is explicit. Interview fallback still asks structured questions when the Gemini key/provider is unavailable; voice transcription fails clearly without its key. Final submission requires citizen review, acknowledgment of no automated forwarding, a category, description, location, and a stable idempotency key.
- `My incidents`: latest reports with reference, urgency/status, complete case detail, admin public update, event timeline, and supplemental information form.
- `Public reports`: signed-out-accessible national feed with category, state and paginated filters; only separately edited summaries of eligible reports approved by an operator with citizen permission. Reporters can opt in when reporting or later and withdraw permission with immediate removal of the published summary.
- `Help directory`: source-attributed, searchable state-filtered contacts, service descriptions, click-to-call, official links, and address/map search where a verified address exists. Seed migration 0133 includes five nationwide services; migration 0134 adds ten specialist/statewide entries, all 37 NPF state command directory contacts, and 21 physical ICPC state offices — 73 initial records in total.

The browser “Talk to AI” experience is **push-to-talk**, not a telephone PSTN number or always-listening duplex call. It does not call emergency responders. A future real dial-in service requires a licensed voice/telephony provider, user-consent notice, server-side call admission and rate limiting, recorder retention policy, multi-language streaming transcription, qualified latency/fallbacks, and explicit emergency transfer partnerships. Never present it as operational until qualified.

## Safety, oversight and evidence

- For immediate risk, always show **call 112**, with a direct `tel:112` action. An online submission is never a substitute. Other sourced emergency/specialist numbers remain labeled for their specific service.
- The independent Masanawa interviewer is not a Nigerian Government operator or an official agency representative. It does not diagnose, assign police, claim dispatch, or promise a rescue. AI guesses are never submitted without citizen review.
- Only administrator-provided source URLs and dates qualify public directory records. Local police station *street addresses* have not been independently verified and are not invented. State police command phone lines are distinguished from police station addresses.
- `assignedAgencyId` is a **suggested internal routing target**, not proof of delivery. `acknowledged` requires a real external case reference and separately documented source of operator-confirmed agency receipt; only then is `dispatch_confirmed_at` set. This is not proof of field response.
- Private staff notes are never included in the citizen public reads. Avoid collecting NIN, BVN, passwords, full ID documents, unnecessary sensitive medical details, and victim identities. The request body, AI response sizes, and voice clip size are bounded. Microphone audio is processed in memory for transcription, not stored in the incident DB. Check provider-side retention and data-processing contracts separately.
- Public reporting (`0135`) is **opt-in, human-reviewed and independently curated**, never a public rendering of the raw case. Default `public_consent=false`; a reporter's separate affirmative choice creates only `pending_review`. Admins must provide a new title/summary, a recorded reason and `incidents.write` privilege before approval. The public SELECT projection excludes reporter/tenant IDs, internal notes, precise/LGA/coordinate locations, emergency medical/witness data, original descriptions, contact preferences, source audio, and evidence; only the state, category, reviewed summary, case status and publication date are shared. Protected categories such as crimes, medical, trafficking, children, domestic abuse and person-centred complaints **cannot** be published, even with opt-in. Reporter withdrawal, admin retraction, case hide and protected-category changes remove an item immediately. A basic pattern check rejects phone numbers, email addresses and URLs in the public summary, but staff must still manually assess indirect identification and defamation risk. Published text is not government-verified fact.
- Before production activation for vulnerable-person, medical, trafficking and gender violence cases, complete a Nigeria Data Protection Act / NDPC DPIA with purpose, lawful basis, privacy notice, recipient/retention policy, subject access, deletion and redaction procedures, breach response, access log retention, cross-border transfer and Gemini data-processing review. Additional explicit protections are needed before any external agency forwarding. Current implementation is not proof that those legal/operational prerequisites are complete.
- Add anti-abuse request throttling on Gateway/reverse proxy, operator monitoring, verified contact freshness review schedule, incident escalation/on-call processes, and disaster recovery drills before real-world emergency reliance. Authentication and schema bounds alone do not provide a production emergency SLA.

## Schema and source evidence

- `packages/security/migrations/0133_civic_response_centre.sql`: tables, checks, reporter uniqueness, queue indexes, immutable event rows and five contact seeds.
- `packages/security/migrations/0134_civic_response_verified_directory.sql`: sourced agency and office expansion. Official URLs stored on *each contact*; check the page and verify the phone before presenting as operational. Some officials' published lines may change.
- `packages/security/migrations/0135_civic_response_public_feed.sql`: consent/publication state columns, public-only index and database constraints. Only forward migration; older reports start private.
- NCC national emergency plan: <https://ncc.gov.ng/media/836/view> (112 covers Police, Ambulance, Fire, FRSC, NSCDC, emergency agencies).
- NPF emergency announcement and public directory: <https://incb.police.gov.ng/news/details/812>, <https://police.gov.ng/contact/display>.
- FRSC: <https://frsc.gov.ng/commands/national-headquarters/> (122); NEMA: <https://nema.gov.ng/>; Federal Fire Service: <https://fedfire.gov.ng/contact-us/>; NSCDC: <https://nscdc.gov.ng/contact-address/>.
- Customs: <https://licences.customs.gov.ng/>; NAPTIP: <https://naptip.gov.ng/wp-content/uploads/2024/01/NAPTIP-handbook-on-traffiking-in-nigeria-for-jounalists.pdf>; ICPC local offices: <https://icpc.gov.ng/office-locations/>; EFCC: <https://efcc.gov.ng/wantedPersons/halimat-adenike-tejuosho>; NHRC: <https://www.nhrc.gov.ng/complaint-form/>; NCDC: <https://ncdc.gov.ng/contact>; NIS: <https://immigration.gov.ng/contact-us/>; LASEMA: <https://lagosstate.gov.ng/services/>.

## Validation and rollout sequence

1. Verify the three numbered migrations (0133–0135) are picked up by the existing security migration runner and execute them against staging PostgreSQL **before** starting new Gateway/Ops image revisions. Back up prior DB first. No rollback should drop incident data.
2. Deploy the source-merged Gateway and Ops service on the established DigitalOcean stack; verify secure Ops authentication, network reachability, and `MASANAWA_GEMINI_API_KEY`/`GEMINI_API_KEY` availability in the trusted server. Do not export the key to the Site or browser. Existing cloud access/network gates may block this operational step.
3. Test `/v1/response/categories` and verified contacts anonymously, then sign in to make and re-read a report, retry idempotent POST, add more details, test cross-account access denial, and confirm site sign-out clears UI state.
4. Sign in as an authorized, freshly authenticated administrator; verify queue, edit, assignment, hidden/restored visibility, conflict handling, contact changes, and immutable events. Test an unsupported agency receipt denial followed by a documented reference plus confirmation; do not use a fake government reference in live production.
5. Activate and deploy the current Site version once its BFF target and all new endpoints respond successfully; test mobile/desktop headers, full admin navigation, microphone permissions, audio failure fallbacks, public source links and `tel:112` on real devices.
6. Verify a dedicated incident privacy policy/DPIA, incident retention/deletion procedures, alerting and triage staffing before public promotion as a dependable civic safety service. No automated official routing or PSTN emergency calling is implemented in this release.

## Local automated checks

The response-specific Vitest suite exercises migration composition/73 sourced contacts, actual PGlite SQL for tenant isolation, idempotency, revision conflicts, operator audit, hidden cases and explicit agency receipt confirmation; Gateway route tests cover unauthorized writes, malformed cases, safe guided interviews and no automatic dispatch. Existing workspaces require `corepack pnpm` 12 for repo commands; Site source uses its own pnpm 11 and Vinext build. Pass local checks and exact-head hosted CI before merging/deployment claims.
