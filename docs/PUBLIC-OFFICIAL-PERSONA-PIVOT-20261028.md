# Nigerian public-official personas — owner pivot, 28 October 2026

## Scope and delivery status

The owner selected **APC, ADC, NDC and PDP**. Research presidential aspirants/candidates and governorship candidates within these parties. Current officeholding, reported aspiration, party nomination and final electoral admission are different dated facts. Do not infer a candidacy from incumbency or an old party affiliation.

This replaces human post submission and the profession-based direction for new personas. The former twelve-item composer batch is superseded, not completed. Existing financial receipts and cancellation/recovery remain available. Sharing remains available.

**Implementation is in progress on `feat/public-official-persona-pivot-oct28`; it is not deployed or accepted end to end.** No researched official has been admitted as a live persona, and no reviewed source accounts or provider credentials have been configured by this change.

## Existing implementation and proposed architecture

Keep the existing versioned canonical persona identities, shared chat/call admission, MB billing and private conversation memory. Create new canonical identities for public officials; never rename a fictional identity and inherit its conversations. Reuse the existing Postgres-backed retrieval and scoped memory before introducing another memory service.

Maintain two separately authorized knowledge domains:

1. Public evidence: dated biographies, public records, speeches and original official statements, with URLs, retrieval times, hashes, usage basis and reviewer decisions. Track conflicting and superseded statements rather than silently replacing history.
2. Private citizen memory: conversation preferences and continuity scoped to the user/persona relationship. It cannot become public evidence, leak between users or drive tailored political persuasion.

Every persona must clearly identify itself as an AI simulation. It may explain documented views and quote evidence, but must distinguish quotations, supported facts and inference. It must not invent private knowledge, new policy promises, real-world actions or endorsement. Calls use the same evidence and disclosures with generic voices; the product does not connect callers to an actual officeholder.

