import Fastify from 'fastify';
import {describe,expect,it,vi} from 'vitest';
import {registerWhatsAppDataRoutes} from './whatsapp_data.js';

describe('WhatsApp Buy Data Gateway authority',()=>{
  it('refuses catalogue and wallet debit for an unlinked or unauthorized conversation before touching providers',async()=>{
    const approved=vi.fn(async()=>[]),liveItems=vi.fn(async()=>[]),pay=vi.fn();
    const pool={query:vi.fn(async()=>({rows:[]}))};
    const app=Fastify();
    try{
      registerWhatsAppDataRoutes(app,{pool:pool as never,
        authorize:async()=>({tenantId:'tenant_1',userId:'user_1'}),beforeWrite:async()=>undefined,
        catalogue:{authorize:async()=>({tenantId:'tenant_1',userId:'user_1'}),approved,liveItems},
        purchases:{authorize:async()=>({tenantId:'tenant_1',userId:'user_1'}),service:{pay} as never}});
      const threadId='6c7eb432-2250-4d76-8ae4-17a41bbc92ca';
      const catalog=await app.inject({method:'GET',url:`/v1/whatsapp/link/data/bundles?threadId=${threadId}`});
      expect(catalog.statusCode).toBe(403);
      const buy=await app.inject({method:'POST',url:'/v1/whatsapp/link/data/buy',payload:{
        threadId,bundleId:'MTN:DATA',version:'v1',recipientPhone:'08012345678',
        idempotencyKey:'wa_abc123456789012345',reviewedCostKobo:100000}});
      expect(buy.statusCode).toBe(403);
      expect(pay).not.toHaveBeenCalled();expect(approved).not.toHaveBeenCalled();expect(liveItems).not.toHaveBeenCalled();
    }finally{await app.close();}
  });
});
