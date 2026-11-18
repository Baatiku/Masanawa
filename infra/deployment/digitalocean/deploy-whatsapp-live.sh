#!/usr/bin/env bash
# Upgrade Masanawa's existing QR-linked WhatsApp Worker, Ops and Gateway.
# Creates a recoverable private voice-reply milestone before touching services.
set -Eeuo pipefail
umask 077

release_sha="${1:?Provide an exact main-branch release SHA}"
[[ "$release_sha" =~ ^[0-9a-f]{40}$ ]] || { echo 'Invalid release SHA'; exit 1; }
test "$(id -u)" -eq 0 && test "$(hostname)" = 'masanawa-pilot-lon1'
cd /opt/masanawa/current
test -f compose.yaml && test -f /etc/masanawa/compose.env
for cmd in docker python3 flock curl; do command -v "$cmd" >/dev/null; done

exec 9>>/etc/masanawa/whatsapp-release.lock
flock -n 9 || { echo 'WhatsApp release is already running'; exit 1; }
exec 8>>/etc/masanawa/payments-update.lock
flock -n 8 || { echo 'Another Masanawa release is running'; exit 1; }

unset MASANAWA_GATEWAY_IMAGE MASANAWA_OPS_IMAGE MASANAWA_WORKER_IMAGE
for svc in postgres gateway ops worker; do
  test "$(docker inspect -f '{{.State.Running}}' "masanawa-$svc-1")" = true || {
    echo "Service not running: $svc"; exit 1;
  }
done
test "$(df --output=avail -B1 /etc/masanawa | tail -1)" -gt 2147483648 || {
  echo 'Need 2 GiB free disk space for backup'; exit 1;
}

runtime_file="$(python3 - <<'PY'
from pathlib import Path
p=Path('/etc/masanawa/compose.env')
assert not p.is_symlink() and p.stat().st_mode & 0o077 == 0
rows=p.read_text().splitlines()
for key in ('MASANAWA_GATEWAY_IMAGE','MASANAWA_OPS_IMAGE','MASANAWA_WORKER_IMAGE',
            'MASANAWA_RUNTIME_ENV_FILE'):
    if sum(x.startswith(key+'=') for x in rows)!=1:
        raise SystemExit('Missing or duplicate compose setting: '+key)
raw=next(x.split('=',1)[1] for x in rows if x.startswith('MASANAWA_RUNTIME_ENV_FILE='))
r=Path(raw)
if r.is_symlink(): raise SystemExit('Unexpected runtime symlink')
r=r.resolve(strict=True)
if not r.is_relative_to('/etc/masanawa') or r.stat().st_mode & 0o077:
    raise SystemExit('Private runtime file needs inspection')
print(r)
PY
)"

old_gateway="$(docker inspect -f '{{.Config.Image}}' masanawa-gateway-1)"
old_ops="$(docker inspect -f '{{.Config.Image}}' masanawa-ops-1)"
old_worker="$(docker inspect -f '{{.Config.Image}}' masanawa-worker-1)"
backup="$(mktemp -d /etc/masanawa/whatsapp-voice-checkpoint-XXXXXXXX)"
chmod 700 "$backup"
cp -p /etc/masanawa/compose.env "$backup/compose.before"
cp -p "$runtime_file" "$backup/runtime.before"
printf '%s\n' "$old_gateway" >"$backup/gateway-image.before"
printf '%s\n' "$old_ops" >"$backup/ops-image.before"
printf '%s\n' "$old_worker" >"$backup/worker-image.before"

export MASANAWA_GATEWAY_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-gateway:$release_sha"
export MASANAWA_OPS_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-ops:$release_sha"
export MASANAWA_WORKER_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-worker:$release_sha"
dc=(docker compose -p masanawa --env-file /etc/masanawa/compose.env \
  -f compose.yaml --profile ops --profile worker)
stage=preflight

