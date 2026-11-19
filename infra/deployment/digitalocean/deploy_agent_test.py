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

    def test_low_disk_reclaims_only_repullable_unreferenced_release_images(self):
        source = (ROOT / 'deploy-whatsapp-live.sh').read_text()
        cleanup = source[source.index('reclaim_release_images(){'):source.index('\ndocker_root=')]
        docker = r'''docker(){
          local prefix=ghcr.io/baatiku/masanawa-do-pilot-worker
          case "$1 $2" in
            "image ls") printf '%s\n' postgres:18 "$prefix:$old_rev" "$prefix:$release_sha" \
              "$prefix:$parent_rev" "$prefix:$obsolete_rev" "$prefix:$used_rev" \
              "$prefix:dccebe9c61bc783c1baa4993de415f241a20f828" ;;
            "ps -aq") [[ "$4" != *"$used_rev" ]] || echo stopped-container ;;
            "image rm") printf '%s\n' "$3" >>"$removals" ;;
            *) return 2 ;;
          esac
        }
        timeout(){ [[ "$5" == *"$obsolete_rev" ]]; }
        disk_free(){ echo 0; }
        docker_root=/unused pull_reserve=1
        old_gateway=none old_ops=none
        old_worker="ghcr.io/baatiku/masanawa-do-pilot-worker:$old_rev"
'''
        with tempfile.TemporaryDirectory() as directory:
            removals = Path(directory) / 'removals'
            env = {**os.environ, 'removals': str(removals), 'old_rev': 'a' * 40,
                   'release_sha': 'b' * 40, 'parent_rev': 'c' * 40,
                   'obsolete_rev': 'd' * 40, 'used_rev': 'e' * 40}
            subprocess.run(['bash', '-e', '-c', docker + cleanup + '\nreclaim_release_images'],
                           env=env, check=True, timeout=10, capture_output=True)
            self.assertEqual(removals.read_text(),
                             'ghcr.io/baatiku/masanawa-do-pilot-worker:' + 'd' * 40 + '\n')

    def test_worker_memory_override_has_only_the_worker_and_keeps_higher_limits(self):
        source = (ROOT / 'deploy-whatsapp-live.sh').read_text()
        function = source[source.index('write_worker_override(){'):source.index('\nold_worker_memory=')]
        with tempfile.TemporaryDirectory() as directory:
            override = Path(directory) / 'worker-override.yaml'
            for previous, expected in [(320, 448), (448, 448), (512, 512)]:
                subprocess.run(['bash', '-c', function + '\nwrite_worker_override "$@"',
                                'fixture', str(previous * 1024 * 1024), str(override)], check=True, timeout=10)
                self.assertEqual(override.read_text(),
                                 f'services:\n  worker:\n    mem_limit: {expected * 1024 * 1024}\n')

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
            probe = source[source.index('probe(){'):source.index("\n\nstage='validate Worker memory override'")]
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
