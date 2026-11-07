import Fastify from 'fastify';
import {it,expect,vi} from 'vitest';
import {registerNgnRequestRoutes} from './request_routes.js';
import {NgnRequestStoreError} from '@masanawa/postgres';
it('NGN requests require session authority, resolve payer and provide exact owner-scoped readback',async()=>{
 const actor={tenantId:'tenant',userId:'alice'};
 const entry={requestId:'ngnreq_abcdefghijklmnopqrstuvwx',requesterId:'alice',payerId:'bob',requesterUsername:'alice.user',payerUsername:'bob.user',amountKobo:123,currency:'NGN' as const,unit:'kobo' as const,state:'open' as const,createdAt:new Date().toISOString(),expiresAt:new Date(Date.now()+86400000).toISOString(),operationId:null};
 const create=vi.fn(async()=>entry),get=vi.fn(async()=>entry),app=Fastify();
 registerNgnRequestRoutes(app,{authorize:async h=>{if(h!=='Bearer test')throw new NgnRequestStoreError(403,'unauthorized');return actor;},resolveRecipient:async()=>({userId:'bob',username:'bob.user',displayName:'Bob',active:true}),store:{create,get,list:async()=>[entry],pay:async()=>({operationId:'ngnpay_'+entry.requestId,amountKobo:123,state:'completed'}),decline:async()=>({...entry,state:'declined'}),cancel:async()=>({...entry,state:'cancelled'})}});
 try{expect((await app.inject({url:'/v1/ngn/wallet/requests/'+entry.requestId})).statusCode).toBe(403);
 const headers={authorization:'Bearer test'};const r=await app.inject({method:'POST',url:'/v1/ngn/wallet/requests',headers,payload:{username:'bob.user',amountKobo:123,idempotencyKey:'request_abcdefghijkl'}});expect(r.statusCode).toBe(201);expect(create).toHaveBeenCalledWith(actor,{payerId:'bob',amountKobo:123,idempotencyKey:'request_abcdefghijkl'});
 expect((await app.inject({url:'/v1/ngn/wallet/requests/'+entry.requestId,headers})).json()).toEqual({request:entry});expect(get).toHaveBeenCalledWith(actor,entry.requestId);
 }finally{await app.close();}
});
