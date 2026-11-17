import base64,hashlib,importlib.util,json,os,subprocess,tempfile,unittest
from pathlib import Path
spec=importlib.util.spec_from_file_location('feature_runtime',Path(__file__).with_name('install-feature-runtime.py'));m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
class FeatureRuntime(unittest.TestCase):
 def test_verified_import_preserves_provider_flags_and_private_permissions(self):
  with tempfile.TemporaryDirectory() as folder:
   root=Path(folder);(root/'billstack-transfer').mkdir();key=root/'billstack-transfer/private.pem';subprocess.run(['openssl','genpkey','-algorithm','RSA','-pkeyopt','rsa_keygen_bits:2048','-out',str(key)],check=True,capture_output=True);key.chmod(0o600)
   public=subprocess.run(['openssl','pkey','-in',str(key),'-pubout','-outform','DER'],check=True,capture_output=True).stdout;pub=root/'public.der';pub.write_bytes(public);trusted=hashlib.sha256(public).hexdigest();old=m.TRUSTED;m.TRUSTED=trusted
   try:
    runtime=root/'runtime.env';runtime.write_text('FLUTTERWAVE_SECRET_KEY=fixture-existing-provider\nMASANAWA_NGN_DATA_PURCHASE_ENABLED=true\n');runtime.chmod(0o600);(root/'compose.env').write_text('MASANAWA_RUNTIME_ENV_FILE='+str(runtime)+'\n');plain=json.dumps({'name':'MASANAWA_MAIL_INGEST_SECRET','value':'fixture-only-'+('a'*32)}).encode();cipher=subprocess.run(['openssl','pkeyutl','-encrypt','-pubin','-keyform','DER','-inkey',str(pub),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256','-pkeyopt','rsa_mgf1_md:sha256'],input=plain,check=True,capture_output=True).stdout;item={'name':'MASANAWA_MAIL_INGEST_SECRET','ciphertext':base64.b64encode(cipher).decode(),'ciphertextSha256':hashlib.sha256(cipher).hexdigest(),'plaintextSha256':hashlib.sha256(plain).hexdigest()};payload={'trustedSha':trusted,'items':[item]};self.assertEqual(m.apply(payload,root,os.getuid()),1);self.assertIn('FLUTTERWAVE_SECRET_KEY=fixture-existing-provider\nMASANAWA_NGN_DATA_PURCHASE_ENABLED=true\n',runtime.read_text());self.assertEqual(runtime.stat().st_mode&0o777,0o600)
    before=runtime.read_bytes()
    for bad in [{**payload,'trustedSha':'0'*64},{**payload,'items':[{**item,'name':'FLUTTERWAVE_SECRET_KEY'}]},{**payload,'items':[{**item,'ciphertextSha256':'0'*64}]},{**payload,'items':[item,item]}]:
     with self.assertRaises(ValueError):m.apply(bad,root,os.getuid())
     self.assertEqual(runtime.read_bytes(),before)
   finally:m.TRUSTED=old
if __name__=='__main__':unittest.main()
