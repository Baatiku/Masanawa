#!/usr/bin/env python3
"""Bounded Masanawa release-cache retention. Never prune volumes or backups."""
import argparse
import fcntl
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import urllib.request

GIB = 1024 ** 3
TARGET = 9 * GIB
PREFIX = 'ghcr.io/baatiku/masanawa-do-pilot-'
TAG = re.compile(r'^ghcr\.io/baatiku/masanawa-do-pilot-(gateway|ops|worker):(?:browser-)?([0-9a-f]{40})$')
SHA = re.compile(r'^[0-9a-f]{40}$')
PIN = 'dccebe9c61bc783c1baa4993de415f241a20f828'
REQUEST = 'https://raw.githubusercontent.com/Baatiku/Masanawa/deploy/digitalocean-production/digitalocean-release.json'
LOCKS = ('/var/lib/masanawa-deploy/run.lock', '/etc/masanawa/whatsapp-release.lock', '/etc/masanawa/payments-update.lock')


def docker(*args, timeout=30):
    return subprocess.run(['docker', *args], check=True, capture_output=True, text=True, timeout=timeout).stdout.strip()


def requested_sha():
    request = urllib.request.Request(REQUEST, headers={'Cache-Control': 'no-cache', 'User-Agent': 'Masanawa-storage-maintenance'})
    with urllib.request.urlopen(request, timeout=15) as response:
        if response.geturl() != REQUEST:
            raise ValueError('Unexpected release manifest URL')
        data = response.read(4097)
    if len(data) > 4096:
        raise ValueError('Oversized release manifest')
    sha = json.loads(data)['releaseSha']
    if not isinstance(sha, str) or not SHA.fullmatch(sha):
        raise ValueError('Invalid requested release')
    return sha


def candidates(images, active_ids, active_refs, protected_shas):
    for ref, image_id in images:
        match = TAG.fullmatch(ref)
        if match and match[2] not in protected_shas and ref not in active_refs and image_id not in active_ids:
            yield ref


def maintain(apply):
    root = docker('info', '--format', '{{.DockerRootDir}}')
    free = shutil.disk_usage(root).free
    print(f'Docker filesystem free: {free / GIB:.2f} GiB; target: {TARGET / GIB:.0f} GiB', flush=True)
    if free >= TARGET:
        print('Storage target met; no action.'); return
    # Keep current requested release, pinned recovery milestone and most recent
    # installer checkpoint's rollback refs. All checkpoint files remain intact.
    protected = {requested_sha(), PIN}
    active_ids, active_refs = set(), set()
    containers = docker('ps', '-aq').splitlines()
    for cid in containers:
        row = docker('inspect', '--format', '{{.Image}}|{{.Config.Image}}', cid)
        image_id, ref = row.split('|', 1)
        active_ids.add(image_id.removeprefix('sha256:')); active_refs.add(ref)
        match = TAG.fullmatch(ref)
        if match: protected.add(match[2])
    checkpoints = sorted(Path('/etc/masanawa').glob('whatsapp-voice-checkpoint-*'), key=lambda p: p.stat().st_mtime, reverse=True)
    # Preserve the newest complete rollback checkpoint; do not read env files.
    for directory in checkpoints:
        files = [directory / f'{svc}-image.before' for svc in ('gateway','ops','worker')]
        if all(p.is_file() and not p.is_symlink() for p in files):
            for p in files:
                match = TAG.fullmatch(p.read_text().strip())
                if not match: raise ValueError('Unexpected rollback image reference')
                protected.add(match[2])
            break
    else:
        raise ValueError('No complete rollback checkpoint; cleanup withheld')
    rows = docker('image', 'ls', '--no-trunc', '--format', '{{.Repository}}:{{.Tag}}|{{.ID}}').splitlines()
    images = [(ref, image_id.removeprefix('sha256:')) for ref, image_id in (row.split('|', 1) for row in rows)]
    removed = 0
    for ref in candidates(reversed(images), active_ids, active_refs, protected):
        if shutil.disk_usage(root).free >= TARGET: break
        if not apply:
            print('Eligible release cache:', ref); continue
        # Registry manifest must still be retrievable and no container may use it.
        try:
            docker('manifest', 'inspect', ref, timeout=20)
            if docker('ps', '-aq', '--filter', f'ancestor={ref}'): continue
            docker('image', 'rm', ref, timeout=120)
        except (subprocess.SubprocessError, OSError):
            print('Skipped release cache:', ref); continue
        removed += 1
        print('Released unused cache:', ref, flush=True)
    free = shutil.disk_usage(root).free
    print(f'Final free: {free / GIB:.2f} GiB; removed tags: {removed}', flush=True)
    if free < TARGET:
        print('WARNING: storage below release reserve; inspect retained backups and other usage. No backup or volume deletion attempted.', flush=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apply', action='store_true', help='Remove only verified unused release image tags')
    args = parser.parse_args()
    if os.geteuid() != 0 or os.uname().nodename != 'masanawa-pilot-lon1':
        raise SystemExit('Use the existing Masanawa root console')
    locks = []
    try:
        for path in LOCKS:
            lock = open(path, 'a'); locks.append(lock)
            try: fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
            except BlockingIOError:
                print('Deployment active; storage maintenance deferred.'); return
        maintain(args.apply)
    finally:
        for lock in reversed(locks): lock.close()


if __name__ == '__main__':
    main()