rollback(){
  trap - ERR INT TERM
  if [ "$stage" = preflight ]; then
    echo 'Preflight stopped; running services were not replaced.'
  else
    echo 'Restoring previous application images without touching PostgreSQL or Signal keys...'
    cp -p "$backup/compose.before" /etc/masanawa/compose.env
    cp -p "$backup/runtime.before" "$runtime_file"
    export MASANAWA_GATEWAY_IMAGE="$old_gateway"
    export MASANAWA_OPS_IMAGE="$old_ops"
    export MASANAWA_WORKER_IMAGE="$old_worker"
    "${dc[@]}" up -d --no-build --no-deps --force-recreate gateway ops worker \
      >"$backup/rollback.log" 2>&1 || echo 'Inspect private rollback.log for recovery.'
  fi
  echo "Private checkpoint: $backup"
  exit 1
}
trap rollback ERR INT TERM

"${dc[@]}" config --quiet
echo 'Pulling exact published images before touching the working number...'
"${dc[@]}" pull gateway ops worker >"$backup/pull.log" 2>&1

echo 'Saving the known-working voice-note state and a recoverable database dump...'
docker exec masanawa-postgres-1 sh -ec \
  'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" -Fc' \
  >"$backup/database.dump"
test -s "$backup/database.dump"
docker exec -i masanawa-postgres-1 pg_restore --list \
  <"$backup/database.dump" >"$backup/database.contents"
test -s "$backup/database.contents"
printf '%s\n' "checkpoint_reason=owner-confirmed-working-voice-notes" \
  "source_checkpoint=dccebe9c61bc783c1baa4993de415f241a20f828" \
  "source_release=$release_sha" >"$backup/checkpoint.txt"

stage=upgrading
echo 'Upgrading application services; QR identity and database are untouched...'
"${dc[@]}" up -d --no-build --no-deps --force-recreate \
  --wait --wait-timeout 180 gateway ops >"$backup/gateway-ops.log" 2>&1
curl --fail --silent --show-error --max-time 10 http://127.0.0.1:3100/readyz >/dev/null
docker exec masanawa-ops-1 node -e '
  Promise.all(["/readyz","/v1/admin/whatsapp"].map(async path=>{
    const r=await fetch("http://127.0.0.1:3002"+path,{signal:AbortSignal.timeout(5000)});
    if(r.status!==(path==="/readyz"?200:401))throw Error(path+":"+r.status);
  })).catch(()=>process.exit(1));'
"${dc[@]}" up -d --no-build --no-deps --force-recreate \
  --wait --wait-timeout 150 worker >"$backup/worker.log" 2>&1
docker exec masanawa-worker-1 node -e '
  Promise.all(["/readyz"].map(async path=>{
    const r=await fetch("http://127.0.0.1:3001"+path,{signal:AbortSignal.timeout(5000)});
    if(r.status!==200)throw Error(path+":"+r.status);
  })).catch(()=>process.exit(1));'
docker exec masanawa-worker-1 node -e '
  const e=process.env;
  if(e.MASANAWA_WHATSAPP_ENABLED!=="true"||e.MASANAWA_WHATSAPP_MODE!=="linked-device"||
     !e.MASANAWA_WHATSAPP_SESSION_KEY)process.exit(1);
  console.log("WhatsApp QR-linked configuration preserved");'

echo 'Saving exact tested image references across future reboots...'
python3 - <<'PY'
import os,tempfile
from pathlib import Path
p=Path('/etc/masanawa/compose.env')
rows=p.read_text().splitlines()
keys=('MASANAWA_GATEWAY_IMAGE','MASANAWA_OPS_IMAGE','MASANAWA_WORKER_IMAGE')
for key in keys:
    if sum(x.startswith(key+'=') for x in rows)!=1:
        raise SystemExit('Unexpected image setting: '+key)
out=[row.split('=',1)[0]+'='+os.environ[row.split('=',1)[0]]
     if row.split('=',1)[0] in keys else row for row in rows]
with tempfile.NamedTemporaryFile(dir=p.parent,delete=False) as f:
    f.write(('\n'.join(out)+'\n').encode());f.flush();os.fsync(f.fileno());name=f.name
os.chmod(name,0o600);os.replace(name,p)
PY

trap - ERR INT TERM
echo 'WHATSAPP VOICE CHECKPOINT AND DEPLOYMENT COMPLETE'
echo "Source release: $release_sha"
echo "Private recovery checkpoint: $backup"
echo 'No WhatsApp pairing was deleted and no database migration was replayed.'
echo 'Open Masanawa Admin → WhatsApp AI; confirm your linked number reconnects.'
echo 'Send a new text and voice note to test replies and transcripts.'
