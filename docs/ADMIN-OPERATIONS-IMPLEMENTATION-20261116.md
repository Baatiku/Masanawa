# Real administration implementation register

Owner direction, 16 November 2026: operational controls replace simulated
administration. The isolated test wallet is not a substitute for these features.

## Current implementation boundary

The coordinated source batch implements real integer-kobo ledger adjustments,
account access changes, database-backed administrator permissions, publisher and
comment/news report decisions, versioned Buy Data approvals, persona lifecycle,
prompt/tone/context/public biography controls, authenticated portrait upload and
Google consent/sample enrollment, audition, assignment, default restoration and
provider deletion. All administrator writes require a server-verified sign-in
within 15 minutes. Refreshing an access token does not renew that age.

Source completion below is distinct from installation and live qualification.
The previously installed owner grant must be expanded using the updated private
installer after canonical migrations and the matching Gateway/Ops images deploy.
No live wallet credit, real speaker enrollment, provider purchase, database reset,
paid service or Worker activation was performed by this batch.

## Remaining substantive work

- Production installation and privileged signed-in acceptance are pending. TCP
  access to the existing Droplet is refused from this workspace; public HTTPS
  availability is not an SSH connection. Use the existing console/update path.
- The Facts and sources editor shares the existing transactional dossier admission
  with the CLI. Source dates/expiry, approved URLs, excerpts, rights, full biography,
  birth date and origin fields are editable with a separate evidence capability,
  recent authentication and review revision checks. Canonical identity and social
  account bindings cannot be reassigned. Ordinary context edits do not confer a
  provenance badge; actual evidence review remains authoritative.
- Provider credential rotation, host configuration and financial qualification
  switches remain private operations. The Providers screen reports actual Ops
  runtime configuration presence and flags, not successful provider authentication.
- Custom voice use requires an eligible Google project and genuine adult-speaker
  consent plus sample audio. Supported TTS assignment does not enable a replicated
  voice in Gemini Live calls. Pending enrollment recovery matches an exact tagged
  provider profile; unavailable/ambiguous provider results remain unresolved.
- Public-reference research is bounded retrieval from approved source hosts and
  their relevant links, not unrestricted browsing or paid Google Search. Access
  failures return no evidence; model answers must preserve uncertainty and cite
  real retrieved material.
- Off-server encrypted backup/restore qualification, monitoring delivery and
  live payment/provider settlement checks remain prelaunch operational gates.
  Administration cannot manufacture a deposit or force a provider success.

The full 189-ID web register remains intact; this admin batch does not close
unrelated open requirements or retire any immutable financial history.

## Verification evidence

The connected local matrix passes 132 tests (18 PostgreSQL-gated cases skipped
in that run). A separate disposable PostgreSQL 18/pgvector instance applies the
entire canonical migration composition and passes 57 tests, including real NGN
hold/adjustment/idempotency/audit and voice lifecycle/recovery records. Google
HTTP responses in voice tests are explicit fixtures, not provider acceptance.
The companion web passes 86 unit tests, TypeScript, ESLint (zero errors; existing
warnings remain), production build and browser editor flows at 390/1440px.
Browser HTTP fixtures exercise local WAV conversion, persona publication,
voice assignment/default restoration/deletion and reviewed NGN submission;
they do not move live funds. Mobile source additions require exact-head hosted
Flutter analysis/tests because this workspace does not contain the Flutter SDK.
Hosted CI, merge and live installation remain independent release gates.

## Required implementation

- [x] FIN01 Credit a selected user's real NGN wallet through an explicit,
  reasoned, idempotent adjustment with actor identity and immutable receipt.
- [x] FIN02 Adjust to an explicitly reviewed target balance by posting a delta;
  preserve existing entries, holds, transfer receipts and provider settlements.
- [x] FIN03 Debit adjustments reject insufficient available funds and conflicts;
  require fresh authorization and record the funding/source classification.
- [x] FIN04 Search users, view balances/holds/entries, and reconcile every change
  against canonical readback in web and Flutter.
- [x] PER01 Edit names, role, greeting and profile details with revision checks.
  Existing presentation edits cover a subset; complete profile context does not.
- [x] PER02 Upload/replace portraits through private authenticated storage,
  image validation and approved publishing; remove hardcoded portrait dependency.
- [x] PER03 Enable, disable and pause a persona at server admission for text,
  voice and calls, with defined handling of already admitted operations.
- [x] PER04 Version main prompt, tone/style, biography, facts and source records;
  preview, publish, roll back and audit changes.
- [x] PER05 Feed complete approved persona context into all generation channels;
  align prompt versions, identity and memory boundaries across web and Flutter.
- [x] PER06 Offer bounded research using server-approved tools, dated citations,
  prompt-injection defenses and honest uncertainty. Never invent missing facts.
- [ ] VOI01 Verify current Google API access, model compatibility, sample format,
  duration/size and speaker-consent requirements against current official docs.
- [x] VOI02 Authenticated reference and consent audio intake, validation,
  private retention, provider enrollment, pending/error/status recovery.
- [x] VOI03 Assign a provider-verified voice ID to a persona, audition it, revoke
  or replace it, and use it in supported real speech synthesis paths.
- [x] VOI04 Show separately whether custom voices are supported for synthesized
  replies and live calls; do not imply TTS enrollment changes Gemini Live voices.
- [x] ADM01 Capability-specific controls, fresh authorization for sensitive writes,
  durable audit receipts, revision conflicts and account-switch protection.
- [x] ADM02 Replace placeholder Providers/Settings sections with actual supported
  operational controls and truthful unavailable states.
- [ ] ADM03 Combined API/database/web tests; hosted CI; merge; immutable deployment;
  verify actual privileged operations and shared client readbacks.

## Initial source findings (historical baseline)

`services/ops/src/agent_admin.ts` currently exposes presentation and skill
assignment edits only. It does not implement prompt, lifecycle, portrait upload,
voice enrollment or real wallet adjustments.

`services/gateway/src/agent_identity.ts` reads approved database profiles but also
uses `official_portraits.ts` and constrained portrait keys. Mutable profile data
and static reviewed identity/portrait data must be inventoried before replacing
either; names must never become identity keys.

`packages/agents/src/configuration.ts` already defines platform voice provider/name
profiles. This is a reusable contract, not evidence of a working voice upload or
provider enrollment flow.

Custom voice enrollment must use authorized speaker recordings and Google's
verified consent workflow. A recording of a public official alone does not
establish authorization or provider eligibility.
