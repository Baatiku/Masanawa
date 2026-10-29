import {createHash} from 'node:crypto';
export interface OfficialSocialAccount {readonly platform:'x'|'facebook';readonly accountId:string;readonly handle:string;readonly rightsBasis:string;readonly reviewExpiresAt:string;}
export interface OfficialSourcePost {readonly platform:'x'|'facebook';readonly accountId:string;readonly externalId:string;readonly providerId?:string;readonly editVersion?:number;readonly providerUpdatedAt?:string;readonly originalText:string;readonly publishedAt:string;readonly sourceUrl:string;readonly contentSha256:string;}
export class OfficialSocialError extends Error {constructor(message:string,readonly retryAfterMs=900000){super(message);}}
export interface OfficialSocialConfig {xBearer?:string;facebookBearer?:string;facebookVersion?:string;fetchImpl?:typeof fetch;}
export function validOfficialAccount(a:OfficialSocialAccount){
 if(!/^\d{1,30}$/.test(a.accountId)||!a.rightsBasis.trim()||!Number.isFinite(Date.parse(a.reviewExpiresAt))||Date.parse(a.reviewExpiresAt)<=Date.now()||a.platform==='x'&&!/^[A-Za-z0-9_]{1,15}$/.test(a.handle))throw Error('official_source_not_qualified');
}
export function validOfficialPermalink(platform:'x'|'facebook',raw:unknown){
 if(typeof raw!=='string')throw Error('invalid_official_permalink');let u:URL;try{u=new URL(raw);}catch{throw Error('invalid_official_permalink');}
 if(u.protocol!=='https:'||u.username||u.password||u.hash||u.port||!(platform==='x'?['x.com']:['facebook.com','www.facebook.com']).includes(u.hostname))throw Error('invalid_official_permalink');
 const numeric=(key:string)=>/^\d{1,30}$/.test(u.searchParams.get(key)??'');
 const valid=platform==='x'?/^\/[A-Za-z0-9_]{1,15}\/status\/\d+$/.test(u.pathname):
  /^\/[^/]+\/posts\/[^/]+\/?$/.test(u.pathname)||['/permalink.php','/story.php'].includes(u.pathname)&&numeric('story_fbid')&&numeric('id')||
  ['/photo.php','/photo','/photo/'].includes(u.pathname)&&numeric('fbid');
 if(!valid)throw Error('invalid_official_permalink');return u.href;
}
const fields='id,text,author_id,created_at,note_tweet,referenced_tweets,edit_history_tweet_ids,withheld';
export function officialPostFromProvider(a:OfficialSocialAccount,item:Record<string,any>):OfficialSourcePost|null{
 if((a.platform==='x'?item.author_id:item.from?.id)!==a.accountId)throw Error('official_source_author_mismatch');
 if(item.is_published===false||item.withheld||a.platform==='x'&&item.referenced_tweets?.length)return null;
 const text=a.platform==='x'?(item.note_tweet?.text??item.text):item.message;
 if(text==null||text==='')return null;
 if(typeof text!=='string'||text.length>100000)throw Error('official_source_text_unavailable');
 const id=item.id,at=a.platform==='x'?item.created_at:item.created_time;
 if(typeof id!=='string'||!(a.platform==='x'?/^\d{1,30}$/ : /^\d{1,30}_\d{1,30}$/).test(id)||
  a.platform==='facebook'&&!id.startsWith(a.accountId+'_')||typeof at!=='string'||!Number.isFinite(Date.parse(at)))throw Error('invalid_official_source_post');
 let externalId=id,editVersion=0;
 if(a.platform==='x'&&item.edit_history_tweet_ids!==undefined){
  const history=item.edit_history_tweet_ids;
  if(!Array.isArray(history)||!history.length||history.length>100||history.some(x=>typeof x!=='string'||!/^\d{1,30}$/.test(x))||!history.includes(id))throw Error('invalid_official_edit_history');
  if(id!==history.at(-1))return null; // Never overwrite a current edit with an older version.
  externalId=history[0];editVersion=history.length;
 }
 const updated=a.platform==='facebook'?(item.updated_time??at):at;
 if(typeof updated!=='string'||!Number.isFinite(Date.parse(updated)))throw Error('invalid_official_source_post');
 const sourceUrl=validOfficialPermalink(a.platform,a.platform==='x'?`https://x.com/${a.handle}/status/${id}`:item.permalink_url);
 return {platform:a.platform,accountId:a.accountId,externalId,providerId:id,editVersion,providerUpdatedAt:new Date(updated).toISOString(),originalText:text,
  publishedAt:new Date(at).toISOString(),sourceUrl,contentSha256:createHash('sha256').update(text,'utf8').digest('hex')};
}
export function createOfficialSocialApi(input:OfficialSocialConfig){
 const fetcher=input.fetchImpl??fetch;
 return {async get(a:OfficialSocialAccount,url:URL,cursor=false):Promise<Record<string,any>>{
  validOfficialAccount(a);const token=a.platform==='x'?input.xBearer:input.facebookBearer;if(!token)throw Error('official_source_credentials_missing');
  const expected=a.platform==='x'?'api.x.com':'graph.facebook.com';if(url.protocol!=='https:'||url.hostname!==expected||url.username||url.password||url.port)throw Error('invalid_social_api_url');
  const r=await fetcher(url,{headers:{Authorization:`Bearer ${token}`},redirect:'error',signal:AbortSignal.timeout(15000)});
  if(!r.ok){const after=r.headers.get('retry-after');const duration=after?(/^\d+$/.test(after)?Number(after)*1000:Date.parse(after)-Date.now()):60000;
   throw new OfficialSocialError(r.status===429?'official_source_rate_limited':[401,403].includes(r.status)?'official_source_access_denied':r.status===400&&cursor?'official_source_cursor_invalid':'official_source_unavailable',Math.min(86400000,Math.max(60000,Number.isFinite(duration)?duration:60000)));}
  const reader=r.body?.getReader();if(!reader)throw Error('invalid_official_source_response');const chunks:Uint8Array[]=[];let size=0;
  try{while(true){const part=await reader.read();if(part.done)break;size+=part.value.byteLength;if(size>2*1024*1024){await reader.cancel();throw Error('official_source_response_too_large');}chunks.push(part.value);}}finally{reader.releaseLock();}
  const raw:unknown=JSON.parse(Buffer.concat(chunks).toString('utf8'));if(!raw||typeof raw!=='object'||Array.isArray(raw))throw Error('invalid_official_source_response');
  const record=raw as Record<string,any>;
  if(record.error){if([10,190,200].includes(record.error.code))throw new OfficialSocialError('official_source_access_denied');throw Error('official_source_unavailable');}
  return record;
 },facebookUrl(path:string){if(!/^v\d{2}\.0$/.test(input.facebookVersion??''))throw Error('facebook_api_version_required');return new URL(`https://graph.facebook.com/${input.facebookVersion}/${path}`);}};
}
export function createOfficialSocialFetcher(input:OfficialSocialConfig){const api=createOfficialSocialApi(input);
 return async(a:OfficialSocialAccount,cursor?:string):Promise<{posts:OfficialSourcePost[];nextCursor?:string}>=>{
  validOfficialAccount(a);if(cursor&&!/^[A-Za-z0-9_+=/.-]{1,2048}$/.test(cursor))throw Error('invalid_social_cursor');
  const url=a.platform==='x'?new URL(`https://api.x.com/2/users/${a.accountId}/tweets`):api.facebookUrl(`${a.accountId}/posts`);
  if(a.platform==='x'){url.searchParams.set('tweet.fields',fields);url.searchParams.set('max_results','100');url.searchParams.set('exclude','retweets,replies');if(cursor)url.searchParams.set('pagination_token',cursor);}
  else{url.searchParams.set('fields','id,message,created_time,updated_time,is_published,permalink_url,from');url.searchParams.set('limit','100');if(cursor)url.searchParams.set('after',cursor);}
  const raw=await api.get(a,url,!!cursor);if(raw.data===undefined&&raw.meta?.result_count===0)raw.data=[];
  if(!Array.isArray(raw.data)||raw.data.length>100)throw Error('invalid_official_source_response');
  const posts=raw.data.map(item=>officialPostFromProvider(a,item)).filter((post):post is OfficialSourcePost=>post!==null);
  const next=a.platform==='x'?raw.meta?.next_token:raw.paging?.next?raw.paging?.cursors?.after:undefined;
  if(next!==undefined&&(typeof next!=='string'||!/^[A-Za-z0-9_+=/.-]{1,2048}$/.test(next)))throw Error('invalid_social_cursor');
  return {posts,...(next?{nextCursor:next}:{})};
 };
}
export interface OfficialInspection {posts:OfficialSourcePost[];withdrawn:{externalId:string;reason:'deleted'|'withheld'|'unavailable'}[];checkedIds:string[];}
/** Only explicit per-object absence/access evidence withdraws a post. Timeline
 * absence, partial responses, 429s and network failures never imply deletion. */
