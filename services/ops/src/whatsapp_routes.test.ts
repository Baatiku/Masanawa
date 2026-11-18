import {createHmac} from 'node:crypto';
import {describe,expect,it} from 'vitest';
import {createOpsApp} from './app.js';
import {createWhatsAppWebhook} from './whatsapp_webhook.js';

describe('WhatsApp public webhook transport',()=>{
  it('uses exact signed raw JSON and rejects unsigned callbacks',async()=>{
    const app=createOpsApp({whatsappWebhook:createWhatsAppWebhook({
      pool:{query:async()=>({rows:[]})} as never,appSecret:'secret',verifyToken:'verified-token',
    })});
    try{
      const get=await app.inject({method:'GET',url:'/webhooks/whatsapp?hub.mode=subscribe&hub.verify_token=verified-token&hub.challenge=456'});
      expect(get.statusCode).toBe(200);expect(get.body).toBe('456');
      const rejected=await app.inject({method:'GET',url:'/webhooks/whatsapp?hub.mode=subscribe&hub.verify_token=wrong&hub.challenge=456'});
      expect(rejected.statusCode).toBe(403);
      const payload='{"object":"whatsapp_business_account","entry":[]}';
      const signature='sha256='+createHmac('sha256','secret').update(payload).digest('hex');
      const accepted=await app.inject({method:'POST',url:'/webhooks/whatsapp',headers:{'content-type':'application/json','x-hub-signature-256':signature},payload});
      expect(accepted.statusCode).toBe(200);expect(accepted.json()).toMatchObject({accepted:true});
      const invalid=await app.inject({method:'POST',url:'/webhooks/whatsapp',headers:{'content-type':'application/json','x-hub-signature-256':signature},payload:'{}'});
      expect(invalid.statusCode).toBe(401);
    }finally{await app.close();}
  });
});
