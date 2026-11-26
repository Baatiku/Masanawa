#!/usr/bin/env python3
"""Bounded, private host checks. No environment values or provider bodies log."""
import datetime,fcntl,hashlib,json,os,re,shutil,subprocess,tempfile,urllib.request,urllib.error,base64
from pathlib import Path
ROOT=Path('/etc/masanawa')
class NoRedirect(urllib.request.HTTPRedirectHandler):
 def redirect_request(self,*args,**kwargs):return None
def env_file(path):
 result={}
 for row in path.read_text().splitlines():
  if not row.strip() or row.startswith('#'):continue
  k,sep,v=row.partition('=')
  if not sep or k in result:raise ValueError('Private runtime needs inspection')
  result[k]=v
 return result


DEPLOY_STATE=Path('/var/lib/masanawa-deploy/state.json')

def deployment_record(now):
 """Read the private deploy-agent receipt, never logs or environment values."""
 try:
  path=DEPLOY_STATE
  if path.is_symlink() or not path.is_file() or path.stat().st_size>4096:
   return {'status':'unknown'}, 'Release receipt unavailable'
  raw=json.loads(path.read_text())
  if not isinstance(raw,dict): raise ValueError('Invalid receipt')
  status,sha,request_id=raw.get('status'),raw.get('releaseSha'),raw.get('requestId')
  if status not in ('running','deployed','failed') or not isinstance(sha,str) or not re.fullmatch('[0-9a-f]{40}',sha) or not isinstance(request_id,str) or not re.fullmatch('[a-zA-Z0-9_-]{16,64}',request_id):
   raise ValueError('Invalid receipt')
  age_minutes=max(0,round((now.timestamp()-path.stat().st_mtime)/60,1))
  evidence={'status':status,'releaseSha':sha,'requestId':request_id,'ageMinutes':age_minutes}
  if status=='failed': return evidence,'Production release failed'
  if status=='running' and age_minutes>45: return evidence,'Production release stalled'
  return evidence,None
 except (OSError,ValueError,TypeError,KeyError,json.JSONDecodeError):
  return {'status':'unknown'}, 'Release receipt invalid'

def check_release_images(release):
 """Read image *names* only; never docker inspect's environment, mounts or secrets."""
 if release.get('status')!='deployed':return []
 failures=[]
 for service in ('gateway','ops','worker'):
  expected='ghcr.io/baatiku/masanawa-do-pilot-'+service+':'+release['releaseSha']
  try:
   result=subprocess.run(['docker','inspect','--format','{{.Config.Image}}','masanawa-'+service+'-1'],
                         capture_output=True,text=True,timeout=5)
   if result.returncode or result.stdout.strip()!=expected:
    failures.append('Release image mismatch: '+service)
  except (OSError,subprocess.TimeoutExpired):
   failures.append('Release image unavailable: '+service)
 return failures

def remote_checks(runtime):
 """Read-only provider/public probes; no AI generation or private account reads."""
 result={};opener=urllib.request.build_opener(NoRedirect())
 key=runtime.get('MASANAWA_GEMINI_API_KEY') or runtime.get('GEMINI_API_KEY')
 if not key:result['Gemini metadata connectivity']='credentials_unconfigured'
 else:
  try:
   request=urllib.request.Request('https://generativelanguage.googleapis.com/v1beta/models?pageSize=1',headers={'x-goog-api-key':key})
   with opener.open(request,timeout=5) as response:
    result['Gemini metadata connectivity']='ok' if response.status==200 else 'unavailable'
  except urllib.error.HTTPError as error:result['Gemini metadata connectivity']='http_'+str(error.code)
  except Exception:result['Gemini metadata connectivity']='unreachable'
 from urllib.parse import urlsplit
 api=runtime.get('MASANAWA_PUBLIC_BASE_URL','https://api.masanawa.com').rstrip('/')
 web=runtime.get('MASANAWA_WEB_BASE_URL','https://app.chatmeup.online').rstrip('/')
 for name,url in [('Gateway public readiness',api+'/readyz')]:
  try:
   parsed=urlsplit(url)
   if parsed.scheme!='https' or parsed.username or parsed.password:raise ValueError()
   with opener.open(url,timeout=5) as response:result[name]='ok' if response.status==200 else 'unavailable'
  except Exception:result[name]='unreachable'
 try:
  parsed=urlsplit(api)
  if parsed.scheme!='https' or parsed.username or parsed.password:raise ValueError()
  request=urllib.request.Request(api+'/agent/live/ngn/stream',headers={
   'Connection':'Upgrade','Upgrade':'websocket','Sec-WebSocket-Version':'13',
   'Sec-WebSocket-Key':base64.b64encode(os.urandom(16)).decode(),'Origin':web})
  try:
   with opener.open(request,timeout=5) as response:code=response.status
  except urllib.error.HTTPError as error:code=error.code
  # Missing grant must fail before provider/admission work. This is routing,
  # not proof of an authenticated live call or model/voice acceptance.
  result['WebSocket guarded route']='ok' if code==401 else 'unexpected_status_'+str(code)
 except Exception:result['WebSocket guarded route']='unreachable'
 try:
  parsed=urlsplit(web)
  if parsed.scheme!='https' or parsed.username or parsed.password:raise ValueError()
  with opener.open(web+'/api/news',timeout=8) as response:raw=response.read(2_000_001)
  if len(raw)>2_000_000:raise ValueError()
  items=json.loads(raw).get('items',[])
  dates=[datetime.datetime.fromisoformat(x['publishedAt'].replace('Z','+00:00')) for x in items if isinstance(x.get('publishedAt'),str)]
  age=(datetime.datetime.now(datetime.timezone.utc)-max(dates)).total_seconds() if dates else 1e9
  result['Shared public news freshness']='ok' if -300<=age<=86400 else 'stale_or_empty'
 except Exception:result['Shared public news freshness']='unavailable'
 return result