export function createOfficialSocialInspector(input:OfficialSocialConfig){const api=createOfficialSocialApi(input);
 return async(a:OfficialSocialAccount,records:readonly {externalId:string;providerId:string}[]):Promise<OfficialInspection>=>{
  validOfficialAccount(a);if(!records.length||records.length>100||records.some(r=>!/^\d+(?:_\d+)?$/.test(r.providerId)))throw Error('invalid_social_lookup');
  const result:OfficialInspection={posts:[],withdrawn:[],checkedIds:[]};
  const consume=(item:Record<string,any>)=>{
   const post=officialPostFromProvider(a,item);const known=records.find(r=>r.providerId===item.id||r.externalId===post?.externalId);
   if(!known)return;
   result.checkedIds.push(known.externalId);
   if(post)result.posts.push(post);else result.withdrawn.push({externalId:known.externalId,reason:item.withheld?'withheld':'unavailable'});
  };
  if(a.platform==='x'){
   const lookup=async(ids:string[])=>{const url=new URL('https://api.x.com/2/tweets');url.searchParams.set('ids',ids.join(','));url.searchParams.set('tweet.fields',fields);return api.get(a,url);};
   const raw=await lookup(records.map(r=>r.providerId));const data=Array.isArray(raw.data)?raw.data:[];if(data.length>100||Array.isArray(raw.errors)&&raw.errors.length>100)throw Error('invalid_social_lookup_response');
   const latest=data.map(item=>item.edit_history_tweet_ids?.at(-1)).filter((id:unknown):id is string=>typeof id==='string'&&/^\d+$/.test(id)&&!data.some(item=>item.id===id));
   if(latest.length){const newer=await lookup([...new Set<string>(latest)].slice(0,100));if(Array.isArray(newer.data)){if(newer.data.length>100)throw Error('invalid_social_lookup_response');data.push(...newer.data);}}
   for(const item of data){if(Array.isArray(item.edit_history_tweet_ids)&&item.id!==item.edit_history_tweet_ids.at(-1))continue;consume(item);}
   if(Array.isArray(raw.errors))for(const error of raw.errors){const record=records.find(r=>r.providerId===(error.resource_id??error.value));
    if(!record||result.checkedIds.includes(record.externalId))continue;
    if(/resource-not-found|not-authorized-for-resource/.test(String(error.type))||[403,404].includes(error.status)){
     result.withdrawn.push({externalId:record.externalId,reason:/resource-not-found/.test(String(error.type))||error.status===404?'deleted':'unavailable'});result.checkedIds.push(record.externalId);
    }
   }
  }else{
   for(let i=0;i<records.length;i+=20){const group=records.slice(i,i+20),url=api.facebookUrl('');url.searchParams.set('ids',group.map(r=>r.providerId).join(','));url.searchParams.set('fields','id,message,created_time,updated_time,is_published,permalink_url,from');const raw=await api.get(a,url);
    for(const record of group){const item=raw[record.providerId];if(!item)continue;
     if(item.error){if(item.error.code===100&&item.error.error_subcode===33||item.error.code===803){result.withdrawn.push({externalId:record.externalId,reason:'unavailable'});result.checkedIds.push(record.externalId);}continue;}
     consume(item);
    }
   }
  }
  return result;
 };
}
export async function syncOfficialSocialPage(input:{account:OfficialSocialAccount;cursor?:string;fetchPage:ReturnType<typeof createOfficialSocialFetcher>;store:{upsert(post:OfficialSourcePost):Promise<void>;checkpoint(cursor:string|undefined):Promise<void>}}){
 const page=await input.fetchPage(input.account,input.cursor);for(const post of page.posts)await input.store.upsert(post);await input.store.checkpoint(page.nextCursor);return {imported:page.posts.length,nextCursor:page.nextCursor};
}
