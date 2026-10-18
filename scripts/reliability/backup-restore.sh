#!/usr/bin/env bash
# Private, paired PostgreSQL + S3 object snapshot and isolated restore rehearsal.
# Requires age, awscli v2, PostgreSQL client utilities, tar and sha256sum.
set -Eeuo pipefail
umask 077
export AWS_MAX_ATTEMPTS=3

die() { printf 'Backup/restore stopped: %s\n' "$1" >&2; exit 1; }
require() { [[ -n "${!1:-}" ]] || die "missing required variable $1"; }
command_required() { command -v "$1" >/dev/null || die "required command unavailable: $1"; }

[[ $# -eq 1 ]] || die "usage: backup-restore.sh backup|restore"
mode="$1"
[[ "$mode" == "backup" || "$mode" == "restore" ]] || die "unrecognized mode"
for tool in age aws pg_dump pg_restore psql tar sha256sum; do command_required "$tool"; done

require MASANAWA_SECURE_TMPDIR
[[ "$MASANAWA_SECURE_TMPDIR" == /* && -d "$MASANAWA_SECURE_TMPDIR" && -w "$MASANAWA_SECURE_TMPDIR" ]] ||
  die "provide an absolute, encrypted private scratch directory"
scratch="$(mktemp -d "$MASANAWA_SECURE_TMPDIR/masanawa-recovery.XXXXXXXX")"
cleanup() { rm -rf -- "$scratch"; }
trap cleanup EXIT
mkdir -m 700 "$scratch/objects"

if [[ "$mode" == "backup" ]]; then
  require SOURCE_DATABASE_URL
  require SOURCE_OBJECT_URI
  require AGE_RECIPIENT
  require BACKUP_DIR
  [[ "${MASANAWA_WRITES_FENCED_ACK:-}" == "YES" ]] ||
    die "requires independent application/worker/provider-write fence acknowledgment"
  [[ "$SOURCE_OBJECT_URI" == s3://* ]] || die "object source must be an S3 URI"
  [[ "$BACKUP_DIR" == /* ]] || die "BACKUP_DIR must be absolute on an access-controlled disk"
  mkdir -p -m 700 "$BACKUP_DIR"
  [[ -w "$BACKUP_DIR" ]] || die "backup destination is not writable"

  # PGDATABASE is intentionally an environment value rather than a command
  # argument so database credentials never enter the process argument list.
  PGDATABASE="$SOURCE_DATABASE_URL" pg_dump \
    --format=custom --no-owner --no-privileges --file="$scratch/postgres.dump"
  aws s3 sync "$SOURCE_OBJECT_URI" "$scratch/objects" --only-show-errors
  tar -C "$scratch" -czf "$scratch/objects.tar.gz" objects

  stamp="$(date -u +%Y%m%dT%H%M%SZ)"
  [[ "$stamp" =~ ^[0-9]{8}T[0-9]{6}Z$ ]] || die "invalid timestamp"
  setdir="$BACKUP_DIR/masanawa-$stamp-$$"
  mkdir -m 700 "$setdir" || die "backup set already exists"
  age -r "$AGE_RECIPIENT" -o "$setdir/postgres.dump.age" "$scratch/postgres.dump"
  age -r "$AGE_RECIPIENT" -o "$setdir/objects.tar.gz.age" "$scratch/objects.tar.gz"
  (
    cd "$setdir"
    sha256sum postgres.dump.age objects.tar.gz.age > SHA256SUMS
  )
  printf 'source_commit=%s\ncaptured_utc=%s\nconsistency=operator_fenced\n' \
    "$(git rev-parse HEAD 2>/dev/null || printf 'unknown')" "$stamp" > "$setdir/metadata.txt"
  printf 'Encrypted paired snapshot produced: %s\n' "$setdir"
  printf 'A backup exists; restoration and readback are NOT yet qualified.\n'
  exit 0
fi

require BACKUP_SET
require AGE_IDENTITY_FILE
require RESTORE_DATABASE_URL
require RESTORE_OBJECT_URI
[[ "${MASANAWA_RESTORE_ISOLATED_ACK:-}" == "YES" ]] ||
  die "isolated disposable destination, disabled job runners and webhooks must be acknowledged"
[[ "$RESTORE_OBJECT_URI" == s3://* ]] || die "restore object target must be an S3 URI"
[[ "$BACKUP_SET" == /* ]] || die "BACKUP_SET must be an absolute secure directory"
[[ -f "$BACKUP_SET/SHA256SUMS" && -f "$BACKUP_SET/postgres.dump.age" &&
  -f "$BACKUP_SET/objects.tar.gz.age" ]] || die "incomplete backup set"
if [[ -n "${SOURCE_DATABASE_URL:-}" && "$SOURCE_DATABASE_URL" == "$RESTORE_DATABASE_URL" ]]; then
  die "refusing to restore to source database"
fi
if [[ -n "${SOURCE_OBJECT_URI:-}" && "$SOURCE_OBJECT_URI" == "$RESTORE_OBJECT_URI" ]]; then
  die "refusing to restore to source object store"
fi

(cd "$BACKUP_SET" && sha256sum -c SHA256SUMS >/dev/null) ||
  die "encrypted archive checksum mismatch"
age -d -i "$AGE_IDENTITY_FILE" -o "$scratch/postgres.dump" "$BACKUP_SET/postgres.dump.age"
age -d -i "$AGE_IDENTITY_FILE" -o "$scratch/objects.tar.gz" "$BACKUP_SET/objects.tar.gz.age"
pg_restore --list "$scratch/postgres.dump" >/dev/null ||
  die "PostgreSQL custom-format archive invalid"

# Fail closed on any existing user tables, instead of wiping/restoring into
# production or an already-used rehearsal DB.
table_count="$(PGDATABASE="$RESTORE_DATABASE_URL" psql -X -A -t -v ON_ERROR_STOP=1 \
  -c "SELECT count(*) FROM pg_catalog.pg_tables WHERE schemaname NOT IN ('pg_catalog','information_schema');")"
[[ "$table_count" == "0" ]] || die "restore database must be empty"
target_listing="$(aws s3 ls "$RESTORE_OBJECT_URI" --recursive)"
[[ -z "$target_listing" ]] || die "restore object prefix must be empty"

# Reject unsafe tar members even if a backup archive has been replaced.
while IFS= read -r member; do
  case "$member" in
    objects|objects/|objects/*) ;;
    *) die "unsafe object archive entry" ;;
  esac
  case "/$member/" in *'/../'*|*'/./'*) die "unsafe object archive path" ;; esac
done < <(tar -tzf "$scratch/objects.tar.gz")
tar -C "$scratch" -xzf "$scratch/objects.tar.gz"
PGDATABASE="$RESTORE_DATABASE_URL" pg_restore \
  --exit-on-error --single-transaction --no-owner --no-privileges \
  --dbname="" "$scratch/postgres.dump"
aws s3 sync "$scratch/objects" "$RESTORE_OBJECT_URI" --only-show-errors

# Independent object readback confirms every restored object byte, not only
# object counts. Never use --delete, including for the isolated target.
mkdir -m 700 "$scratch/readback"
aws s3 sync "$RESTORE_OBJECT_URI" "$scratch/readback" --only-show-errors
diff -qr "$scratch/objects" "$scratch/readback" >/dev/null ||
  die "restored object readback mismatch"
migration_count="$(PGDATABASE="$RESTORE_DATABASE_URL" psql -X -A -t -v ON_ERROR_STOP=1 \
  -c 'SELECT count(*) FROM public.masanawa_schema_migrations;')"
[[ "$migration_count" =~ ^[1-9][0-9]*$ ]] ||
  die "restore missing canonical migration ledger"
printf 'Isolated database and object restore readback passed; migration entries=%s.\n' "$migration_count"
printf 'Keep all jobs, payment callbacks, notifications and outbound providers FENCED in the restore environment.\n'
