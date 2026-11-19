#!/usr/bin/env python3
"""Poll Masanawa's production deployment request over outbound HTTPS."""

import fcntl
import json
import os
import re
import socket
import subprocess
import sys
import tempfile
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen

REPOSITORY = 'Baatiku/Masanawa'
API = f'https://api.github.com/repos/{REPOSITORY}/'
RAW = f'https://raw.githubusercontent.com/{REPOSITORY}/'
REQUEST = RAW + 'deploy/digitalocean-production/digitalocean-release.json'
INSTALLER = 'infra/deployment/digitalocean/deploy-whatsapp-live.sh'
REQUIRED_WORKFLOWS = {
    '.github/workflows/foundation-ci.yml',
    '.github/workflows/digitalocean-pilot.yml',
}
STATE = Path('/var/lib/masanawa-deploy')
PROGRAM = Path('/usr/local/lib/masanawa/deploy-agent.py')
UNITS = Path('/etc/systemd/system')
SERVICE = 'masanawa-deploy.service'
TIMER = 'masanawa-deploy.timer'


def read_url(url, max_bytes, missing_ok=False):
    request = Request(url, headers={'User-Agent': 'Masanawa-DigitalOcean-Deploy', 'Cache-Control': 'no-cache'})
    try:
        with urlopen(request, timeout=15) as response:
            if response.geturl() != url:
                raise ValueError('Unexpected GitHub URL')
            data = response.read(max_bytes + 1)
    except HTTPError as error:
        if missing_ok and error.code == 404:
            return None
        raise
    if len(data) > max_bytes:
        raise ValueError('GitHub response exceeded its size limit')
    return data


def parse_request(data):
    value = json.loads(data)
    if not isinstance(value, dict) or set(value) - {'requestId', 'releaseSha', 'whatsappCallsEnabled'}:
        raise ValueError('Invalid deployment request fields')
    request_id, sha = value.get('requestId'), value.get('releaseSha')
    if not isinstance(request_id, str) or not re.fullmatch(r'[a-zA-Z0-9_-]{16,64}', request_id):
        raise ValueError('Invalid deployment request ID')
    if not isinstance(sha, str) or not re.fullmatch(r'[0-9a-f]{40}', sha):
        raise ValueError('Invalid deployment release SHA')
    if 'whatsappCallsEnabled' in value and type(value['whatsappCallsEnabled']) is not bool:
        raise ValueError('Invalid WhatsApp calls setting')
    return value


def release_is_ready(sha):
    comparison = json.loads(read_url(API + f'compare/{sha}...main?per_page=1', 2_000_000))
    if comparison.get('status') not in {'ahead', 'identical'}:
        return False
    result = json.loads(read_url(API + f'actions/runs?head_sha={sha}&event=push&per_page=20', 1_000_000))
    workflows = {}
    for run in result.get('workflow_runs', []):
        if run.get('head_sha') == sha and run.get('head_branch') == 'main' and run.get('event') == 'push':
            workflows.setdefault(run.get('path'), run.get('conclusion'))
    return all(workflows.get(path) == 'success' for path in REQUIRED_WORKFLOWS)


def atomic_write(path, data, mode=0o600):
    with tempfile.NamedTemporaryFile(dir=path.parent, delete=False) as output:
        temporary = Path(output.name)
        try:
            output.write(data)
            output.flush()
            os.fsync(output.fileno())
            os.chmod(temporary, mode)
            os.replace(temporary, path)
        finally:
            temporary.unlink(missing_ok=True)


def poll():
    with (STATE / 'run.lock').open('a') as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            return
        data = read_url(REQUEST, 4096, missing_ok=True)
        if data is None:
            return
        request = parse_request(data)
        request_id, sha = request['requestId'], request['releaseSha']
        state_file = STATE / 'state.json'
        receipts = STATE / 'requests'
        receipts.mkdir(mode=0o700, exist_ok=True)
        receipt = receipts / f'{request_id}.json'
        if receipt.exists():
            return
        if not release_is_ready(sha):
            print(f'Awaiting successful main release checks for {sha}', flush=True)
            return

        calls = request.get('whatsappCallsEnabled')
        calls_option = 'keep' if calls is None else str(calls).lower()
        script = read_url(RAW + f'{sha}/{INSTALLER}', 64 * 1024)
        with tempfile.TemporaryDirectory(dir=STATE) as staging:
            installer = Path(staging) / 'install.sh'
            installer.write_bytes(script)
            subprocess.run(['/usr/bin/bash', '-n', str(installer)], check=True)
            state = {'requestId': request_id, 'releaseSha': sha, 'status': 'running'}
            atomic_write(receipt, json.dumps(state).encode())
            atomic_write(state_file, json.dumps(state).encode())
            print(f'Deploying {sha} for request {request_id}', flush=True)
            result = subprocess.run(['/usr/bin/bash', str(installer), sha, calls_option], check=False)
            state.update(status='deployed' if result.returncode == 0 else 'failed', exitCode=result.returncode)
            atomic_write(receipt, json.dumps(state).encode())
            atomic_write(state_file, json.dumps(state).encode())
            if result.returncode:
                raise RuntimeError('Installer failed; it recorded private rollback diagnostics')


def install():
    for path in [Path('/opt/masanawa/current/compose.yaml'), Path('/etc/masanawa/compose.env')]:
        if not path.is_file():
            raise ValueError('The existing Masanawa Compose installation is required')
    PROGRAM.parent.mkdir(mode=0o755, parents=True, exist_ok=True)
    atomic_write(PROGRAM, Path(__file__).read_bytes(), 0o644)
    atomic_write(UNITS / SERVICE, b'''[Unit]
Description=Apply an approved Masanawa production release
Wants=network-online.target
After=network-online.target docker.service

[Service]
Type=oneshot
ExecStart=/usr/bin/python3 -I /usr/local/lib/masanawa/deploy-agent.py poll
TimeoutStartSec=1800
UMask=0077
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=full
ReadWritePaths=/etc/masanawa
''', 0o644)
    atomic_write(UNITS / TIMER, b'''[Unit]
Description=Check GitHub for Masanawa production deployments

[Timer]
OnBootSec=45s
OnUnitInactiveSec=2min
AccuracySec=15s

[Install]
WantedBy=timers.target
''', 0o644)
    subprocess.run(['systemctl', 'daemon-reload'], check=True)
    subprocess.run(['systemctl', 'enable', '--now', TIMER], check=True)
    subprocess.run(['systemctl', 'start', '--no-block', SERVICE], check=True)
    print('MASANAWA DEPLOYMENT AGENT STARTED', flush=True)


def main():
    if os.geteuid() != 0 or socket.gethostname() != 'masanawa-pilot-lon1':
        raise ValueError('Use the existing Masanawa Droplet root console')
    os.umask(0o077)
    STATE.mkdir(mode=0o700, exist_ok=True)
    if sys.argv[1:] == ['install']:
        install()
    elif sys.argv[1:] == ['poll']:
        poll()
    else:
        raise ValueError('Usage: deploy-agent.py install|poll')


if __name__ == '__main__':
    try:
        main()
    except (HTTPError, URLError, ValueError, OSError, RuntimeError, subprocess.CalledProcessError) as error:
        sys.exit(f'Masanawa deploy agent: {error}')
