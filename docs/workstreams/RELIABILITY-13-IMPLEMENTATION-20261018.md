# Reliability implementation and operator acceptance — 2026-10-18

**Scope:** reliability-only source changes from main 6411a5043e05adac4c982dd5e82a9c6192e9dd3e. This source update does **not** imply a tested production restore, signed store release, activated alert transport or qualified payment provider. Do not expose private account data or secrets in test artifacts.

## Implemented in this workstream

- **Startup:** preserved existing asynchronous Firebase/push initialization, inline session gate, account-scoped directory cache and timing instrumentation. No decorative delay is reintroduced. Start and return times still require a handset run.
- **Network reads:** common typed GET transport retries connection/timeout, 429 and 502/503/504 at most twice, with short capped delays and an originating session fence. No automatic POST/PATCH/DELETE replay; financial uncertainty still resolves by provider receipt, idempotency and reconciliation.
- **APK reproducibility:** the Mobile Build and Masana APK workflows attach an APK, its SHA-256, and a versioned JSON manifest holding checked Git commit, Flutter/Dart release, pubspec lock checksum, app version/build, APK bytes and actual apksigner-verified signing certificate SHA-256. **The regular release APK may be debug-signed for local handsets.** Recording that fingerprint does not make it distributable/store signed. Store signing remains a separate release authorization.
- **Handset measurements:** scripts/reliability/handset-metrics.ps1 runs cold/returning Android TotalTime and approximate PSS sampling, with optional APK byte count/digest. It never records device serials, raw logcat, tokens or messages. Battery, bandwidth and media-download qualification need additional profiler runs.
- **Health and alerts:** scripts/reliability/readiness-watch.mjs probes Gateway and Worker /readyz with bounded **GET** requests and can poll the Worker `/v1/ops/jobs/health` endpoint. The endpoint is registered **only when** `MASANAWA_OPS_MONITOR_TOKEN` (minimum 32 characters) is present in the Worker process; the monitor must use matching `MASANAWA_JOB_HEALTH_TOKEN`. It returns process-local per-scheduler active age, last success age, consecutive errors and coarse stuck state without queue payloads. This is **not** a PostgreSQL queue-depth, outbox lease, bank settlement or provider-delivery proof. The monitor can send transition-only sanitized alerts to an operator HTTPS webhook with a persistent state file. A durable monitor scheduler and external incident destination are not provisioned by these scripts.
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

To monitor background schedulers, set `MASANAWA_OPS_MONITOR_TOKEN` **only on the Worker** and configure the monitoring environment with `MASANAWA_JOB_HEALTH_URL=https://YOUR-WORKER/v1/ops/jobs/health` and matching `MASANAWA_JOB_HEALTH_TOKEN`. The secret must be at least 32 characters, distinct from user auth and financial secrets, and never appear in a URL. The Worker omits this route when the secret is absent. The monitor expects `jobs` with `name`, `enabled`, `stuck`, `runningSeconds`, `lastSuccessAgeSeconds`, `consecutiveFailures`; unavailable/unauthorized/unstarted reports do not pass. Monitoring readbacks are only process-local; durable PostgreSQL stuck leases/backlogs need their own authenticated aggregate query. For alerts configure `MASANAWA_ALERT_WEBHOOK_URL` and durable `MASANAWA_WATCH_STATE_FILE`; inject webhook credentials into an operator-owned environment, never code or public logs. A persistent scheduler and real incident response destination must be qualified independently.

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
| 7 | Crash/ANR reporting | Local encrypted crash categories, Android API 30+ ANR/exit reason retrieval, Share/Clear Settings; automatic fleet crash aggregation not implemented | device crash/ANR evidence |
| 8 | Resource budget | APK bytes/hash, startup/PSS/CPU/jank/battery percentage/per-UID networking samples (where supported) | battery, media transfer bytes and bandwidth |
| 9 | Job health | Secret-protected Worker scheduler plus read-only PostgreSQL scheduled feed, overdue P2P, dead letters and custody discrepancy counts | authenticated live Worker readback and durable stuck lease checks |
| 10 | Admin incidents | Configurable transition webhook with optional five-minute systemd scheduling | durable scheduler, real incident webhook and on-call drill |
| 11 | Full restore | Executable paired encrypted backup/isolated restore script | real fenced backup, decrypt/readback, receipts/media/auth and RPO/RTO |
| 12 | Rollback | Non-destructive forward/rollback recovery sequence | live staging rollback and financial no-duplicate exercise |
| 13 | Integrated regression | Added read-only authenticated Gateway integration smoke and existing alpha session smoke | full installed client → Gateway → DB/provider → receipt readback + denied/offline/account isolation |

