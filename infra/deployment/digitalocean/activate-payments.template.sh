sudo bash <<'MASANAWA_PAYMENTS_UPDATE'
set -Eeuo pipefail
umask 077
test "$(id -u)" = 0
test "$(hostname)" = masanawa-pilot-lon1
cd /opt/masanawa/current
exec 9>/etc/masanawa/payments-update.lock
flock -n 9 || { echo 'Another update is running'; exit 1; }
test -f compose.yaml
test -f /etc/masanawa/compose.env
if docker ps --format '{{.Names}}' | grep -qx 'masanawa-worker-1'; then echo 'Worker is running; inspect resource safety first'; exit 1; fi
test "$(df --output=avail -B1 /etc/masanawa | tail -1)" -gt 2147483648
backup=$(mktemp -d /etc/masanawa/payments-release-XXXXXXXX)
cp -p /etc/masanawa/compose.env "$backup/compose.env.before"
runtime=$(python3 - <<'PY'
from pathlib import Path
rows=Path('/etc/masanawa/compose.env').read_text().splitlines()
matches=[r.split('=',1)[1] for r in rows if r.startswith('MASANAWA_RUNTIME_ENV_FILE=')]
if len(matches)!=1:raise SystemExit('Runtime file needs inspection')
p=Path(matches[0]).resolve(strict=True)
if not str(p).startswith('/etc/masanawa/') or p.stat().st_mode&0o077:raise SystemExit('Runtime file permissions need inspection')
print(p)
PY
)
cp -p "$runtime" "$backup/runtime.before"
old_gateway=$(docker inspect -f '{{.Config.Image}}' masanawa-gateway-1)
old_ops=$(docker inspect -f '{{.Config.Image}}' masanawa-ops-1)
export MASANAWA_GATEWAY_IMAGE=ghcr.io/baatiku/masanawa-do-pilot-gateway@sha256:RELEASE_GATEWAY_DIGEST
export MASANAWA_OPS_IMAGE=ghcr.io/baatiku/masanawa-do-pilot-ops@sha256:RELEASE_OPS_DIGEST
dc=(docker compose -p masanawa --env-file /etc/masanawa/compose.env -f compose.yaml --profile ops)
rollback(){
 trap - ERR
 cp -p "$backup/runtime.before" "$runtime"
 cp -p "$backup/compose.env.before" /etc/masanawa/compose.env
 export MASANAWA_GATEWAY_IMAGE="$old_gateway" MASANAWA_OPS_IMAGE="$old_ops"
 if "${dc[@]}" up -d --no-build --no-deps --force-recreate --wait --wait-timeout 180 gateway ops </dev/null >"$backup/rollback.log" 2>&1; then echo 'Update stopped. Previous application images restored; forward migrations retained.'; else echo 'Update stopped. Rollback needs inspection.'; fi
 echo "Private logs and backup: $backup"
 exit 1
}
trap rollback ERR
"${dc[@]}" config --images </dev/null | grep -Fx "$MASANAWA_GATEWAY_IMAGE" >/dev/null
"${dc[@]}" config --images </dev/null | grep -Fx "$MASANAWA_OPS_IMAGE" >/dev/null
echo 'Pulling verified application images...'
"${dc[@]}" pull gateway ops </dev/null >"$backup/pull.log" 2>&1
# Extract the private configuration helper from the verified immutable image.
docker run --rm --network none --entrypoint cat "$MASANAWA_GATEWAY_IMAGE" /app/infra/deployment/digitalocean/activate-payments-env.py >"$backup/activate-payments-env.py"
python3 "$backup/activate-payments-env.py" --core
echo 'Pausing application services for the migration memory budget...'
"${dc[@]}" stop -t 35 gateway ops </dev/null >"$backup/stop.log" 2>&1
echo 'Backing up the existing database...'
docker exec masanawa-postgres-1 sh -ec 'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" -Fc' </dev/null >"$backup/database.dump"
test -s "$backup/database.dump"
docker exec -i masanawa-postgres-1 pg_restore --list <"$backup/database.dump" >"$backup/database.contents"
echo 'Applying canonical forward migrations...'
"${dc[@]}" run --rm --no-deps -T --interactive=false migrate </dev/null >"$backup/migrations.log" 2>&1
echo 'Checking authenticated Flutterwave catalogues and retaining reviewed bundle terms...'
data_qualified=false
if "${dc[@]}" run --rm --no-deps -T --interactive=false --entrypoint node migrate --conditions=production infra/deployment/digitalocean/qualify-payments.mjs </dev/null >"$backup/qualification.json" 2>"$backup/qualification.log"; then
 python3 "$backup/activate-payments-env.py" "$backup/qualification.json"
 data_qualified=true
else
 python3 "$backup/activate-payments-env.py" --diagnose-log "$backup/qualification.log"
 echo 'Continuing the core update. Existing Flutterwave settings are unchanged.'
