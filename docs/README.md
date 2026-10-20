# Masanawa documentation — one current product authority

**Start with the [canonical phase roadmap](PRODUCT-ROADMAP-20261019.md) and [screen/journey contract](SCREEN-JOURNEYS.md).** Their referenced milestones, task statuses and test evidence govern product implementation. The [complete source-to-screen audit](COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md) defines the intended screen layout and missing journeys for every major app section.

## Approved screen specifications

- [Updates: Facebook-style mixed human/Masana feed, paid human posting and preserved video](UPDATES-FEED-FINAL-SPEC.md)
- [P2P Buy/Sell, escrow, disputes and one public social/trader profile](P2P-AND-PROFILE-FINAL-SPEC.md)
- [Creator-configurable unified Rooms](UNIFIED-ROOMS-PRODUCT-SPEC.md)

Visible navigation: **Chats · Updates · Wallet · Calls · Rooms**. Status is a legacy internal route name, not WhatsApp story UX. **No merchant products or card features.** Human paid publishing price is not yet approved; use server quote and one Wallet authority. Only implement essential visible controls.

## Research and feature evidence (not alternate roadmaps)

[OPay source discovery](AI-DEVELOPER-WALLET-IMPLEMENTATION-GUIDE.md), [WhatsApp/OPay reference register](reference-audit/FEATURE-REGISTER.csv), [WhatsApp coverage](reference-audit/WHATSAPP-COVERAGE.md), [OPay coverage](reference-audit/OPAY-COVERAGE.md), [unified Rooms candidates](ROOMS-REFERENCE-FEATURE-INVENTORY.md) and [acceptance matrix](reference-audit/ACCEPTANCE-MATRIX.md). These are traceable candidate lists, not finished features or permissions to copy third-party assets. [External donors](../references/README.md) are optional reference-only.

## Technical, privacy and delivery authority

[Architecture](ARCHITECTURE.md), [Domain model](DOMAIN-MODEL.md), [Package boundaries](PACKAGE-BOUNDARIES.md), [Agent/Gateway](AGENT-GATEWAY-CONTRACT.md), [API compatibility](API-LIFECYCLE.md), [Events](EVENT-CONTRACTS.md), [Services](SERVICE-CONTRACTS.md), [Adapters](ADAPTER-TOPOLOGY.md), [Source ownership](SOURCE-OWNERSHIP.md), [Technology](TECHNOLOGY.md).

[Security authority](SECURITY-AUTHORITY.md), [Security model](SECURITY-MODEL.md), [Privacy](PRIVACY-SCOPES.md), [Token guide](token/MSNW-GLOBAL-TOKEN-CREATION-GUIDE.md).

[Deployment](CONFIGURATION-DEPLOYMENT.md), [Database restore](DATABASE-REDEPLOYMENT-AND-RESTORE-RUNBOOK.md), [Storage ops](BACKEND-STORAGE-OPERATIONS-20261009.md), [Flutter release](FLUTTER-RELEASE-AND-SHOREBIRD-POLICY.md), [Testing](TEST-TOPOLOGY.md), [Multi-window source coordination](MULTI-WINDOW-WORK.md), [Approved Masana voices](voices/APPROVED-MASANA-VOICES-20261017.md).

**Implementation evidence rather than new requirements:** [Phase 1 source/acceptance ledger](PHASE1-IMPLEMENTATION-20261019.md) and [Phase 2 source/acceptance ledger](PHASE2-IMPLEMENTATION-20261019.md) retain checkpoint commands, passes/skips/known device/provider gaps. Do not use historical screen labels or completed source checkpoints from those records to override today's roadmap.

Deprecated duplicate product specifications have been **deleted from the tracked tree**, not moved into an archive. Git history remains immutable, but no old document should be linked as an implementation authority.
