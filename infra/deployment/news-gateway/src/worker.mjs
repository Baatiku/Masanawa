import {listNews, refreshIfDue, feedStatus, PUBLISHERS} from './news.ts';
const headers = {'Access-Control-Allow-Origin':'*', 'Access-Control-Allow-Methods':'GET, HEAD, OPTIONS',
 'Access-Control-Allow-Headers':'Content-Type', 'X-Content-Type-Options':'nosniff'};
const json=(body,status=200,cache='no-store')=>Response.json(body,{status,headers:{...headers,'Cache-Control':cache}});
export default {
 async fetch(request,env,ctx){
  const url=new URL(request.url);
  if(request.method==='OPTIONS')return new Response(null,{status:204,headers});
  if(!['GET','HEAD'].includes(request.method))return json({code:'method_not_allowed'},405);
  let response;
  try{
   if(url.pathname==='/healthz')response=json({status:'ok',service:'masanawa-news-gateway'});
   else if(url.pathname==='/v1/news/publishers')response=url.search?json({code:'invalid_news_query'},422):
    json(PUBLISHERS.map(({id,name})=>({id,name})),200,'public, max-age=3600');
   else if(['/readyz','/api/news/status'].includes(url.pathname)){
    const status=await feedStatus(env['DB']);
    response=json(status,url.pathname==='/readyz'&&status.status!=='ready'?503:200);
   }else if(url.pathname==='/v1/news'){
    let page=await listNews(env['DB'],url);
    if(!page.items.length&&!url.search){
     await refreshIfDue(env['DB']);
     page=await listNews(env['DB'],url);
    }else ctx.waitUntil(refreshIfDue(env['DB']).catch(()=>console.error('news_refresh_failed')));
    // An empty failed import must not masquerade as a working public feed.
    response=page.items.length||url.search?json(page,200,'public, max-age=30'):json({code:'news_unavailable'},503);
   }else response=json({code:'not_found'},404);
  }catch(error){
   const invalid=error instanceof Error&&/^invalid_(?:cursor|news_query)$/.test(error.message);
   if(!invalid)console.error('news_request_failed');
   response=json({code:invalid?'invalid_news_query':'news_unavailable'},invalid?422:503);
  }
  if(response.status===405)response.headers.set('Allow','GET, HEAD, OPTIONS');
  return request.method==='HEAD'?new Response(null,{status:response.status,headers:response.headers}):response;
 },
 async scheduled(_event,env,ctx){
  ctx.waitUntil((async()=>{
   const result=await refreshIfDue(env['DB'],'cron');
   if(!result.skipped&&result.checked===result.failed)throw Error('all_publishers_failed');
  })());
 }
};
