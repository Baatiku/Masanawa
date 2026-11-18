import Fastify from 'fastify';
import {describe,it,expect,vi} from 'vitest';
import {GuestConsentSigner,registerStatusGuestProofRoutes,STATUS_GUEST_COOKIE} from './guest_consent.js';

const secret='guest-test-domain-separated-32-byte-secret-safe';
const postId='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
const challengeId='2c517585-75fb-4268-8adc-1b257e41f928';
const origin='https://status.example.test';
const headers={'origin':origin,'content-type':'application/json'};
const body={visibleFraction:0.9,foreground:true,engaged:true};

describe('public guest consent is explicit, revocable and financially inert',()=>{
 it('signs anonymous, purpose-separated, expiring tokens without exposing keys',()=>{
  let now=1_782_900_000_000;
  const signer=new GuestConsentSigner(secret,()=>now);
  const token=signer.issue(),actor=signer.verify(token)!;
  expect(token).toMatch(/^v1\.[A-Za-z0-9_-]{43}\.[0-9]{10}\.[0-9a-f]{64}$/);
  expect(actor.consentDigest).toMatch(/^[0-9a-f]{64}$/);
  expect(actor.viewerDigest).not.toBe(actor.consentDigest);
  expect(signer.verify(token.slice(0,-1)+(token.endsWith('a')?'b':'a'))).toBeNull();
  expect(signer.verify(token.replace('v1.','v2.'))).toBeNull();
  now+=86_400_000;
  expect(signer.verify(token)).toBeNull();
  expect(()=>new GuestConsentSigner('short')).toThrow('guest_signing_secret_too_short');
 });

 it('rejects anonymous crawlers, cross-origin CSRF, cookie tamper and disabled creation',async()=>{
  const begin=vi.fn(),complete=vi.fn(),withdraw=vi.fn(),revoked=vi.fn(async()=>false);
  const signer=new GuestConsentSigner(secret),app=Fastify();
  await registerStatusGuestProofRoutes(app,{port:{begin,complete,withdraw,revoked},signer,
   enabled:()=>false,publicBaseUrl:origin});
  const noToken=await app.inject({method:'POST',url:'/v1/status/guest/challenges',
    headers, payload:{postId}});
  expect(noToken.statusCode).toBe(503);
  const disabled=await app.inject({method:'POST',url:'/v1/status/guest/consent',
    headers,payload:{consent:true}});
  expect(disabled.statusCode).toBe(503);
  expect(disabled.headers['set-cookie']).toBeUndefined();
  const cross=await app.inject({method:'POST',url:'/v1/status/guest/consent',
    headers:{...headers,origin:'https://evil.example'},payload:{consent:true}});
  expect(cross.statusCode).toBe(403);
  const sibling=await app.inject({method:'POST',url:'/v1/status/guest/consent',
    headers:{...headers,'sec-fetch-site':'same-site'},payload:{consent:true}});
  expect(sibling.statusCode).toBe(403);
  expect(begin).not.toHaveBeenCalled();
  expect(complete).not.toHaveBeenCalled();
  expect(withdraw).not.toHaveBeenCalled();
  await app.close();
 });

 it('creates a cookie only after consent, records nonpayable evidence, and revokes on withdrawal',async()=>{
  const begin=vi.fn(async()=>({started:true,challengeId,qualified:false,payable:false}));
  const complete=vi.fn(async()=>({recorded:true,reviewStatus:'unverified',
   qualified:false,payable:false}));
  const withdraw=vi.fn(async()=>{}),revoked=vi.fn(async()=>false);
  const signer=new GuestConsentSigner(secret),app=Fastify();
  await registerStatusGuestProofRoutes(app,{port:{begin,complete,withdraw,revoked},signer,
   enabled:()=>true,publicBaseUrl:origin});
  const missing=await app.inject({method:'POST',url:'/v1/status/guest/challenges',
    headers,payload:{postId}});
  expect(missing.statusCode).toBe(403);
  expect(missing.headers['set-cookie']).toBeUndefined();
  const refuse=await app.inject({method:'POST',url:'/v1/status/guest/consent',
    headers,payload:{consent:false}});
  expect(refuse.statusCode).toBe(422);
  const consent=await app.inject({method:'POST',url:'/v1/status/guest/consent',
    headers,payload:{consent:true}});
  expect(consent.statusCode).toBe(200);
  expect(consent.json()).toMatchObject({consented:true,qualified:false,payable:false});
  const setCookie=String(consent.headers['set-cookie']);
  expect(setCookie).toContain(`${STATUS_GUEST_COOKIE}=v1.`);
  expect(setCookie).toContain('HttpOnly; Secure; SameSite=Lax');
  const cookie=setCookie.split(';')[0]!;
  const authenticated={...headers,cookie};
  const reused=await app.inject({method:'POST',url:'/v1/status/guest/consent',
   headers:authenticated,payload:{consent:true}});
  expect(reused.json()).toMatchObject({existing:true,payable:false});
  expect(reused.headers['set-cookie']).toBeUndefined();
  const duplicate=await app.inject({method:'POST',url:'/v1/status/guest/challenges',
    headers:{...authenticated,cookie:`${cookie}; ${cookie}`},payload:{postId}});
  expect(duplicate.statusCode).toBe(403);
  const malformed=await app.inject({method:'POST',url:'/v1/status/guest/challenges',
    headers:{...authenticated,cookie:cookie+'tampered'},payload:{postId}});
  expect(malformed.statusCode).toBe(403);
  const created=await app.inject({method:'POST',url:'/v1/status/guest/challenges',
    headers:authenticated,payload:{postId}});
  expect(created.statusCode).toBe(200);
  expect(created.json()).toEqual({started:true,challengeId,qualified:false,payable:false});
  expect(begin).toHaveBeenCalledWith(postId,signer.verify(cookie.split('=')[1]!),undefined);
  const observed=await app.inject({method:'POST',
    url:`/v1/status/guest/challenges/${challengeId}/complete`,headers:authenticated,
    payload:body});
  expect(observed.statusCode).toBe(200);
  expect(observed.json()).toEqual({recorded:true,reviewStatus:'unverified',
   qualified:false,payable:false});
  expect(complete).toHaveBeenCalledWith(challengeId,
   signer.verify(cookie.split('=')[1]!),body);
  const erased=await app.inject({method:'DELETE',url:'/v1/status/guest/consent',
    headers:{origin,cookie}});
  expect(erased.statusCode).toBe(200);
  expect(erased.headers['set-cookie']).toContain('Max-Age=0');
  expect(withdraw).toHaveBeenCalledWith(signer.verify(cookie.split('=')[1]!)!.consentDigest);
  revoked.mockResolvedValueOnce(true);
  const blocked=await app.inject({method:'POST',url:'/v1/status/guest/consent',
   headers:authenticated,payload:{consent:true}});
  expect(blocked.statusCode).toBe(403);
  expect(blocked.headers['set-cookie']).toContain('Max-Age=0');
  for(const reply of [missing,created,observed,erased]){
   expect(reply.headers['cache-control']).toBe('no-store');
   expect(reply.headers['referrer-policy']).toBe('no-referrer');
  }
  await app.close();
 });

 it('rejects altered payloads, invalid origin and non-JSON without touching proofs',async()=>{
  const begin=vi.fn(),complete=vi.fn(),withdraw=vi.fn(),revoked=vi.fn(async()=>false);
  const signer=new GuestConsentSigner(secret),app=Fastify();
  await registerStatusGuestProofRoutes(app,{port:{begin,complete,withdraw,revoked},signer,
   enabled:()=>true,publicBaseUrl:origin});
  const cookie=`${STATUS_GUEST_COOKIE}=${signer.issue()}`;
  const invalid=[{postId,creditMb:1},{postId:'x'},{postId,referralToken:'bad'}];
  for(const payload of invalid){
   const reply=await app.inject({method:'POST',url:'/v1/status/guest/challenges',
    headers:{...headers,cookie},payload});
   expect(reply.statusCode).toBe(422);
  }
  const bogus=await app.inject({method:'POST',
   url:`/v1/status/guest/challenges/${challengeId}/complete`,
   headers:{...headers,cookie},payload:{...body,paid:true}});
  expect(bogus.statusCode).toBe(422);
  const noOrigin=await app.inject({method:'DELETE',url:'/v1/status/guest/consent',
   headers:{cookie}});
  expect(noOrigin.statusCode).toBe(403);
  const noJson=await app.inject({method:'POST',url:'/v1/status/guest/consent',
   headers:{origin,'content-type':'text/plain'},payload:'consent'});
  expect(noJson.statusCode).toBe(415);
  expect(begin).not.toHaveBeenCalled();expect(complete).not.toHaveBeenCalled();
  expect(withdraw).not.toHaveBeenCalled();
  await app.close();
 });
});
