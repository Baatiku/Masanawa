import Fastify from 'fastify';
import {afterEach,describe,it,expect,vi} from 'vitest';
import {registerNgnSendReviewRoutes} from './send_routes.js';
import {NgnSendError,type NgnSendPorts} from './send_review.js';
const apps:ReturnType<typeof Fastify>[]=[];
afterEach(async()=>{for(const a of apps.splice(0))await a.close();});
const sender={tenantId:'tenant',userId:'alice'},recipient={userId:'bob',username:'bob.user',displayName:'Bob',active:true};
function setup(){
 const receipts=new Map<string,{operationId:string;amountKobo:number;state:'completed';currency:'NGN';unit:'kobo'}>();
 const transfer=vi.fn(async(input:Parameters<NgnSendPorts['transfer']>[0])=>{
  const receipt={operationId:input.operationId,amountKobo:input.amountKobo,state:'completed' as const,currency:'NGN' as const,unit:'kobo' as const};receipts.set(input.operationId,receipt);return receipt;
 });
 const ports:NgnSendPorts={authorize:async h=>{if(h!=='Bearer test')throw new NgnSendError(401,'unauthorized');return sender;},resolveRecipient:async()=>recipient,balance:async()=>({balanceKobo:10000,heldKobo:200,availableKobo:9800,debtKobo:0,frozen:false}),transfer,readTransfer:async(_a,id)=>receipts.get(id)??null,reviewSecret:'test-only-secret-12345678901234567890',nonce:()=> 'abcdefghijklmnopqrstuvwx'};
 const app=Fastify();apps.push(app);registerNgnSendReviewRoutes(app,ports);return {app,transfer,ports};
}
describe('NGN signed Send transport',()=>{
 it('reviews exact kobo and confirms one logical original after a timeout',async()=>{
  const {app,transfer}=setup(),headers={authorization:'Bearer test'};
  const quote=await app.inject({method:'POST',url:'/v1/ngn/wallet/send/quote',headers,payload:{username:'bob.user',amountKobo:123}});
  expect(quote.statusCode).toBe(200);expect(quote.json()).toMatchObject({amountKobo:123,feeKobo:0,currency:'NGN',unit:'kobo'});
  const token=quote.json().reviewToken,payload={reviewToken:token,reviewAccepted:true};
  const one=await app.inject({method:'POST',url:'/v1/ngn/wallet/send/confirm',headers,payload});
  const two=await app.inject({method:'POST',url:'/v1/ngn/wallet/send/confirm',headers,payload});
  expect(one.json()).toEqual(two.json());expect(transfer).toHaveBeenCalledTimes(1);
  const read=await app.inject({url:'/v1/ngn/wallet/send/receipt/'+quote.json().operationId,headers});expect(read.json()).toEqual(one.json());
 });
 it('requires authentication and rejects caller identity or old MB fields before creating a review',async()=>{
  const {app,transfer}=setup();expect((await app.inject({method:'POST',url:'/v1/ngn/wallet/send/quote',payload:{username:'bob.user',amountKobo:123}})).statusCode).toBe(401);
  for(const payload of [{username:'bob.user',amountMb:123},{username:'bob.user',amountKobo:123,userId:'victim'}])expect((await app.inject({method:'POST',url:'/v1/ngn/wallet/send/quote',headers:{authorization:'Bearer test'},payload})).statusCode).toBeGreaterThanOrEqual(400);
  expect(transfer).not.toHaveBeenCalled();
 });
 it('rejects insufficient available cash and changed recipient at confirmation',async()=>{
  const {app,ports,transfer}=setup(),headers={authorization:'Bearer test'};
  expect((await app.inject({method:'POST',url:'/v1/ngn/wallet/send/quote',headers,payload:{username:'bob.user',amountKobo:9900}})).statusCode).toBe(409);
  const review=(await app.inject({method:'POST',url:'/v1/ngn/wallet/send/quote',headers,payload:{username:'bob.user',amountKobo:10}})).json();
  Object.assign(ports,{resolveRecipient:async()=>({...recipient,userId:'another'})});
  expect((await app.inject({method:'POST',url:'/v1/ngn/wallet/send/confirm',headers,payload:{reviewToken:review.reviewToken,reviewAccepted:true}})).statusCode).toBe(409);expect(transfer).not.toHaveBeenCalled();
 });
});
