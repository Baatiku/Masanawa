#!/usr/bin/env bash
# Version-pinned DigitalOcean Billstack update. Run on the existing pilot host.
# Never sends payments, fabricates balances or disables signature verification.
set -Eeuo pipefail
umask 077

release_sha="${1:?Provide an exact 40-character Masanawa main commit SHA}"
[[ "$release_sha" =~ ^[0-9a-f]{40}$ ]] || { echo 'Invalid release SHA'; exit 1; }
test "$(id -u)" -eq 0
test "$(hostname)" = 'masanawa-pilot-lon1'
cd /opt/masanawa/current
test -f compose.yaml
test -f /etc/masanawa/compose.env
grep -q '^MASANAWA_GATEWAY_IMAGE=' /etc/masanawa/compose.env
grep -q '^MASANAWA_OPS_IMAGE=' /etc/masanawa/compose.env
exec 9>/etc/masanawa/billstack-deploy.lock
flock -n 9 || { echo 'Another Billstack deployment is running'; exit 1; }

old_gateway=$(docker inspect -f '{{.Config.Image}}' masanawa-gateway-1)
old_ops=$(docker inspect -f '{{.Config.Image}}' masanawa-ops-1)
was_worker_running=$(docker inspect -f '{{.State.Running}}' masanawa-worker-1 2>/dev/null || true)
export MASANAWA_GATEWAY_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-gateway:$release_sha"
export MASANAWA_OPS_IMAGE="ghcr.io/baatiku/masanawa-do-pilot-ops:$release_sha"
dc=(docker compose -p masanawa --env-file /etc/masanawa/compose.env -f compose.yaml --profile ops)

test "$(df --output=avail -B1 /etc/masanawa | tail -1)" -gt 2147483648
backup=$(mktemp -d /etc/masanawa/billstack-release-XXXXXXXX)
cp -p /etc/masanawa/compose.env "$backup/compose.env.before"
stage='prepull'

rollback() {
  trap - ERR
  if [ "$stage" = prepull ]; then
    echo 'Release image unavailable or preflight failed. Existing services were not touched.'
    echo "Private diagnostics: $backup"
    exit 1
  fi
  echo 'Deployment failed; trying the previous application images...'
  cp -p "$backup/compose.env.before" /etc/masanawa/compose.env
  export MASANAWA_GATEWAY_IMAGE="$old_gateway" MASANAWA_OPS_IMAGE="$old_ops"
  if "${dc[@]}" up -d --no-build --no-deps --force-recreate --wait --wait-timeout 180 gateway ops </dev/null >"$backup/rollback.log" 2>&1; then
    echo 'Previous Gateway and Ops restored (forward migrations retained).'
  else
    echo 'Rollback needs inspection; consult private rollback.log.'
  fi
  if [ "$was_worker_running" = true ]; then docker start masanawa-worker-1 >/dev/null || true; fi
  echo "Private backups and logs: $backup"
  exit 1
}
trap rollback ERR

"${dc[@]}" config --images </dev/null | grep -Fx "$MASANAWA_GATEWAY_IMAGE" >/dev/null
"${dc[@]}" config --images </dev/null | grep -Fx "$MASANAWA_OPS_IMAGE" >/dev/null
echo 'Pulling immutable main-commit images before stopping the API...'
"${dc[@]}" pull gateway ops </dev/null >"$backup/pull.log" 2>&1

stage='mutating'
if [ "$was_worker_running" = true ]; then docker stop -t 35 masanawa-worker-1 >/dev/null; fi
"${dc[@]}" stop -t 35 gateway ops </dev/null >"$backup/stop.log" 2>&1
echo 'Creating and checking a private database backup...'
docker exec masanawa-postgres-1 sh -ec 'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" -Fc' </dev/null >"$backup/database.dump"
test -s "$backup/database.dump"
docker exec -i masanawa-postgres-1 pg_restore --list <"$backup/database.dump" >"$backup/database.contents"

