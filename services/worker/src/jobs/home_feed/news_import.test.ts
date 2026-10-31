import {describe,it,expect} from 'vitest';
import {parseNewsFeed} from './news_import.js';
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
});
