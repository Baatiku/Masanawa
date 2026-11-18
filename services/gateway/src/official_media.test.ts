import {expect,it} from 'vitest';
import sharp from 'sharp';
import Fastify from 'fastify';
import {mkdtemp,rm} from 'node:fs/promises';
import {tmpdir} from 'node:os';
import {join} from 'node:path';
import {createOfficialMediaReader,OFFICIAL_MEDIA_ASSETS,registerOfficialMediaRoutes} from './official_media.js';
import {OFFICIAL_PORTRAITS} from './official_portraits.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
import {createPgAgentMasanaIdentityReader} from './agent_identity.js';
import {createCanonicalId,parseCanonicalId} from '@masanawa/contracts';
it('projects approved real portraits and party metadata only for matching canonical names, preserving staff imagery',async()=>{
 const subject=OFFICIAL_ROSTER_MANIFEST[0]!,id=parseCanonicalId('character',subject.characterId);
 const profile={character_id:id,requested_portrait:null as string|null,portrait_media_id:null,following:false,social_channels:[]};
 const record={officialName:subject.officialName as string,office:subject.office,identitySourceUrl:subject.rosterSourceUrl,
  reviewedAt:'2026-10-29T00:00:00Z',reviewExpiresAt:'2026-11-28T00:00:00Z',verification:'source_reviewed' as const,representation:'ai_simulation' as const};
 const reader=createPgAgentMasanaIdentityReader({query:async()=>({rows:[profile]})},
  {read:async()=>null,simulations:async()=>new Set([id]),directory:async()=>new Map([[id,record]])});
 const request={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user'),characterIds:[id]};
 expect((await reader.read(request)).get(id)).toMatchObject({avatarUrl:expect.stringContaining('/public/persona-media/'),publicOfficial:{party:{code:'APC'},portrait:{credit:'Nosa Asemota'}}});
 profile.requested_portrait='staff-selected-image';
 expect((await reader.read(request)).get(id)?.avatarUrl).toBeUndefined();
 profile.requested_portrait=null;record.officialName='Different subject';
 expect((await reader.read(request)).get(id)?.publicOfficial?.portrait).toBeUndefined();
});
it('serves decoded public image bytes with cache/CORS headers and rejects unknown asset keys',async()=>{
 const png=await sharp({create:{width:10,height:10,channels:3,background:'green'}}).png().toBuffer();
 const app=Fastify();registerOfficialMediaRoutes(app,createOfficialMediaReader((async()=>new Response(new Uint8Array(png),{headers:{'content-type':'image/png'}})) as typeof fetch));
 try{
  const response=await app.inject('/public/persona-media/'+OFFICIAL_MEDIA_ASSETS[0]!.key);
  expect(response.statusCode).toBe(200);expect(response.headers['content-type']).toContain('image/webp');
  expect(response.headers['access-control-allow-origin']).toBe('*');expect((await sharp(response.rawPayload).metadata()).width).toBe(10);
  expect((await app.inject('/public/persona-media/'+ '0'.repeat(32))).statusCode).toBe(404);
 }finally{await app.close();}
});
it('binds reviewed photographs to the exact official and keeps every asset distinct',()=>{
 expect(OFFICIAL_PORTRAITS).toHaveLength(62);
 expect(new Set(OFFICIAL_MEDIA_ASSETS.map(a=>a.key)).size).toBe(66);
 for(const photo of OFFICIAL_PORTRAITS){
  expect(OFFICIAL_ROSTER_MANIFEST.find(s=>s.characterId===photo.characterId)?.officialName).toBe(photo.officialName);
  expect(photo.imageUrl).toMatch(/^https:\/\//);expect(photo.sourceUrl).toMatch(/^https:\/\//);
  expect(photo.credit.length).toBeGreaterThan(2);
 }
});
it('decodes actual pixels, normalizes to webp, and shares concurrent cache reads',async()=>{
 const png=await sharp({create:{width:900,height:1200,channels:3,background:'green'}}).png().toBuffer();
 let calls=0;const reader=createOfficialMediaReader((async()=>{calls++;return new Response(new Uint8Array(png),{headers:{'content-type':'image/png'}});}) as typeof fetch);
 const key=OFFICIAL_MEDIA_ASSETS[0]!.key;
 const [a,b]=await Promise.all([reader.read(key),reader.read(key)]);
 expect(calls).toBe(1);expect(a).toEqual(b);
 const image=await sharp(a!).metadata();expect(image.format).toBe('webp');expect(image.height).toBe(512);
 expect(await reader.read(key)).toEqual(a);expect(calls).toBe(1);
 expect(await reader.read('https://evil.test/image')).toBeNull();expect(calls).toBe(1);
});
it('rejects HTML, oversized responses, invalid images and redirects outside reviewed hosts',async()=>{
 for(const response of [new Response('<html>blocked</html>',{headers:{'content-type':'text/html'}}),
  new Response('bad',{headers:{'content-type':'image/png'}}),
  new Response('large',{headers:{'content-type':'image/png','content-length':'10000001'}}),
  new Response(null,{status:302,headers:{location:'http://127.0.0.1/secret'}})]){
  const reader=createOfficialMediaReader((async()=>response) as typeof fetch);
  expect(await reader.read(OFFICIAL_MEDIA_ASSETS[0]!.key)).toBeNull();
 }
});
it('survives a fresh reader with verified disk-cached pixels when the original source is unavailable',async()=>{
 const dir=await mkdtemp(join(tmpdir(),'official-portrait-'));
 const png=await sharp({create:{width:40,height:50,channels:3,background:'green'}}).png().toBuffer();
 const key=OFFICIAL_MEDIA_ASSETS[0]!.key;
 try{
  const first=createOfficialMediaReader((async()=>new Response(new Uint8Array(png),{headers:{'content-type':'image/png'}})) as typeof fetch,undefined,dir);
  const expected=await first.read(key);expect(first.stats().persisted).toBe(1);
  let network=0;const next=createOfficialMediaReader((async()=>{network++;throw Error('source unavailable');}) as typeof fetch,undefined,dir);
  expect(await next.read(key)).toEqual(expected);expect(network).toBe(0);expect(next.stats().persisted).toBe(1);
 }finally{await rm(dir,{recursive:true,force:true});}
});
it('backs off a rate-limited reviewed source and caches a later real image response',async()=>{
 const png=await sharp({create:{width:20,height:20,channels:3,background:'green'}}).png().toBuffer();
 let calls=0;
 const reader=createOfficialMediaReader((async()=>{
  calls++;
  if(calls===1)return new Response(null,{status:429,headers:{'retry-after':'1'}});
  return new Response(new Uint8Array(png),{headers:{'content-type':'image/png'}});
 }) as typeof fetch);
 const bytes=await reader.read(OFFICIAL_MEDIA_ASSETS[0]!.key);
 expect(calls).toBe(2);expect((await sharp(bytes!).metadata()).format).toBe('webp');
},10000);
