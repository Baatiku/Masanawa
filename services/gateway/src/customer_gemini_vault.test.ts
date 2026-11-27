import {expect,it,vi} from 'vitest';
import {createCustomerGeminiCipher,normalizeCustomerGeminiKey,probeCustomerGeminiKey} from './customer_gemini_vault.js';
import {validCustomerGeminiEnrollment} from './customer_gemini_routes.js';
const key='fixture-only-not-a-real-provider-key',actor={tenantId:'tenant-a',userId:'user-a'};
it('encrypts with fresh nonces, binds ciphertext to the account, and never serializes plaintext',()=>{
 const cipher=createCustomerGeminiCipher(Buffer.alloc(32,7));
 const a=cipher.seal(actor,key),b=cipher.seal(actor,key);
 expect(a.nonce.equals(b.nonce)).toBe(false);expect(a.ciphertext.includes(Buffer.from(key))).toBe(false);
 const secret=cipher.open(actor,a);expect(secret.use(v=>v)).toBe(key);expect(JSON.stringify(secret)).toBe('"[REDACTED]"');
 expect(()=>cipher.open({...actor,userId:'user-b'},a)).toThrow('gemini_key_unavailable');
 expect(()=>cipher.open({...actor,tenantId:'tenant-b'},a)).toThrow('gemini_key_unavailable');
 expect(()=>cipher.open(actor,{...a,tag:Buffer.alloc(16)})).toThrow('gemini_key_unavailable');
});
it('requires explicit enrollment consent and rejects malformed keys and scope fields',()=>{
 expect(normalizeCustomerGeminiKey(' '+key+' ')).toBe(key);
 for(const bad of ['',null,'bad key','short','a'.repeat(257)])expect(()=>normalizeCustomerGeminiKey(bad)).toThrow('invalid_gemini_key');
 expect(validCustomerGeminiEnrollment({apiKey:key,consentVersion:1})).toBe(true);
 for(const bad of [{apiKey:key},{apiKey:key,consentVersion:1,userId:'other'},{apiKey:key,consentVersion:2}])expect(validCustomerGeminiEnrollment(bad)).toBe(false);
});
it('probes only fixed Google origin, uses a secret header and maps failures without leaking content',async()=>{
 const mock=vi.fn(async(_url:unknown,_init:unknown)=>Response.json({candidates:[{}]}));
 await probeCustomerGeminiKey(key,'gemini-test',mock as typeof fetch);
 const [url,init]=mock.mock.calls[0]! as [string,RequestInit];
 expect(url).toBe('https://generativelanguage.googleapis.com/v1beta/models/gemini-test:generateContent');
 expect(url).not.toContain(key);expect(init.redirect).toBe('error');expect((init.headers as Record<string,string>)['x-goog-api-key']).toBe(key);expect(init.body).not.toContain(key);
 for(const [status,code] of [[403,'gemini_key_rejected'],[429,'gemini_key_quota_limited'],[500,'gemini_key_service_unavailable']] as const){
  await expect(probeCustomerGeminiKey(key,'gemini-test',async()=>new Response(key,{status}))).rejects.toThrow(code);
 }
 await expect(probeCustomerGeminiKey(key,'gemini-test',async()=>{throw Error(key)})).rejects.toThrow('gemini_key_service_unavailable');
});
