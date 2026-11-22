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
