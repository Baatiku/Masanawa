import importlib.util
import json
import contextlib
import io
from pathlib import Path
import tempfile
import unittest

spec = importlib.util.spec_from_file_location('activation', Path(__file__).with_name('activate-payments-env.py'))
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

class RuntimeFixture(unittest.TestCase):
    def setUp(self):
        self.folder = tempfile.TemporaryDirectory()
        self.addCleanup(self.folder.cleanup)
        self.root = Path(self.folder.name)
        self.runtime = self.root / 'runtime.env'
        self.runtime.write_text('FLUTTERWAVE_SECRET_KEY=fixture-private\nFLUTTERWAVE_WEBHOOK_SECRET_HASH=fixture-provider-hash\nBILLSTACK_SECRET_KEY=fixture-billstack\nMASANAWA_OPS_ADMIN_GRANTS_JSON=[]\nUNRELATED_SETTING=preserved\nMASANAWA_PLATFORM_TENANT_ID=tenant_00000000-0000-4000-8000-000000000001\nFLUTTERWAVE_BILLS_ENABLED=false\n')
        self.runtime.chmod(0o600)
        (self.root / 'compose.env').write_text('MASANAWA_RUNTIME_ENV_FILE=' + str(self.runtime) + '\n')
        self.qualification = self.root / 'qualification.json'
        self.qualification.write_text(json.dumps(dict(qualified=True,available=1,approved=[dict(enabled=True)],webhookUrl='https://api.masanawa.com/v1/webhooks/flutterwave')))
        self.qualification.chmod(0o600)

class ActivationTest(RuntimeFixture):
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

class CoreActivationTest(RuntimeFixture):
    def test_core_does_not_depend_on_flutterwave_or_change_its_flags(self):
        self.runtime.write_text('\n'.join(line for line in self.runtime.read_text().splitlines() if not line.startswith(('FLUTTERWAVE_SECRET_KEY=', 'FLUTTERWAVE_WEBHOOK_SECRET_HASH='))) + '\n')
        module.activate_core(self.root)
        values = module.parse(self.runtime.read_text().splitlines())
        self.assertEqual(values['MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED'], 'true')
        self.assertEqual(values['FLUTTERWAVE_BILLS_ENABLED'], 'false')
        self.assertNotIn('MASANAWA_NGN_DATA_PURCHASE_ENABLED', values)
        self.assertNotIn('FLUTTERWAVE_SECRET_KEY', values)
        self.assertEqual(len(values['MASANAWA_GB_SEND_REVIEW_SECRET']), 64)
        self.assertEqual(values['MASANAWA_OPS_ADMIN_GRANTS_JSON'], '[]')

    def test_missing_billstack_never_invents_a_provider_key_or_enables_deposits(self):
        self.runtime.write_text('MASANAWA_PLATFORM_TENANT_ID=tenant_00000000-0000-4000-8000-000000000001\nFLUTTERWAVE_BILLS_ENABLED=false\n')
        module.activate_core(self.root)
        values = module.parse(self.runtime.read_text().splitlines())
        self.assertNotIn('MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED', values)
        self.assertNotIn('MASANAWA_BILLSTACK_SECRET_KEY', values)
        self.assertEqual(values['FLUTTERWAVE_BILLS_ENABLED'], 'false')
        self.assertEqual(len(values['MASANAWA_GB_SEND_REVIEW_SECRET']), 64)

    def test_weak_existing_key_does_not_partially_mutate_settings(self):
        with self.runtime.open('a') as f:
            f.write('MASANAWA_GB_SEND_REVIEW_SECRET=weak\n')
        before = self.runtime.read_bytes()
        with self.assertRaisesRegex(SystemExit, 'too short'):
            module.activate_core(self.root)
        self.assertEqual(self.runtime.read_bytes(), before)

class QualificationSummaryTest(RuntimeFixture):
    def test_summary_prints_only_bounded_status_and_allowlisted_missing_names(self):
        log = self.root / 'qualification.log'
        log.write_text('Authorization: Bearer fixture-private-token\nMASANAWA_QUALIFICATION_RESULT ' + json.dumps(dict(event='payments.qualification.failed',stage='categories',code='provider_or_catalogue_unavailable',httpStatus=403,missing=['FLUTTERWAVE_SECRET_KEY','fixture-private-token'])) + '\n')
        out = io.StringIO()
        with contextlib.redirect_stdout(out):
            module.qualification_summary(log)
        self.assertIn('categories', out.getvalue())
        self.assertIn('403', out.getvalue())
        self.assertIn('FLUTTERWAVE_SECRET_KEY', out.getvalue())
        self.assertNotIn('fixture-private-token', out.getvalue())

    def test_database_failure_code_is_bounded_and_private_payload_is_not_printed(self):
        log=self.root/'qualification.log'
        for code,expected in [('42P01',True),('fixture-private-token',False)]:
            log.write_text('MASANAWA_QUALIFICATION_RESULT '+json.dumps(dict(event='payments.qualification.failed',stage='approval_table',code='provider_or_catalogue_unavailable',failureCode=code,detail='private fixture payload')))
            out=io.StringIO()
            with contextlib.redirect_stdout(out):module.qualification_summary(log)
            self.assertIn('approval_table',out.getvalue())
            self.assertEqual('Failure code:' in out.getvalue(),expected)
            self.assertNotIn('private',out.getvalue())

    def test_unclassified_or_unfinished_errors_never_print_log_payloads(self):
        log = self.root / 'qualification.log'
        for raw in ['private-provider-response', 'MASANAWA_QUALIFICATION_RESULT ' + json.dumps(dict(event='payments.qualification.failed',stage='secret-stage',code='secret-code',httpStatus='secret-status',missing='secret-missing'))]:
            log.write_text(raw)
            out = io.StringIO()
            with contextlib.redirect_stdout(out):
                module.qualification_summary(log)
            self.assertNotIn('secret-', out.getvalue())
            self.assertNotIn('private-provider-response', out.getvalue())

if __name__ == '__main__':
    unittest.main()
