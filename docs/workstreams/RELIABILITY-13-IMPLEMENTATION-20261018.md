# Reliability implementation and operator acceptance — 2026-10-18

**Scope:** reliability-only source changes from main 6411a5043e05adac4c982dd5e82a9c6192e9dd3e. This source update does **not** imply a tested production restore, signed store release, activated alert transport or qualified payment provider. Do not expose private account data or secrets in test artifacts.

## Implemented in this workstream

- **Startup:** preserved existing asynchronous Firebase/push initialization, inline session gate, account-scoped directory cache and timing instrumentation. No decorative delay is reintroduced. Start and return times still require a handset run.
- **Network reads:** common typed GET transport retries connection/timeout, 429 and 502/503/504 at most twice, with short capped delays and an originating session fence. No automatic POST/PATCH/DELETE replay; financial uncertainty still resolves by provider receipt, idempotency and reconciliation.
- **APK reproducibility:** the Mobile Build and Masana APK workflows attach an APK, its SHA-256, and a versioned JSON manifest holding checked Git commit, Flutter/Dart release, pubspec lock checksum, app version/build, APK bytes and actual apksigner-verified signing certificate SHA-256. **The regular release APK may be debug-signed for local handsets.** Recording that fingerprint does not make it distributable/store signed. Store signing remains a separate release authorization.
- **Handset measurements:** scripts/reliability/handset-metrics.ps1 runs cold/returning Android TotalTime and approximate PSS sampling, with optional APK byte count/digest. It never records device serials, raw logcat, tokens or messages. Battery, bandwidth and media-download qualification need additional profiler runs.
- **Health and alerts:** scripts/reliability/readiness-watch.mjs probes Gateway and Worker /readyz using bounded, retryable **GET** requests, accepts an optional read-only jobs-health contract, and can send transition-only sanitized alerts to an operator-configured HTTPS webhook when a persistent state path is supplied. Neither the optional jobs endpoint nor the alert webhook is provisioned by this script. The operator must deploy a persistent scheduler; a one-off run is not continuous monitoring.
- **Paired recovery:** scripts/reliability/backup-restore.sh captures PostgreSQL + S3 objects to two age-encrypted archives with SHA256SUMS and restores them to separately acknowledged empty targets. It refuses in-place object replacement, destructive SQL/--clean, and mismatching archived ciphertext. Its backup consistency depends on an **independently demonstrated write fence** including object writes; it cannot create a distributed atomic snapshot by itself. During rehearsal disable all payment, channel, job, notification and webhook egress. Test database, protected media, referential and receipt invariants against the restored target before considering this qualified.
- **Source tests:** scripts/reliability/*.test.mjs, Flutter transport negative tests, and GitHub reliability-contract source workflow. These remain **unexecuted** until a runner actually executes them and reports output.

## Safe operator commands

Run focused source tests (no payment/provider side effects):

    node --test scripts/reliability/*.test.mjs
    bash -n scripts/reliability/backup-restore.sh
    cd apps/mobile && flutter test test/network_read_retry_test.dart test/ui/fast_launch_route_test.dart

On a connected **physical Android device**, install the correct, matching-signer APK through the existing approved distribution path and run in a PowerShell terminal:

    ./scripts/reliability/handset-metrics.ps1 -Runs 7 -ApkPath ./apps/mobile/build/app/outputs/flutter-apk/app-release.apk -Output ./handset-sample.json

Measure at least two devices, including the low-RAM Android 12 phone. Compare returning-process and cold medians and verify cached Chats/Rooms, signed-out cache denial, background/foreground, interrupted downloads, airplane-mode behavior, and account switching. An Android TotalTime number alone is not time until usable Chats.

Read-only health check, using separately configured service hostnames:

    MASANAWA_GATEWAY_URL=https://YOUR-GATEWAY MASANAWA_WORKER_URL=https://YOUR-WORKER node scripts/reliability/readiness-watch.mjs

Optionally set MASANAWA_JOB_HEALTH_URL to an **actual authorized read-only endpoint** returning a JSON object with "jobs": entries containing "name", nonnegative integer "stuck", and nonnegative "oldestPendingSeconds". Unknown/missing endpoints must not count as healthy. For alerts configure MASANAWA_ALERT_WEBHOOK_URL and a durable MASANAWA_WATCH_STATE_FILE; inject webhook credentials into the operator-owned environment, never code or public logs. A persistent timer/cron and a real incident response destination must be qualified independently.

For backups, set MASANAWA_SECURE_TMPDIR to an **encrypted, private scratch volume with capacity for both the DB and all objects** (for restore, too). Temporary decrypted files must never reside on ordinary unencrypted /tmp. For backups, set SOURCE_DATABASE_URL, SOURCE_OBJECT_URI=s3://..., AGE_RECIPIENT, BACKUP_DIR (absolute, secured), and MASANAWA_WRITES_FENCED_ACK=YES **only after** proving all writes are fenced and documenting snapshot/object version boundaries. Run:

    bash scripts/reliability/backup-restore.sh backup

To test restore on an **empty, isolated** database/bucket prefix (not production), set BACKUP_SET, AGE_IDENTITY_FILE, RESTORE_DATABASE_URL, RESTORE_OBJECT_URI, MASANAWA_RESTORE_ISOLATED_ACK=YES and run:

    bash scripts/reliability/backup-restore.sh restore

Retain age keys offline, enforce encrypted storage and retention/access controls. A successful command still needs source-vs-restore receipt/ledger counts, private media authorization, outbox fencing, RPO/RTO and failed-restore drills. Restored assets must never be served to production users.

## Rollback and recovery order

1. Capture exact bad deployment Git SHA/image digest and its predecessor, incident symptoms, status of current provider callbacks and inflight operations; pause **new** spending/admission, not reconciliation of existing obligations.
2. Roll back application services using Railway deployment history to a previously compatible image. **Never** roll back PostgreSQL by deleting an additive migration or erasing receipts; keep compatibility and expand-forward where necessary.
3. Keep financial idempotency keys, webhook history, holds and reconciliation queues untouched. Query authoritative provider status for uncertain outcomes before initiating any side-effecting retry. Duplicate replays must fail.
4. Qualify readiness **and** real signed-in journeys, run a repair/forward migration only through canonical checksum-locked migration tooling, confirm Gateway and Worker use one correct source commit/config and verify media access.
5. Re-enable new money movement only after finance/ops acknowledge reconciliation and evidence is recorded. Restore from a backup only after a separate incident command/approved isolated replay confirms live-database recoverability.

## Thirteen requested outcomes — source vs environment boundary

| # | Outcome | Source state after this workstream | External acceptance |
|---|---|---|---|
| 1 | Fast open | Existing fast first-paint/cache code preserved; GET retry hardened | cold/returning medians and actual usable Chats |
| 2 | Android acceptance | Repeatable handset sampler added | OWNER: installed APK on low-memory phone |
| 3 | Identifiable APK | Source workflow manifest and certificate/digest validation added | CI runner and matched handset signature |
| 4 | Safe schema changes | Existing canonical additive migrator retained; **no new schema migration needed by these changes** | real production schema drift/preflight/upgrade checks |
| 5 | Five providers | No provider side-effect calls added | OWNER: authorized Paystack/Flutterwave/Gemini/LiveKit/NOWPayments |
| 6 | Network resilience | Typed GET retries and account fence implemented; writes left no-replay | real offline/reconnect + financial idempotency |
| 7 | Crash/ANR reporting | **Not implemented**: needs consent/retention/sanitized crash pipeline and Android ANR transport | device crash/ANR evidence |
| 8 | Resource budget | APK bytes/hash, startup/PSS sampler | battery, media transfer bytes and bandwidth |
| 9 | Job health | Optional bounded external jobs-health probe | actual protected worker backlog/lease metrics |
| 10 | Admin incidents | Configurable sanitized transition webhook | durable scheduler, real incident webhook and on-call drill |
| 11 | Full restore | Executable paired encrypted backup/isolated restore script | real fenced backup, decrypt/readback, receipts/media/auth and RPO/RTO |
| 12 | Rollback | Non-destructive forward/rollback recovery sequence | live staging rollback and financial no-duplicate exercise |
| 13 | Integrated regression | Source-specific tests added; existing alpha session smoke preserved | full installed client → Gateway → DB/provider → receipt readback + denied/offline/account isolation |

**Do not mark items 2, 4, 5, 7, 9, 10, 11, 12 or 13 VERIFIED_E2E without the corresponding executed evidence.** This is an honest boundary, not an approval gate for independent source merges.
