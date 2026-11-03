# Cloudflare news activation — 3 November 2026

## Connected implementation

Standalone deployment source: `infra/deployment/news-gateway`. Recovered Higgsfield main
was `4ed58c4` (newer than the previous handoff's `a1a0b20`). Native Flutter Home
already uses Masanawa's `/v1/news` and canonical feed interactions. The new worker
bridge reads Cloudflare public metadata and upserts canonical PostgreSQL posts,
so a D1 article ID is never sent to a nonexistent Masanawa reaction/comment row.
No second account/session stack is introduced in Flutter.

Mapped files: standalone news parser/storage, Worker fetch/scheduled entry,
additive D1 migrations, deploy/smoke/config scripts and SQLite tests; existing
`news_import.ts` + `news_gateway.ts`, worker bootstrap, regression tests,
Foundation CI, publisher activation documentation. Existing gateway routes,
Flutter API/card design and licensed-brand admission remain intact. The worker
uses `MASANAWA_NEWS_GATEWAY_ORIGIN` only after a live endpoint is verified.
This batch does not invent a workers.dev hostname or point clients at an
unverified URL.

## Confirmed live blockers

Cloudflare browser opened the requested account dashboard but redirected to
“Sign in to Cloudflare”. Secure sign-in was declined; account inventory,
Worker/D1 creation, migration and live public HTTP acceptance cannot be claimed.
No Cloudflare account settings were changed.

Railway project `f6d9af7c-5be4-457b-9614-936687391aea`, production
`24403de4-aa8d-42a2-8da9-838e98cdb9e1`, reports Postgres, masanawa-worker and
masanawa-gateway **offline with no active deployments**. Existing Postgres
redeploy was attempted against its recorded removed deployment and rejected:
“Your trial has expired. Please select a plan to continue using Railway.”
No paid plan was selected. The retained database volume was not deleted.

The old worker build at `7bcf4be2-1cc8-4a5e-a818-99669bbc1473` compiled, then
failed `/readyz` with HTTP 503. This is historical evidence, not a new healthy
backend. Existing gateway domains remain configured, which does not establish
reachability. Deployment history shows removed services, not a live app.

## Full activation distinction

| Area | Current evidence | Outstanding live acceptance |
| --- | --- | --- |
| Cloudflare news | Source implementation and automated harness | Authenticated account, D1 apply/populate, public HTTP, real cron evidence |
| Flutter Home | Existing native news cards, canonical comments/likes/shares; bridge source added | Verified Cloudflare origin configured on running importer, populated PostgreSQL, actual app read |
| AI text/voice notes | Gemini credential name exists on Railway; source implementations retained | Restore backend, verify real media/reply requests and MB receipts |
| AI calls | Gemini + LiveKit credential names and calls flag exist | Running relay/provider, real connection/audio and billed receipts |
| Wallet | Billstack credential names and deposit/exchange flags exist | Running backend/DB, real callbacks and authoritative ledger readback |
| Data | Flutterwave/relay credential names and catalogue/purchase flags exist | Restore runtime, inspect actual flag values and qualify current provider requests |
| Account/admin | OTP/Resend credential names exist | Running backend, real OTP/session and capability readback |

OAuth returns variable **names only**. Their presence does not prove values,
enabled flags, valid provider credentials, payment qualification or device
acceptance. No mock provider was substituted or financial verification flag
fabricated. No provider purchase or deposit was executed.

For deployment commands and exact completion evidence see
`infra/deployment/news-gateway/README.md`. Source CI and merge evidence belong in the PR;
Cloudflare and whole-app production status stay incomplete until verified.

## Local validation evidence

- Workspace TypeScript checks and complete workspace build: PASS.
- Full Vitest suite: 394 files / 2,048 tests PASS; 48 files / 316 tests skipped
  (including unavailable real PostgreSQL/provider acceptance).
- Standalone news gateway: 6 SQLite/HTTP-fixture tests PASS.
- Standalone news TypeScript check: PASS.
- Wrangler 4.156.1: both migrations applied successfully to **local D1**;
  Worker bundle dry run PASS (16.12 KiB / 5.60 KiB gzip).
- No Flutter source changed. Hosted mobile checks remain the regression gate;
  no new APK, real device, public publisher fetch or production D1/cron result
  is implied by the local checks above.
