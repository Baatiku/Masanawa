# Deploy the Masanawa operational watchdog (separate from the financial Worker)

This is a **read-only, no-new-resource** systemd integration for an existing trusted
Linux operations host. It is not installed or enabled by merging source. The
owner/operator installs this on a host with protected outbound HTTPS and a
**persistent** `/var/lib/masanawa-reliability` volume. A first run may emit one
initial alert; subsequent runs send **state transitions only**.

1. Create a restricted `masanawa-ops` system user and root-owned
   `/etc/masanawa/health-watch.env` (mode 0600). Include:
   `MASANAWA_GATEWAY_URL`, `MASANAWA_WORKER_URL`,
   `MASANAWA_JOB_HEALTH_URL=https://<worker>/v1/ops/jobs/health`,
   `MASANAWA_JOB_HEALTH_TOKEN` (same secret as Worker
   `MASANAWA_OPS_MONITOR_TOKEN`) and `MASANAWA_ALERT_WEBHOOK_URL`
   pointing to an approved private operations alert receiver.
2. Place the repo at `/opt/masanawa` with read permissions for that user,
   place the two .service/.timer files into `/etc/systemd/system/`,
   run `systemctl daemon-reload`, and enable
   `systemctl enable --now masanawa-readiness.timer` using the correct
   unit filename **masanawa-readiness.timer**. Verify service logs, then
   deliberately test Worker unavailability and recovery. Do not print URLs
   containing webhook credentials, even into unit status output.
3. Keep finance backlogs and provider-discrepancy alerts distinct from actual
   payout authorization. When the monitor shows `delayed`, look up existing
   provider events/escrow receipts before allowing any side-effecting retry.
4. Systemd unit identity and paths are deployment examples: adjust real host
   Node path and repo location without committing credentials. Never install
   the watchdog on the database host if doing so weakens DB isolation.

Both .service and .timer are templates requiring human/operator deployment.
