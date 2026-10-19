# Consumer Masana memory — implementation and release contract

Authority: project AGENTS.md, canonical product roadmap, screen/journey contract. This is a technical supplement, not a second milestone ledger.

## Canonical source and permissions
- Completed agent turns remain in the existing durable agents.mobile_turn_commands table, with replay-safe request IDs. No second transcript store.
- Long-term facts use the existing memory.records/revisions/evidence model. Preferences, successful and skipped ingest receipts, corrections and forgetting are stored in the same memory schema.
- Every operation uses authorized tenant/user/character/relationship scope from the same Gateway conversation authorizer. Creator ownership does not grant access to fans' private relationship memories.
- Automatic learning defaults OFF; an explicit "Remember that..." command may be saved without general opt-in. The extractor only admits conservative, bounded patterns for ongoing goals and preferences; it does not mine arbitrary conversation or infer sensitive details.
- Memory and prior conversation are untrusted evidence. They never grant tool capabilities, user consent to pay, transfers, financial settlement, external actions or new Skills.
- Correction appends an immutable revision, and forgetting tombstones the current record; both invalidate disposable lexical/vector/entity/temporal projections. Account deletion after actual financial-clearance checks removes consumer memory records, evidence, revisions, preferences, scans and ingestion receipts.
- Gateway saves eligible memory only after the completed canonical turn. Worker catches up missed completed-turn extractions with durable receipts, never reruns inference, and does not touch pre-rollout historic chats. Per-relationship row locks serialize replay/concurrent updates.

## Screens and states
Chats > Masana > conversation overflow > "What this Masana remembers" opens a secondary Flutter screen, not a sixth root tab. It provides loading, no-memories, failure with retry, pull-to-refresh, learning toggle (with persisted readback), correction dialog and version CAS, and confirmed forgetting with lifecycle CAS. Account-switch generation clears old data. Offline mutations are never displayed as successful.

## Release acceptance
1. Account A/character X with learning off retains only explicit memory; opt-in enables eligible preferences and goals; restarts and new sessions retrieve correct facts.
2. Correction is reflected in text and Live; stale revisions fail; forgetting removes all active retrieval (including indexes).
3. Account A/character Y and account B/character X never see or change A/X memories, even with forged record IDs.
4. Failed/pending turns produce no memory. Crash after completed reply recovers via Worker without duplicate extraction, double inference, payment or external actions.
5. Account deletion removes eligible personal memory after revocation and finance clearance, and preserves legally required financial records.
6. Run Node24/pnpm12 frozen install, typecheck, complete test:ci and build on the exact commit; use PostgreSQL staging migration, Gemini provider smoke, Android Flutter analyze/test/build and physical handset/call tests before VERIFIED_E2E.
7. Back up actual PostgreSQL and verify restore. Deploy additive migration and Worker first, Gateway and app second; default learning remains disabled. Roll back code without dropping canonical memory or original transcript/financial tables.

PGlite/vitest passes prove SQL and source paths, not live Railway or Gemini execution. This implementation deliberately does not introduce a separate vector or graph provider, automated skills mutation, or indiscriminate user profiling. Any richer extraction must pass held-out memory accuracy, privacy and total-cost gates first.
