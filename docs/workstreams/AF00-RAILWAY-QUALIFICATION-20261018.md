# Railway main qualification — 2026-10-18

AF00 recovery claim, 2026-10-18T12:54Z. Base: 5e9abb239bea37b704060c453cb7837abbef811b. Branch: fix/railway-main-qualification-20261018.

Owned paths: services/worker/src/app.ts; services/worker/src/app.test.ts; services/worker/src/jobs/msnw/paystack_merchant_settlement.ts; services/worker/src/jobs/msnw/paystack_merchant_settlement.test.ts; services/gateway/src/msn_wallet/custody_send.ts; services/gateway/src/p2p/routes.ts; services/gateway/src/notification_preferences.ts; this handoff. No open PRs at claim. Preserve all domain behavior and financial records.

Observed: latest Gateway and Worker builds fail TypeScript on main; Postgres is online. Recover current source for container checks, fix compiler errors, run focused regressions, merge and observe deployed health. No database deletion or reset.

## Recovery implementation

Expanded exact ownership to the test files paired with these modules, services/gateway/src/p2p/service.ts and P2P SQL read fixtures. Fixed the observed strict TypeScript errors without weakening compiler settings, authentication or settlement validation. Removed the unnecessary seller account ID from paged public offers; the mobile UI uses seller_display_name. Repaired malformed test syntax and incomplete fixtures (valid canonical tenant ID, accepted fake Paystack key, normalized SQL, account-state authority and seller profile table).

Verification: recovered 1,246 backend text files at the immutable base and checked their Git blob SHA-1 values; zero mismatches. Both exact-source production TypeScript checks passed. Reliability scripts: 11 passed. Critical six suites: 27 passed. Expanded Wallet/P2P/Worker/notification suite: 327 tests. Full backend audit: 2,007 passed, 46 failed, 204 skipped before final focused fixes; remaining broad failures include retired feature assumptions, stale fixtures, absent local resources and unresolved behavior. Do not interpret the focused run as whole-app qualification. CI check job on base failed before any step.

Deployment recovery: preserve existing PostgreSQL and WhatsApp volumes; verify newly built Gateway/Worker through Railway after merge. No funds moved, no database reset, no provider acceptance claimed. Android/device acceptance remains separate.
