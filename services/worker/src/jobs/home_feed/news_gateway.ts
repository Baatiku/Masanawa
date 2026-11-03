import {newsCatalog,safeNewsArticleUrl} from './news_catalog.js';
import type {ParsedNews} from './news_import.js';

/** The configured origin is public: never forward a Masanawa session or token.
 * Keep Flutter on canonical feed.posts IDs so likes/comments remain authoritative.
 */
export function newsGatewayOrigin(raw:string):string{
 const url=new URL(raw);
 if(url.protocol!=='https:'||url.username||url.password||url.port||url.search||url.hash||url.pathname!=='/'||
  !url.hostname.endsWith('.workers.dev'))throw Error('invalid_news_gateway_origin');
 return url.origin;
}
export async function fetchGatewayNews(origin:string,publisherId:string,fetchImpl:typeof fetch):Promise<ParsedNews[]>{
 const base=newsGatewayOrigin(origin),source=newsCatalog.find(p=>p.id===publisherId);
 if(!source)throw Error('unsupported_publisher');
 const stories:ParsedNews[]=[],seen=new Set<string>(),cursors=new Set<string>();
 let cursor:string|undefined;
 // Two pages cover the gateway's bounded 30-story publisher refresh.
 for(let page=0;page<2;page++){
  const url=new URL('/v1/news',base);url.searchParams.set('publisher',publisherId);
  if(cursor)url.searchParams.set('cursor',cursor);
  const response=await fetchImpl(url,{redirect:'error',signal:AbortSignal.timeout(8000),headers:{Accept:'application/json'}});
  if(!response.ok)throw Error('news_gateway_unavailable');
  const reader=response.body?.getReader();if(!reader)throw Error('news_gateway_empty');
  const parts:Uint8Array[]=[];let size=0;
  try{for(;;){const chunk=await reader.read();if(chunk.done)break;size+=chunk.value.byteLength;
   if(size>100000){await reader.cancel();throw Error('news_gateway_too_large');}parts.push(chunk.value);}}
  finally{reader.releaseLock();}
  const data:unknown=JSON.parse(Buffer.concat(parts).toString('utf8'));
  if(!data||typeof data!=='object'||!('items'in data)||!Array.isArray(data.items)||data.items.length>20)
   throw Error('invalid_news_gateway_page');
  for(const item of data.items){
   const news=item?.news;
   if(item?.author?.id!==publisherId||item?.author?.type!=='publisher'||news?.id!==publisherId||
    news.name!==source.name||typeof news.title!=='string'||typeof news.summary!=='string'||
    typeof news.url!=='string'||typeof item.publishedAt!=='string')throw Error('invalid_news_gateway_story');
   const articleUrl=safeNewsArticleUrl(source,news.url),time=Date.parse(item.publishedAt);
   if(!articleUrl||news.title.length<3||news.title.length>280||news.summary.length<15||news.summary.length>520||
    !Number.isFinite(time)||time>Date.now()+300000||time<Date.now()-30*86400000)throw Error('invalid_news_gateway_story');
   if(!seen.has(articleUrl)){seen.add(articleUrl);stories.push({url:articleUrl,title:news.title,summary:news.summary,publishedAt:new Date(time).toISOString()});}
  }
  const next='nextCursor'in data?data.nextCursor:null;
  if(next===null)break;
  if(typeof next!=='string'||!next||next.length>700||cursors.has(next))throw Error('invalid_news_gateway_cursor');
  cursors.add(next);cursor=next;
 }
 return stories;
}