echo 'Applying forward-only migrations...'
"${dc[@]}" run --rm --no-deps -T --interactive=false migrate </dev/null >"$backup/migrations.log" 2>&1
echo 'Starting checked Gateway and Ops images...'
"${dc[@]}" up -d --no-build --no-deps --force-recreate --wait --wait-timeout 180 gateway ops </dev/null >"$backup/start.log" 2>&1
docker exec masanawa-gateway-1 node -e 'Promise.all(["healthz","readyz"].map(async p=>{const r=await fetch("http://127.0.0.1:3000/"+p,{signal:AbortSignal.timeout(5000)});if(!r.ok)throw Error(p);console.log("Gateway "+p+": "+r.status)})).catch(()=>process.exit(1))' </dev/null
docker exec masanawa-ops-1 node -e 'Promise.all(["healthz","readyz","v1/admin/payments"].map(async p=>{const r=await fetch("http://127.0.0.1:3002/"+p,{signal:AbortSignal.timeout(5000)});const expected=p.startsWith("v1/")?401:200;if(r.status!==expected)throw Error(p+": "+r.status);console.log("Ops "+p+": "+r.status)})).catch(()=>process.exit(1))' </dev/null
docker exec masanawa-gateway-1 node -e 'const e=process.env;const key=e.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||e.BILLSTACK_SECRET_KEY?.trim();if(!key||e.MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED!=="true")process.exit(1);console.log("Billstack API key and live-deposit configuration preserved")' </dev/null

echo 'Persisting the verified image selection...'
python3 - <<'PY'
import os,tempfile
from pathlib import Path
p=Path('/etc/masanawa/compose.env')
lines=p.read_text().splitlines()
for key in ('MASANAWA_GATEWAY_IMAGE','MASANAWA_OPS_IMAGE'):
    if sum(s.startswith(key+'=') for s in lines)!=1: raise SystemExit('Image env key missing or duplicated')
    lines=[key+'='+os.environ[key] if s.startswith(key+'=') else s for s in lines]
with tempfile.NamedTemporaryFile(dir=p.parent,delete=False) as f:
    f.write(('\n'.join(lines)+'\n').encode());f.flush();os.fsync(f.fileno());name=f.name
os.chmod(name,0o600);os.replace(name,p)
PY
if [ "$was_worker_running" = true ]; then docker start masanawa-worker-1 >/dev/null; fi
trap - ERR
echo 'Release deployed. Testing unsigned webhook rejection; NO PAYMENT WILL BE SENT.'
status=$(curl -sS --max-time 12 -o /dev/null -w '%{http_code}' -H 'Content-Type: application/json' -d '{}' https://api.masanawa.com/webhooks/billstack/gb || true)
echo "Public unsigned POST status: $status (expected 503)"
docker logs --since 3m masanawa-gateway-1 2>&1 | grep 'billstack.webhook' | tail -5 || true
echo 'Read-only provider check for the two earlier receipts (no credit will be created)...'
docker exec masanawa-gateway-1 node --input-type=module -e '
const e=process.env;
const key=e.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||e.BILLSTACK_SECRET_KEY?.trim();
for (const sessionId of ["100004261117164131177786256111","100004261118090949177845967814"]) {
 try {
  const r=await fetch("https://api.billstack.co/v2/thirdparty/getTransaction/",{
   method:"POST",headers:{authorization:`Bearer ${key}`,"content-type":"application/json",accept:"application/json"},
   body:JSON.stringify({session_id:sessionId}),signal:AbortSignal.timeout(15000),redirect:"error"});
  const j=await r.json();const d=j?.data??{};
  console.log(JSON.stringify({sessionEnding:sessionId.slice(-4),httpStatus:r.status,found:j?.status===true,
   providerStatus:typeof d.status==="string"?d.status:"missing",settled:d.is_settled===true,
   method:typeof d.method==="string"?d.method:"missing",sessionMatches:d.session_id===sessionId,
   transactionReferenceMatches:d.transaction_ref===sessionId,accountNumberValid:/^\d{10}$/.test(d.nuban??""),
   bank:typeof d.bank==="string"?d.bank:"missing"}));
 } catch { console.log(JSON.stringify({sessionEnding:sessionId.slice(-4),providerLookup:"unavailable"})); }
}
' </dev/null || true
echo "Private database backup and logs: $backup"
echo 'This release has not yet proven signed provider delivery or credited earlier payments.'