**Do not mark items 2, 4, 5, 7, 9, 10, 11, 12 or 13 VERIFIED_E2E without the corresponding executed evidence.** This is an honest boundary, not an approval gate for independent source merges.


## Reliability source continuation — 2026-10-18

The Flutter main() installs a non-blocking local diagnostics collector. It keeps
at most 20 sanitized exception type + first-party code frame + UTC day records
in device secure storage. Android 11+ uses ApplicationExitInfo to read coarse
historical crash, ANR and low-memory causes. Settings provides explicit Share
and Clear controls. No identifiers, tokens, exception messages, personal
records, native traces or arbitrary stack contents are exported. **This is
user-initiated device reporting, not fleet Crashlytics/Sentry reporting.**

The Worker authenticated health endpoint now combines process-local scheduler
activity with read-only PostgreSQL aggregates for due Status posts, overdue
P2P expiry, P2P notification dead letters, and custody discrepancies from
the existing canonical reconciliation function. SQL is bounded to four seconds;
missing schema/reconciliation failures return an unavailable HTTP response.
The existing health watcher can notify configured operators on changes.
Deployable five-minute systemd service/timer templates are in
ops/reliability/. Merge does NOT install/activate these units or configure
webhook credentials.

Paired recovery runner: the restore now renders SQL on an explicitly secured
encrypted scratch volume, then executes it via PostgreSQL psql under one
transaction using the environment-supplied connection string (not a URL
argument). This corrects the former empty-database pg_restore call. It does
not qualify backup restoration without executing a separate private object
readback, receipt/account/escrow check and provider-outbound network fence.

Read-only unified smoke: scripts/reliability/integrated-readonly-smoke.mjs
accepts MASANAWA_GATEWAY_URL and MASANAWA_TEST_ACCOUNT_TOKEN and performs
five ordered GET checks against one authorized Gateway. Its unit tests use
fakes; actual provider/Android/live finance integration is an owner test.

Handset metrics add optional CPU, jank, battery percentage and per-UID
network counters to APK size/sha256, process startup and PSS. Unsupported
Android measurements remain null; no claim of measured battery power or
individual media downloads is made.

Rollback: official Railway deployment history has a Rollback action that
restores previous image and variables; see
https://docs.railway.com/guides/roll-back-bad-deploy .
Historical rollback is selected in Railway's Dashboard, not with
railway redeploy (which targets the latest deployment). Neither restoring
a previous image nor rolling back SQL should overwrite financial receipts.
Verify schema forward compatibility, hold old/new payout reconciliation,
confirm readiness and business reads before new transactions resume.

Source tests/manual commands: Node reliability tests by
node --test scripts/reliability/*.test.mjs ; Worker Vitest for
services/worker/src/jobs/durable_health.test.ts plus app and scheduler tests;
Flutter diagnostics and network tests via flutter test; bash -n for
backup-restore.sh; actual Android, PostgreSQL, signed builds, providers,
systemd alerts and rollback must be executed separately.

No live restoration, provider spend, signed APK qualification, Railway
production deployment or source CI pass is asserted by these changes.
