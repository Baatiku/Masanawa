# Railway main qualification — 2026-10-18

AF00 recovery claim, 2026-10-18T12:54Z. Base: 5e9abb239bea37b704060c453cb7837abbef811b. Branch: fix/railway-main-qualification-20261018.

Owned paths: services/worker/src/app.ts; services/worker/src/app.test.ts; services/worker/src/jobs/msnw/paystack_merchant_settlement.ts; services/worker/src/jobs/msnw/paystack_merchant_settlement.test.ts; services/gateway/src/msn_wallet/custody_send.ts; services/gateway/src/p2p/routes.ts; services/gateway/src/notification_preferences.ts; this handoff. No open PRs at claim. Preserve all domain behavior and financial records.

Observed: latest Gateway and Worker builds fail TypeScript on main; Postgres is online. Recover current source for container checks, fix compiler errors, run focused regressions, merge and observe deployed health. No database deletion or reset.
