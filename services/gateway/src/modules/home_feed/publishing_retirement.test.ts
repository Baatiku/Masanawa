import Fastify from 'fastify';
import {expect,it,vi} from 'vitest';
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