fi
echo 'Starting Gateway and Ops...'
"${dc[@]}" up -d --no-build --no-deps --force-recreate --wait --wait-timeout 180 gateway ops </dev/null >"$backup/start.log" 2>&1
docker exec masanawa-gateway-1 node -e 'Promise.all(["healthz","readyz"].map(async p=>{const r=await fetch("http://127.0.0.1:3000/"+p,{signal:AbortSignal.timeout(5000)});if(!r.ok)throw Error(p);console.log("Gateway /"+p+": "+r.status)})).catch(()=>process.exit(1))' </dev/null
docker exec masanawa-ops-1 node -e 'Promise.all(["healthz","readyz","v1/admin/me","v1/admin/roles","v1/admin/persona/config?characterId=readiness_probe"].map(async p=>{const r=await fetch("http://127.0.0.1:3002/"+p,{signal:AbortSignal.timeout(5000)});const expected=p.startsWith("v1/")?401:200;if(r.status!==expected)throw Error(p+": "+r.status);console.log("Ops /"+p+": "+r.status)})).catch(()=>process.exit(1))' </dev/null
docker exec masanawa-gateway-1 node -e 'async function check(){const e=process.env;const billstack=Boolean(e.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||e.BILLSTACK_SECRET_KEY?.trim());const catalogue=e.MASANAWA_NGN_DATA_CATALOG_ENABLED==="true";for(const [p,expected] of [["/v1/ngn/wallet/requests",401],["/v1/ngn/data/bundles?units=mb",catalogue?401:404],["/v1/gb/wallet/virtual-account",billstack?401:404]]){const r=await fetch("http://127.0.0.1:3000"+p,{signal:AbortSignal.timeout(5000)});if(r.status!==expected)throw Error("Route composition check failed");console.log(p+": "+r.status);}const r=await fetch("http://127.0.0.1:3000/v1/ngn/wallet/send/quote",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify({username:"activation_probe",amountKobo:1}),signal:AbortSignal.timeout(5000)});if(r.status!==401)throw Error("Transfer route not configured");if((e.MASANAWA_GB_SEND_REVIEW_SECRET||"").length<32||(billstack&&e.MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED!=="true"))throw Error("Core configuration check failed");console.log("NGN transfers: configured; Billstack deposits: "+(billstack?"configured":"pending credentials"));}check().catch(()=>process.exit(1))' </dev/null
python3 - <<'PY'
import os,tempfile
from pathlib import Path
p=Path('/etc/masanawa/compose.env');lines=p.read_text().splitlines()
for key in ['MASANAWA_GATEWAY_IMAGE','MASANAWA_OPS_IMAGE']:
 if sum(s.startswith(key+'=') for s in lines)!=1:raise SystemExit('Image configuration needs inspection')
 lines=[key+'='+os.environ[key] if s.startswith(key+'=') else s for s in lines]
with tempfile.NamedTemporaryFile(dir=p.parent,delete=False) as f:
 f.write(('\n'.join(lines)+'\n').encode());f.flush();os.fsync(f.fileno());name=f.name
os.chmod(name,0o600);os.replace(name,p)
PY
docker ps --format '{{.Names}} | {{.Image}} | {{.Status}}'
if [ "$data_qualified" = true ]; then
 docker exec masanawa-gateway-1 node -e 'const keys=["FLUTTERWAVE_BILLS_ENABLED","MASANAWA_NGN_DATA_CATALOG_ENABLED","MASANAWA_NGN_DATA_PURCHASE_ENABLED","MASANAWA_FLUTTERWAVE_DIRECT_ENABLED","MASANAWA_FLUTTERWAVE_VERIFY_ON_START"];if(keys.some(k=>process.env[k]!=="true"))process.exit(1);console.log("Flutterwave activation flags: verified")' </dev/null
 python3 - "$backup/qualification.json" <<'PY_SUMMARY'
import json,sys
q=json.load(open(sys.argv[1]))
print('Live Flutterwave catalogue matches:',q['available'],'; unavailable or changed:',q['unavailable'])
print('Per network:',json.dumps(q['networks'],sort_keys=True))
PY_SUMMARY
fi
trap - ERR
if [ "$data_qualified" = true ]; then
 echo 'PAYMENT UPDATE COMPLETE. Deposits, NGN transfers and Flutterwave data purchase routes activated.'
else
 echo 'CORE UPDATE COMPLETE. Login and transfer fixes deployed. Flutterwave/data activation remains pending; see the safe diagnosis above.'
fi
echo 'No payment was sent and no balance was created. Signed webhook receipt and funded purchase acceptance still need verification.'
echo "Private backup: $backup"
echo 'Worker remains off. Existing isolated test balances remain isolated. Forward migrations and audited catalogue revisions are retained on rollback.'
MASANAWA_PAYMENTS_UPDATE
