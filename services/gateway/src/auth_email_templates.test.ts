import {describe,it,expect} from 'vitest';
import Fastify from 'fastify';
import {renderMasanawaOtpEmail,renderMasanawaWelcomeEmail} from './auth_email_templates.js';
import {registerAuthEmailRoutes} from './auth_email_routes.js';
describe('branded account emails',()=>{
 it('uses real PNG branding, contiguous OTP and a fragment-only copy helper',()=>{
  const message=renderMasanawaOtpEmail('012345','https://gateway.example.test');
  expect(message.html).toContain('https://gateway.example.test/brand/masanawa-logo.png');
  expect(message.html).toContain('/auth/code#012345');expect(message.html).not.toContain('<script');
  expect(message.text).toContain('012345');expect(message.html).toContain('10 minutes');
  expect(()=>renderMasanawaOtpEmail('<html>')).toThrow();
  expect(()=>renderMasanawaOtpEmail('123456','http://bad.test')).toThrow();
 });
 it('escapes welcome names and displays the assigned username',()=>{
  const message=renderMasanawaWelcomeEmail({name:'<img onerror=alert(1)>',username:'amina_123'});
  expect(message.html).not.toContain('<img onerror');expect(message.html).toContain('&lt;img');expect(message.html).toContain('@amina_123');
 });
 it('serves public logo and a no-store code helper without receiving the code',async()=>{
  const app=Fastify();registerAuthEmailRoutes(app);
  try{
   const logo=await app.inject('/brand/masanawa-logo.png');expect(logo.statusCode).toBe(200);expect(logo.rawPayload.subarray(1,4).toString()).toBe('PNG');
   const page=await app.inject('/auth/code');expect(page.headers['cache-control']).toBe('no-store');expect(page.headers['referrer-policy']).toBe('no-referrer');
   expect(page.headers['content-security-policy']).toContain('sha256-');expect(page.body).toContain('navigator.clipboard.writeText');expect(page.body).toContain('history.replaceState');
  }finally{await app.close();}
 });
});
