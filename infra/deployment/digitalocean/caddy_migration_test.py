import importlib.util,unittest
from pathlib import Path
spec=importlib.util.spec_from_file_location('caddy',Path(__file__).with_name('caddy-migration.py'))
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
class CaddyMigrationTests(unittest.TestCase):
 def test_preserves_independent_sites_and_custom_api_body(self):
  tail='\nnews.masanawa.com {\n reverse_proxy publisher:8080\n}\nknowledge.masanawa.com {\n reverse_proxy knowledge:8081\n}\n'
  original='{$MASANAWA_API_HOST} {\n # existing custom API setting\n reverse_proxy gateway:3000\n}\n'+tail
  changed=m.migrate_caddy(original)
  self.assertIn(m.HEADER,changed)
  self.assertIn('# existing custom API setting',changed)
  self.assertTrue(changed.endswith(tail))
  self.assertEqual(m.migrate_caddy(changed),changed)
 def test_legacy_literal_header_is_supported_without_erasing_custom_routes(self):
  changed=m.migrate_caddy('api.masanawa.com {\n handle /custom {\n respond "ok"\n }\n}\n')
  self.assertIn('handle /custom',changed);self.assertIn(m.HEADER,changed)
 def test_unknown_topology_fails_without_replacing_any_site(self):
  with self.assertRaises(ValueError):m.migrate_caddy('news.masanawa.com {\n respond "preserve"\n}\n')
if __name__=='__main__':unittest.main()
