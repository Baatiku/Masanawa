"""Host release monitoring is read-only, bounded and safe for alerts."""
import datetime
import importlib.util
import json
import subprocess
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

ROOT = Path(__file__).resolve().parent
SPEC = importlib.util.spec_from_file_location('masanawa_monitor', ROOT / 'monitor.py')
monitor = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(monitor)
NOW = datetime.datetime(2026, 11, 22, 18, 0, tzinfo=datetime.timezone.utc)
SHA = 'a' * 40
RECORD = {'status': 'deployed', 'releaseSha': SHA, 'requestId': 'release_test_1234'}


class ProductionReleaseMonitoringTests(unittest.TestCase):
    def record(self, payload=None, *, age_minutes=0):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        path = Path(self.directory.name) / 'state.json'
        if payload is not None:
            path.write_text(json.dumps(payload))
            import os
            os.utime(path, (NOW.timestamp() - age_minutes * 60, NOW.timestamp() - age_minutes * 60))
        return path

    def test_missing_receipt_cannot_be_reported_as_deployed(self):
        with patch.object(monitor, 'DEPLOY_STATE', self.record()):
            result, failure = monitor.deployment_record(NOW)
        self.assertEqual(result['status'], 'unknown')
        self.assertEqual(failure, 'Release receipt unavailable')

    def test_deployed_receipt_is_metadata_not_proof_of_container_parity(self):
        with patch.object(monitor, 'DEPLOY_STATE', self.record(RECORD, age_minutes=3)):
            result, failure = monitor.deployment_record(NOW)
        self.assertIsNone(failure)
        self.assertEqual(result['releaseSha'], SHA)
        self.assertEqual(result['ageMinutes'], 3)

    def test_failure_and_stale_running_alert(self):
        for status, age, expected in [
            ('failed', 3, 'Production release failed'),
            ('running', 60, 'Production release stalled'),
            ('running', 2, None),
        ]:
            with self.subTest(status=status, age=age), patch.object(
                monitor, 'DEPLOY_STATE', self.record({**RECORD, 'status': status}, age_minutes=age)
            ):
                result, failure = monitor.deployment_record(NOW)
                self.assertEqual(result['status'], status)
                self.assertEqual(failure, expected)

    def test_malformed_receipts_are_never_echoed(self):
        for invalid in [
            {**RECORD, 'releaseSha': 'secret-value'},
            {**RECORD, 'status': 'success'},
            {**RECORD, 'requestId': '../unsafe'},
        ]:
            with self.subTest(invalid=invalid), patch.object(monitor, 'DEPLOY_STATE', self.record(invalid)):
                result, failure = monitor.deployment_record(NOW)
                self.assertEqual(result, {'status': 'unknown'})
                self.assertEqual(failure, 'Release receipt invalid')

    def test_image_parity_detects_missing_or_stale_services(self):
        def fake_run(args, **_):
            service = args[-1].removeprefix('masanawa-').removesuffix('-1')
            suffix = SHA if service != 'worker' else 'b' * 40
            return subprocess.CompletedProcess(args, 0, f'ghcr.io/baatiku/masanawa-do-pilot-{service}:{suffix}\n', '')
        with patch.object(monitor.subprocess, 'run', side_effect=fake_run):
            self.assertEqual(monitor.check_release_images(RECORD), ['Release image mismatch: worker'])
        self.assertEqual(monitor.check_release_images({'status': 'running'}), [])


if __name__ == '__main__':
    unittest.main()

class PublicProviderMonitoringTests(unittest.TestCase):
 def test_read_only_provider_and_public_checks_never_generate_or_send_secrets_to_web(self):
  class Response:
   def __init__(self,status=200,body=b'{}'):self.status=status;self.body=body
   def __enter__(self):return self
   def __exit__(self,*args):pass
   def read(self,*args):return self.body
  seen=[]
  class Opener:
   def open(self,request,timeout):
    url=request.full_url if hasattr(request,'full_url') else request
    seen.append((url,request))
    if url.endswith('/agent/live/ngn/stream'):
     raise monitor.urllib.error.HTTPError(url,401,'Unauthorized',{},None)
    if url.endswith('/api/news'):
     current=datetime.datetime.now(datetime.timezone.utc).isoformat()
     return Response(body=json.dumps({'items':[{'publishedAt':current}]}).encode())
    return Response()
  with patch.object(monitor.urllib.request,'build_opener',return_value=Opener()):
   result=monitor.remote_checks({'MASANAWA_GEMINI_API_KEY':'fixture-key','MASANAWA_PUBLIC_BASE_URL':'https://api.chatmeup.online','MASANAWA_WEB_BASE_URL':'https://app.chatmeup.online'})
  self.assertTrue(all(value=='ok' for value in result.values()),result)
  self.assertEqual(seen[0][0],'https://generativelanguage.googleapis.com/v1beta/models?pageSize=1')
  self.assertEqual(seen[0][1].get_header('X-goog-api-key'),'fixture-key')
  self.assertTrue(all(not hasattr(request,'headers') or not any(k.lower()=='x-goog-api-key' for k in request.headers) for _,request in seen[1:]))
  self.assertTrue(all('generateContent' not in url for url,_ in seen))
 def test_public_failure_is_not_reported_as_provider_success(self):
  class Opener:
   def open(self,*args,**kwargs):raise OSError('unreachable')
  with patch.object(monitor.urllib.request,'build_opener',return_value=Opener()):
   result=monitor.remote_checks({})
  self.assertTrue(all(status!='ok' for status in result.values()))
