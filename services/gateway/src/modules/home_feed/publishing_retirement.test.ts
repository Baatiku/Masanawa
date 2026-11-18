import Fastify from 'fastify';
import {expect,it,vi} from 'vitest';
import {GuestConsentSigner} from './guest_consent.js';
import {registerStatusRuntime} from './runtime.js';
it('blocks legacy submission before writes while retaining authenticated history and cancellation',async()=>{
 const app=Fastify();const write=vi.fn(),mine=vi.fn(async()=>({campaigns:[]})),cancel=vi.fn(async()=>({state:'cancelled'}));
 await registerStatusRuntime(app,{sessions:{authorize:async({authorizationHeader})=>{
  if(authorizationHeader!=='Bearer owner')throw Object.assign(new Error(),{statusCode:401});
  return {tenantId:'t',userId:'owner'};
 }},feed:{} as never,editorial:{} as never,
 promotions:{draft:write,editDraft:write,quote:write,confirm:write,mine,cancel} as never,
 promotionsEnabled:()=>true});
 try{
 const headers={authorization:'Bearer owner'};
 const caps=await app.inject({url:'/v1/promotions/capabilities',headers});expect(caps.json().enabled).toBe(false);
 for(const [method,url] of [['POST','/v1/promotions/drafts'],['PUT','/v1/promotions/drafts/old'],
  ['POST','/v1/promotions/quotes'],['POST','/v1/promotions/quotes/old/confirm'],
  ['POST','/v1/promotions/posts/old/revisions'],['POST','/v1/promotions/old/resume']] as const){
  expect((await app.inject({method:method as 'POST',url,headers,payload:{}})).statusCode).toBe(410);
 }
 expect(write).not.toHaveBeenCalled();
 expect((await app.inject({url:'/v1/promotions/mine',headers})).statusCode).toBe(200);
 expect((await app.inject({method:'POST',url:'/v1/promotions/old/cancel',headers,payload:{}})).statusCode).toBe(200);
 expect(cancel).toHaveBeenCalledWith('t','owner','old');
 expect((await app.inject({method:'POST',url:'/v1/promotions/drafts',payload:{}})).statusCode).toBe(401);
 }finally{await app.close();}
});

it('retires paid attribution even with stale enabled flags, retaining consent withdrawal',async()=>{
 const app=Fastify(),write=vi.fn(),withdraw=vi.fn(async()=>{});
 const signer=new GuestConsentSigner('retirement-test-only-secret-over-32-bytes');
 await registerStatusRuntime(app,{sessions:{authorize:async()=>({tenantId:'t',userId:'owner'})},
  feed:{} as never,editorial:{} as never,
  promotions:{share:write,beginView:write,finishView:write} as never,promotionsEnabled:()=>true,
  publicLanding:{enabled:()=>true,guestVerificationEnabled:()=>true,
   port:{find:async()=>({id:'post',name:'Official',body:'Original public text',kind:'text',imageCount:0}),
    validReferral:async()=>true}},
  guestProof:{port:{begin:write,complete:write,withdraw,revoked:async()=>false},signer,
   enabled:()=>true,publicBaseUrl:'https://status.example.test'}});
 try{
  const headers={authorization:'Bearer owner'};
  for(const url of ['/v1/posts/post/share-link','/v1/posts/post/view-challenges',
   '/v1/views/challenge/qualify']){
   expect((await app.inject({method:'POST',url,headers,payload:{}})).statusCode).toBe(503);
  }
  const publicPage=await app.inject('/status/post?r=opaqueAlphaBeta012345678901');
  expect(publicPage.statusCode).toBe(200);expect(publicPage.body).toContain('Original public text');
  expect(publicPage.body).not.toContain('may earn');
  expect(publicPage.body).not.toContain('Open with referral attribution');
  expect(publicPage.body).not.toContain('/verify');
  const guestHeaders={origin:'https://status.example.test','content-type':'application/json'};
  expect((await app.inject({method:'POST',url:'/v1/status/guest/consent',
   headers:guestHeaders,payload:{consent:true}})).statusCode).toBe(503);
  const result=await app.inject({method:'DELETE',url:'/v1/status/guest/consent',
   headers:{origin:guestHeaders.origin,cookie:`__Host-Masanawa-Status-Guest=${signer.issue()}`}});
  expect(result.statusCode).toBe(200);expect(withdraw).toHaveBeenCalledOnce();
  expect(write).not.toHaveBeenCalled();
 }finally{await app.close();}
});
