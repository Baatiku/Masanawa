#!/usr/bin/env bash
# Upgrade Masanawa's existing QR-linked WhatsApp Worker, Ops and Gateway.
# Creates a recoverable private voice-reply milestone before touching services.
set -Eeuo pipefail
umask 077

release_sha="${1:?Provide an exact main-branch release SHA}"
[[ "$release_sha" =~ ^[0-9a-f]{40}$ ]] || { echo 'Invalid release SHA'; exit 1; }
calls_option="${2:-keep}"
[[ "$calls_option" =~ ^(keep|true|false)$ ]] && [ "$#" -le 2 ] || { echo 'Invalid WhatsApp calls setting'; exit 1; }
test "$(id -u)" -eq 0 && test "$(hostname)" = 'masanawa-pilot-lon1'
cd /opt/masanawa/current
test -f compose.yaml && test -f /etc/masanawa/compose.env
for cmd in docker python3 flock; do command -v "$cmd" >/dev/null; done

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
stage='preflight'
changed=false

rollback(){
  trap - ERR INT TERM
  echo "Deployment stopped at $stage (installer line $1)."
  if [ "$changed" = false ]; then
    echo 'Preflight stopped; running services were not replaced.'
  else
    for svc in gateway ops worker; do
      docker inspect -f '{{.State.Status}} health={{if .State.Health}}{{.State.Health.Status}}{{else}}none{{end}} exit={{.State.ExitCode}} oom={{.State.OOMKilled}} image={{.Config.Image}}' \
        "masanawa-$svc-1" >"$backup/$svc.failed-state" 2>&1 || true
      docker logs --tail 80 "masanawa-$svc-1" >"$backup/$svc.failed-startup.log" 2>&1 || true
    done
    echo 'Restoring previous application images without touching PostgreSQL or Signal keys...'
    cp -p "$backup/compose.before" /etc/masanawa/compose.env
    cp -p "$backup/runtime.before" "$runtime_file"
    export MASANAWA_GATEWAY_IMAGE="$old_gateway"
    export MASANAWA_OPS_IMAGE="$old_ops"
    export MASANAWA_WORKER_IMAGE="$old_worker"
    "${dc[@]}" up -d --no-build --no-deps --force-recreate --wait --wait-timeout 180 gateway ops worker \
      >"$backup/rollback.log" 2>&1 || echo 'Inspect private rollback.log for recovery.'
  fi
  echo "Private checkpoint: $backup"
  exit 1
}
trap 'rollback "$LINENO"' ERR INT TERM

probe(){
  local service="$1" fallback_port="$2"
  shift 2
  docker exec "masanawa-$service-1" node -e '
    const [service, fallback, ...checks]=process.argv.slice(1);
    const prefix="MASANAWA_"+service.toUpperCase();
    const port=process.env[prefix+"_PORT"]||process.env.PORT||fallback;
    const bind=process.env[prefix+"_HOST"]||process.env.HOST;
    const host=!bind||bind==="0.0.0.0"||bind==="localhost"?"127.0.0.1":bind==="::"?"[::1]":bind.includes(":")?"["+bind+"]":bind;
    const wait=require("node:timers/promises").setTimeout;
    async function ready(){
      const deadline=Date.now()+90000;
      while(true){
        try{
          const results=await Promise.all(checks.map(async check=>{
            const [path,expected]=check.split("=");
            const response=await fetch("http://"+host+":"+port+path,{signal:AbortSignal.timeout(2500)});
            await response.body?.cancel();
            if(response.status!==Number(expected))throw Error(path+" HTTP "+response.status);
            return path+" HTTP "+response.status;
          }));
          for(const result of results)console.log(service+" "+result);
          return;
        }catch(error){
          if(Date.now()>=deadline)throw error;
          await wait(2000);
        }
      }
    }
    ready().catch(error=>{console.error(service+" check: "+(error.cause?.code||error.message));process.exitCode=1;});' \
    "$service" "$fallback_port" "$@"
}

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

stage='stop applications'
changed=true
echo 'Applying forward-only schema checks with the application services paused...'
"${dc[@]}" stop -t 35 worker gateway ops >"$backup/stop.log" 2>&1
stage='apply migrations'
"${dc[@]}" run --rm --no-deps -T --interactive=false migrate \
  >"$backup/migrations.log" 2>&1
stage='prepare release settings'
python3 - "$runtime_file" "$release_sha" "$calls_option" <<'PY'
import os,sys,tempfile
from pathlib import Path
path=Path(sys.argv[1])
settings={'MASANAWA_RELEASE_SHA':sys.argv[2]}
if sys.argv[3]!='keep': settings['MASANAWA_WHATSAPP_CALLS_ENABLED']=sys.argv[3]
lines=[line for line in path.read_bytes().splitlines(keepends=True)
       if not any(line.lstrip().startswith((key+'=').encode()) for key in settings)]
contents=b''.join(lines)
if contents and not contents.endswith(b'\n'): contents+=b'\n'
contents+=b''.join(f'{key}={value}\n'.encode() for key,value in settings.items())
with tempfile.NamedTemporaryFile(dir=path.parent,delete=False) as f:
    f.write(contents);f.flush();os.fsync(f.fileno());name=f.name
os.chmod(name,0o600);os.replace(name,path)
PY
echo 'Upgrading application services; QR identity and wallet records are preserved...'
stage='start Gateway and Ops'
"${dc[@]}" up -d --no-build --no-deps --force-recreate \
  --wait --wait-timeout 180 gateway ops >"$backup/gateway-ops.log" 2>&1
stage='check Gateway'
probe gateway 3000 /readyz=200
stage='check Ops'
probe ops 3002 /readyz=200 /v1/admin/whatsapp=401
stage='start Worker'
"${dc[@]}" up -d --no-build --no-deps --force-recreate \
  --wait --wait-timeout 150 worker >"$backup/worker.log" 2>&1
stage='check Worker'
probe worker 3001 /readyz=200
stage='check WhatsApp configuration'
docker exec masanawa-worker-1 node -e '
  const e=process.env;
  if(e.MASANAWA_WHATSAPP_ENABLED!=="true"||e.MASANAWA_WHATSAPP_MODE!=="linked-device"||
     !e.MASANAWA_WHATSAPP_SESSION_KEY)process.exit(1);
  console.log("WhatsApp QR-linked configuration preserved");'

echo 'Saving exact tested image references across future reboots...'
stage='save image references'
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
echo 'No WhatsApp pairing was deleted. Forward-only migrations are logged privately.'
echo 'Open Masanawa Admin → WhatsApp AI; confirm your linked number reconnects.'
echo 'Send a new text and voice note to test replies and transcripts.'
