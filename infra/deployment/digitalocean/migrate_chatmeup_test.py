import importlib.util, tempfile, unittest
from pathlib import Path
spec=importlib.util.spec_from_file_location('migration',Path(__file__).with_name('migrate-chatmeup.py'))
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
class MigrationTest(unittest.TestCase):
 def test_preserves_credentials_and_adds_only_origins(self):
  with tempfile.TemporaryDirectory() as d:
   c=Path(d)/'compose.env';r=Path(d)/'runtime.env'
   c.write_text('MASANAWA_API_HOST=api.masanawa.com\nPOSTGRES_DB=masanawa\n')
   r.write_text('MASANAWA_WEB_ALLOWED_ORIGINS=https://app.masanawa.com\nMASANAWA_WHATSAPP_SESSION_KEY=fixture-key\n')
   c.chmod(0o600);r.chmod(0o600)
   backup=m.migrate(c,r)
   self.assertIn('POSTGRES_DB=masanawa',c.read_text());self.assertIn('MASANAWA_API_HOST=api.masanawa.com',c.read_text())
   self.assertIn('https://app.masanawa.com,https://app.chatmeup.online',r.read_text())
   self.assertIn('MASANAWA_WHATSAPP_SESSION_KEY=fixture-key',r.read_text())
   self.assertTrue((backup/'runtime.env').exists())
   m.migrate(c,r);self.assertEqual(r.read_text().count('https://app.chatmeup.online'),1)
if __name__=='__main__':unittest.main()
