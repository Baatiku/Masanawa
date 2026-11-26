import importlib.util,tempfile,unittest
from pathlib import Path
spec=importlib.util.spec_from_file_location('installer',Path(__file__).with_name('install-monitor.py'))
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
class MonitorInstallationTests(unittest.TestCase):
 def test_creates_free_bounded_timer_once(self):
  with tempfile.TemporaryDirectory() as d:
   folder=Path(d)/'operations';units=Path(d)/'units';units.mkdir();calls=[]
   run=lambda args,**kw:calls.append(args)
   created=m.install(b'pass\n',folder,units,run)
   self.assertIn('masanawa-monitor.timer',created)
   self.assertIn(['systemctl','enable','--now','masanawa-monitor.timer'],calls)
   self.assertEqual((folder/'monitor.py').stat().st_mode&0o777,0o700)
   self.assertIn('MemoryMax=96M',(units/'masanawa-monitor.service').read_text())
   calls.clear();m.install(b'pass\n',folder,units,run);self.assertEqual(calls,[])
 def test_preserves_existing_schedule_and_disabled_timer(self):
  with tempfile.TemporaryDirectory() as d:
   folder=Path(d)/'operations';units=Path(d)/'units';units.mkdir();calls=[]
   for name in ('service','timer'):(units/('masanawa-monitor.'+name)).write_text('existing operator configuration')
   m.install(b'pass\n',folder,units,lambda args,**kw:calls.append(args))
   self.assertEqual(calls,[])
   self.assertEqual((units/'masanawa-monitor.timer').read_text(),'existing operator configuration')
 def test_invalid_source_cannot_replace_live_monitor(self):
  with tempfile.TemporaryDirectory() as d:
   folder=Path(d)/'operations';folder.mkdir();target=folder/'monitor.py';target.write_text('old monitor')
   with self.assertRaises(SyntaxError):m.install(b'if invalid',folder,Path(d),lambda *a,**k:None)
   self.assertEqual(target.read_text(),'old monitor')
if __name__=='__main__':unittest.main()
