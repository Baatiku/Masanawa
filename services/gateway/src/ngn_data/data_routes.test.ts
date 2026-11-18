import Fastify from 'fastify';
import {describe,it,expect,vi} from 'vitest';
import {registerNgnDataPurchaseRoutes} from './data_purchase_routes.js';
import type {NgnDataPurchasePorts} from './data_purchase_service.js';
describe('NGN data HTTP authority',()=>{
 it('rejects caller-selected price and actor fields before the validator can discard them',async()=>{
  const app=Fastify(),reserve=vi.fn(async()=>{});
  const service:NgnDataPurchasePorts={approved:async()=>[],liveItems:async()=>[],reserve,capture:async()=>{},release:async()=>{},claim:async()=>true,read:async()=>null,resolve:async()=>{},pay:async()=>{throw Error('no provider');},status:async()=>null};
  registerNgnDataPurchaseRoutes(app,{authorize:async()=>({tenantId:'tenant',userId:'fan'}),service});
  try{
   const body={bundleId:'BIL22:DT001',version:'v1',recipientPhone:'08012345678',idempotencyKey:'original-request',reviewedCostKobo:50025};
   for(const extra of [{costKobo:1},{amountKobo:1},{userId:'someone-else'}])expect((await app.inject({method:'POST',url:'/v1/ngn/data/buy',payload:{...body,...extra}})).statusCode).toBe(422);
   expect(reserve).not.toHaveBeenCalled();
  }finally{await app.close();}
 });
});
