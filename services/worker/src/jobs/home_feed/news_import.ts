import {createHash} from 'node:crypto';
import {withTransaction,type Pool} from '@masanawa/postgres';
import {newsCatalog,safeNewsArticleUrl} from './news_catalog.js';

export type ParsedNews={url:string;title:string;summary:string;publishedAt:string};

function decodeEntities(s:string):string{
 return s.replace(/&#(x[0-9a-f]+|[0-9]+);|&(amp|lt|gt|quot|apos|nbsp);/gi,(raw,named,key)=>{
  if(key)return ({amp:'&',lt:'<',gt:'>',quot:'"',apos:"'",nbsp:' '} as Record<string,string>)[String(key).toLowerCase()]??raw;
  const n=String(named).toLowerCase().startsWith('x')?parseInt(String(named).slice(1),16):parseInt(String(named),10);
  return Number.isInteger(n)&&n>0&&n<=0x10ffff&&!(n>=0xd800&&n<=0xdfff)?String.fromCodePoint(n):'';
 });
}
function plain(raw:string):string{
 return decodeEntities(raw.replace(/<!\[CDATA\[([\s\S]*?)\]\]>/g,'$1')
  .replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi,' ')
  .replace(/<style\b[^>]*>[\s\S]*?<\/style>/gi,' ')
  .replace(/<[^>]+>/g,' ')).replace(/\s+/g,' ').trim();
}
function xmlElement(xml:string,tag:string):string{
 const pattern=new RegExp('<'+tag+'(?:\\s[^>]*)?>([\\s\\S]*?)<\\/'+tag+'>','i');
 return pattern.exec(xml)?.[1]??'';
}
/** RSS 2/Atom summary only. Never fetch article HTML or invoke an AI rewrite
 * that could invent a quotation or imply authorization to mirror full text.
 */
