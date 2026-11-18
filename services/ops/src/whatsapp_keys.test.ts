import {describe,expect,it,vi} from 'vitest';
import {createWhatsAppAdmin,decryptWhatsAppToken,WhatsAppAdminError} from './whatsapp_admin.js';

describe('WhatsApp encrypted Gemini key administration',()=>{
  const secret=Buffer.alloc(32,6).toString('base64');
  function setup(){
    const calls:{sql:string;params:unknown[]}[]=[];
    const pool={query:vi.fn(async(sql:string,params:unknown[]=[])=>{
      calls.push({sql,params});
      if(sql.includes('RETURNING key_id'))return {rows:[{key_id:'00000000-0000-4000-8000-000000000001'}]};
      if(sql.includes('SELECT key_id AS "keyId"'))return {rows:[{label:'Primary',projectId:'production-ai',keySuffix:'abcd'}]};
      return {rows:[]};
    })};
    const authorize=vi.fn(async()=>({tenantId:'tenant',actorId:'admin'}));
    return {calls,authorize,admin:createWhatsAppAdmin({pool:pool as never,
      authorize:authorize as never,env:{MASANAWA_WHATSAPP_SESSION_KEY:secret}})};
  }
  it('stores only AES-GCM ciphertext and never returns the full credential',async()=>{
    const mock=setup(),key='AIzaAValidLookingApiKeyForTesting1234abcd';
    expect(await mock.admin.addGeminiKey('Bearer test',`  ${key}  `)).toEqual({added:true});
    const inserted=mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_gemini_keys'))!;
    expect(inserted.params).toHaveLength(4);
    expect(inserted.params[1]).toBe('Gemini key');
    expect(inserted.params[2]).toBeInstanceOf(Buffer);
    expect(decryptWhatsAppToken(inserted.params[2] as Buffer,secret)).toBe(key);
    expect(inserted.params.join(' ')).not.toContain(key);
    expect(JSON.stringify(await mock.admin.geminiKeys('Bearer test'))).not.toContain(key);
    expect(mock.authorize).toHaveBeenCalledWith(expect.objectContaining({capability:'whatsapp.write'}));
  });
  it('accepts modern AQ. auth keys beyond the legacy length limit and encrypts the original',async()=>{
    const mock=setup(),key='AQ.'+'AbCd09_-'.repeat(45);
    expect(key.length).toBeGreaterThan(256);
    expect(await mock.admin.addGeminiKey('Bearer test',key)).toEqual({added:true});
    const inserted=mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_gemini_keys'))!;
    expect(decryptWhatsAppToken(inserted.params[2] as Buffer,secret)).toBe(key);
    expect(JSON.stringify(await mock.admin.geminiKeys('Bearer test'))).not.toContain(key);
  });
  it('rejects embedded whitespace and quotes even for an AQ. auth key',async()=>{
    const mock=setup(),key='AQ.'+'AbCd09_-'.repeat(12);
    for(const bad of ['"'+key+'"',key+'\nextra',key+' extra'])
      await expect(mock.admin.addGeminiKey('Bearer test',bad))
        .rejects.toMatchObject({statusCode:422,code:'invalid_gemini_key_details'});
    expect(mock.calls).toHaveLength(0);
  });
  it('rejects a short credential without requiring label or project ID',async()=>{
    const mock=setup();
    await expect(mock.admin.addGeminiKey('Bearer test','short'))
      .rejects.toMatchObject({statusCode:422});
    expect(mock.calls).toHaveLength(0);
  });
});
