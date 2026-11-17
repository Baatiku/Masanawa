#!/usr/bin/env python3
"""Privately activate owner-authorized NGN services after provider qualification.
No provider credentials are created, printed, returned, or sent to the browser.
"""
import json
import os
import re
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

def load_runtime(configuration_root):
    compose = parse((configuration_root / 'compose.env').read_text().splitlines())
    runtime = Path(compose['MASANAWA_RUNTIME_ENV_FILE']).resolve(strict=True)
    if not runtime.is_relative_to(configuration_root) or runtime.stat().st_mode & 0o077:
        raise SystemExit('Runtime path or permissions need inspection')
    lines = runtime.read_text().splitlines()
    values = parse(lines)
    return runtime, lines, values

def write_runtime(runtime, lines, values, changes):
    updated = [key + '=' + changes[key] if '=' in line and (key := line.split('=', 1)[0]) in changes else line for line in lines]
    updated.extend(key + '=' + value for key, value in changes.items() if key not in values)
    with tempfile.NamedTemporaryFile(dir=runtime.parent, prefix='runtime.payments-', delete=False) as target:
        target.write(('\n'.join(updated) + '\n').encode())
        target.flush()
        os.fsync(target.fileno())
    os.chmod(target.name, 0o600)
    os.replace(target.name, runtime)

def activate_core(configuration_root=Path('/etc/masanawa')):
    runtime, lines, values = load_runtime(configuration_root)
    if not re.fullmatch(r'tenant_[0-9a-fA-F-]{36}', values.get('MASANAWA_PLATFORM_TENANT_ID', '')):
        raise SystemExit('Canonical tenant needs inspection')
    review = values.get('MASANAWA_GB_SEND_REVIEW_SECRET', '')
    if review and len(review) < 32:
        raise SystemExit('Existing private setting is too short: MASANAWA_GB_SEND_REVIEW_SECRET')
    changes = {'MASANAWA_GB_SEND_REVIEW_SECRET': review or secrets.token_hex(32)}
    billstack = bool(values.get('MASANAWA_BILLSTACK_SECRET_KEY', '').strip() or values.get('BILLSTACK_SECRET_KEY', '').strip())
    if billstack:
        changes['MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED'] = 'true'
    write_runtime(runtime, lines, values, changes)
    print('Core transfer settings installed privately. Flutterwave settings preserved.')
    print('Billstack signed-webhook deposits: ' + ('configured' if billstack else 'pending; private Billstack key missing'))

def activate(qualification_file, configuration_root=Path('/etc/masanawa')):
    qualification_path = Path(qualification_file).resolve(strict=True)
    if qualification_path.stat().st_mode & 0o077:
        raise SystemExit('Qualification file must be private')
    qualified = json.loads(qualification_path.read_text())
    if qualified.get('qualified') is not True or not isinstance(qualified.get('available'), int) or qualified['available'] < 1:
        raise SystemExit('Provider catalogue has not qualified')

    runtime, lines, values = load_runtime(configuration_root)
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
    write_runtime(runtime, lines, values, changes)
    print('Qualified NGN payment settings installed privately. Provider credentials preserved.')

def qualification_summary(logfile):
    path = Path(logfile)
    with path.open('rb') as log:
        log.seek(max(0, path.stat().st_size - 65536))
        text = log.read(65536).decode(errors='replace')
    stages = {'configuration', 'database', 'database_connection', 'approval_table', 'approval_configuration', 'categories', 'items', 'approval_matching', 'catalogue_commit'}
    codes = {'missing_settings', 'callback_mismatch', 'tenant_invalid', 'no_approved_matches', 'approvals_empty', 'provider_catalogue_empty', 'catalogue_changed', 'provider_or_catalogue_unavailable'}
    names = {'FLUTTERWAVE_SECRET_KEY', 'FLUTTERWAVE_WEBHOOK_SECRET_HASH', 'MASANAWA_PLATFORM_TENANT_ID', 'MASANAWA_BILLSTACK_SECRET_KEY'}
    for line in reversed(text.splitlines()):
        if not line.startswith('MASANAWA_QUALIFICATION_RESULT '):
            continue
        try:
            result = json.loads(line.split(' ', 1)[1])
        except (ValueError, TypeError):
            continue
        if not isinstance(result, dict) or result.get('event') != 'payments.qualification.failed':
            continue
        stage = result.get('stage') if isinstance(result.get('stage'), str) and result['stage'] in stages else 'unclassified'
        code = result.get('code') if isinstance(result.get('code'), str) and result['code'] in codes else 'unclassified'
        print('Flutterwave pending: ' + stage + ' / ' + code)
        status = result.get('httpStatus')
        if type(status) is int and 100 <= status <= 599:
            print('Provider HTTP status: ' + str(status))
        failure = result.get('failureCode')
        if isinstance(failure, str) and failure in {'ECONNREFUSED', 'ETIMEDOUT', 'ENOTFOUND', 'EAI_AGAIN', '28P01', '28000', '3D000', '42P01', '42703', '42501', 'ENOENT', 'EACCES'}:
            print('Failure code: ' + failure)
        missing = result.get('missing')
        if isinstance(missing, list):
            for name in sorted(names.intersection(v for v in missing if isinstance(v, str))):
                print('Missing private setting: ' + name)
        return
    print('Flutterwave qualification did not finish. Private logs retained.')
    if 'ERR_MODULE_NOT_FOUND' in text:
        print('Qualification module unavailable.')

if __name__ == '__main__':
    if os.geteuid() != 0:
        raise SystemExit('Run on the existing Droplet as root')
    if sys.argv[1:] == ['--core']:
        activate_core()
    elif len(sys.argv) == 3 and sys.argv[1] == '--diagnose-log':
        qualification_summary(sys.argv[2])
    else:
        activate(sys.argv[1])
