# Consumer Masana memory — implementation and release contract

Authority: project AGENTS.md, canonical product roadmap, screen/journey contract. This is a technical supplement, not a second milestone ledger.

## Canonical source and permissions
- Completed agent turns remain in the existing durable agents.mobile_turn_commands table, with replay-safe request IDs. No second transcript store.
- Long-term facts use the existing memory.records/revisions/evidence model. Preferences, successful and skipped ingest receipts, corrections and forgetting are stored in the same memory schema.
- Every operation uses authorized tenant/user/character/relationship scope from the same Gateway conversation authorizer. Creator ownership does not grant access to fans' private relationship memories.
- Automatic learning defaults OFF; an explicit "Remember that..." command may be saved without general opt-in. The extractor conservatively admits directly user-stated preferences, goals, current projects, prior-lesson observations, and calendar-dated episodes. It does not infer sensitive facts or mine speculative conversation. Dates are dates, not fabricated local times.
- Stable topic keys allow independent preference updates. Corrections append canonical revisions, with source hashes, current provenance, and confidence. Old revisions never override user corrections.
- Worker builds short private per-relationship summaries in disposable memory.consumer_summaries, keyed to exact source revision IDs and content hashes. These are derived views, not canonical facts and NOT writes to immutable memory.reflections audit. Recall revalidates every source; correction/forget instantly invalidate the summary. Account deletion purges both derived summaries and source facts.
- Existing Skills assignments/readiness/authority remain independent; remembered statements can inform certified Skill discovery on explicit continuation requests, but cannot grant skills or authorize tools.
- Memory and prior conversation are untrusted evidence. They never grant tool capabilities, user consent to pay, transfers, financial settlement, external actions or new Skills.
- Correction appends an immutable revision, and forgetting tombstones the current record; both invalidate disposable lexical/vector/entity/temporal projections. Account deletion after actual financial-clearance checks removes consumer memory records, evidence, revisions, preferences, scans and ingestion receipts.
- Gateway saves eligible memory only after the completed canonical turn. Worker catches up missed completed-turn extractions with durable receipts, never reruns inference, and does not touch pre-rollout historic chats. Per-relationship row locks serialize replay/concurrent updates.

## Screens and states
Chats > Masana > conversation overflow > "What this Masana remembers" opens a secondary Flutter screen, not a sixth root tab. It provides loading, no-memories, failure with retry, pull-to-refresh, learning toggle (with persisted readback), correction dialog and version CAS, confirmed forgetting with lifecycle CAS, source/timestamp provenance and owner-authorized user-initiated JSON export. Account-switch generation clears old data. Offline mutations are never displayed as successful.

Chats > Masana > conversation overflow > "Load earlier messages" fetches stable, pair-preserving keyset cursor pages from the canonical owner-scoped history table. A timestamp tie is disambiguated by exact canonical request ID. Old API and legacy timestamp cursors remain supported. Authenticated older media hydration is fenced to the current account. No-more/offline states do not erase the cached timeline. Full account transcript export remains the existing independent cursor-paginated endpoint.

## Release acceptance
1. Account A/character X with learning off retains only explicit memory; opt-in enables eligible preferences and goals; restarts and new sessions retrieve correct facts.
2. Correction is reflected in text and Live; stale revisions fail; forgetting removes all active retrieval (including indexes).
3. Account A/character Y and account B/character X never see or change A/X memories, even with forged record IDs.
4. Failed/pending turns produce no memory. Crash after completed reply recovers via Worker without duplicate extraction, double inference, payment or external actions.
5. Account deletion removes eligible personal memory after revocation and finance clearance, and preserves legally required financial records.
6. Run Node24/pnpm12 frozen install, typecheck, complete test:ci and build on the exact commit; use PostgreSQL staging migration, Gemini provider smoke, Android Flutter analyze/test/build and physical handset/call tests before VERIFIED_E2E.
7. Back up actual PostgreSQL and verify restore. Deploy additive migration and Worker first, Gateway and app second; default learning remains disabled. Roll back code without dropping canonical memory or original transcript/financial tables.

PGlite/vitest passes prove SQL and source paths, not live Railway or Gemini execution. This implementation deliberately does not introduce a separate vector or graph provider, automated skills mutation, or indiscriminate user profiling. The 0009 summary schema uses an erasable projection, not immutable canonical Memory reflection rows. Any richer extraction must pass held-out memory accuracy, privacy and total-cost gates first.

## Current GitHub implementation references (19 October 2026)
This architecture adopts proven concepts rather than installing another memory service or granting agents unreviewed code mutation.

| Reference | Reusable pattern | Masanawa decision |
|---|---|---|
| [LangGraph stores/checkpointers](https://github.com/langchain-ai/langgraphjs) | Separate durable per-conversation checkpoints from cross-session long-term store, namespace by scope | Reuse `agents.mobile_turn_commands` and canonical `memory.records`; avoid a competing transcript/checkpoint store |
| [Mem0](https://github.com/mem0ai/mem0) | Memory extraction, consolidation, semantic lookup, identity-scoped CRUD | Reuse extraction/update ideas but enforce default-off consent and real owner-scoped SQL authorization; evaluate embeddings offline before adding providers |
| [Letta Code](https://github.com/letta-ai/letta-code) | Persistent agent identity, long-horizon context, reflection and skills over time | Bounded consolidation as source-revision-linked projection; never let retrieved text rewrite production prompts, Skills or provider permissions |
| [Graphiti](https://github.com/getzep/graphiti) | Temporal episodes, versioned facts, source provenance | Represent dated events and explicit source revisions in existing PostgreSQL instead of operating a new graph database for every consumer relationship |
| [Anthropic Agent Skills](https://github.com/anthropics/skills) and [Agent Skills standard](https://agentskills.io) | `SKILL.md` descriptions, progressive disclosure, scripted procedures | Preserve approved versioned Skills and verified assignment/authority. Use memory only as a hint for already-eligible Skill discovery, not as executable or privileged instructions |

**Economics/portability:** current baseline costs one existing PostgreSQL database and existing Gemini request path; bounded DB Worker writes add CPU and storage but no new managed memory/vector subscription. The eligible memory intake uses no extra LLM calls, so its marginal AI token cost is zero. Live memory adds bounded prompt tokens; source-backed summaries have explicit size limits. Monitor row counts, Worker latency and model token consumption before considering embedding, graph, or external memory products. All consumer tables are additive SQL with read-only fallback when an optional runtime fails. The correct rollback removes only newly deployed code, not canonical user facts or financial liabilities.

**Excluded at this phase:** indiscriminate AI profiling, inferred private health/financial information, agent-generated Skills that modify authorities, cross-user memory sharing, wholesale prompt injection of archived chats, a second event ledger, a bespoke vector/graph cluster and auto-running external actions from recalled text. For future richer extraction run LongMemEval-style holdout checks measuring recall precision, cross-owner leakage, corrections, forget effectiveness, hallucinated personal facts, latency, per-1,000-conversation total costs and rate-limited provider recovery before enabling a cohort.
