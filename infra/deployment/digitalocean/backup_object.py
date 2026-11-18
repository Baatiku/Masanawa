#!/usr/bin/env python3
"""Minimal fixed-origin SigV4 upload for private encrypted PostgreSQL backups.
Uses a known Content-Length and SHA256; no unsupported SDK streaming options."""
import datetime,hashlib,hmac,json,os,re,tempfile,urllib.parse,urllib.request
from pathlib import Path
from monitor import env_file
class NoRedirect(urllib.request.HTTPRedirectHandler):
 def redirect_request(self,*args,**kwargs):return None

def signed_request(config,method,key,body=None,opener=None):
 endpoint=config['MASANAWA_MAIL_R2_ENDPOINT'].rstrip('/');bucket=config.get('MASANAWA_MAIL_R2_BUCKET','masanawa')
 if not re.fullmatch(r'https://[a-f0-9]{32}\.r2\.cloudflarestorage\.com',endpoint) or bucket!='masanawa' or not re.fullmatch(r'masanawa-backups/(?:masanawa|qualification)-[A-Za-z0-9_-]+\.pgdump\.age',key):raise ValueError('Reviewed backup namespace required')
 if method not in ['PUT','HEAD','GET','DELETE']:raise ValueError('Unsupported backup operation')
 now=datetime.datetime.now(datetime.timezone.utc);stamp=now.strftime('%Y%m%dT%H%M%SZ');day=now.strftime('%Y%m%d');host=urllib.parse.urlparse(endpoint).netloc;path='/'+bucket+'/'+key
 sha=hashlib.sha256()
 if body:
  with Path(body).open('rb') as source:
   for chunk in iter(lambda:source.read(1024*1024),b''):sha.update(chunk)
 payload=sha.hexdigest();canonical_headers='host:'+host+'\nx-amz-content-sha256:'+payload+'\nx-amz-date:'+stamp+'\n';signed='host;x-amz-content-sha256;x-amz-date';canonical='\n'.join([method,path,'',canonical_headers,signed,payload]);scope=day+'/auto/s3/aws4_request'
 def mac(key,value):return hmac.new(key,value.encode(),hashlib.sha256).digest()
 signing=mac(mac(mac(mac(('AWS4'+config['MASANAWA_MAIL_R2_SECRET']).encode(),day),'auto'),'s3'),'aws4_request');string='AWS4-HMAC-SHA256\n'+stamp+'\n'+scope+'\n'+hashlib.sha256(canonical.encode()).hexdigest();signature=hmac.new(signing,string.encode(),hashlib.sha256).hexdigest()
 headers={'Host':host,'x-amz-content-sha256':payload,'x-amz-date':stamp,'Authorization':'AWS4-HMAC-SHA256 Credential='+config['MASANAWA_MAIL_R2_ACCESS_KEY']+'/'+scope+', SignedHeaders='+signed+', Signature='+signature}
 if body:headers.update({'Content-Length':str(Path(body).stat().st_size),'Content-Type':'application/octet-stream'})
 transport=opener or urllib.request.build_opener(NoRedirect())
 with Path(body).open('rb') if body else __import__('contextlib').nullcontext(None) as source:
  request=urllib.request.Request(endpoint+path,data=source,headers=headers,method=method)
  return transport.open(request,timeout=120)

def upload(config,path,key):
 if not 0<Path(path).stat().st_size<=256*1024*1024:raise ValueError('Pilot encrypted-backup size budget exceeded')
 with signed_request(config,'PUT',key,path) as response:
  if response.status not in [200,201]:raise ValueError('Encrypted backup upload not confirmed')
 with signed_request(config,'HEAD',key) as response:
  if int(response.headers.get('Content-Length','0'))!=Path(path).stat().st_size:raise ValueError('Encrypted backup size did not verify')
 return {'object':key.split('/')[-1],'bytes':Path(path).stat().st_size,'uploadedAt':datetime.datetime.now(datetime.timezone.utc).isoformat()}
if __name__=='__main__':
 import sys
 try:
  root=Path('/etc/masanawa');compose=env_file(root/'compose.env');runtime=Path(compose['MASANAWA_RUNTIME_ENV_FILE']).resolve(strict=True)
  if not str(runtime).startswith(str(root)+'/') or runtime.stat().st_mode&0o077:raise ValueError('Private runtime permissions need inspection')
  path=Path(sys.argv[1]).resolve(strict=True)
  if path.stat().st_mode&0o077:raise ValueError('Encrypted spool permissions need inspection')
  status=upload(env_file(runtime),path,'masanawa-backups/'+sys.argv[2]);destination=root/'backup-last-success.json'
  with tempfile.NamedTemporaryFile(dir=root,delete=False) as f:f.write(json.dumps(status).encode());f.flush();os.fsync(f.fileno());temporary=f.name
  os.chmod(temporary,0o600);os.replace(temporary,destination);print('Encrypted off-server backup uploaded and size verified.')
 except Exception:print('Encrypted backup was not confirmed; inspect private configuration.',file=sys.stderr);sys.exit(1)
