#!/usr/bin/env python3
"""Import individually sealed settings into the existing private runtime.
The private key stays on the Droplet. Provider payment flags are untouched."""
import base64,hashlib,json,os,socket,subprocess,tempfile
from pathlib import Path
ROOT=Path('/etc/masanawa')
TRUSTED='ff1ec1a3fe9f827512e94573c17b509d42ffaeebee6b7cb8b38396be09545338'
ALLOWED={'MASANAWA_PILOT_NEWS_ENABLED','MASANAWA_WEB_PUSH_PUBLIC_KEY','MASANAWA_WEB_PUSH_PRIVATE_KEY','MASANAWA_WEB_PUSH_SUBJECT','MASANAWA_MAIL_INGEST_SECRET','MASANAWA_MAIL_R2_ENDPOINT','MASANAWA_MAIL_R2_BUCKET','MASANAWA_MAIL_R2_ACCESS_KEY','MASANAWA_MAIL_R2_SECRET','MASANAWA_MAIL_OWNER_EMAIL','MASANAWA_MONITOR_EMAIL','MASANAWA_BACKUP_AGE_RECIPIENT'}
def apply(sealed,root=ROOT,expected_uid=0):
 key=root/'billstack-transfer/private.pem'
 if key.is_symlink() or key.stat().st_uid!=expected_uid or key.stat().st_mode&0o077:raise ValueError('Private transfer-key permissions need inspection')
 public=subprocess.run(['openssl','pkey','-in',str(key),'-pubout','-outform','DER'],capture_output=True,check=True).stdout
 if hashlib.sha256(public).hexdigest()!=TRUSTED or sealed.get('trustedSha')!=TRUSTED:raise ValueError('Transfer-key fingerprint differs; nothing imported')
 updates={}
 for item in sealed['items']:
  name=item['name']
  if name not in ALLOWED or name in updates:raise ValueError('Unapproved or duplicate feature setting')
  ciphertext=base64.b64decode(item['ciphertext'],validate=True)
  if hashlib.sha256(ciphertext).hexdigest()!=item['ciphertextSha256']:raise ValueError('Encrypted setting integrity failed')
  result=subprocess.run(['openssl','pkeyutl','-decrypt','-inkey',str(key),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256','-pkeyopt','rsa_mgf1_md:sha256'],input=ciphertext,capture_output=True)
  if result.returncode or hashlib.sha256(result.stdout).hexdigest()!=item['plaintextSha256']:raise ValueError('Private setting could not be verified')
  value=json.loads(result.stdout)
  if value.get('name')!=name or not isinstance(value.get('value'),str) or not value['value'] or any(c in value['value'] for c in '\r\n\x00'):raise ValueError('Invalid private setting format')
  updates[name]=value['value']
 rows=(root/'compose.env').read_text().splitlines();paths=[r.split('=',1)[1] for r in rows if r.startswith('MASANAWA_RUNTIME_ENV_FILE=')]
 if len(paths)!=1:raise ValueError('Existing runtime path needs inspection')
 runtime=Path(paths[0]).resolve(strict=True)
 if not str(runtime).startswith(str(root)+'/') or runtime.stat().st_uid!=expected_uid or runtime.stat().st_mode&0o077:raise ValueError('Private runtime permissions need inspection')
 raw=runtime.read_bytes();lines=raw.decode().splitlines()
 for name in updates:
  if sum(row.startswith(name+'=') for row in lines)>1:raise ValueError('Duplicate private runtime setting')
 with tempfile.NamedTemporaryFile(dir=root,prefix='runtime.before-features-',delete=False) as f:f.write(raw);f.flush();os.fsync(f.fileno())
 os.chmod(f.name,0o600)
 values=[row.split('=',1)[0] for row in lines if row and not row.startswith('#') and '=' in row]
 lines=[row.split('=',1)[0]+'='+updates[row.split('=',1)[0]] if row.split('=',1)[0] in updates else row for row in lines]
 lines.extend(name+'='+value for name,value in updates.items() if name not in values)
 with tempfile.NamedTemporaryFile(dir=runtime.parent,delete=False) as f:f.write(('\n'.join(lines)+'\n').encode());f.flush();os.fsync(f.fileno());temporary=f.name
 os.chmod(temporary,0o600);os.replace(temporary,runtime)
 return len(updates)
if __name__=='__main__':
 try:
  import sys
  if os.geteuid()!=0 or socket.gethostname()!='masanawa-pilot-lon1':raise ValueError('Existing Droplet root console required')
  os.umask(0o077);count=apply(json.loads(Path(sys.argv[1]).read_text()));print('Private feature settings installed:',count)
 except Exception as error:
  print(str(error) if isinstance(error,ValueError) else 'Private setting import stopped; inspect configuration locally',file=sys.stderr);sys.exit(1)
