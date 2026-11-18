import Fastify from 'fastify';
import {Script} from 'node:vm';
import {describe,it,expect,vi} from 'vitest';
import {registerGuestExperience,renderGuestExperience} from './guest_experience.js';
import {renderPublicStatusPage} from './public_landing.js';

const id='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
const post={id,name:'Amina <script>',body:'Learning <img src=x onerror=alert(1)>',
 kind:'image' as const,imageCount:1,
 imagePreview:{id:'reviewed_image',altText:'A <book> on a table'}};
const referral='opaqueOriginalSharer012345678901';

describe('optional guest observation has a distinct consent screen, never a crawler side effect',()=>{
 it('renders accessible opt-in/out, sanitizes post text and requires interaction before network',()=>{
  const html=renderGuestExperience(post,{nonce:'safeNonceBase64',referral,image:true});
  expect(html).toContain('Continue without optional verification');
  expect(html).toContain('Allow optional verification');
  expect(html).toContain('Withdraw optional verification');
  expect(html).toContain('role="status" aria-live="polite"');
  expect(html).toContain('Amina &lt;script&gt;');
  expect(html).toContain('Learning &lt;img');
  expect(html).toContain('alt="A &lt;book&gt; on a table"');
  expect(html).toContain('No name, phone, location or fingerprint');
  const script=html.match(/<script nonce="[^"]+">([\s\S]*?)<\/script>/)?.[1];
  expect(script).toBeTruthy();
  expect(()=>new Script(script!)).not.toThrow();
  expect(html).toContain('guest/challenges');
  expect(html).toContain("allow.addEventListener('click'");
  expect(html).toContain("withdraw.addEventListener('click'");
  expect(html).toContain('document.visibilityState');
  expect(html).toContain('visible<0.5');
  expect(html).toContain('continuousMs<6500');
  expect(html).toContain("result.recorded?'Optional observation pending fraud review");
  expect(html).not.toContain('<script>alert');
  expect(html).not.toContain('<img src=x onerror');
  expect(html).not.toContain('src="http');
  expect(html).not.toContain('localStorage');
  expect(html).not.toContain('navigator.userAgent');
  const publicHtml=renderPublicStatusPage(post,referral,'https://status.example.test',true);
  expect(publicHtml).not.toContain('/verify');
  expect(publicHtml).not.toMatch(/<script\b/i);
  const enabled=renderPublicStatusPage(post,referral,'https://status.example.test',true,true);
  expect(enabled).toContain(`/status/${id}/verify?r=${referral}`);
  expect(enabled).not.toMatch(/<script\b/i);
 });

 it('denies the feature, private/gone posts, and never sets cookie on GET',async()=>{
  const find=vi.fn(async()=>post),validReferral=vi.fn(async()=>true);
  const disabled=Fastify();
  await registerGuestExperience(disabled,{port:{find,validReferral},enabled:()=>false});
  const reply=await disabled.inject({url:`/status/${id}/verify?r=${referral}`});
  expect(reply.statusCode).toBe(404);
  expect(reply.headers['set-cookie']).toBeUndefined();
  expect(find).not.toHaveBeenCalled();
  await disabled.close();

  const gone=Fastify();
  await registerGuestExperience(gone,{port:{find:async()=>({id,gone:true})},
   enabled:()=>true});
  expect((await gone.inject({url:`/status/${id}/verify`})).statusCode).toBe(410);
  await gone.close();

  const forbidden=Fastify();
  await registerGuestExperience(forbidden,{port:{find:async()=>null},
   enabled:()=>true});
  expect((await forbidden.inject({url:`/status/${id}/verify`})).statusCode).toBe(404);
  await forbidden.close();
 });

 it('validates referral live and produces CSP-nonced consent page with zero persistence',async()=>{
  const find=vi.fn(async()=>post);
  const validReferral=vi.fn(async(_id:string,token:string)=>token===referral);
  const app=Fastify();
  await registerGuestExperience(app,{port:{find,validReferral},
   enabled:()=>true,imagesEnabled:()=>true});
  const response=await app.inject({url:`/status/${id}/verify?r=${referral}`});
  expect(response.statusCode).toBe(200);
  expect(response.headers['cache-control']).toBe('no-store');
  expect(response.headers['set-cookie']).toBeUndefined();
  expect(response.headers['referrer-policy']).toBe('no-referrer');
  expect(response.headers['x-robots-tag']).toBe('noindex, nofollow');
  expect(response.headers['content-security-policy']).toContain("default-src 'none'");
  expect(response.headers['content-security-policy']).toContain('script-src \'nonce-');
  expect(response.headers['content-security-policy']).toContain("connect-src 'self'");
  expect(response.body).toContain(`const postId="${id}",referral="${referral}"`);
  expect(validReferral).toHaveBeenCalledWith(id,referral);
  const invalid=await app.inject({url:`/status/${id}/verify?r=invalid`});
  expect(invalid.statusCode).toBe(200);
  expect(invalid.body).toContain('referral=null');
  expect(validReferral).toHaveBeenCalledTimes(1);
  const revoked=await app.inject({url:`/status/${id}/verify?r=${'a'.repeat(32)}`});
  expect(revoked.body).toContain('referral=null');
  expect(find).toHaveBeenCalledTimes(3);
  expect(validReferral).toHaveBeenCalledTimes(2);
  await app.close();
 });
});
