import {describe,it,expect,vi} from 'vitest';
import {fetchGatewayNews,newsGatewayOrigin} from './news_gateway.js';
const origin='https://masanawa-news-gateway.test.workers.dev';
const story={author:{type:'publisher',id:'bbc'},publishedAt:new Date().toISOString(),
 news:{id:'bbc',name:'BBC News',title:'Osun flood warning released',summary:'Officials in Osogbo confirm a new warning for residents.',url:'https://www.bbc.com/news/articles/test'}};
describe('Cloudflare news bridge',()=>{
 it('accepts only an HTTPS workers.dev origin',()=>{
  expect(newsGatewayOrigin(origin)).toBe(origin);
  for(const value of ['http://test.workers.dev','https://test.workers.dev/a','https://test.workers.dev.evil.test','https://secret@test.workers.dev','https://test.workers.dev?key=x'])expect(()=>newsGatewayOrigin(value)).toThrow();
 });
 it('reads bounded pages anonymously and preserves the canonical source URL',async()=>{
  const fetcher=vi.fn().mockResolvedValue(new Response(JSON.stringify({items:[story],nextCursor:null})));
  expect(await fetchGatewayNews(origin,'bbc',fetcher)).toEqual([{url:story.news.url,title:story.news.title,summary:story.news.summary,publishedAt:story.publishedAt}]);
  const [url,options]=fetcher.mock.calls[0]!;
  expect(String(url)).toBe(origin+'/v1/news?publisher=bbc');
  expect(options.headers).toEqual({Accept:'application/json'});
  expect(options.redirect).toBe('error');
 });
 it('rejects publisher spoofing and foreign article links',async()=>{
  for(const value of [{...story,news:{...story.news,name:'Fake BBC'}},{...story,news:{...story.news,url:'https://evil.test/article'}}]){
   const fetcher=vi.fn().mockResolvedValue(new Response(JSON.stringify({items:[value],nextCursor:null})));
   await expect(fetchGatewayNews(origin,'bbc',fetcher)).rejects.toThrow('invalid_news_gateway_story');
  }
 });
 it('silently drops stale reports and international reports before enrichment',async()=>{
  for(const value of [{...story,publishedAt:'2000-01-01'},{...story,news:{...story.news,title:'Paris celebrity event',summary:'International entertainment update abroad'}}]){
   const fetcher=vi.fn().mockResolvedValue(new Response(JSON.stringify({items:[value],nextCursor:null})));
   expect(await fetchGatewayNews(origin,'bbc',fetcher)).toEqual([]);
  }
 });
 it('rejects repeated cursors and oversized responses',async()=>{
  const fetcher=vi.fn().mockImplementation(async()=>new Response(JSON.stringify({items:[],nextCursor:'repeat'})));
  await expect(fetchGatewayNews(origin,'bbc',fetcher)).rejects.toThrow('invalid_news_gateway_cursor');
  await expect(fetchGatewayNews(origin,'bbc',vi.fn().mockResolvedValue(new Response('x'.repeat(100001))))).rejects.toThrow('news_gateway_too_large');
 });
});

