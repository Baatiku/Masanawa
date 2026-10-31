import {describe,it,expect,vi} from 'vitest';
import {FeedService,type Repository,type Post} from './index.js';
const post:Post={id:'11111111-1111-4111-8111-111111111111',
 tenantId:'platform',authorMasanaId:'',kind:'text',
 body:'News headline\n\nShort attributable summary',media:[],
 transcript:null,publishedAt:new Date().toISOString(),likeCount:0,
 commentCount:0,viewerLiked:false,viewerSaved:false,
 author:{type:'publisher',id:'bbc',displayName:'BBC News'},
 news:{id:'bbc',name:'BBC News',title:'News headline',summary:'Short attributable summary',
  url:'https://www.bbc.com/news/articles/abc',verified:true}};
describe('publisher news scope',()=>{
 it('allows only news repository results and binds paging to viewer and filter',async()=>{
  const listNews=vi.fn().mockResolvedValue(Array.from({length:21},(_,i)=>({...post,id:
    '11111111-1111-4111-8111-'+String(i+1).padStart(12,'0')})));
  const service=new FeedService({listNews} as unknown as Repository,async()=>true);
  const page=await service.newsList('platform','alice',undefined,'bbc','Africa');
  expect(page.items).toHaveLength(20);
  expect(page.nextCursor).toBeTruthy();
  expect(listNews).toHaveBeenCalledWith('platform','alice',null,21,'bbc','Africa');
  await expect(service.newsList('platform','bob',page.nextCursor!,'bbc','Africa'))
   .rejects.toMatchObject({code:'invalid_cursor'});
  await expect(service.newsList('platform','alice',page.nextCursor!,'guardian','Africa'))
   .rejects.toMatchObject({code:'invalid_cursor'});
  await expect(service.newsList('platform','alice',page.nextCursor!,'bbc','Other'))
   .rejects.toMatchObject({code:'invalid_cursor'});
 });
 it('rejects arbitrary publisher keys and oversized search terms',async()=>{
  const service=new FeedService({} as Repository,async()=>true);
  await expect(service.newsList('platform',null,undefined,'../../admin')).rejects.toMatchObject({code:'invalid_publisher'});
  await expect(service.newsList('platform',null,undefined,undefined,'a')).rejects.toMatchObject({code:'invalid_search'});
 });
});
