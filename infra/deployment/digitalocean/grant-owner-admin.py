#!/usr/bin/env python3
"""Install the owner's explicit Ops grant in the private runtime file.

Run locally on the Droplet as root. Restart Ops separately after reviewing
the prepared backup. This script never prints runtime values or credits NGN.
"""
import json
import os
from pathlib import Path
import tempfile
import time

if os.geteuid() != 0:
    raise SystemExit("Run as root on the existing Droplet")
compose = Path('/etc/masanawa/compose.env')
def parse(lines):
    return dict(line.split('=', 1) for line in lines if '=' in line and not line.lstrip().startswith('#'))
config = parse(compose.read_text().splitlines())
runtime = Path(config['MASANAWA_RUNTIME_ENV_FILE']).resolve(strict=True)
if not str(runtime).startswith('/etc/masanawa/') or runtime.stat().st_mode & 0o077:
    raise SystemExit('Runtime path or permissions need inspection')
raw = runtime.read_bytes()
lines = raw.decode().splitlines()
values = parse(lines)
tenant = values.get('MASANAWA_PLATFORM_TENANT_ID', '')
if not tenant.startswith('tenant_'):
    raise SystemExit('Canonical tenant is missing')
key = 'MASANAWA_OPS_ADMIN_GRANTS_JSON'
if sum(line.startswith(key+'=') for line in lines) > 1:
    raise SystemExit('Duplicate grants setting; inspect first')
grants = json.loads(values.get(key, '[]'))
if not isinstance(grants, list):
    raise SystemExit('Invalid grants list')
email = 'belloabubakaratiku@gmail.com'
capabilities = ['dashboard.read','users.read','users.write','runtime.read','operations.read','audit.read','news.read','news.write','wallet.read','wallet.test.write','wallet.adjust.write','roles.read','roles.write','data.read','data.write','calls.read','moderation.read','moderation.write','agents.presentation.read','agents.presentation.write','agents.skills.read','agents.skills.write','skills.catalog.read']
existing = next((g for g in grants if g.get('tenantId') == tenant and g.get('email','').lower() == email), None)
if existing:
    existing['capabilities'] = sorted(set(existing['capabilities']) | set(capabilities))
else:
    grants.append(dict(tenantId=tenant,email=email,capabilities=capabilities))
setting = key+'='+json.dumps(grants,separators=(',',':'))
updated = [setting if line.startswith(key+'=') else line for line in lines]
if key not in values:
    updated.append(setting)
with tempfile.NamedTemporaryFile(dir=runtime.parent,prefix='runtime.before-admin-',delete=False) as backup:
    backup.write(raw)
    backup.flush()
    os.fsync(backup.fileno())
with tempfile.NamedTemporaryFile(dir=runtime.parent,prefix='runtime.admin-',delete=False) as target:
    target.write(('\n'.join(updated)+'\n').encode())
    target.flush()
    os.fsync(target.fileno())
os.chmod(target.name,0o600)
os.replace(target.name,runtime)
print('Owner grant installed privately; backup retained. Restart Ops and verify normal OTP /admin authorization.')
