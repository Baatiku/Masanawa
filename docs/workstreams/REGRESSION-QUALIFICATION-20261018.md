# Regression qualification — 2026-10-18

Claim 13:01 UTC, base db115b47eaafe1b04cb9733d3ec5e98623492b13. Continue the owner's whole-main test request. Owned paths: services/gateway/src/channel_reply_audio.ts and paired test; services/gateway/src/talk_gift_routes.ts and paired test; services/gateway/src/modules/home_feed/routes.ts and paired test; services/gateway/src/{call_history,incoming_calls}/token_recording.test.ts; services/gateway/src/modules/home_feed/{composition,runtime,status_video_composition}.test.ts; adapters/storage/postgres/src/home_feed/feed.integration.test.ts; this handoff. Fix reproduced validation bugs, restore changed interface fixtures, preserve admission/privacy/financial safeguards. Railway app services are rebuilding PR #209; PostgreSQL remains intact. Legacy/retired feature expectations will not override current product policy.

Expanded test ownership: packages/identity/src/account-deletion.test.ts; services/gateway/src/{customer_auth,customer_contact_changes,agent_directory,app,main}.test.ts; services/gateway/src/incoming_calls/service.test.ts; services/gateway/src/talk_ai_worker/worker.test.ts; services/gateway/src/talk_ranking/ranking.test.ts; test/architecture/{implementation-templates,railway-deployment}.test.ts; tests/contracts/public-api-lifecycle.test.ts. These are corrections to demonstrated stale fixtures or scanners, not relaxed authorization or ignored failures.

## Implemented and checked

Exact additional owned paths for the final regression repair:
- `packages/identity/src/account-deletion.test.ts`
- `services/gateway/src/modules/home_feed/composition.test.ts`
- `services/gateway/src/modules/home_feed/routes.ts`
- `services/gateway/src/modules/home_feed/runtime.test.ts`
- `services/gateway/src/modules/home_feed/status_video_composition.test.ts`
- `test/architecture/adapter-boundaries.test.ts`
- `test/architecture/environment-contracts.test.ts`
- `test/architecture/implementation-templates.test.ts`
- `test/architecture/package-boundaries.test.ts`
- `services/gateway/src/customer_auth.test.ts`
- `services/gateway/src/customer_contact_changes.test.ts`
- `services/gateway/src/financial_billing.test.ts`
- `services/gateway/src/talk_profiles/postgres_repository.test.ts`
- `services/gateway/src/talk_ranking/ranking.test.ts`
- `services/gateway/src/agent_directory.test.ts`
- `services/gateway/src/group_calls/postgres_repository.test.ts`
- `test/architecture/railway-deployment.test.ts`
- `test/architecture/twin-product-simplicity.test.ts`
- `tests/contracts/public-api-lifecycle.test.ts`
- `adapters/storage/postgres/src/agents/country-identity.test.ts`
- `services/gateway/src/call_history/token_recording.test.ts`
- `services/gateway/src/channel_reply_audio.test.ts`
- `services/gateway/src/channel_reply_audio.ts`
- `services/gateway/src/clone_onboarding_startup.test.ts`
- `services/gateway/src/app.test.ts`
- `services/gateway/src/billing_checkout.test.ts`
- `services/gateway/src/talk_ai_worker/worker.test.ts`
- `services/gateway/src/talk_gift_routes.ts`
- `services/gateway/src/incoming_calls/service.test.ts`
- `services/gateway/src/incoming_calls/token_recording.test.ts`
- `services/gateway/src/main.test.ts`
- `config/production-env.json`
- `adapters/storage/postgres/src/external_videos/youtube_sources.test.ts`
- `adapters/storage/postgres/src/home_feed/feed.integration.test.ts`
- `services/gateway/src/talk_safety/enforcement_integration.test.ts`
- `services/gateway/src/talk_safety/replay_bridge.test.ts`
- `docs/API-LIFECYCLE.json`

- Runtime fixes: reject malformed PCM sample-rate parameters and noncanonical base64; reject forged gift fields before schema stripping; reject bracket/dot author-filter injection on Status.
- Preserve all current authentication, account holds, provider verification, money idempotency and settlement restrictions. Tests reflect current interfaces, sanitized errors, valid finalized replay state, concurrent push leases, approved Masana directory fields and retired personal-clone routes.
- Correct source scanners to omit generated outputs; register 63 exact existing unversioned compatibility paths without adding wildcard prefixes. Restore missing configuration-name documentation with no credential values. Keep production adapter dependencies inward; only explicit SQL integration fixtures can exercise cross-service composition. Move country directory projection coverage to the Gateway test, keeping adapter country persistence coverage intact.
- PostgreSQL group-call tests now declare their test-database prerequisite, matching other database integration suites. They are skipped, not counted as passes, without MASANAWA_TEST_DATABASE_URL.

## Executed evidence

Node 24.19.0, TypeScript 7.0.2, Vitest 5.0.3. In the container, use an exact-main source inventory rather than unrelated old copied files:

- Gateway: `node_modules/.bin/tsc -p services/gateway/tsconfig.build.json --noEmit` — exit 0.
- Worker: `node_modules/.bin/tsc -p services/worker/tsconfig.build.json --noEmit` — exit 0.
- All 447 current backend test files (packages, adapters, infra, services, test, tests), selected from the immutable repository tree: **409 suites / 2,053 tests passed; 38 suites / 213 tests skipped; 0 failed.**
- `node --test scripts/reliability/*.test.mjs` — **11 passed**, 0 failed.
- API compatibility registry was subsequently rebuilt from current production source only; its **5 contract tests passed** on the final document.
- Startup and backup script `bash -n` checks passed.

## Live recovery evidence

PR #209 merged as db115b47eaafe1b04cb9733d3ec5e98623492b13. Railway Gateway deployment 82173ee8-24b8-4918-b07a-765f058b89d3 and Worker deployment 9d484e27-acdb-4229-80bd-7cdb401bdbc9 both reached SUCCESS, each with one running replica and zero crashed replicas. PostgreSQL remained online. Gateway applied four checksum-locked additive migrations: identity/0007_account_deletion_worker_progress.sql, agents/0014_mobile_notification_policy.sql, commerce/0132_msnw_financial_alerts.sql, commerce/0132_msnw_signed_admission.sql. No volumes or financial records were reset.

Public Gateway /healthz and /readyz returned HTTP 200; schema readiness was true. Anonymous custody, P2P offers, feed, directory, notification preferences/history and Wallet activity reads were denied (401). Notification responses used no-store; Wallet activity used private, no-store. Post-recovery error-log queries returned no new application errors. LiveKit Presence registered successfully. Gateway current memory sample was about 0.67 GB; this is an operational sample, not a device/performance qualification.

## Remaining external acceptance

- The 213 environment-gated integration tests need a separate disposable PostgreSQL test service; do not run destructive fixture setup against production.
- No Flutter/Android SDK or physical handset was available in this container. Build/install the final APK and run push/background/deep-link/account-switch/offline and audio journeys on actual phones.
- No payment, mint, conversion or withdrawal was executed. Live NOWPayments read-only diagnostics still report unavailable currency/custody readback and unqualified payout allowlist/IP approval; keep these capabilities unavailable until their configured provider evidence passes.
- GitHub Actions on the inspected baseline failed before job steps. Container verification is executed evidence, not a claim those hosted jobs ran.

All requested source fixes are intended for main. Observe the final merged SHA in Railway before declaring this second patch deployed. Final acceptance remains distinct from source, build and service-readiness verification.
