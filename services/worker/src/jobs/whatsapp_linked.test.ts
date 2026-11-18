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
  it('restores the same encrypted session after a Worker restart without issuing another QR',async()=>{
    const stored=new Map<string,Buffer>();
    const pool={query:async(sql:string,params:unknown[]=[]):Promise<{rows:unknown[]}>=>{
      if(sql.includes('SELECT key_id,ciphertext'))return {rows:stored.has('creds:main')?
        [{key_id:'main',ciphertext:stored.get('creds:main')}]:[]};
      if(sql.includes("'creds','main',$3"))stored.set('creds:main',params[2] as Buffer);
      return {rows:[]};
    }};
    const first=await createLinkedAuthState(pool as never,'tenant-a','channel-a',key,'worker-a');
    await first.saveCreds();await first.flush();
    const second=await createLinkedAuthState(pool as never,'tenant-a','channel-a',key,'worker-b');
    expect(Buffer.from(second.state.creds.noiseKey.public).equals(Buffer.from(first.state.creds.noiseKey.public))).toBe(true);
    expect(stored.get('creds:main')?.toString('utf8')).not.toContain('noiseKey');
  });
});
