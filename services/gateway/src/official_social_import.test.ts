import {expect,it,vi} from 'vitest';
import {createOfficialSocialFetcher,syncOfficialSocialPage} from './official_social_import.js';
const account={platform:'x' as const,accountId:'123',handle:'official',rightsBasis:'reviewed permission',reviewExpiresAt:'2099-01-01T00:00:00Z'};
it('preserves original text/extended posts, canonical ownership, dates and token privacy',async()=>{
 const original='First line\nSecond line — unchanged 🇳🇬';
 const fetchImpl=vi.fn(async(url:unknown,init:RequestInit)=>{
  expect(String(url)).toContain('api.x.com/2/users/123/tweets');expect(String(url)).not.toContain('secret');
  expect(init.redirect).toBe('error');expect(init.headers).toEqual({Authorization:'Bearer secret'});
  return Response.json({data:[{id:'42',author_id:'123',text:'short',note_tweet:{text:original},created_at:'2026-10-01T00:00:00Z'}],meta:{next_token:'next'}});
 });
 const result=await createOfficialSocialFetcher({xBearer:'secret',fetchImpl:fetchImpl as typeof fetch})(account);
 expect(result.posts[0]).toMatchObject({originalText:original,sourceUrl:'https://x.com/official/status/42',accountId:'123'});
 expect(result.posts[0]!.contentSha256).toHaveLength(64);expect(result.nextCursor).toBe('next');
});
it('refuses unqualified sources, fake author binding, missing access and provider failures',async()=>{
 const fetchImpl=vi.fn(async()=>Response.json({data:[{id:'42',author_id:'other',text:'spoofed',created_at:'2026-10-01'}]}));
 await expect(createOfficialSocialFetcher({})(account)).rejects.toThrow('credentials_missing');
 await expect(createOfficialSocialFetcher({xBearer:'key',fetchImpl:fetchImpl as typeof fetch})(account)).rejects.toThrow('author_mismatch');
 await expect(createOfficialSocialFetcher({xBearer:'key'})({...account,reviewExpiresAt:'2020-01-01'})).rejects.toThrow('not_qualified');
 await expect(createOfficialSocialFetcher({xBearer:'key',fetchImpl:async()=>new Response('',{status:429})})(account)).rejects.toThrow('rate_limited');
});
it('does not advance checkpoint if durable import fails; never rewrites source content',async()=>{
 const checkpoint=vi.fn(),upsert=vi.fn(async()=>{throw Error('database unavailable');});
 const fetchPage=createOfficialSocialFetcher({xBearer:'key',fetchImpl:async()=>Response.json({data:[{id:'42',author_id:'123',text:'original',created_at:'2026-10-01'}]})});
 await expect(syncOfficialSocialPage({account,fetchPage,store:{upsert,checkpoint}})).rejects.toThrow('database');
 expect(checkpoint).not.toHaveBeenCalled();
});
it('reads Facebook original Page messages using authorized API and refuses arbitrary API versions',async()=>{
 const fetchPage=createOfficialSocialFetcher({facebookBearer:'key',facebookVersion:'v26.0',fetchImpl:async(url)=>{
  expect(String(url)).toContain('graph.facebook.com/v26.0/123/posts');
  return Response.json({data:[{id:'123_42',from:{id:'123'},message:'Exact Facebook text',created_time:'2026-10-01',permalink_url:'https://www.facebook.com/123/posts/42'}]});
 }});
 expect((await fetchPage({...account,platform:'facebook'})).posts[0]!.originalText).toBe('Exact Facebook text');
 await expect(createOfficialSocialFetcher({facebookBearer:'key'})({...account,platform:'facebook'})).rejects.toThrow('version_required');
});
it('accepts an empty X timeline and rejects oversized responses before parsing',async()=>{
 const empty=createOfficialSocialFetcher({xBearer:'key',fetchImpl:async()=>Response.json({meta:{result_count:0}})});
 expect((await empty(account)).posts).toEqual([]);
 const huge=createOfficialSocialFetcher({xBearer:'key',fetchImpl:async()=>new Response('x'.repeat(2*1024*1024+1))});
 await expect(huge(account)).rejects.toThrow('response_too_large');
});
it('rejects Facebook redirect links even when their hostname is genuine',async()=>{
 const fetcher=createOfficialSocialFetcher({facebookBearer:'key',facebookVersion:'v26.0',fetchImpl:async()=>Response.json({data:[
  {id:'123_42',from:{id:'123'},message:'Original',created_time:'2026-10-01',permalink_url:'https://facebook.com/l.php?u=https://evil.test'}]})});
 await expect(fetcher({...account,platform:'facebook'})).rejects.toThrow('invalid_official_permalink');
});
it('normalizes X edit IDs to one original while rejecting old versions',async()=>{
 const fetcher=createOfficialSocialFetcher({xBearer:'key',fetchImpl:async()=>Response.json({data:[
  {id:'43',author_id:'123',text:'Actual edited text',created_at:'2026-10-01',edit_history_tweet_ids:['42','43']},
  {id:'42',author_id:'123',text:'Old text',created_at:'2026-10-01',edit_history_tweet_ids:['42','43']}]})});
 const result=await fetcher(account);expect(result.posts).toHaveLength(1);
 expect(result.posts[0]).toMatchObject({externalId:'42',providerId:'43',editVersion:2,originalText:'Actual edited text',sourceUrl:'https://x.com/official/status/43'});
});
