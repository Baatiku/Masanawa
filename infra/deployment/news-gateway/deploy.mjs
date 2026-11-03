import {spawnSync} from 'node:child_process';
import {writeFileSync} from 'node:fs';
import {fileURLToPath} from 'node:url';
import {deploymentConfig} from './config.mjs';
process.chdir(fileURLToPath(new URL('.',import.meta.url)));
function run(command,args){const r=spawnSync(command,args,{stdio:'inherit'});if(r.error||r.status!==0)throw Error(command+' failed');}
async function api(path,init={}){
 const response=await fetch('https://api.cloudflare.com/client/v4'+path,{...init,signal:AbortSignal.timeout(30000),
  headers:{Authorization:'Bearer '+process.env.CLOUDFLARE_API_TOKEN,'Content-Type':'application/json'}});
 const data=await response.json();if(!response.ok||!data.success)throw Error('Cloudflare API failed: '+response.status);
 return data.result;
}
try{
 run(process.execPath,['--test','test/gateway.test.mjs']);
 if(!process.env.CLOUDFLARE_API_TOKEN)throw Error('Cloudflare authentication is required; configure it securely outside Git.');
 const account=process.env.CLOUDFLARE_ACCOUNT_ID;
 if(!/^[a-f0-9]{32}$/i.test(account??''))throw Error('Select CLOUDFLARE_ACCOUNT_ID explicitly.');
 const base='/accounts/'+account;
 // Inventory first. Never choose a different account or create a duplicate DB.
 const workers=await api(base+'/workers/scripts');
 console.log('Existing news Worker:',workers.some(w=>w.id==='masanawa-news-gateway'));
 let db;
 for(let page=1;;page++){
  const rows=await api(base+'/d1/database?per_page=100&page='+page);
  db=rows.find(row=>row.name==='masanawa-news');if(db||rows.length<100)break;
 }
 db??=await api(base+'/d1/database',{method:'POST',body:JSON.stringify({name:'masanawa-news'})});
 writeFileSync('wrangler.generated.json',JSON.stringify(deploymentConfig(account,db.uuid),null,2)+'\n');
 const config=['--config','wrangler.generated.json'];
 run('wrangler',['d1','migrations','apply','masanawa-news','--remote',...config]);
 run('wrangler',['deploy',...config]);
 const subdomain=await api(base+'/workers/subdomain');
 if(!subdomain.subdomain)throw Error('Account workers.dev subdomain is unavailable.');
 const origin='https://masanawa-news-gateway.'+subdomain.subdomain+'.workers.dev';
 run(process.execPath,['smoke.mjs',origin]);
 const schedules=await api(base+'/workers/scripts/masanawa-news-gateway/schedules');
 if(!schedules.schedules?.some(s=>s.cron==='*/15 * * * *'))throw Error('Cron schedule not configured');
 console.log('Public feed verified:',origin);
 console.log('Cron configured; acceptance still requires a later completed lastCron record.');
}catch(error){console.error(error.message);process.exitCode=1;}
