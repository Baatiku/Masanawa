import Fastify from 'fastify';
import {describe,it,expect,vi} from 'vitest';
import {registerPublicStatusLanding,renderPublicStatusPage} from './public_landing.js';

const id='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
describe('anonymous Status text landing without false advertising views',()=>{
 it('escapes untrusted text and does not execute an attribution collector',()=>{
  const html=renderPublicStatusPage({id,name:'Amina <script>',
   body:'Learn & stay safe <img src=x onerror=alert(1)>',kind:'text',imageCount:0},
   'opaqueAlphaBeta012345678901');
  expect(html).toContain('Amina &lt;script&gt;');
  expect(html).toContain('Learn &amp; stay safe &lt;img');
  expect(html).not.toContain('<script>');
  expect(html).not.toContain('<img src=x');
  expect(html).toContain('og:description');
  expect(html).toContain('?r=opaqueAlphaBeta012345678901');
 });
 it('rejects unknown, purged and feature-disabled content without billing or reflecting forged tokens',async()=>{
  const find=vi.fn(async(post:string)=>post===id?
   {id,name:'Teacher',body:'Approved lesson',kind:'text' as const,imageCount:0}:null);
  const app=Fastify();
  await registerPublicStatusLanding(app,{port:{find},enabled:()=>true});
  const notFound=await app.inject({method:'GET',url:'/status/not-a-uuid'});
  expect(notFound.statusCode).toBe(404);
  const reply=await app.inject({method:'GET',url:`/status/${id}?r=%3Cscript%3E`});
  expect(reply.statusCode).toBe(200);
  expect(reply.headers['content-security-policy']).toContain("default-src 'none'");
  expect(reply.headers['cache-control']).toBe('no-store');
  expect(reply.body).not.toContain('?r=%3Cscript%3E');
  expect(find).toHaveBeenCalledTimes(2);
  await app.close();

  const gone=Fastify();
  await registerPublicStatusLanding(gone,{port:{find:async()=>({id,gone:true})},enabled:()=>true});
  expect((await gone.inject({method:'GET',url:`/status/${id}`})).statusCode).toBe(410);
  await gone.close();

  const disabled=Fastify(),unused=vi.fn();
  await registerPublicStatusLanding(disabled,{port:{find:unused},enabled:()=>false});
  expect((await disabled.inject({method:'GET',url:`/status/${id}`})).statusCode).toBe(404);
  expect(unused).not.toHaveBeenCalled();
  await disabled.close();
 });
});
