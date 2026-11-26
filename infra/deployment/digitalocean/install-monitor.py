#!/usr/bin/env python3
"""Install the existing bounded host monitor; preserve existing timer controls."""
import ast,os,subprocess,sys,tempfile
from pathlib import Path
SERVICE='''[Unit]
Description=ChatMeUp host and public-provider monitoring
After=network-online.target docker.service
[Service]
Type=oneshot
ExecStart=/usr/bin/python3 /etc/masanawa/operations/monitor.py
TimeoutStartSec=90
MemoryMax=96M
CPUQuota=20%
TasksMax=64
NoNewPrivileges=true
PrivateTmp=true
ProtectHome=true
ProtectSystem=strict
ReadWritePaths=/etc/masanawa
'''
TIMER='''[Unit]
Description=ChatMeUp bounded health checks
[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
Persistent=true
[Install]
WantedBy=timers.target
'''
def atomic(path,data,mode):
 if path.is_symlink():raise ValueError('Unexpected monitoring symlink')
 with tempfile.NamedTemporaryFile(dir=path.parent,delete=False) as f:
  f.write(data);f.flush();os.fsync(f.fileno());name=f.name
 os.chmod(name,mode);os.replace(name,path)
def install(source,folder=Path('/etc/masanawa/operations'),units=Path('/etc/systemd/system'),run=subprocess.run):
 # Validate before changing any live file; never execute the downloaded source here.
 ast.parse(source.decode())
 folder.mkdir(mode=0o700,parents=True,exist_ok=True)
 target=folder/'monitor.py'
 if target.is_symlink():raise ValueError('Unexpected monitoring symlink')
 atomic(target,source,0o700)
 created=[]
 for name,text in [('masanawa-monitor.service',SERVICE),('masanawa-monitor.timer',TIMER)]:
  path=units/name
  if path.is_symlink():raise ValueError('Unexpected monitoring unit symlink')
  if not path.exists():atomic(path,text.encode(),0o644);created.append(name)
 if created:run(['systemctl','daemon-reload'],check=True,stdout=subprocess.DEVNULL)
 # Existing disabled/paused timer is an operator control; do not change it.
 if 'masanawa-monitor.timer' in created:
  run(['systemctl','enable','--now','masanawa-monitor.timer'],check=True,stdout=subprocess.DEVNULL)
 return created
if __name__=='__main__':
 import socket
 if os.geteuid()!=0 or socket.gethostname()!='masanawa-pilot-lon1' or len(sys.argv)!=2:
  raise SystemExit('Run on the existing Droplet as root with one reviewed monitor source file')
 created=install(Path(sys.argv[1]).read_bytes())
 print('Host monitor installed; existing timer controls preserved.' if not created else 'Host monitor and missing timer units installed.')
