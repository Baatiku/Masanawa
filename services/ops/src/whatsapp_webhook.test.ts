import { createHmac } from 'node:crypto';
import { describe,expect,it } from 'vitest';
import { createWhatsAppWebhook,verifyMetaChallenge,verifyMetaWebhookSignature } from './whatsapp_webhook.js';

describe('Meta webhook admission',()=>{
  const raw=Buffer.from('{"object":"whatsapp_business_account","entry":[]}');
  const signature='sha256='+createHmac('sha256','secret').update(raw).digest('hex');
  it('rejects forged, malformed and altered payloads',()=>{
    expect(verifyMetaWebhookSignature(raw,signature,'secret')).toBe(true);
    expect(verifyMetaWebhookSignature(Buffer.from('{}'),signature,'secret')).toBe(false);
    expect(verifyMetaWebhookSignature(raw,'sha256=abc','secret')).toBe(false);
    expect(verifyMetaWebhookSignature(raw,signature,undefined)).toBe(false);
  });
  it('accepts only an exact verified subscription challenge',()=>{
    expect(verifyMetaChallenge({mode:'subscribe',token:'abc',challenge:'123'},'abc')).toBe('123');
    expect(verifyMetaChallenge({mode:'subscribe',token:'abd',challenge:'123'},'abc')).toBeNull();
  });
  it('performs no database operations without a valid signature',async()=>{
    const pool={query:async()=>{throw Error('should never query')}};
    const webhook=createWhatsAppWebhook({pool:pool as never,appSecret:'secret'});
    await expect(webhook.ingest('sha256=bad',raw)).rejects.toMatchObject({statusCode:401});
    await expect(webhook.ingest(signature,raw)).resolves.toEqual({accepted:true,processed:0,duplicates:0});
  });
  it('rejects oversized batches before accepting any partial events',async()=>{
    const pool={query:async()=>{throw Error('oversized batch must not touch the database')}};
    const webhook=createWhatsAppWebhook({pool:pool as never,appSecret:'secret'});
    const huge=Buffer.from(JSON.stringify({object:'whatsapp_business_account',entry:[{
      changes:[{field:'messages',value:{messages:Array.from({length:501},(_,i)=>({id:`message_${i}`,from:'2348000000000',type:'text'}))}}],
    }]}));
    const mac='sha256='+createHmac('sha256','secret').update(huge).digest('hex');
    await expect(webhook.ingest(mac,huge)).rejects.toMatchObject({statusCode:413});
  });
});
