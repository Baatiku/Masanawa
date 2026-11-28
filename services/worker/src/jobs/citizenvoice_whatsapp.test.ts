import {describe,expect,it,vi} from 'vitest';
import {availableCitizenvoiceSkills,citizenvoiceIntent,getCitizenvoiceNews,isCitizenvoicePilot,renderCitizenvoiceNews,requestedNewsState,wantsAccountLink,wantsAccountRegistration,wantsData} from './citizenvoice_whatsapp.js';
const ctx={channelId:'12345678-1234-1234-1234-123456789abc',numberPurpose:'service',roleLevel:4,permissions:['faq','account_link','data_catalog','data_purchase']};
const env={MASANAWA_CITIZENVOICE_WHATSAPP_PILOT_CHANNELS:ctx.channelId};
describe('Citizenvoice WhatsApp service catalogue',()=>{
 it('defaults to no pilot and never activates personal numbers',()=>{
  expect(isCitizenvoicePilot(ctx,{})).toBe(false);
  expect(isCitizenvoicePilot({...ctx,numberPurpose:'personal'},env)).toBe(false);
  expect(availableCitizenvoiceSkills(ctx,env).map(s=>s.id)).toEqual(['help','link','data','news']);
 });
 it('recognizes natural data and account linking requests without confusing CAC registration',()=>{
  expect(wantsData('Buy me 2 GB of MTN data')).toBe(true);
  expect(wantsData('How do I protect my personal data?')).toBe(false);
  expect(wantsAccountRegistration('How do I register my business with CAC?')).toBe(false);
  expect(wantsAccountRegistration('Create my account')).toBe(true);
  expect(wantsAccountLink('Please link my account')).toBe(true);
 });
 it('does not activate unsupported writes or political features',()=>{
  expect(citizenvoiceIntent('Send ₦2,000 to my brother')).toBe('unsupported');
  expect(citizenvoiceIntent('Show me forum updates')).toBe('unsupported');
  expect(citizenvoiceIntent('What can you do?')).toBe('menu');
  expect(citizenvoiceIntent('Latest Kano news')).toBe('news');
 });
 it('distinguishes information requests from money and account actions',()=>{
  expect(citizenvoiceIntent('Send me the latest Kano news')).toBe('news');
  expect(citizenvoiceIntent('Send me 5 headlines')).toBe('news');
  expect(citizenvoiceIntent('Transfer 2000 to my brother')).toBe('unsupported');
  expect(citizenvoiceIntent('Send my sister ₦500')).toBe('unsupported');
  expect(citizenvoiceIntent('Tura kuɗi')).toBe('unsupported');
  expect(citizenvoiceIntent('Labaran Kano')).toBe('news');
  expect(wantsData('I need personal data protection advice')).toBe(false);
  expect(wantsData('I want data privacy guidance')).toBe(false);
  expect(wantsAccountRegistration('How can I open an account with my bank?')).toBe(false);
  expect(wantsAccountRegistration('Create my account on Citizenvoice')).toBe(true);
  expect(wantsAccountLink('Link my account to my bank')).toBe(false);
 });
 it('filters old, social, wrong-state and malformed publisher rows',()=>{
  const now=Date.parse('2026-11-28T13:00:00Z');
  const row={title:'New public information',publisher:'Publisher',publishedAt:'2026-11-27T13:00:00Z',url:'https://example.com/a',states:['kano']};
  const payload={items:[{...row,title:'Old',publishedAt:'2026-11-01T13:00:00Z'},{...row,title:'Social',sourceType:'social'},{...row,title:'Wrong state',states:['lagos']},{...row,title:'Bad URL',url:'javascript:alert(1)'},row]};
  expect(requestedNewsState('Latest Kano news')).toBe('kano');
  const result=renderCitizenvoiceNews(payload,'kano',now);
  expect(result).toContain('New public information');
  for(const bad of ['Old','Social','Wrong state','Bad URL'])expect(result).not.toContain(bad);
 });
 it('handles source failure without fabricated headlines',async()=>{
  const f=vi.fn(async()=>new Response('',{status:503})) as unknown as typeof fetch;
  expect(await getCitizenvoiceNews('https://example.com','kano',f)).toContain('temporarily unavailable');
  expect(f).toHaveBeenCalledWith('https://example.com/api/news?state=kano',expect.objectContaining({redirect:'error'}));
 });
});
