import {randomBytes} from 'node:crypto';
import {describe,expect,it} from 'vitest';
import {encryptLinkedSecret,decryptLinkedSecret,createLinkedAuthState,eligibleWhatsAppUpsert,recordLinkedCallEvent,persistLinkedHistory} from './whatsapp_linked.js';

describe('encrypted WhatsApp linked-device session',()=>{
  const key=randomBytes(32).toString('base64');
  it('records real incoming call alerts without storing caller ID or pretending to answer',async()=>{
    const calls:{sql:string;params:unknown[]}[]=[];
    const pool={query:async(sql:string,params:unknown[])=>{
      calls.push({sql,params});return {rows:[]};
    }};
    const scope={tenantId:'tenant-a',channelId:'channel-a'};
    await recordLinkedCallEvent(pool as never,scope,{id:'provider-call-id',status:'offer'});
    expect(calls).toHaveLength(1);
    expect(calls[0]!.params[2]).toBe('call.incoming');
    expect(calls[0]!.params[3]).toContain('"status":"offer"');
    expect(calls[0]!.params[3]).not.toContain('provider-call-id');
    await recordLinkedCallEvent(pool as never,scope,{id:'group-call',status:'offer',isGroup:true});
    expect(calls).toHaveLength(1);
  });
  it('ingests recent offline catch-up messages but not old WhatsApp history',()=>{
    const now=Date.parse('2026-11-18T10:00:00Z');
    const seconds=Math.floor(now/1000);
    expect(eligibleWhatsAppUpsert('notify',seconds,now)).toBe(true);
    expect(eligibleWhatsAppUpsert('append',seconds-60,now)).toBe(true);
    expect(eligibleWhatsAppUpsert('append',seconds-500,now)).toBe(false);
    expect(eligibleWhatsAppUpsert('append',seconds+500,now)).toBe(false);
    expect(eligibleWhatsAppUpsert('append',0,now)).toBe(false);
  });
  it('imports historical inbound and owner messages once without replying or modifying unread counts',async()=>{
    const seen=new Set<string>(),queries:{sql:string;params:unknown[]}[]=[];
    const pool={query:async(sql:string,params:unknown[]=[])=>{
      queries.push({sql,params});
      if(sql.includes('lease_owner=$3'))return {rows:[{present:1}]};
      if(sql.includes('RETURNING thread_id'))return {rows:[{threadId:'thread-1'}]};
      if(sql.includes('RETURNING message_id')){
        const id=String(params[3]);if(seen.has(id))return {rows:[]};
        seen.add(id);return {rows:[{message_id:id}]};
      }
      return {rows:[]};
    }};
    const identity={tenantId:'tenant-a',channelId:'channel-a',owner:'lease-a'};
    const messages=[
      {key:{remoteJid:'2348012345678@s.whatsapp.net',id:'historical-1',fromMe:false},
        messageTimestamp:1660000000,message:{conversation:'Assalamualaikum'}},
      {key:{remoteJid:'2348012345678@s.whatsapp.net',id:'historical-2',fromMe:true},
        messageTimestamp:1660000010,message:{conversation:'Wa alaikum salam'}},
      {key:{remoteJid:'12036312345@g.us',id:'group-1',fromMe:false},
        messageTimestamp:1660000020,message:{conversation:'private group'}},
      {key:{remoteJid:'2348012345678@s.whatsapp.net',id:'ephemeral-1',fromMe:false},
        messageTimestamp:1660000030,message:{ephemeralMessage:{message:{conversation:'disappearing'}}}},
    ];
    expect(await persistLinkedHistory(pool as never,identity,messages as never))
      .toEqual({imported:2,ignored:2});
    expect(await persistLinkedHistory(pool as never,identity,messages as never))
      .toEqual({imported:0,ignored:4});
    const inserts=queries.filter(q=>q.sql.includes('INSERT INTO security.whatsapp_messages'));
    expect(inserts).toHaveLength(4);
    expect(inserts[0]!.params.slice(3,9)).toEqual([
      'historical-1','inbound','text','Assalamualaikum','read',new Date(1660000000*1000)]);
    expect(inserts[1]!.params[4]).toBe('outbound');
    expect(queries.some(q=>q.sql.includes('whatsapp_jobs')||q.sql.includes('unread_count'))).toBe(false);
  });
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
