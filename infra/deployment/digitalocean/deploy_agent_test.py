import importlib.util
import json
import os
import subprocess
import tempfile
import threading
import unittest
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from unittest.mock import patch

ROOT = Path(__file__).resolve().parent
SPEC = importlib.util.spec_from_file_location('deploy_agent', ROOT / 'deploy-agent.py')
agent = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(agent)
SHA = 'a' * 40
REQUEST = {'requestId': 'release_test_1234', 'releaseSha': SHA, 'whatsappCallsEnabled': True}


class DeploymentAgentTests(unittest.TestCase):
    def test_request_only_accepts_sha_and_the_call_setting(self):
        self.assertEqual(agent.parse_request(json.dumps(REQUEST)), REQUEST)
        for edit in [{'releaseSha': 'main'}, {'command': 'bash'}, {'whatsappCallsEnabled': 'true'}]:
            with self.assertRaises(ValueError):
                agent.parse_request(json.dumps({**REQUEST, **edit}))

    def test_accepts_only_main_ancestry_and_successful_exact_release_runs(self):
        runs = [{'head_sha': SHA, 'head_branch': 'main', 'path': path, 'event': 'push', 'conclusion': 'success'}
                for path in agent.REQUIRED_WORKFLOWS]
        with patch.object(agent, 'read_url', side_effect=[b'{"status":"diverged"}']) as read:
            self.assertFalse(agent.release_is_ready(SHA))
            read.assert_called_once()
        for first, expected in [(runs[0], True), ({**runs[0], 'head_sha': 'b' * 40}, False),
                                ({**runs[0], 'conclusion': 'failure'}, False)]:
            responses = [b'{"status":"ahead"}', json.dumps({'workflow_runs': [first, runs[1]]}).encode()]
            with patch.object(agent, 'read_url', side_effect=responses):
                self.assertEqual(agent.release_is_ready(SHA), expected)

    def test_records_failure_and_does_not_replay_a_failed_request(self):
        payload = json.dumps(REQUEST).encode()
        with tempfile.TemporaryDirectory() as path, patch.object(agent, 'STATE', Path(path)), \
                patch.object(agent, 'read_url', side_effect=[payload, b'#!/bin/bash\nexit 1', payload]), \
                patch.object(agent, 'release_is_ready', return_value=True), \
                patch.object(agent.subprocess, 'run', side_effect=[None, subprocess.CompletedProcess([], 1)]) as run:
            with self.assertRaises(RuntimeError):
                agent.poll()
            agent.poll()
            self.assertEqual(run.call_count, 2)
            self.assertEqual(run.call_args.args[0][-2:], [SHA, 'true'])
            self.assertEqual(json.loads((Path(path) / 'state.json').read_text())['status'], 'failed')

    def test_worker_probe_retries_after_connection_refused(self):
        class Handler(BaseHTTPRequestHandler):
            def do_GET(self):
                self.send_response(200)
                self.end_headers()

            def log_message(self, *_args):
                pass

        server = ThreadingHTTPServer(('127.0.0.1', 0), Handler, bind_and_activate=False)
        server.server_bind()
        serve = threading.Timer(0.5, lambda: (server.server_activate(), server.serve_forever()))
        serve.start()
        try:
            source = (ROOT / 'deploy-whatsapp-live.sh').read_text()
            probe = source[source.index('probe(){'):source.index('\n\n"${dc[@]}" config')]
            result = subprocess.run(['bash', '-c', 'docker(){ shift 2; "$@"; }\n' + probe +
                                     '\nprobe worker 3001 /readyz=200'], check=True, timeout=10,
                                    env={**os.environ, 'MASANAWA_WORKER_HOST': '0.0.0.0',
                                         'MASANAWA_WORKER_PORT': str(server.server_port)}, capture_output=True)
            self.assertIn(b'worker /readyz HTTP 200', result.stdout)
        finally:
            server.shutdown()
            server.server_close()
            serve.join()


if __name__ == '__main__':
    unittest.main()
