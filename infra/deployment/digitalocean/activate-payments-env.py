#!/usr/bin/env python3
"""Privately activate owner-authorized NGN services after provider qualification.
No provider credentials are created, printed, returned, or sent to the browser.
"""
import json
import os
from pathlib import Path
import secrets
import sys
import tempfile

def parse(lines):
    values = {}
    for line in lines:
        if '=' not in line or line.lstrip().startswith('#'):
            continue
        key, value = line.split('=', 1)
        if key in values:
            raise SystemExit('Duplicate private setting; inspect configuration')
        values[key] = value
    return values

def activate(qualification_file, configuration_root=Path('/etc/masanawa')):
    qualification_path = Path(qualification_file).resolve(strict=True)
    if qualification_path.stat().st_mode & 0o077:
        raise SystemExit('Qualification file must be private')
    qualified = json.loads(qualification_path.read_text())
    if qualified.get('qualified') is not True or not isinstance(qualified.get('available'), int) or qualified['available'] < 1:
        raise SystemExit('Provider catalogue has not qualified')

    compose = parse((configuration_root / 'compose.env').read_text().splitlines())
    runtime = Path(compose['MASANAWA_RUNTIME_ENV_FILE']).resolve(strict=True)
    if not runtime.is_relative_to(configuration_root) or runtime.stat().st_mode & 0o077:
        raise SystemExit('Runtime path or permissions need inspection')
    lines = runtime.read_text().splitlines()
    values = parse(lines)
    for key in ['FLUTTERWAVE_SECRET_KEY', 'FLUTTERWAVE_WEBHOOK_SECRET_HASH']:
        if not values.get(key, '').strip():
            raise SystemExit('Missing private setting: ' + key)
    if not (values.get('MASANAWA_BILLSTACK_SECRET_KEY', '').strip() or values.get('BILLSTACK_SECRET_KEY', '').strip()):
        raise SystemExit('Missing private setting: MASANAWA_BILLSTACK_SECRET_KEY')
    changes = {key: 'true' for key in [
        'MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED', 'FLUTTERWAVE_BILLS_ENABLED',
        'MASANAWA_NGN_DATA_CATALOG_ENABLED', 'MASANAWA_NGN_DATA_PURCHASE_ENABLED',
        'MASANAWA_FLUTTERWAVE_DIRECT_ENABLED', 'MASANAWA_FLUTTERWAVE_VERIFY_ON_START',
    ]}
    changes['MASANAWA_NGN_DATA_APPROVALS_JSON'] = json.dumps(qualified['approved'], separators=(',', ':'))
    changes['FLUTTERWAVE_WEBHOOK_URL'] = qualified['webhookUrl']
    changes['MASANAWA_BILLING_REDIRECT_URL'] = values.get('MASANAWA_BILLING_REDIRECT_URL') or 'https://app.masanawa.com/?tab=wallet'
    for key in ['MASANAWA_GB_SEND_REVIEW_SECRET', 'MASANAWA_BILLING_ACTION_SECRET']:
        if values.get(key) and len(values[key]) < 32:
            raise SystemExit('Existing private setting is too short: ' + key)
        changes[key] = values.get(key) or secrets.token_hex(32)
    updated = [key + '=' + changes[key] if '=' in line and (key := line.split('=', 1)[0]) in changes else line for line in lines]
    updated.extend(key + '=' + value for key, value in changes.items() if key not in values)
    with tempfile.NamedTemporaryFile(dir=runtime.parent, prefix='runtime.payments-', delete=False) as target:
        target.write(('\n'.join(updated) + '\n').encode())
        target.flush()
        os.fsync(target.fileno())
    os.chmod(target.name, 0o600)
    os.replace(target.name, runtime)
    print('Qualified NGN payment settings installed privately. Provider credentials preserved.')

if __name__ == '__main__':
    if os.geteuid() != 0:
        raise SystemExit('Run on the existing Droplet as root')
    activate(sys.argv[1])
