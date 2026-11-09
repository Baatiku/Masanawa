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

node "$deployment_dir/preflight.mjs" "$compose_file" "$runtime_file" >/dev/null

# Only one backup at a time, even if cron overlaps a slow object-storage upload.
exec 9>"${MASANAWA_BACKUP_LOCK_FILE:-/tmp/masanawa-backup.lock}"
flock -n 9 || { echo 'digitalocean.backup.already_running' >&2; exit 1; }
filename="masanawa-$(date -u +%Y%m%dT%H%M%SZ).pgdump.age"

# pg_dump's custom format is versioned and consistent without stopping writes.
# rclone reads ciphertext only. pipefail aborts on dump, encryption or upload error.
docker compose --env-file "$compose_file" -f "$deployment_dir/compose.yaml" exec -T postgres \
  sh -c 'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" --format=custom --no-owner --no-acl' \
  | age -r "$age_recipient" \
  | rclone rcat "${backup_remote%/}/$filename"

printf 'digitalocean.backup.encrypted_offhost_uploaded %s\n' "$filename"