Grokipedia is the requested biographical reference, corroborated by primary records. Access to its pages could not be verified in this environment, so no biography has been fabricated or marked reviewed. Check applicable [xAI terms](https://x.ai/legal/terms-of-service) and page-level licenses before ingestion; attribution alone is not a blanket reuse license.

## Research scope

The [presidential ticket CSV](research/ng-2027-selected-party-presidential.csv) records four selected-party tickets reviewed against the attached [INEC primary list](https://www.inecnigeria.org/documents/press/2027%20PRESIDENTIAL%20FINAL%20LIST.pdf): APC — Bola Ahmed Tinubu; ADC — Atiku Abubakar; NDC — Peter Gregory Obi; PDP — Sandy Ojang Onor. This verifies ticket-list text, not persona biographies, accounts or endorsement. Governorship verification is recorded per row: 76 primary ticket text matches and 26 still pending.

## Work already present in the branch

- Home composer removed; authenticated legacy submission attempts rejected server-side while historical recovery remains available.
- Reviewed public-official dossier/evidence schema and readers, exact published-version binding, expiry checks and shared chat/call persona instructions.
- Directory/profile metadata and a provenance tick that expires and is not trusted from an offline cache. The tick means source reviewed, not official endorsement.
- X/Facebook source adapters preserving original text, author matching and source URLs, with durable import deduplication, edit revisions, leases, checkpoints and withdrawal support.
- A background importer available behind a disabled-by-default switch. This is polling, not an instant delivery guarantee.
- Research queue at [selected-party governorship CSV](research/ng-2027-selected-party-governorship.csv): 102 reported tickets across 28 states, with primary-document links. 76 candidate/running-mate/party tuples now match the primary INEC PDF text; 26 remain pending because primary PDFs could not be read. All biographies and live admissions remain pending.

These are source changes, not a claim of production readiness. Tests already cover retirement, stale verification, private continuity and exact source text. Local verification: workspace TypeScript passed; Flutter analysis passed with existing informational lints and no warnings/errors. The 34-file backend/architecture batch passed 178 tests with 24 skipped and one environment-registry failure; after registering all four new optional variables, the repaired registry plus updated evidence/eligibility policies passed all 7 tests. The earlier database setup timeouts disappeared when the batch ran serially with a 60-second setup allowance. Mobile batches passed 32 tests for feed/attribution/badges and 21 tests for retired historical management/profile/Saved; a final profile/badge/source batch passed 10 tests and Gateway TypeScript passed again. Hosted CI remains separately recorded below. Skipped real-Postgres suites are not live acceptance.

## Remaining implementation and admission checklist

- [ ] Review presidential and governorship names against dated primary nomination documents; distinguish aspirants from confirmed candidates and review party changes.
- [ ] Obtain usable Grokipedia references and corroborating primary records for a small first cohort; record licensing/usage basis and reviewer decisions.
- [ ] Build and validate a repeatable trusted dossier admission workflow; reject incomplete, stale and mismatched identity packets.
- [ ] Implement per-question retrieval over a larger evidence corpus with source citations; the current bounded initial evidence snippets do not constitute decades of comprehensive knowledge.
- [ ] Evaluate factual accuracy, dated offices/affiliations, quotation fidelity, unknown-answer behavior, prompt injection and chat/call consistency before admission.
- [ ] Verify each chosen official social account and its stable provider ID; choose one active platform per official.
- [ ] Configure authorized X/Meta access as server secrets and qualify permissions/usage rights. Never paste credentials into chat.
- [x] Add original-source attribution to the shared post header in feed, detail and Saved; preserve metadata through reaction/save changes.
- [x] Enforce source suspension, review/evidence expiry and exact canonical version at feed and Saved read time, including previously imported posts.
- [ ] Complete provider deletion/compliance reconciliation; the current explicit withdrawal method alone is insufficient for automatic source-deletion handling.
- [ ] Validate schema rollout, importer failure/retry behavior, accessibility and shared financial-history compatibility in consolidated checks.
- [ ] Commit and review the scoped PR, pass required checks and merge; only then qualify deployment and a small source-backed live pilot.

Do not mark these items complete merely because an adapter or schema exists. Do not retire old user finances or enable public profiles based on a research shortlist.

## Source ingestion

Use supported APIs, not a public-page scraping promise. [X user posts API](https://docs.x.com/x-api/users/get-posts) requires appropriate account access and quotas. Facebook public Page access can require app review; qualify current Meta permissions before enabling it. Imported text remains verbatim, retaining source URL, original publication time and revision history. Media-only posts need an explicit qualified media strategy before they can be represented faithfully. Never generate replacement posts or attribute unrelated quotations to an official.

Configuration implemented in the branch:

- `MASANAWA_OFFICIAL_SOCIAL_IMPORT_ENABLED` — off unless explicitly configured.
- `MASANAWA_OFFICIAL_X_BEARER` — server secret.
- `MASANAWA_OFFICIAL_FACEBOOK_BEARER` — server secret.
- `MASANAWA_OFFICIAL_FACEBOOK_VERSION` — pinned supported Graph API version.

No settings were changed in Railway. Start with a small reviewed cohort; the current one-source-per-minute worker must be extended with bounded concurrency, provider-aware quotas and compliance handling before a large roster.

## Memory choices

[Graphiti](https://github.com/getzep/graphiti) is a candidate for dated public relationships and conflicting historical facts, but adds graph infrastructure, extraction and evaluation costs. [Mem0](https://github.com/mem0ai/mem0) is a candidate for private conversational preferences, with strict identity scope and deletion guarantees. [Letta](https://github.com/letta-ai/letta) is a broader agent-runtime choice. None is required to replace the existing runtime for the first release. Benchmark the existing retrieval first, then add a system only for a demonstrated gap.

## Research references

Use [INEC publications](https://www.inecnigeria.org/press) and attached original lists as admission authority. The CSV links each state document individually; finding a link is not row-by-row verification. The [secondary state compilation](https://ngelections.com/blog/2027-governorship-final-lists-by-state/) is a discovery aid only. Verify temporal revisions and candidates individually before any names, offices or party badges appear in production.

## Delivery checkpoint — 29 October continuation

The implementation removes composer/Boost routes from all production entry points, including Saved and owner profiles. Existing receipt, cancellation and deletion recovery remains. New source-policy SQL also prevents unsourced editorial posts under an admitted public-official identity from appearing publicly. AI disclosure persists when verification expires; the verification expiry is bounded by required evidence validity. Profile sources expose the biography reference and review date.

External admission work remains open: qualified X/Meta access, actual reviewed Grokipedia/primary biographies, new canonical identities with cleared imagery, deeper per-turn/voice retrieval, automated provider deletion compliance and an evaluated live pilot. No production credentials, importer flags or wallets were changed.

Research verification, 29 October: primary-document text matching confirms 76 contiguous candidate/running-mate/party tuples. This is ticket transcription verification only. The other 26 tickets remain reported entries pending primary access/review, not negative findings about candidacy. All 102 remain `persona_admitted=false`.
