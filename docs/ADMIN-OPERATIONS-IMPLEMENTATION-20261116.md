# Real administration implementation register

Owner direction, 16 November 2026: operational controls replace simulated
administration. The isolated test wallet is not a substitute for these features.

## Required implementation

- [ ] FIN01 Credit a selected user's real NGN wallet through an explicit,
  reasoned, idempotent adjustment with actor identity and immutable receipt.
- [ ] FIN02 Adjust to an explicitly reviewed target balance by posting a delta;
  preserve existing entries, holds, transfer receipts and provider settlements.
- [ ] FIN03 Debit adjustments reject insufficient available funds and conflicts;
  require fresh authorization and record the funding/source classification.
- [ ] FIN04 Search users, view balances/holds/entries, and reconcile every change
  against canonical readback in web and Flutter.
- [ ] PER01 Edit names, role, greeting and profile details with revision checks.
  Existing presentation edits cover a subset; complete profile context does not.
- [ ] PER02 Upload/replace portraits through private authenticated storage,
  image validation and approved publishing; remove hardcoded portrait dependency.
- [ ] PER03 Enable, disable and pause a persona at server admission for text,
  voice and calls, with defined handling of already admitted operations.
- [ ] PER04 Version main prompt, tone/style, biography, facts and source records;
  preview, publish, roll back and audit changes.
- [ ] PER05 Feed complete approved persona context into all generation channels;
  align prompt versions, identity and memory boundaries across web and Flutter.
- [ ] PER06 Offer bounded research using server-approved tools, dated citations,
  prompt-injection defenses and honest uncertainty. Never invent missing facts.
- [ ] VOI01 Verify current Google API access, model compatibility, sample format,
  duration/size and speaker-consent requirements against current official docs.
- [ ] VOI02 Authenticated reference and consent audio intake, validation,
  private retention, provider enrollment, pending/error/status recovery.
- [ ] VOI03 Assign a provider-verified voice ID to a persona, audition it, revoke
  or replace it, and use it in supported real speech synthesis paths.
- [ ] VOI04 Show separately whether custom voices are supported for synthesized
  replies and live calls; do not imply TTS enrollment changes Gemini Live voices.
- [ ] ADM01 Capability-specific controls, fresh authorization for sensitive writes,
  durable audit receipts, revision conflicts and account-switch protection.
- [ ] ADM02 Replace placeholder Providers/Settings sections with actual supported
  operational controls and truthful unavailable states.
- [ ] ADM03 Combined API/database/web tests; hosted CI; merge; immutable deployment;
  verify actual privileged operations and shared client readbacks.

## Initial source findings

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
