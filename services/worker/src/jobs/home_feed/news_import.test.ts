import {describe,it,expect,vi} from 'vitest';
import type {Pool} from '@masanawa/postgres';
import {createNewsFeedPoller,ensurePlatformNewsPublishers,parseNewsFeed} from './news_import.js';
import {newsCatalog,safeNewsArticleUrl} from './news_catalog.js';

const now=()=>new Date().toUTCString();
const rss=(items:string)=>'<rss version="2.0"><channel>'+items+'</channel></rss>';
const item=(url:string,title='Africa &amp; world',description='Regional talks continue after a new agreement')=>
 '<item><title>'+title+'</title><description>'+description+'</description><link>'+url+
 '</link><pubDate>'+now()+'</pubDate></item>';

describe('news RSS original-source ingestion',()=>{
 it('accepts only pinned publisher URLs and strips tracking query tokens',()=>{
  const bbc=newsCatalog.find(x=>x.id==='bbc')!;
  expect(safeNewsArticleUrl(bbc,'https://www.bbc.com/news/articles/abc?utm_source=rss'))
   .toBe('https://www.bbc.com/news/articles/abc');
  expect(safeNewsArticleUrl(bbc,'https://evil.example/story')).toBeNull();
  expect(safeNewsArticleUrl(bbc,'http://www.bbc.com/news/articles/abc')).toBeNull();
  expect(safeNewsArticleUrl(bbc,'https://bbc.com.evil.example/story')).toBeNull();
  expect(safeNewsArticleUrl(bbc,'https://user@bbc.com/story')).toBeNull();
 });
 it('reads publisher-provided headline/summary without fetching page HTML',()=>{
  const records=parseNewsFeed(rss(item('https://www.bbc.com/news/articles/abc')),'bbc');
  expect(records).toHaveLength(1);
  expect(records[0]?.title).toBe('Africa & world');
  expect(records[0]?.summary).toBe('Regional talks continue after a new agreement');
 });
 it('does not admit other publishers, malformed XML, duplicates, or fake dates',()=>{
  const valid=item('https://www.bbc.com/news/articles/abc');
  const wrong=item('https://www.aljazeera.com/news/abc');
  expect(parseNewsFeed(rss(valid+valid+wrong),'bbc')).toHaveLength(1);
  expect(parseNewsFeed(rss(item('https://www.bbc.com/news/articles/a').replace(now(),'bad-date')),'bbc')).toEqual([]);
  expect(()=>parseNewsFeed('<!DOCTYPE feed [<!ENTITY x SYSTEM "file:///etc/passwd">]>'+rss(valid),'bbc')).toThrow();
  expect(()=>parseNewsFeed(rss(valid),'unapproved')).toThrow();
 });
 it('automatically enrolls the seven pinned sources without overwriting existing suspensions',async()=>{
  const query=vi.fn().mockResolvedValue({rowCount:7,rows:[]});
  const count=await ensurePlatformNewsPublishers({query} as unknown as Pool,'tenant_platform');
  expect(count).toBe(7);
  const [sql,params]=query.mock.calls[0] as [string,unknown[]];
  expect(sql).toContain('FROM identity.tenants t');
  expect(sql).toContain('ON CONFLICT(tenant_id,publisher_id) DO NOTHING');
  expect(sql).not.toContain('DO UPDATE');
  expect(params).toEqual(['tenant_platform',...newsCatalog.flatMap(source=>[source.id,source.name,source.feed])]);
 });
 it('sweeps all seven due publishers on startup and isolates their failures',async()=>{
  let claimed=0;
  const query=vi.fn(async(sql:string)=>{
   if(sql.includes('INSERT INTO feed.news_publishers'))return {rowCount:7,rows:[]};
   if(sql.includes('UPDATE feed.news_publishers p SET lease_until')){
    const source=newsCatalog[claimed++];
    return {rows:source?[{tenant_id:'tenant_platform',publisher_id:source.id,
      display_name:source.name,feed_url:source.feed}]:[]};
   }
   return {rows:[]};
  });
  const fetched:string[]=[];
  const fetcher=vi.fn(async(input:string|URL|Request)=>{
   fetched.push(String(input));
   if(String(input).includes('france24'))throw Error('offline');
   return new Response(rss(''),{status:200});
  }) as unknown as typeof fetch;
  const poller=createNewsFeedPoller({query} as unknown as Pool,fetcher,'tenant_platform');
  expect(await poller.runOnce()).toEqual({checked:7,imported:0,failed:1,enrolled:7});
  expect(fetched).toEqual(newsCatalog.map(source=>source.feed));
  expect(query.mock.calls.some(([sql])=>String(sql).includes('last_error=\'feed_unavailable\''))).toBe(true);
 });
 it('does not provision or poll an unknown platform tenant',async()=>{
  const query=vi.fn();
  const poller=createNewsFeedPoller({query} as unknown as Pool,fetch,undefined);
  expect(await poller.runOnce()).toEqual({checked:0,imported:0,failed:0,enrolled:0});
  expect(query).not.toHaveBeenCalled();
 });
});
