"""Run with python3 -m unittest discover -s scripts/reliability -p '*_test.py'."""
import ctypes.util
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from urllib.parse import quote

HELPER = Path(__file__).with_name('libpq-environment.py')


@unittest.skipUnless(ctypes.util.find_library('pq'), 'libpq client is required')
class ConnectionEnvironmentTests(unittest.TestCase):
    def prepare(self, value):
        env = dict(os.environ, REHEARSAL_CONNECTION=value)
        return subprocess.run([sys.executable, str(HELPER), 'REHEARSAL_CONNECTION'],
                              env=env, text=True, capture_output=True)

    def decoded(self, value):
        result = self.prepare(value)
        self.assertEqual(result.returncode, 0, result.stderr)
        with tempfile.TemporaryDirectory() as directory:
            private = Path(directory) / 'connection.env'
            private.write_text(result.stdout)
            private.chmod(0o600)
            code = "import os,json;print(json.dumps({k:v for k,v in os.environ.items() if k.startswith('PG')}))"
            result = subprocess.run(['bash', '-c', '. "$1"; exec "$2" -c "$3"',
                                     'rehearsal', str(private), sys.executable, code],
                                    env=dict(os.environ, PGPASSWORD='stale', PGDATABASE='stale'),
                                    text=True, capture_output=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            return json.loads(result.stdout)

    def test_uri_decodes_host_user_database_and_encoded_password(self):
        value = self.decoded('postgresql://tester:p%40ss%3Aw%2Ford@localhost:5439/private_db?sslmode=verify-full')
        self.assertEqual({k:value[k] for k in ['PGHOST','PGPORT','PGUSER','PGPASSWORD','PGDATABASE','PGSSLMODE']},
                         dict(PGHOST='localhost', PGPORT='5439', PGUSER='tester',
                              PGPASSWORD='p@ss:w/ord', PGDATABASE='private_db', PGSSLMODE='verify-full'))

    def test_omitted_credentials_clear_inherited_password(self):
        self.assertNotIn('PGPASSWORD', self.decoded('postgres://localhost/rehearsal'))

    def test_ipv6_and_query_options_preserve_tls_configuration(self):
        value = self.decoded('postgres://tester@[::1]:5433/db?sslmode=require&connect_timeout=8')
        self.assertEqual((value['PGHOST'], value['PGSSLMODE'], value['PGCONNECT_TIMEOUT']), ('::1','require','8'))

    def test_keyword_connections_are_also_understood_by_libpq(self):
        self.assertEqual(self.decoded("host=localhost dbname='space name' user=tester")['PGDATABASE'], 'space name')

    def test_password_shell_syntax_is_data_and_never_executes(self):
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / 'must-not-exist'
            password = "' $(touch " + str(target) + ") `id` $HOME \\\n"
            value = self.decoded('postgres://tester:' + quote(password, safe='') + '@localhost/db')
            self.assertEqual(value['PGPASSWORD'], password)
            self.assertFalse(target.exists())

    def test_invalid_uri_never_echoes_the_input(self):
        value = 'postgres://private-user:private-password@[invalid/db'
        result = self.prepare(value)
        self.assertNotEqual(result.returncode, 0)
        self.assertEqual(result.stdout, '')
        self.assertNotIn('private-', result.stderr)


if __name__ == '__main__':
    unittest.main()
