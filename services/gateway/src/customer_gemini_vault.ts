import {createCipheriv,createDecipheriv,randomBytes,randomUUID} from 'node:crypto';
import {withTransaction,type Pool,type PoolClient} from '@masanawa/postgres';
import {CredentialSecret} from '@masanawa/security';

type Actor={tenantId:string;userId:string};
type Sealed={ciphertext:Buffer;nonce:Buffer;tag:Buffer};
export class CustomerGeminiError extends Error{
 constructor(readonly statusCode:number,readonly code:string){super(code);}
}
export function normalizeCustomerGeminiKey(input:unknown):string{
 if(typeof input!=='string'||! /^[A-Za-z0-9_.-]{20,256}$/.test(input.trim()))throw new CustomerGeminiError(400,'invalid_gemini_key');
 return input.trim();
}
const aad=(a:Actor)=>Buffer.from(JSON.stringify(['chatmeup-customer-gemini-v1',a.tenantId,a.userId]),'utf8');
export function createCustomerGeminiCipher(master:Buffer){
 if(master.length!==32)throw new TypeError('Customer Gemini vault requires a 32-byte encryption key');
 const material=Buffer.from(master);
 return {
  seal(a:Actor,secret:string):Sealed{
   const nonce=randomBytes(12),cipher=createCipheriv('aes-256-gcm',material,nonce);
   cipher.setAAD(aad(a));
   const ciphertext=Buffer.concat([cipher.update(secret,'utf8'),cipher.final()]);
   return {ciphertext,nonce,tag:cipher.getAuthTag()};
  },
  open(a:Actor,s:Sealed):CredentialSecret{
   try{const decipher=createDecipheriv('aes-256-gcm',material,s.nonce);
    decipher.setAAD(aad(a));decipher.setAuthTag(s.tag);
    return CredentialSecret.fromString(Buffer.concat([decipher.update(s.ciphertext),decipher.final()]).toString('utf8'));
   }catch{throw new CustomerGeminiError(503,'gemini_key_unavailable');}
  }
 };
}
/** Actual bounded inference, with no user content. Never put credentials in the
 * URL, follow redirects, or return provider diagnostics to customers/logs. */
export async function probeCustomerGeminiKey(key:string,model:string,fetchImpl:typeof fetch=fetch):Promise<void>{
 if(!/^gemini-[a-z0-9.-]{3,90}$/.test(model))throw new CustomerGeminiError(503,'gemini_key_service_unavailable');
 let response:Response;
 try{
  response=await fetchImpl('https://generativelanguage.googleapis.com/v1beta/models/'+encodeURIComponent(model)+':generateContent',{
   method:'POST',redirect:'error',signal:AbortSignal.timeout(8000),
   headers:{'content-type':'application/json','x-goog-api-key':key},
   body:JSON.stringify({contents:[{parts:[{text:'Reply with OK.'}]}],generationConfig:{maxOutputTokens:16}})
  });
 }catch{throw new CustomerGeminiError(503,'gemini_key_service_unavailable');}
 if(!response.ok){
  await response.body?.cancel().catch(()=>{});
  if(response.status===400||response.status===401||response.status===403)throw new CustomerGeminiError(422,'gemini_key_rejected');
  if(response.status===429)throw new CustomerGeminiError(429,'gemini_key_quota_limited');
  throw new CustomerGeminiError(503,'gemini_key_service_unavailable');
 }
 const result=await response.json().catch(()=>null) as {candidates?:unknown[]}|null;
 if(!Array.isArray(result?.candidates)||!result.candidates.length)throw new CustomerGeminiError(503,'gemini_key_service_unavailable');
}
async function active(c:PoolClient,a:Actor){
 const row=await c.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active' FOR UPDATE",[a.tenantId,a.userId]);
 if(!row.rows.length)throw new CustomerGeminiError(403,'inactive_account');
}
export function createCustomerGeminiVault(input:{pool:Pool;master:Buffer;model:string;fetchImpl?:typeof fetch}){
 const {pool,model}=input,cipher=createCustomerGeminiCipher(input.master);
 const status=async(a:Actor)=>{
  const r=(await pool.query<{key_suffix:string|null;verified_at:Date|null}>(`SELECT g.key_suffix,g.verified_at FROM security.customer_gemini_credentials g
    JOIN identity.users u USING(tenant_id,user_id) WHERE g.tenant_id=$1 AND g.user_id=$2 AND u.state='active'`,[a.tenantId,a.userId])).rows[0];
  return {configured:!!r?.verified_at,suffix:r?.key_suffix??null,verifiedAt:r?.verified_at?.toISOString()??null};
 };
 return {
  status,
  async save(a:Actor,value:unknown){
   const key=normalizeCustomerGeminiKey(value),pending=randomUUID();
   // Durable per-account rate limit and a fence against remove or replacement
   // while a provider probe is in flight. Keep a previously valid key on failure.
   await withTransaction(pool,async c=>{
    await active(c,a);
    const row=await c.query(`INSERT INTO security.customer_gemini_credentials(tenant_id,user_id,pending_id,last_attempt_at) VALUES($1,$2,$3,clock_timestamp())
      ON CONFLICT(tenant_id,user_id) DO UPDATE SET pending_id=EXCLUDED.pending_id,last_attempt_at=EXCLUDED.last_attempt_at
      WHERE security.customer_gemini_credentials.last_attempt_at IS NULL OR security.customer_gemini_credentials.last_attempt_at<=clock_timestamp()-interval '30 seconds'
      RETURNING pending_id`,[a.tenantId,a.userId,pending]);
    if(!row.rows.length)throw new CustomerGeminiError(429,'gemini_key_retry_later');
   });
   await probeCustomerGeminiKey(key,model,input.fetchImpl??fetch);
   const sealed=cipher.seal(a,key);
   await withTransaction(pool,async c=>{
    await active(c,a);
    const row=await c.query(`UPDATE security.customer_gemini_credentials SET ciphertext=$4,nonce=$5,tag=$6,key_suffix=$7,verified_at=clock_timestamp(),pending_id=NULL
      WHERE tenant_id=$1 AND user_id=$2 AND pending_id=$3 RETURNING user_id`,[a.tenantId,a.userId,pending,sealed.ciphertext,sealed.nonce,sealed.tag,key.slice(-4)]);
    if(!row.rows.length)throw new CustomerGeminiError(409,'gemini_key_changed');
   });
   return status(a);
  },
  async remove(a:Actor){
   await withTransaction(pool,async c=>{
    await active(c,a);
    await c.query(`UPDATE security.customer_gemini_credentials SET ciphertext=NULL,nonce=NULL,tag=NULL,key_suffix=NULL,verified_at=NULL,pending_id=NULL
      WHERE tenant_id=$1 AND user_id=$2`,[a.tenantId,a.userId]);
   });
   return status(a);
  },
  /** Internal only: caller must supply the verified session's actor, not a
   * browser-supplied user ID. Never enumerate or mix these keys in global pools. */
  async resolve(a:Actor):Promise<CredentialSecret|null>{
   const row=(await pool.query<Sealed>(`SELECT g.ciphertext,g.nonce,g.tag FROM security.customer_gemini_credentials g
     JOIN identity.users u USING(tenant_id,user_id) WHERE g.tenant_id=$1 AND g.user_id=$2 AND u.state='active' AND g.verified_at IS NOT NULL`,[a.tenantId,a.userId])).rows[0];
   return row?cipher.open(a,row):null;
  }
 };
}
