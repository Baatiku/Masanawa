import importlib.util
import json
from pathlib import Path
import tempfile
import unittest

spec = importlib.util.spec_from_file_location('activation', Path(__file__).with_name('activate-payments-env.py'))
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

class ActivationTest(unittest.TestCase):
    def setUp(self):
        self.folder = tempfile.TemporaryDirectory()
        self.addCleanup(self.folder.cleanup)
        self.root = Path(self.folder.name)
        self.runtime = self.root / 'runtime.env'
        self.runtime.write_text('FLUTTERWAVE_SECRET_KEY=fixture-private\nFLUTTERWAVE_WEBHOOK_SECRET_HASH=fixture-provider-hash\nBILLSTACK_SECRET_KEY=fixture-billstack\nMASANAWA_OPS_ADMIN_GRANTS_JSON=[]\nUNRELATED_SETTING=preserved\n')
        self.runtime.chmod(0o600)
        (self.root / 'compose.env').write_text('MASANAWA_RUNTIME_ENV_FILE=' + str(self.runtime) + '\n')
        self.qualification = self.root / 'qualification.json'
        self.qualification.write_text(json.dumps(dict(qualified=True,available=1,approved=[dict(enabled=True)],webhookUrl='https://api.masanawa.com/v1/webhooks/flutterwave')))
        self.qualification.chmod(0o600)

    def test_activation_preserves_credentials_grants_and_creates_only_internal_signing_keys(self):
        module.activate(self.qualification, self.root)
        values = module.parse(self.runtime.read_text().splitlines())
        self.assertEqual(values['FLUTTERWAVE_SECRET_KEY'], 'fixture-private')
        self.assertEqual(values['FLUTTERWAVE_WEBHOOK_SECRET_HASH'], 'fixture-provider-hash')
        self.assertEqual(values['BILLSTACK_SECRET_KEY'], 'fixture-billstack')
        self.assertEqual(values['MASANAWA_OPS_ADMIN_GRANTS_JSON'], '[]')
        self.assertEqual(values['UNRELATED_SETTING'], 'preserved')
        self.assertEqual(values['MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED'], 'true')
        self.assertEqual(values['MASANAWA_NGN_DATA_PURCHASE_ENABLED'], 'true')
        self.assertEqual(len(values['MASANAWA_GB_SEND_REVIEW_SECRET']), 64)
        self.assertEqual(self.runtime.stat().st_mode & 0o777, 0o600)
        module.activate(self.qualification, self.root)
        self.assertEqual(module.parse(self.runtime.read_text().splitlines())['MASANAWA_GB_SEND_REVIEW_SECRET'], values['MASANAWA_GB_SEND_REVIEW_SECRET'])

    def test_missing_provider_credentials_does_not_write_flags(self):
        self.runtime.write_text('BILLSTACK_SECRET_KEY=fixture\n')
        before = self.runtime.read_bytes()
        with self.assertRaisesRegex(SystemExit, 'FLUTTERWAVE_SECRET_KEY'):
            module.activate(self.qualification, self.root)
        self.assertEqual(self.runtime.read_bytes(), before)

    def test_duplicate_and_publicly_readable_files_fail_without_mutation(self):
        with self.runtime.open('a') as out:
            out.write('BILLSTACK_SECRET_KEY=duplicate\n')
        before = self.runtime.read_bytes()
        with self.assertRaisesRegex(SystemExit, 'Duplicate'):
            module.activate(self.qualification, self.root)
        self.assertEqual(self.runtime.read_bytes(), before)
        self.qualification.chmod(0o644)
        with self.assertRaisesRegex(SystemExit, 'private'):
            module.activate(self.qualification, self.root)

if __name__ == '__main__':
    unittest.main()
