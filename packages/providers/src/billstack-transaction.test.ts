import {describe,it,expect,vi} from 'vitest';
import {getSettledBillstackTransfer} from './billstack-transaction.js';

const session='100004261117164131177786256111';
const data={status:'SUCCESS',is_settled:true,method:'TRANSFER',session_id:session,transaction_ref:session,
 reference:'R-provider',nuban:'6650000147',amount:100,created_at:'2026-11-17T16:41:33Z',bank:'9PSB'};
const key='local-synthetic-provider-secret-not-production';
describe('read-only provider settlement proof',()=>{
 it('sends only a session lookup and accepts a fully settled matching transfer',async()=>{
  const fetcher=vi.fn(async(url:string,init:RequestInit)=>{
   expect(url).toBe('https://api.billstack.co/v2/thirdparty/getTransaction/');
   expect(init.method).toBe('POST');expect(JSON.parse(String(init.body))).toEqual({session_id:session});
   return Response.json({status:true,data});
  });
  expect(await getSettledBillstackTransfer({sessionId:session,secretKey:key,fetcher:fetcher as typeof fetch}))
   .toMatchObject({eventId:session,amountKobo:10000,accountNumber:'6650000147'});
  expect(fetcher).toHaveBeenCalledOnce();
 });
 it('accepts PAID only when the provider independently confirms settlement and exact transfer identity',async()=>{
  const settled={...data,status:'PAID'};
  expect(await getSettledBillstackTransfer({sessionId:session,secretKey:key,
   fetcher:async()=>Response.json({status:true,data:settled})})).toMatchObject({eventId:session,amountKobo:10000});
  for(const patch of [{is_settled:false},{method:'CARD'},{session_id:'different'},{transaction_ref:'different'}]){
   await expect(getSettledBillstackTransfer({sessionId:session,secretKey:key,
    fetcher:async()=>Response.json({status:true,data:{...settled,...patch}})})).rejects.toThrow();
  }
 });
 it('accepts the actual settled 9PSB PAID / INWARD collection while rejecting outward and unconfirmed records',async()=>{
  const inward={...data,status:'PAID',method:'INWARD'};
  expect(await getSettledBillstackTransfer({sessionId:session,secretKey:key,
   fetcher:async()=>Response.json({status:true,data:inward})}))
   .toMatchObject({eventId:session,amountKobo:10000,accountNumber:'6650000147',bankName:'9PSB'});
  for(const patch of [{method:'OUTWARD'},{method:'CARD'},{method:'REVERSAL'},
   {is_settled:false},{status:'PENDING'},{transaction_ref:'wrong'},
   {session_id:'wrong'},{amount:'100.001'},{nuban:'0000000000x'}]){
   await expect(getSettledBillstackTransfer({sessionId:session,secretKey:key,
    fetcher:async()=>Response.json({status:true,data:{...inward,...patch}})})).rejects.toThrow();
  }
 });
 it('rejects unconfirmed, mismatching and malformed financial evidence',async()=>{
  for(const patch of [{is_settled:false},{status:'PENDING'},{status:'COMPLETED'},{transaction_ref:'other'},{amount:100.001},{nuban:'invalid'},{method:'CARD'}]){
   await expect(getSettledBillstackTransfer({sessionId:session,secretKey:key,fetcher:async()=>Response.json({status:true,data:{...data,...patch}})})).rejects.toThrow();
  }
  await expect(getSettledBillstackTransfer({sessionId:'wrong',secretKey:key,fetcher:async()=>{throw Error('must not call');}})).rejects.toMatchObject({code:'billstack.invalid_transaction_id'});
 });
});
