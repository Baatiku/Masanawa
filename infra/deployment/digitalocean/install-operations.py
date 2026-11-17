#!/usr/bin/env python3
"""Install reviewed free host timers using existing private R2 credentials.
Run from the verified release folder; no new provider resources are created."""
import os,socket,stat,subprocess,tempfile
from pathlib import Path
from monitor import env_file
ROOT=Path('/etc/masanawa')
def write(path,value,mode=0o600):
 with tempfile.NamedTemporaryFile(dir=path.parent,delete=False) as f:
  f.write(value.encode());f.flush();os.fsync(f.fileno());name=f.name
 os.chmod(name,mode);os.replace(name,path)
def main():
 if os.geteuid()!=0 or socket.gethostname()!='masanawa-pilot-lon1':raise ValueError('Existing Droplet root console required')
 os.umask(0o077);compose=env_file(ROOT/'compose.env');runtime_path=Path(compose['MASANAWA_RUNTIME_ENV_FILE']).resolve(strict=True)
 if not str(runtime_path).startswith(str(ROOT)+'/') or runtime_path.stat().st_mode&0o077:raise ValueError('Private runtime permissions need inspection')
 runtime=env_file(runtime_path)
 for key in ['MASANAWA_BACKUP_AGE_RECIPIENT','MASANAWA_MAIL_R2_ENDPOINT','MASANAWA_MAIL_R2_ACCESS_KEY','MASANAWA_MAIL_R2_SECRET']:
  if not runtime.get(key) or '\n' in runtime[key] or '\r' in runtime[key]:raise ValueError('Private backup setting missing: '+key)
 if not runtime['MASANAWA_BACKUP_AGE_RECIPIENT'].startswith('age1'):raise ValueError('Offline backup recipient required')
 source=Path(__file__).resolve().parent;folder=ROOT/'operations';folder.mkdir(mode=0o700,exist_ok=True)
 for name in ['backup.sh','preflight.mjs','monitor.py','backup_object.py']:
  write(folder/name,(source/name).read_text(),0o700)
 endpoint=runtime['MASANAWA_MAIL_R2_ENDPOINT'];bucket=runtime.get('MASANAWA_MAIL_R2_BUCKET','masanawa')
 if not endpoint.endswith('.r2.cloudflarestorage.com') or not endpoint.startswith('https://') or bucket!='masanawa':raise ValueError('Reviewed private R2 bucket required')
 write(folder/'rclone.conf','[masanawa-r2]\ntype = s3\nprovider = Cloudflare\naccess_key_id = '+runtime['MASANAWA_MAIL_R2_ACCESS_KEY']+'\nsecret_access_key = '+runtime['MASANAWA_MAIL_R2_SECRET']+'\nendpoint = '+endpoint+'\nno_check_bucket = true\n')
 image=compose['MASANAWA_GATEWAY_IMAGE']
 write(folder/'backup.env','MASANAWA_RUNTIME_ENV_FILE='+str(runtime_path)+'\nMASANAWA_BACKUP_AGE_RECIPIENT='+runtime['MASANAWA_BACKUP_AGE_RECIPIENT']+'\nMASANAWA_BACKUP_REMOTE=masanawa-r2:masanawa/masanawa-backups\nRCLONE_CONFIG='+str(folder/'rclone.conf')+'\nMASANAWA_BACKUP_PREFLIGHT_IMAGE='+image+'\nMASANAWA_BACKUP_COMPOSE_FILE=/opt/masanawa/current/compose.yaml\n')
 for name,command,extra in [('backup',str(folder/'backup.sh'),'EnvironmentFile='+str(folder/'backup.env')+'\n'),('monitor','/usr/bin/python3 '+str(folder/'monitor.py'),'')]:
  write(Path('/etc/systemd/system/masanawa-'+name+'.service'),'[Unit]\nDescription=Masanawa private '+name+'\nAfter=docker.service network-online.target\n[Service]\nType=oneshot\nUMask=0077\n'+extra+'ExecStart='+command+'\nTimeoutStartSec='+('600' if name=='backup' else '60')+'\nNice=10\n')
  schedule='OnCalendar=*-*-* 03:00:00 UTC\nPersistent=true\n' if name=='backup' else 'OnBootSec=5min\nOnUnitActiveSec=5min\n'
  write(Path('/etc/systemd/system/masanawa-'+name+'.timer'),'[Unit]\nDescription=Masanawa '+name+' schedule\n[Timer]\n'+schedule+'RandomizedDelaySec=30\n[Install]\nWantedBy=timers.target\n')
 subprocess.run(['systemctl','daemon-reload'],check=True)
 subprocess.run(['systemctl','enable','--now','masanawa-backup.timer','masanawa-monitor.timer'],check=True,stdout=subprocess.DEVNULL)
 subprocess.run(['systemctl','start','masanawa-backup.service'],check=True)
 print('Encrypted backup uploaded; private backup and monitoring timers enabled. Restore drill is still required.')
if __name__=='__main__':main()
