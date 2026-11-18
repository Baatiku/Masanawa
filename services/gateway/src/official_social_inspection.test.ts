import {expect,it} from 'vitest';
import {createOfficialSocialInspector,OfficialSocialError,validOfficialPermalink} from './official_social_import.js';
const a={platform:'x' as const,accountId:'123',handle:'official',rightsBasis:'Reviewed permission',reviewExpiresAt:'2099-01-01'};
it('uses explicit per-ID deletions, preserving posts omitted from partial results',async()=>{
 const inspect=createOfficialSocialInspector({xBearer:'key',fetchImpl:async()=>Response.json({errors:[{resource_id:'42',type:'https://api.x.com/2/problems/resource-not-found'}]})});
 const r=await inspect(a,[{externalId:'42',providerId:'42'},{externalId:'43',providerId:'43'}]);
 expect(r.withdrawn).toEqual([{externalId:'42',reason:'deleted'}]);expect(r.checkedIds).toEqual(['42']);
});
it('follows a provider edit-history pointer once and retains canonical ownership',async()=>{
 let n=0;const inspect=createOfficialSocialInspector({xBearer:'key',fetchImpl:async()=>Response.json({data:[++n===1?
  {id:'42',text:'Old',author_id:'123',created_at:'2026-10-01',edit_history_tweet_ids:['42','43']}:
  {id:'43',text:'Current',author_id:'123',created_at:'2026-10-01',edit_history_tweet_ids:['42','43']}]})});
 expect((await inspect(a,[{externalId:'42',providerId:'42'}])).posts[0]).toMatchObject({externalId:'42',providerId:'43',originalText:'Current'});
 expect(n).toBe(2);
});
it('supports Facebook photo/story originals but refuses redirect routes and author mismatches',async()=>{
 for(const url of ['https://www.facebook.com/photo.php?fbid=42&id=123','https://www.facebook.com/story.php?story_fbid=42&id=123'])expect(validOfficialPermalink('facebook',url)).toBe(url);
 expect(()=>validOfficialPermalink('facebook','https://facebook.com/l.php?u=https://evil.test')).toThrow();
 const inspect=createOfficialSocialInspector({facebookBearer:'key',facebookVersion:'v26.0',fetchImpl:async()=>Response.json({'123_42':{error:{code:100,error_subcode:33}}})});
 expect((await inspect({...a,platform:'facebook'},[{externalId:'123_42',providerId:'123_42'}])).withdrawn).toEqual([{externalId:'123_42',reason:'unavailable'}]);
});
it('respects provider backoff and never turns an HTTP failure into per-post deletion',async()=>{
 const inspect=createOfficialSocialInspector({xBearer:'key',fetchImpl:async()=>new Response('',{status:429,headers:{'retry-after':'120'}})});
 try{await inspect(a,[{externalId:'42',providerId:'42'}]);throw Error('Expected rate limit');}catch(e){expect(e).toBeInstanceOf(OfficialSocialError);expect((e as OfficialSocialError).retryAfterMs).toBe(120000);}
});
