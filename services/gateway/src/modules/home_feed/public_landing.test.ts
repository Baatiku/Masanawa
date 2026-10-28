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
 it('unfurls only explicitly reviewed imagery as a same-origin crawler asset',()=>{
  const html=renderPublicStatusPage({id,name:'Teacher & Sons',
   body:'Reviewed image',kind:'image',imageCount:1,
   imagePreview:{id:'verified_media',altText:'A <book> on a table'}},undefined,
   'https://status.example.test',true);
  expect(html).toContain('og:image:type" content="image/webp"');
  expect(html).toContain(`https://status.example.test/status/${id}/image/verified_media`);
  expect(html).toContain('alt="A &lt;book&gt; on a table"');
  expect(html).not.toContain('private/');
  expect(renderPublicStatusPage({id,name:'Teacher',body:'Unreviewed',
   kind:'image',imageCount:1},undefined,'https://status.example.test',true))
   .not.toContain('og:image"');
  expect(renderPublicStatusPage({id,name:'Teacher',body:'Approved',
   kind:'image',imageCount:1,imagePreview:{id:'verified_media',altText:'A book'}},
   undefined,'https://status.example.test',false)).not.toContain('og:image"');
 });
 it('serves approved sanitized image bytes only when both gates permit it',async()=>{
  const image=Buffer.from('RIFFfakewebp');
  const readApprovedImage=vi.fn(async()=>({bytes:image,contentType:'image/webp' as const}));
  const app=Fastify();
  await registerPublicStatusLanding(app,{port:{find:async()=>null,readApprovedImage},
   enabled:()=>true,imagesEnabled:()=>true});
  const served=await app.inject({url:`/status/${id}/image/verified_media`});
  expect(served.statusCode).toBe(200);
  expect(served.headers['content-type']).toContain('image/webp');
  expect(served.headers['cache-control']).toBe('no-store');
  expect(served.rawPayload).toEqual(image);
  expect(readApprovedImage).toHaveBeenCalledWith(id,'verified_media');
  await app.close();
  const disabled=Fastify();
  const noAccess=vi.fn();
  await registerPublicStatusLanding(disabled,{port:{find:async()=>null,
   readApprovedImage:noAccess},enabled:()=>true,imagesEnabled:()=>false});
  expect((await disabled.inject({url:`/status/${id}/image/verified_media`})).statusCode).toBe(404);
  expect(noAccess).not.toHaveBeenCalled();
  await disabled.close();
 });
 it('rejects unknown, purged and feature-disabled content without billing or reflecting forged tokens',async()=>{
  const find=vi.fn(async(post:string)=>post===id?
   {id,name:'Teacher',body:'Approved lesson',kind:'text' as const,imageCount:0}:null);
  const validReferral=vi.fn(async(_post:string,token:string)=>
    token==='opaqueAlphaBeta012345678901');
  const app=Fastify();
  await registerPublicStatusLanding(app,{port:{find,validReferral},enabled:()=>true,
    publicBaseUrl:'https://status.example.test'});
  const notFound=await app.inject({method:'GET',url:'/status/not-a-uuid'});
  expect(notFound.statusCode).toBe(404);
  const reply=await app.inject({method:'GET',url:`/status/${id}?r=%3Cscript%3E`});
  expect(reply.statusCode).toBe(200);
  expect(reply.headers['content-security-policy']).toContain("default-src 'none'");
  expect(reply.headers['cache-control']).toBe('no-store');
  expect(reply.body).not.toContain('?r=%3Cscript%3E');
  expect(validReferral).not.toHaveBeenCalled();
  const forwarded=await app.inject({method:'GET',
    url:`/status/${id}?r=opaqueAlphaBeta012345678901`});
  expect(forwarded.body).toContain('https://status.example.test/status/');
  expect(forwarded.body).toContain('?r=opaqueAlphaBeta012345678901');
  expect(forwarded.body).toContain('rel="canonical"');
  expect(forwarded.body).toContain('og:url');
  expect(forwarded.body).not.toContain('og:url" content="https://status.example.test/status/'+id+'?r=');
  expect(validReferral).toHaveBeenCalledWith(id,'opaqueAlphaBeta012345678901');
  const stale=await app.inject({method:'GET',url:`/status/${id}?r=InactiveButWellFormedOpaqueLink123456`});
  expect(stale.body).not.toContain('InactiveButWellFormedOpaqueLink123456');
  expect(stale.headers['permissions-policy']).toContain('geolocation=()');
  expect(find).toHaveBeenCalledTimes(4);
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