def inspect():
 failures=[];now=datetime.datetime.now(datetime.timezone.utc)
 try:
  with urllib.request.urlopen('http://127.0.0.1:3100/readyz',timeout=5) as r:
   if r.status!=200:failures.append('Gateway readiness')
 except Exception:failures.append('Gateway readiness')
 statuses={}
 for name in ['masanawa-gateway-1','masanawa-postgres-1','masanawa-ops-1','masanawa-proxy-1','masanawa-worker-1','masanawa-whatsapp-call-gateway-1']:
  r=subprocess.run(['docker','inspect','--format','{{json .State}}',name],capture_output=True,text=True,timeout=5)
  if r.returncode:failures.append(name);continue
  state=json.loads(r.stdout);statuses[name]={'running':state.get('Running') is True,'healthy':state.get('Health',{}).get('Status','healthy')=='healthy','oom':state.get('OOMKilled') is True}
  if not statuses[name]['running'] or not statuses[name]['healthy'] or statuses[name]['oom']:failures.append(name)
 memory={row.split(':',1)[0]:int(row.split()[1]) for row in Path('/proc/meminfo').read_text().splitlines() if row.startswith(('MemTotal:','MemAvailable:'))}
 if memory['MemAvailable']<180*1024:failures.append('Low host memory')
 usage=shutil.disk_usage(ROOT);disk=round(usage.used*100/usage.total,1)
 if disk>85:failures.append('Low disk space')
 backup=ROOT/'backup-last-success.json';backup_age=None
 if backup.exists():backup_age=round((now-datetime.datetime.fromisoformat(json.loads(backup.read_text())['uploadedAt'])).total_seconds()/3600,2)
 if backup_age is None or backup_age>26:failures.append('Encrypted backup overdue')
 release,release_problem=deployment_record(now)
 if release_problem:failures.append(release_problem)
 failures.extend(check_release_images(release))
 try:
  config=env_file(ROOT/'compose.env');runtime=env_file(Path(config['MASANAWA_RUNTIME_ENV_FILE']))
  public_checks=remote_checks(runtime)
 except Exception:public_checks={'Public/provider monitoring':'configuration_unavailable'}
 failures.extend(name+': '+status for name,status in public_checks.items() if status!='ok')
 return {'checkedAt':now.isoformat(),'failures':failures,'services':statuses,'availableMemoryKiB':memory['MemAvailable'],'diskUsedPercent':disk,'backupAgeHours':backup_age,'release':release,'publicChecks':public_checks}

def main():
 os.umask(0o077)
 with (ROOT/'monitor.lock').open('w') as lock:
  fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
  state_path=ROOT/'monitor-state.json';previous=json.loads(state_path.read_text()) if state_path.exists() else {}
  try:status=inspect()
  except Exception:status={'checkedAt':datetime.datetime.now(datetime.timezone.utc).isoformat(),'failures':['Monitoring probe unavailable']}
  status['lastAlertAt']=previous.get('lastAlertAt')
  # Alert transitions or persistent failures at most once every six hours.
  age=(datetime.datetime.now(datetime.timezone.utc)-datetime.datetime.fromisoformat(status['lastAlertAt'])).total_seconds() if status['lastAlertAt'] else 1e9
  if status['failures'] and (status['failures']!=previous.get('failures') or age>21600):
   try:
    config=env_file(ROOT/'compose.env');runtime=env_file(Path(config['MASANAWA_RUNTIME_ENV_FILE']))
    to=runtime.get('MASANAWA_MONITOR_EMAIL');key=runtime.get('RESEND_API_KEY');sender=runtime.get('MASANAWA_AUTH_EMAIL_FROM')
    if to and key and sender:
     request=urllib.request.Request('https://api.resend.com/emails',data=json.dumps({'from':sender,'to':[to],'subject':'ChatMeUp pilot needs attention','text':'Checks requiring attention: '+', '.join(status['failures'])+'. Inspect private server status and backup records.'}).encode(),headers={'Authorization':'Bearer '+key,'Content-Type':'application/json','Idempotency-Key':'masanawa-monitor-'+hashlib.sha256((status['checkedAt'][:13]+','.join(status['failures'])).encode()).hexdigest()},method='POST')
     with urllib.request.build_opener(NoRedirect()).open(request,timeout=10) as response:
      if response.status in [200,201]:status['lastAlertAt']=status['checkedAt']
    else:status['alertDelivery']='not_configured'
   except Exception:status['alertDelivery']='unconfirmed'
  with tempfile.NamedTemporaryFile(dir=ROOT,delete=False) as f:
   f.write(json.dumps(status).encode());f.flush();os.fsync(f.fileno());name=f.name
  os.chmod(name,0o600);os.replace(name,state_path)
  print('Monitor complete; attention required.' if status['failures'] else 'Monitor complete; checks healthy.')
if __name__=='__main__':main()
