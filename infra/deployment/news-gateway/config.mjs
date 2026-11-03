export function deploymentConfig(accountId,databaseId){
 if(!/^[a-f0-9]{32}$/i.test(accountId)||!/^[a-f0-9]{8}(?:-[a-f0-9]{4}){3}-[a-f0-9]{12}$/i.test(databaseId))
  throw Error('Invalid Cloudflare resource identifier');
 return {name:'masanawa-news-gateway',account_id:accountId,main:'./src/worker.mjs',
  compatibility_date:'2026-11-01',workers_dev:true,preview_urls:false,
  d1_databases:[{binding:'DB',database_name:'masanawa-news',database_id:databaseId,migrations_dir:'./migrations'}],
  triggers:{crons:['*/15 * * * *']},observability:{enabled:true}};
}
