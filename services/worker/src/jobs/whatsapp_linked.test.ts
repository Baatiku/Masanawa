import {randomBytes} from 'node:crypto';
import {describe,expect,it} from 'vitest';
import {encryptLinkedSecret,decryptLinkedSecret,createLinkedAuthState} from './whatsapp_linked.js';

describe('encrypted WhatsApp linked-device session',()=>{
  const key=randomBytes(32).toString('base64');
  it('encrypts every QR and Signal secret with authenticated randomized ciphertext',()=>{
    const a=encryptLinkedSecret('session credential',key);
    const b=encryptLinkedSecret('session credential',key);
    expect(a.equals(b)).toBe(false);
    expect(a.toString('utf8')).not.toContain('session credential');
    expect(decryptLinkedSecret(a,key)).toBe('session credential');
    const tampered=Buffer.from(a);tampered[20]=(tampered[20]??0)^1;
    expect(()=>decryptLinkedSecret(tampered,key)).toThrow();
    expect(()=>encryptLinkedSecret('secret','invalid')).toThrow('invalid_whatsapp_session_key');
  });
  it('prepares a fresh credential state and does not store plaintext',async()=>{
    const queries:{sql:string;parameters:unknown[]}[]=[];
    const pool={query:async(sql:string,params:unknown[]=[]):Promise<{rows:unknown[]}>=>{
      queries.push({sql,parameters:params});return {rows:[]};
    }};
    const {state,saveCreds}=await createLinkedAuthState(pool as never,'tenant_a','channel_a',key,'lease_a');
    expect(state.creds.registered).toBe(false);
    await saveCreds();
    const saved=queries.find(q=>q.sql.includes("'creds','main',$3"));
    expect(saved).toBeDefined();
    const cipher=saved!.parameters[2] as Buffer;
    expect(cipher).toBeInstanceOf(Buffer);
    expect(cipher.toString('utf8')).not.toContain('noiseKey');
    const decrypted=decryptLinkedSecret(cipher,key);
    expect(decrypted).toContain('noiseKey');
  });
});
