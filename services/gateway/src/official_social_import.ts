import {createHash} from 'node:crypto';
export interface OfficialSocialAccount {
 readonly platform:'x'|'facebook';readonly accountId:string;
 /** Reviewed canonical username for X, not inferred from a person's name. */
 readonly handle:string;readonly rightsBasis:string;
 readonly reviewExpiresAt:string;
}
export interface OfficialSourcePost {
 readonly platform:'x'|'facebook';readonly accountId:string;readonly externalId:string;
 readonly originalText:string;readonly publishedAt:string;readonly sourceUrl:string;
 readonly contentSha256:string;
}
function validAccount(a:OfficialSocialAccount){
 if(!/^\d{1,30}$/.test(a.accountId)||!a.rightsBasis.trim()||
  !Number.isFinite(Date.parse(a.reviewExpiresAt))||Date.parse(a.reviewExpiresAt)<=Date.now()||
  a.platform==='x'&&!/^[A-Za-z0-9_]{1,15}$/.test(a.handle))throw Error('official_source_not_qualified');
}
/** No scraper, generative rewrite, social write permission or token-in-URL.
 * Access/rights are separately reviewed per selected original account. */
export function createOfficialSocialFetcher(input:{xBearer?:string;facebookBearer?:string;
 facebookVersion?:string;fetchImpl?:typeof fetch}){
 const fetcher=input.fetchImpl??fetch;
 return async(a:OfficialSocialAccount,cursor?:string):Promise<{posts:OfficialSourcePost[];nextCursor?:string}>=>{
  validAccount(a);
  if(cursor&&(!/^[A-Za-z0-9_+=/.-]{1,2048}$/.test(cursor)))throw Error('invalid_social_cursor');
  const token=a.platform==='x'?input.xBearer:input.facebookBearer;
  if(!token)throw Error('official_source_credentials_missing');
  let url:URL;
  if(a.platform==='x'){
   url=new URL(`https://api.x.com/2/users/${a.accountId}/tweets`);
   url.searchParams.set('tweet.fields','id,text,author_id,created_at,note_tweet,referenced_tweets');
   url.searchParams.set('max_results','100');url.searchParams.set('exclude','retweets,replies');
   if(cursor)url.searchParams.set('pagination_token',cursor);
  }else{
   if(!/^v\d{2}\.0$/.test(input.facebookVersion??''))throw Error('facebook_api_version_required');
   url=new URL(`https://graph.facebook.com/${input.facebookVersion}/${a.accountId}/posts`);
   url.searchParams.set('fields','id,message,created_time,permalink_url,from');url.searchParams.set('limit','100');
   if(cursor)url.searchParams.set('after',cursor);
  }
  const r=await fetcher(url,{headers:{Authorization:`Bearer ${token}`},redirect:'error',signal:AbortSignal.timeout(15000)});
  if(!r.ok)throw Error(r.status===429?'official_source_rate_limited':'official_source_unavailable');
  const reader=r.body?.getReader();if(!reader)throw Error('invalid_official_source_response');
  const chunks:Uint8Array[]=[];let size=0;
  try{while(true){const part=await reader.read();if(part.done)break;
   size+=part.value.byteLength;if(size>2*1024*1024){await reader.cancel();throw Error('official_source_response_too_large');}
   chunks.push(part.value);
  }}finally{reader.releaseLock();}
  const bytes=Buffer.concat(chunks);
  const raw=JSON.parse(bytes.toString('utf8')) as Record<string,any>;
  if(raw.data===undefined&&raw.meta?.result_count===0)raw.data=[];
  if(!Array.isArray(raw.data)||raw.data.length>100)throw Error('invalid_official_source_response');
  const posts:OfficialSourcePost[]=[];
  for(const item of raw.data){
   const account=a.platform==='x'?item.author_id:item.from?.id;
   if(account!==a.accountId)throw Error('official_source_author_mismatch');
   // A repost/quote is not an original statement by this official.
   if(a.platform==='x'&&item.referenced_tweets?.length)continue;
   const text=a.platform==='x'?(item.note_tweet?.text??item.text):item.message;
   if(text==null||text==='')continue; // Media-only content needs an authorized embed/media adapter.
   if(typeof text!=='string'||text.length>100000)throw Error('official_source_text_unavailable');
   const id=item.id,at=a.platform==='x'?item.created_at:item.created_time;
   if(typeof id!=='string'||!/^\d+(?:_\d+)?$/.test(id)||typeof at!=='string'||!Number.isFinite(Date.parse(at)))
    throw Error('invalid_official_source_post');
   const sourceUrl=a.platform==='x'?`https://x.com/${a.handle}/status/${id}`:item.permalink_url;
   const link=typeof sourceUrl==='string'?new URL(sourceUrl):null;
   if(!link||link.protocol!=='https:'||link.username||link.password||link.hash||link.port||
    !(a.platform==='x'?['x.com']:['facebook.com','www.facebook.com']).includes(link.hostname))throw Error('invalid_official_permalink');
   if(a.platform==='facebook'&&!(/^\/[^/]+\/posts\/[^/]+\/?$/.test(link.pathname)||
    link.pathname==='/permalink.php'&&link.searchParams.has('story_fbid')&&link.searchParams.has('id')))throw Error('invalid_official_permalink');
   posts.push({platform:a.platform,accountId:a.accountId,externalId:id,originalText:text,
    publishedAt:new Date(at).toISOString(),sourceUrl:link.href,
    contentSha256:createHash('sha256').update(text,'utf8').digest('hex')});
  }
  const next=a.platform==='x'?raw.meta?.next_token:raw.paging?.next?raw.paging?.cursors?.after:undefined;
  if(next!==undefined&&(typeof next!=='string'||! /^[A-Za-z0-9_+=/.-]{1,2048}$/.test(next)))throw Error('invalid_social_cursor');
  return {posts,...(next?{nextCursor:next}:{})};
 };
}
/** Checkpoint advances only after every exact source post has durable receipt.
 * Repository upserts deduplicate by platform/account/post and preserve revisions. */
export async function syncOfficialSocialPage(input:{account:OfficialSocialAccount;cursor?:string;
 fetchPage:(account:OfficialSocialAccount,cursor?:string)=>Promise<{posts:OfficialSourcePost[];nextCursor?:string}>;
 store:{upsert(post:OfficialSourcePost):Promise<void>;checkpoint(cursor:string|undefined):Promise<void>}}){
 const page=await input.fetchPage(input.account,input.cursor);
 for(const post of page.posts)await input.store.upsert(post);
 await input.store.checkpoint(page.nextCursor);return {imported:page.posts.length,nextCursor:page.nextCursor};
}
