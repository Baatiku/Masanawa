#!/usr/bin/env bash
set -euo pipefail

# Encrypt before leaving the Droplet; never write a plaintext SQL dump to disk.
# Dependencies on the host: docker compose, age, rclone, flock, date.
# Run as an operator with Docker access, a private rclone config and 0600 envs.
deployment_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
compose_file="${MASANAWA_DEPLOY_ENV_FILE:-/etc/masanawa/compose.env}"
runtime_file="${MASANAWA_RUNTIME_ENV_FILE:-/etc/masanawa/runtime.env}"
age_recipient="${MASANAWA_BACKUP_AGE_RECIPIENT:?Set the offline age public recipient}"
backup_remote="${MASANAWA_BACKUP_REMOTE:?Set a configured off-host rclone remote and bucket path}"

[[ "$backup_remote" == *:* ]] || { echo 'digitalocean.backup.remote_invalid' >&2; exit 1; }
[[ -f "$compose_file" ]] || { echo 'digitalocean.backup.compose_env_missing' >&2; exit 1; }
[[ -f "$runtime_file" ]] || { echo 'digitalocean.backup.runtime_env_missing' >&2; exit 1; }

echo 'digitalocean.backup.stage=validation'
if command -v node >/dev/null; then
 node "$deployment_dir/preflight.mjs" --backup "$compose_file" "$runtime_file" >/dev/null
else
 preflight_image="${MASANAWA_BACKUP_PREFLIGHT_IMAGE:?Set the verified immutable Gateway image}"
 [[ "$preflight_image" =~ ^ghcr.io/baatiku/masanawa-do-pilot-gateway@sha256:[a-f0-9]{64}$ ]] || exit 1
 docker run --rm --network none --read-only --memory 96m --user 0 \
  --entrypoint node -v "$compose_file:$compose_file:ro" -v "$runtime_file:$runtime_file:ro" \
  -v "$deployment_dir/preflight.mjs:/app/infra/deployment/digitalocean/preflight.mjs:ro" \
  "$preflight_image" /app/infra/deployment/digitalocean/preflight.mjs --backup "$compose_file" "$runtime_file" >/dev/null
fi

# Only one backup at a time, even if cron overlaps a slow object-storage upload.
exec 9>"${MASANAWA_BACKUP_LOCK_FILE:-/tmp/masanawa-backup.lock}"
flock -n 9 || { echo 'digitalocean.backup.already_running' >&2; exit 1; }
filename="masanawa-$(date -u +%Y%m%dT%H%M%SZ).pgdump.age"

# Spool ciphertext only. A bounded file permits standard signed PUT with known
# Content-Length; some S3-compatible servers reject SDK streaming headers.
spool=$(mktemp /etc/masanawa/backup-cipher-XXXXXXXX.age)
chmod 600 "$spool"
trap 'rm -f "$spool"' EXIT
[[ "$(df --output=avail -B1 /etc/masanawa | tail -1)" -gt 3221225472 ]] || exit 1
echo 'digitalocean.backup.stage=dump_encrypt'
(
 ulimit -f 262144
 docker compose --env-file "$compose_file" -f "${MASANAWA_BACKUP_COMPOSE_FILE:-$deployment_dir/compose.yaml}" exec -T postgres \
  sh -c 'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" --format=custom --no-owner --no-acl' \
  | age -r "$age_recipient" >"$spool"
)
echo 'digitalocean.backup.stage=upload'
python3 "$deployment_dir/backup_object.py" "$spool" "$filename"
echo 'digitalocean.backup.stage=retention'
# Only the dedicated backup prefix is eligible for retention cleanup.
if [[ "$backup_remote" == */masanawa-backups ]]; then
 rclone delete "$backup_remote" --min-age 7d --include 'masanawa-*.pgdump.age'
fi
