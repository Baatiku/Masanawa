import {describe,it,expect} from 'vitest';
import {createGatewayApp} from '../app.js';
import {requiresFinancialCustomerState} from '../financial_mutation_guard.js';
import {mobilePushSafeData} from '@masanawa/mobile-push';
describe('direct NGN cutover',()=>{
 it('blocks new MB charges, tips and package sales while retaining original recovery',async()=>{
  const app=createGatewayApp({directNgn:true});try{
   for(const url of ['/v1/gb/wallet/send/quote','/v1/gb/wallet/send/confirm','/v1/gb/wallet/tips/review','/v1/gb/wallet/tips/confirm','/v1/gb/wallet/exchange/quote','/v1/gb/wallet/exchange/confirm','/v1/gb/wallet/requests','/v1/gb/wallet/requests/old-request/pay','/v1/gb/data/redeem','/v1/gb/calls/review','/v1/gb/calls/admissions'])expect((await app.inject({method:'POST',url,payload:{}})).statusCode,url).toBe(410);
   for(const url of ['/v1/gb/wallet/exchange/packages','/v1/gb/recharge/packages','/v1/gb/recharge/preview'])expect((await app.inject({url})).statusCode,url).toBe(410);
   expect((await app.inject({url:'/v1/gb/data/purchases/original'})).statusCode).not.toBe(410);
  }finally{await app.close();}
 });
 it('projects only authoritative NGN balance and rates without exchange',async()=>{
  const app=createGatewayApp({directNgnWallet:{authorize:async()=>({tenantId:'tenant',userId:'alice'}),balance:async()=>({balanceKobo:1000,heldKobo:200,availableKobo:800,debtKobo:0,frozen:false}),holds:async()=>[]}});
  try{const r=await app.inject({url:'/v1/ngn/wallet/summary'});expect(r.statusCode).toBe(200);expect(r.json()).toMatchObject({balance:{currency:'NGN',unit:'kobo',totalKobo:1000,availableKobo:800,reservedKobo:200},rates:{replyKobo:200,callKoboPerStartedSecond:100}});}finally{await app.close();}
 });
 it('guards NGN mutations and strictly permits receipt/request push hints',()=>{
  for(const path of ['/v1/ngn/wallet/send/confirm','/v1/ngn/wallet/requests','/v1/ngn/data/buy','/v1/ngn/calls/admissions'])expect(requiresFinancialCustomerState('POST',path)).toBe(true);
  for(const link of ['masanawa://wallet/activity','masanawa://wallet/activity/ngn:send_original','masanawa://wallet/requests/ngnreq_abcdefghijklmnopqrstuv'])expect(mobilePushSafeData({deepLink:link}).deepLink).toBe(link);
  expect(mobilePushSafeData({deepLink:'masanawa://wallet/requests/ngnreq_foo?token=secret'}).deepLink).toBeUndefined();
 });
});
