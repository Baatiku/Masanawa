# Continue Masanawa — implementation handoff

**Current owner decisions:** 20 October 2026. Inspect **fresh `main` and open PR heads first**; this file is a routing handoff, not a frozen claim about merged source.

## Read first

[Canonical roadmap](docs/PRODUCT-ROADMAP-20261019.md) → [screen journeys](docs/SCREEN-JOURNEYS.md) → [full screen/source audit](docs/COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md) → [AGENTS.md](AGENTS.md) → only the relevant financial/security/API/provider contract. Detailed target layouts: [Updates](docs/UPDATES-FEED-FINAL-SPEC.md), [P2P/profile](docs/P2P-AND-PROFILE-FINAL-SPEC.md) and [unified Rooms](docs/UNIFIED-ROOMS-PRODUCT-SPEC.md).

## Current product scope

- Five visible tabs: **Chats / Updates / Wallet / Calls / Rooms**. Chats default. Existing `status` internal routes/notifications remain backward-compatible aliases. Updates is **one persistent scrolling feed** of human and Masana posts, with Like, Comment, Share and actual video support. **No WhatsApp rings, 24-hour Status or separate primary Videos tab.**
- Humans can draft Updates for free; actual publication must use a separately approved server MSNW fee (**price not decided**), exact Wallet review and one ledger-settled charge/refund path. Never charge to view/like/comment, never invent a value.
- Human contacts and creator/Masana profiles share one public person identity. P2P is **individual buy/sell**: preserve actual offer/escrow/verified bank/dispute/recovery source, and show only server-derived P2P trust on the same public human profile.
- Rooms is ONE creator-configurable space for WhatsApp group/community/channel and Telegram topic/announcement patterns. An owner can turn communication features on/off without creating different Group/Channel objects; preserve existing professional Room history and paid obligations.
- **No merchant account/onboarding/checkout/storefront/POS, physical/virtual cards or Phase 7C–D merchant/finance additions.** Keep eligible MSNW Wallet, individual P2P escrow and bill services.
- One free successfully published Masana per user lifetime; additional successful publication default 5,000 MSNW unless server policy changes. Preserved separate credit liabilities are not MSNW; no blockchain-mainnet or provider-availability claims without proof.

## Source and PR checkpoints (verify against live repository)

At the **20 October planning baseline**, main was `c944045ef2f80a83839a9aa2c6eb13cd53975ff6`. Human messaging/calls [PR #227](https://github.com/Baatiku/Masanawa/pull/227) and Masana memory [PR #228](https://github.com/Baatiku/Masanawa/pull/228) were open; Wallet recipient inquiry #230 and OPay task plan #231 were merged. [PR #232](https://github.com/Baatiku/Masanawa/pull/232) contains screen-by-screen product audit, roadmap and this documentation cleanup. **Do not treat the PR as merged unless live GitHub confirms.** PR #227 modifies the canonical roadmap/screen contracts: one integrator must reconcile both rather than overwrite work. Memory must preserve consent and financial authorization boundaries.

## Development order and release truth

1. Resolve independent Foundation CI `pnpm install --frozen-lockfile` failure caused by a stale `apps/web` importer with no `apps/web/package.json`. Check current head and rerun; no bypass.
2. Review current Phase 4 human-messaging source and finalize actual secure Chats/Calls/client/Gateway/DB contracts. Qualify Auth/new-human profile changes together.
3. Implement Updates typed human/Masana authors and idempotent paid human publication with video-source preservation; finish essential individual P2P/trader profiles, order chat and trust projection; independently advance unified Rooms owner/schema migration and permission-safe messaging.
4. Finish Wallet/bills, creator controls and whole-app acceptance. Source test commands and exact PR SHA must be recorded in the one roadmap; real provider/device/Android and settlement runs cannot be inferred from UI code.
5. Restrict UI to indispensable controls; extra reference-app capabilities remain tracked as candidates until disposition **CORE NOW / CONTEXTUAL ADVANCED / QUALIFIED LATER / EXCLUDED WITH REASON**, not automatically displayed.

## Explicit preservation rules

No destructive production database reset, dual Wallet/ledger, orphaned historical paid Room access, agent autonomous financial action, private post exposure, WhatsApp asset copying, new default merchant flow or parallel product roadmap. Preserve current source when it is sound and update existing documents instead of spawning another dated spec.
