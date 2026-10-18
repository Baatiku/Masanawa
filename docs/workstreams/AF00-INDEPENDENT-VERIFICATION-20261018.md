# Independent main verification — 2026-10-18

Base: `183e7ef22981c8d52aeb4cce7ae4eb2d7333d12e`. Scoped follow-up to the owner’s request to verify newer merged work and recover Railway. Earlier unmerged P2P work in this window was superseded; none was copied over current main. Preserve PR #217’s independently owned Android fixes.

## Changes

- Replace the P2P marketplace’s fixed header Column with coordinated nested scrolling. On 320px screens at 200% text size, recovery banners and Sell controls no longer overflow the viewport; Create offer remains reachable.
- Keep account-specific selected-tab memory. Tests explicitly select Buy instead of relying on a fresh tab; pump the form’s enabled-button update before submitting. Use the current Orders label.
- Align four Gateway test fixtures with canonical contracts: creator voiceName and its response assertion, typed channel bridge request/handled result, explicit missing call authorization, and unknown Fastify error narrowing. No production authentication, billing, recovery or financial authority changed.

## Executed checks

- Frozen pnpm 12.8.2 install passed; Node 24.19.0.
- `pnpm --filter @masanawa/gateway-service... build` and Worker equivalent passed on current merged backend source.
- `vitest run --maxWorkers=1`: **414 suites / 2,075 tests passed; 39 suites / 222 tests skipped; zero failures** in the recovered backend test inventory. Missing local Railway/README/Presence resources were recovered from the pinned source, not replaced with stubs. An initial database test exceeded five seconds during concurrent compilation; it passed alone and in the final serial run. This is not provider/device or skipped-PostgreSQL acceptance.
- Four repaired Gateway fixture suites: **28 tests passed**. The creator voice response assertion subsequently passed its four-test suite. Full test-inclusive Gateway TypeScript remains failing on existing third-party declaration and older Talk/financial fixture diagnostics; the four repaired files have no diagnostics. No compiler checks were disabled.
- Flutter **3.47.7 / Dart 3.13.5**, five current P2P files: **16 tests passed**. Includes exact amount limits, quote/fee review before POST, recovery without duplicate POST, server-anchored deadlines, order-bound bank copying, receipt navigation, dispute state and account-fenced routes. The test environment includes the exact explicit Cupertino import from PR #217 head `f8b5db6d39e907fdbd7b56b2be2ede773dd5197d`; that separate fix is required by current Flutter. No app dependencies were downgraded and no APK was compiled.

## Railway evidence

Both Gateway and Worker independently observed SUCCESS at base `183e7ef`; deployments `bf26ca33-b109-438b-9be4-cc05c937c0e7` and `4a5e0726-23b4-4404-a5f3-7b49aa176ea4`. Public Gateway `/healthz` and `/readyz` returned HTTP 200 at 2026-10-18T19:57Z; database-schema readiness was true. Existing database and volumes were preserved. No financial/provider operation was executed.

## Remaining checklist

- [x] Recover Railway app builds and confirm live health/schema readiness.
- [x] Reconcile newer main changes and execute the available backend regression inventory.
- [x] Repair and exercise small-screen P2P header scrolling and current financial UI flows.
- [x] Correct the four current typed fixtures without weakening runtime contracts.
- [ ] Complete the pre-existing full Gateway test-inclusive TypeScript debt: upstream Baileys/WhatsApp/PGlite declaration environments and older Talk/financial mock interfaces. Production builds pass; do not call the full typecheck clean.
- [ ] Execute environment-gated database/provider acceptance in a disposable test environment; skipped tests are not passes.
- [ ] Physical handset acceptance for long calls/microphone ownership, recorded replies, background push, offline/account switching and final P2P screen usability remains with the owner’s device testing.

Use fresh main and active issue #88 claims for any continuation. The UI continuation queue remains [UI-CONTINUATION-QUEUE-20261012.md](UI-CONTINUATION-QUEUE-20261012.md). Next ready milestone is the existing combined/installed-app acceptance after the APK window’s compile fixes; do not rebuild or replace its work here.