export function parseNewsFeed(xml:string,publisherId:string):ParsedNews[]{
 if(xml.length>600000||/<!DOCTYPE|<!ENTITY/i.test(xml))throw Error('invalid_news_xml');
 const entry=newsCatalog.find(n=>n.id===publisherId);
 if(!entry)throw Error('unsupported_publisher');
 const blocks=xml.match(/<(?:item|entry)\b[^>]*>[\s\S]*?<\/(?:item|entry)>/gi)??[];
 const out:ParsedNews[]=[],seen=new Set<string>();
 for(const block of blocks.slice(0,60)){
  const title=plain(xmlElement(block,'title')).slice(0,280);
  const description=plain(xmlElement(block,'description')||xmlElement(block,'summary')).slice(0,520);
  const atomLink=/<link\b[^>]*\bhref=["']([^"']+)["']/i.exec(block)?.[1]??'';
  const link=plain(xmlElement(block,'link'))||atomLink;
  const url=safeNewsArticleUrl(entry,decodeEntities(link));
  const date=plain(xmlElement(block,'pubDate')||xmlElement(block,'published')||xmlElement(block,'updated'));
  const time=Date.parse(date);
  if(!url||seen.has(url)||title.length<3||description.length<15||!Number.isFinite(time))continue;
  if(time>Date.now()+300000||time<Date.now()-30*86400000)continue;
  out.push({url,title,summary:description,publishedAt:new Date(time).toISOString()});seen.add(url);
  if(out.length>=30)break;
 }
 return out;
}
async function boundedFeedFetch(url:string,fetchImpl:typeof fetch):Promise<string>{
 const controller=new AbortController();
 const timer=setTimeout(()=>controller.abort(),8000);
 try{
  const res=await fetchImpl(url,{redirect:'error',signal:controller.signal,
   headers:{Accept:'application/rss+xml, application/atom+xml, application/xml','User-Agent':'MasanawaNews/1.0 (authorized RSS aggregator)'}});
  if(!res.ok||res.headers.get('content-length')&&Number(res.headers.get('content-length'))>600000)
   throw Error('news_provider_unavailable');
  const reader=res.body?.getReader();if(!reader)throw Error('news_empty_feed');
  const pieces:Uint8Array[]=[];let size=0;
  while(true){const part=await reader.read();if(part.done)break;size+=part.value.byteLength;
   if(size>600000){await reader.cancel();throw Error('news_feed_too_large');}pieces.push(part.value);}
  return Buffer.concat(pieces).toString('utf8');
 }finally{clearTimeout(timer);}
}
export function createNewsFeedPoller(pool:Pool,fetchImpl:typeof fetch=fetch){
 return {runOnce:async()=>{
  const leased=await pool.query(`UPDATE feed.news_publishers p SET lease_until=clock_timestamp()+interval '2 minutes',
     next_poll_at=clock_timestamp()+interval '15 minutes'
   WHERE (p.tenant_id,p.publisher_id) IN
     (SELECT tenant_id,publisher_id FROM feed.news_publishers
      WHERE state='approved' AND rights_until>clock_timestamp()
       AND next_poll_at<=clock_timestamp() AND (lease_until IS NULL OR lease_until<clock_timestamp())
      ORDER BY next_poll_at LIMIT 1 FOR UPDATE SKIP LOCKED)
   RETURNING p.*`);
  const row=leased.rows[0];if(!row)return {checked:0,imported:0};
  const canonical=newsCatalog.find(p=>p.id===row.publisher_id&&p.feed===row.feed_url&&p.name===row.display_name);
  let imported=0;
  try{
   if(!canonical)throw Error('unapproved_news_feed_url');
   const xml=await boundedFeedFetch(canonical.feed,fetchImpl);
   const stories=parseNewsFeed(xml,canonical.id);
   for(const story of stories){
    const hash=createHash('sha256').update(story.title+'\n'+story.summary).digest('hex');
    await withTransaction(pool,async client=>{
     await client.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',[row.tenant_id+'|'+story.url]);
     const eligible=await client.query(`SELECT 1 FROM feed.news_publishers WHERE tenant_id=$1
       AND publisher_id=$2 AND feed_url=$3 AND state='approved'
       AND rights_until>clock_timestamp() FOR SHARE`,[row.tenant_id,row.publisher_id,canonical.feed]);
     if(!eligible.rows.length)return;
     const existing=await client.query(`SELECT post_id,content_hash FROM feed.news_articles
       WHERE tenant_id=$1 AND source_url=$2`,[row.tenant_id,story.url]);
     if(existing.rows.length){
      if(existing.rows[0].content_hash===hash)return;
      await client.query(`UPDATE feed.news_articles SET headline=$3,summary=$4,content_hash=$5
        WHERE tenant_id=$1 AND source_url=$2`,[row.tenant_id,story.url,story.title,story.summary,hash]);
      await client.query(`UPDATE feed.posts SET body=$3 WHERE tenant_id=$1 AND id=$2`,
       [row.tenant_id,existing.rows[0].post_id,story.title+'\n\n'+story.summary]);
      imported++;return;
     }
     const idem=createHash('sha256').update(story.url).digest('hex');
     const post=await client.query(`INSERT INTO feed.posts
       (tenant_id,author_type,author_masana_id,kind,body,media_ids,published_by,idempotency_key,published_at)
       VALUES($1,'publisher',NULL,'text',$2,'{}',$3,$4,$5) RETURNING id`,
       [row.tenant_id,story.title+'\n\n'+story.summary,'news:'+row.publisher_id,idem,story.publishedAt]);
     await client.query(`INSERT INTO feed.news_articles
       (tenant_id,publisher_id,post_id,source_url,headline,summary,original_published_at,content_hash)
       VALUES($1,$2,$3,$4,$5,$6,$7,$8)`,
       [row.tenant_id,row.publisher_id,post.rows[0].id,story.url,story.title,story.summary,story.publishedAt,hash]);
     imported++;
    });
   }
   await pool.query(`UPDATE feed.news_publishers SET lease_until=NULL,last_poll_at=clock_timestamp(),
     last_error=NULL WHERE tenant_id=$1 AND publisher_id=$2`,[row.tenant_id,row.publisher_id]);
   return {checked:1,imported};
  }catch(_){
   await pool.query(`UPDATE feed.news_publishers SET lease_until=NULL,
     last_error='feed_unavailable',next_poll_at=clock_timestamp()+interval '1 hour'
     WHERE tenant_id=$1 AND publisher_id=$2`,[row.tenant_id,row.publisher_id]);
   return {checked:1,imported,error:'feed_unavailable'};
  }
 }};
}
