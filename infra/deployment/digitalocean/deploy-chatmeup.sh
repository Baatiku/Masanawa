#!/usr/bin/env bash
# Migration release via the existing agent. Preserve flags, grants, DB and sessions.
set -Eeuo pipefail
umask 077
release_sha=${1:?Exact approved release SHA required}
[[ $release_sha =~ ^[0-9a-f]{40}$ && $# = 1 && $(id -u) = 0 && $(hostname) = masanawa-pilot-lon1 ]]
for cmd in docker python3 curl flock; do command -v "$cmd" >/dev/null;done
exec 9>>/etc/masanawa/whatsapp-release.lock
flock -n 9
exec 8>>/etc/masanawa/payments-update.lock
flock -n 8
free -m
df -h / /var/lib/docker
docker stats --no-stream
docker system df
[[ $(df --output=avail -B1 /var/lib/docker | tail -1) -ge $((9*1024*1024*1024)) ]] || { echo 'Need 9 GiB free for rollback-capable pulls; no services changed';exit 1; }
[[ $(docker inspect -f '{{.State.Running}}' masanawa-postgres-1) = true ]]
backup=$(mktemp -d /etc/masanawa/chatmeup-release-XXXXXXXX)
runtime=$(python3 - <<'PY'
from pathlib import Path
p=Path('/etc/masanawa/compose.env');assert not p.is_symlink() and not p.stat().st_mode&0o077
v=dict(x.split('=',1) for x in p.read_text().splitlines() if x and not x.startswith('#') and '=' in x)
r=Path(v['MASANAWA_RUNTIME_ENV_FILE']);assert r.resolve().is_relative_to('/etc/masanawa') and not r.is_symlink() and not r.stat().st_mode&0o077
print(r)
PY
)
cp -p /etc/masanawa/compose.env "$backup/compose.before"
cp -p "$runtime" "$backup/runtime.before"
unset MASANAWA_GATEWAY_IMAGE MASANAWA_OPS_IMAGE MASANAWA_WORKER_IMAGE MASANAWA_WHATSAPP_BROWSER_IMAGE
old_gateway=$(docker inspect -f '{{.Config.Image}}' masanawa-gateway-1)
old_ops=$(docker inspect -f '{{.Config.Image}}' masanawa-ops-1)
old_worker=$(docker inspect -f '{{.Config.Image}}' masanawa-worker-1)
for svc in gateway ops worker;do
 [[ $(docker inspect -f '{{.State.Running}}' "masanawa-$svc-1") = true ]]
 [[ $(docker inspect -f '{{index .Config.Labels "com.docker.compose.project"}}' "masanawa-$svc-1") = masanawa ]]
done
# Reuse every active override; do not reconstruct production Compose from defaults.
python3 - <<'PY' > "$backup/compose-files"
import subprocess
seen=[]
for service in ('gateway','ops','worker'):
 value=subprocess.check_output(['docker','inspect','-f','{{index .Config.Labels "com.docker.compose.project.config_files"}}','masanawa-'+service+'-1'],text=True).strip()
 for path in value.split(','):
  if not path.startswith('/') or '\n' in path:raise SystemExit('Inspect active Compose paths')
  if path not in seen:seen.append(path)
print('\n'.join(seen))
PY
dc=(docker compose -p masanawa --env-file /etc/masanawa/compose.env)
while IFS= read -r file;do [[ -f $file ]];dc+=(-f "$file");done < "$backup/compose-files"
dc+=(--profile ops --profile worker)
changed=false
rollback(){
 trap - ERR INT TERM
 cp -p "$backup/compose.before" /etc/masanawa/compose.env
 cp -p "$backup/runtime.before" "$runtime"
 if [[ -f $backup/monitor.before.py ]];then cp -p "$backup/monitor.before.py" /etc/masanawa/operations/monitor.py;fi
 export MASANAWA_GATEWAY_IMAGE=$old_gateway MASANAWA_OPS_IMAGE=$old_ops MASANAWA_WORKER_IMAGE=$old_worker
 if [[ $changed = true ]];then
  "${dc[@]}" up -d --no-build --no-deps --wait --wait-timeout 180 gateway ops worker >"$backup/rollback.log" 2>&1 || echo 'Inspect private rollback log'
 fi
 echo "ChatMeUp release failed; private configuration checkpoint: $backup"
 exit 1
}
trap rollback ERR INT TERM
export MASANAWA_GATEWAY_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-gateway:$release_sha"
export MASANAWA_OPS_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-ops:$release_sha"
export MASANAWA_WORKER_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-worker:$release_sha"
"${dc[@]}" config --quiet
"${dc[@]}" pull gateway ops worker >"$backup/pull.log" 2>&1
[[ $(df --output=avail -B1 /etc/masanawa | tail -1) -ge $((2*1024*1024*1024)) ]]
timeout 180 docker exec masanawa-postgres-1 sh -ec 'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" -Fc' | head -c 268435457 >"$backup/database.dump"
[[ $(stat -c %s "$backup/database.dump") -le 268435456 ]] || { echo 'Database checkpoint exceeds the existing 256 MiB pilot bound';false; }
[[ -s $backup/database.dump ]]
docker exec -i masanawa-postgres-1 pg_restore --list <"$backup/database.dump" >"$backup/database.contents"
curl -fsS --max-time 25 "https://raw.githubusercontent.com/Baatiku/Masanawa/$release_sha/infra/deployment/digitalocean/migrate-chatmeup.py" >"$backup/migrate-chatmeup.py"
python3 "$backup/migrate-chatmeup.py" --web-only
python3 - "$runtime" "$release_sha" <<'PY'
import os,sys,tempfile
from pathlib import Path
p=Path(sys.argv[1]);rows=[r for r in p.read_text().splitlines() if not r.startswith('MASANAWA_RELEASE_SHA=')]
rows.append('MASANAWA_RELEASE_SHA='+sys.argv[2])
with tempfile.NamedTemporaryFile(dir=p.parent,delete=False) as f:
 f.write(('\n'.join(rows)+'\n').encode());f.flush();os.fsync(f.fileno());name=f.name
os.chmod(name,0o600);os.replace(name,p)
PY
changed=true
"${dc[@]}" stop -t 35 gateway ops worker >"$backup/stop.log" 2>&1
"${dc[@]}" run --rm --no-deps -T --interactive=false migrate >"$backup/migrations.log" 2>&1
"${dc[@]}" up -d --no-build --no-deps --wait --wait-timeout 180 gateway ops worker >"$backup/start.log" 2>&1
for svc in gateway ops worker;do
 docker exec "masanawa-$svc-1" node -e '
 const svc=process.argv[1],port={gateway:3000,ops:3002,worker:3001}[svc];
 fetch(`http://127.0.0.1:${port}/readyz`,{signal:AbortSignal.timeout(8000)}).then(r=>{if(!r.ok)process.exit(1)}).catch(()=>process.exit(1));' "$svc"
done
curl -fsS --max-time 10 --dump-header "$backup/readiness.headers" http://127.0.0.1:3100/readyz >"$backup/readiness.json"
python3 - "$backup/readiness.headers" "$release_sha" <<'PY'
from pathlib import Path
import sys
headers=Path(sys.argv[1]).read_text().splitlines()
assert any(x.lower()=='x-masanawa-release: '+sys.argv[2] for x in headers),'Gateway release header mismatch'
print('Running Gateway release verified:',sys.argv[2])
PY
python3 - /etc/masanawa/compose.env "$release_sha" <<'PY'
import os,sys,tempfile
from pathlib import Path
p=Path(sys.argv[1]);sha=sys.argv[2]
settings={f'MASANAWA_{s.upper()}_IMAGE':f'ghcr.io/baatiku/masanawa-do-pilot-{s}:{sha}' for s in ('gateway','ops','worker')}
rows=[r for r in p.read_text().splitlines() if r.split('=',1)[0] not in settings]
rows.extend(k+'='+v for k,v in settings.items())
with tempfile.NamedTemporaryFile(dir=p.parent,delete=False) as f:
 f.write(('\n'.join(rows)+'\n').encode());f.flush();os.fsync(f.fileno());name=f.name
os.chmod(name,0o600);os.replace(name,p)
PY
monitor_target=/etc/masanawa/operations/monitor.py
if [[ -f $monitor_target && ! -L $monitor_target ]];then cp -p "$monitor_target" "$backup/monitor.before.py";fi
for file in monitor.py install-monitor.py;do
 curl -fsS --max-time 25 "https://raw.githubusercontent.com/Baatiku/Masanawa/$release_sha/infra/deployment/digitalocean/$file" >"$backup/$file"
done
python3 "$backup/install-monitor.py" "$backup/monitor.py"

free -m
df -h /
docker stats --no-stream
trap - ERR INT TERM
echo "ChatMeUp application release complete; flags, grants and browser-call service preserved. Checkpoint: $backup"
echo 'New API TLS and public feature acceptance remain separate checks.'
