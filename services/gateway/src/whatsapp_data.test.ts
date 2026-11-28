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
      const recent=await app.inject({method:'GET',url:`/v1/whatsapp/link/data/recent?threadId=${threadId}`});
      expect(recent.statusCode).toBe(403);
      const buy=await app.inject({method:'POST',url:'/v1/whatsapp/link/data/buy',payload:{
        threadId,bundleId:'MTN:DATA',version:'v1',recipientPhone:'08012345678',
        idempotencyKey:'wa_abc123456789012345',reviewedCostKobo:100000}});
      expect(buy.statusCode).toBe(403);
      expect(pay).not.toHaveBeenCalled();expect(approved).not.toHaveBeenCalled();expect(liveItems).not.toHaveBeenCalled();
    }finally{await app.close();}
  });
  it('debits only after signed-in approval and does not resend the same provider purchase on retry',async()=>{
    const threadId='6c7eb432-2250-4d76-8ae4-17a41bbc92ca',key='wa_approved_1234567890123456';
    const bundle={version:'v1',country:'NG' as const,network:'MTN' as const,billerCode:'MTN',itemCode:'DATA',allowanceGb:1,
      validityDays:30,providerAmount:'100.00',evidenceRef:'operator-approved',reviewedBy:'admin',
      reviewedAt:'2025-01-01T00:00:00Z',expiresAt:'2030-01-01T00:00:00Z',enabled:true};
    const current={billerCode:'MTN',itemCode:'DATA',name:'Data',amount:'100.00',currency:'NGN' as const,labelName:null};
    const rows=new Map<string,Record<string,unknown>>();
    let order:{operationId:string;userId:string;bundleId:string;version:string;phone:string;amountNgn:string;costKobo:number;state:'pending'|'delivered'|'failed'}|null=null;
    const query=vi.fn(async(sql:string,parameters:unknown[]=[])=>{
      if(sql.includes('SELECT t.thread_id FROM security.whatsapp_account_links'))return {rows:[{thread_id:threadId}]};
      if(sql.includes('SELECT bundle_id,version,recipient_phone'))return {rows:rows.has(String(parameters[2]))?[rows.get(String(parameters[2]))]:[]};
      if(sql.includes('SELECT coalesce(sum(reviewed_cost_kobo)'))return {rows:[{total:'0'}]};
      if(sql.includes('INSERT INTO security.whatsapp_purchase_approvals')){
        rows.set(String(parameters[3]),{bundle_id:parameters[4],version:parameters[5],recipient_phone:parameters[6],cost:parameters[7],thread_id:parameters[2]});
      }
      return {rows:[]};
    });
    const pool={query,connect:async()=>({query,release:()=>undefined})};
    const pay=vi.fn(async()=>({reference:order?.operationId??'',providerReference:'FW123',status:'successful' as const,
      amount:'100.00',currency:'NGN' as const,customerId:'+2348012345678',product:'data',itemCode:'DATA',productName:'MTN',extra:null}));
    const status=vi.fn(async()=>pay.mock.results[0]?.value??null);
    const app=Fastify();
    try{
      registerWhatsAppDataRoutes(app,{pool:pool as never,
        authorize:async()=>({tenantId:'tenant_1',userId:'user_1'}),beforeWrite:async()=>undefined,
        catalogue:{authorize:async()=>({tenantId:'tenant_1',userId:'user_1'}),approved:async()=>[bundle],liveItems:async()=>[current]},
        purchases:{authorize:async()=>({tenantId:'tenant_1',userId:'user_1'}),service:{
          approved:async()=>[bundle],liveItems:async()=>[current],reserve:async()=>undefined,capture:async()=>undefined,
          release:async()=>undefined,claim:async()=>true,read:async()=>order,
          admit:async(_actor:unknown,entry:typeof order)=>{order=entry;return true;},
          resolve:async(_actor:unknown,_id:string,next:'delivered'|'failed')=>{if(order)order.state=next;},pay,status,
        } as never}});
      const body={threadId,bundleId:'MTN:DATA',version:'v1',recipientPhone:'08012345678',idempotencyKey:key,reviewedCostKobo:10000};
      const first=await app.inject({method:'POST',url:'/v1/whatsapp/link/data/buy',payload:body});
      expect(first.statusCode).toBe(200);
      expect(first.json()).toMatchObject({state:'delivered',currency:'NGN'});
      const retry=await app.inject({method:'POST',url:'/v1/whatsapp/link/data/buy',payload:body});
      expect(retry.statusCode).toBe(200);
      expect(pay).toHaveBeenCalledTimes(1);
      expect(query.mock.calls.filter(c=>c[0].includes('INSERT INTO security.whatsapp_purchase_approvals'))).toHaveLength(1);
      expect(query.mock.calls.some(c=>c[0].includes('INSERT INTO security.whatsapp_messages'))).toBe(true);
    }finally{await app.close();}
  });
});
