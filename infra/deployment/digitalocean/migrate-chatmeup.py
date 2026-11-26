#!/usr/bin/env python3
"""Prepare existing private config; no credentials printed, no data operations."""
import os
from pathlib import Path
from datetime import datetime, timezone
import shutil

def migrate(compose, runtime, *, web_only=False):
    def read(path):
        if path.is_symlink() or path.stat().st_mode & 0o077:
            raise ValueError('Private configuration permissions need inspection')
        lines=path.read_text().splitlines()
        values={}
        for line in lines:
            if not line or line.startswith('#') or '=' not in line: continue
            k,v=line.split('=',1)
            if k in values: raise ValueError('Duplicate configuration key: '+k)
            values[k]=v
        return lines,values
    cl,cv=read(compose); rl,rv=read(runtime)
    old=cv.get('MASANAWA_API_HOST')
    if old not in ('api.masanawa.com','api.chatmeup.online'):
        raise ValueError('Unexpected existing API hostname; inspect before migration')
    # Keep primary hostname unchanged; add only the new alias.
    aliases=cv.get('MASANAWA_API_ADDITIONAL_HOSTS','').split()
    for host in ('api.masanawa.com','api.chatmeup.online'):
        if host != old and host not in aliases: aliases.append(host)
    if any(host not in ('api.masanawa.com','api.chatmeup.online') for host in aliases):
        raise ValueError('Unexpected proxy aliases')
    origins=rv.get('MASANAWA_WEB_ALLOWED_ORIGINS','').split(',')
    origins=[x for x in origins if x]
    if 'https://app.chatmeup.online' not in origins: origins.append('https://app.chatmeup.online')
    runtime_changes={'MASANAWA_WEB_BASE_URL':'https://app.chatmeup.online',
                     'MASANAWA_WEB_ALLOWED_ORIGINS':','.join(origins)}
    if not web_only:
        runtime_changes.update(MASANAWA_PUBLIC_BASE_URL='https://api.chatmeup.online',
                               MASANAWA_AUTH_PUBLIC_BASE_URL='https://api.chatmeup.online')
    # Preserve custom callbacks and provider credentials; migrate only known web origins.
    from urllib.parse import urlsplit, urlunsplit
    redirect=rv.get('MASANAWA_BILLING_REDIRECT_URL')
    if redirect:
        parsed=urlsplit(redirect)
        if parsed.scheme=='https' and parsed.netloc in ('app.masanawa.com','web.masanawa.com'):
            runtime_changes['MASANAWA_BILLING_REDIRECT_URL']=urlunsplit(parsed._replace(netloc='app.chatmeup.online'))
    changes=[(compose,cl,{'MASANAWA_API_ADDITIONAL_HOSTS':' '.join(aliases)}),
             (runtime,rl,runtime_changes)]
    backup=compose.parent/('chatmeup-rollback-'+datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ'))
    backup.mkdir(mode=0o700)
    for path,lines,values in changes:
        shutil.copy2(path,backup/path.name)
        remaining=dict(values);out=[]
        for line in lines:
            key=line.split('=',1)[0]
            out.append(key+'='+remaining.pop(key) if key in remaining else line)
        out += [k+'='+v for k,v in remaining.items()]
        temp=path.with_name(path.name+'.chatmeup-tmp')
        fd=os.open(temp,os.O_CREAT|os.O_EXCL|os.O_WRONLY,0o600)
        with os.fdopen(fd,'w') as f:f.write('\n'.join(out)+'\n');f.flush();os.fsync(f.fileno())
        os.replace(temp,path)
    return backup

if __name__=='__main__':
    if os.geteuid()!=0: raise SystemExit('Run on the existing Droplet as root')
    import socket
    if socket.gethostname()!='masanawa-pilot-lon1':raise SystemExit('Unexpected host')
    compose=Path('/etc/masanawa/compose.env')
    values=dict(line.split('=',1) for line in compose.read_text().splitlines() if line and not line.startswith('#') and '=' in line)
    runtime=Path(values['MASANAWA_RUNTIME_ENV_FILE'])
    if not runtime.resolve().is_relative_to('/etc/masanawa'):raise SystemExit('Unexpected runtime path')
    import sys
    if sys.argv[1:] not in ([],['--web-only']):raise SystemExit('Unexpected migration option')
    print('Private rollback directory:',migrate(compose,runtime,web_only='--web-only' in sys.argv))
    print('Configuration prepared. Validate Caddy before reload; recreate only Gateway/Ops if their environment changed.')
