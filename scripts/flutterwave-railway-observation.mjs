import {request} from 'node:https';
import {isIP} from 'node:net';
import {fileURLToPath} from 'node:url';

/** IPv4-only, fixed-host requests. No arbitrary diagnostic target or raw errors. */
export function getJson(url,headers={}) {
  return new Promise((resolve,reject)=>{
    const req=request(url,{method:'GET',family:4,headers,timeout:12000},res=>{
      const parts=[];let size=0;
      res.on('data',part=>{size+=part.length;if(size>2_097_152){req.destroy();reject(new Error('response_too_large'));}else parts.push(part)});
      res.on('end',()=>{
        try{resolve({status:res.statusCode??0,body:JSON.parse(Buffer.concat(parts).toString('utf8'))});}
        catch{resolve({status:res.statusCode??0,body:null});}
      });
      res.on('error',()=>reject(new Error('network_unavailable')));
    });
    req.on('timeout',()=>req.destroy(new Error('timeout')));
    req.on('error',()=>reject(new Error('network_unavailable')));req.end();
  });
}
const safeCode=value=>typeof value==='string'&&/^[A-Za-z0-9_-]{1,128}$/.test(value)?value:null;
const safeLabel=value=>typeof value==='string'?value.replace(/[\x00-\x1f\x7f]/g,' ').slice(0,180):null;
// Keep provider validity metadata verbatim and bounded. A bare number has no
// assumed unit and a missing/null value must never become a guessed duration.
const safeValidity=value=>typeof value==='string'?safeLabel(value).slice(0,80):
  typeof value==='number'&&Number.isFinite(value)&&value>=0&&value<=1_000_000?value:null;
const amount=value=>/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(String(value))?String(value):null;
const isPublicV4=value=>isIP(value)===4&&!/^(?:0\.|10\.|127\.|169\.254\.|192\.168\.|172\.(?:1[6-9]|2\d|3[01])\.)/.test(value);

/** Read-only operational observation. Never validates a customer or submits a
 * payment. Only IP and bounded catalogue product metadata reach private logs. */
export async function observeRuntime({secretKey,get=getJson,report=entry=>console.log(JSON.stringify(entry)),now=()=>new Date(),discoverCatalogue=true}) {
  const at=now().toISOString();
  try{
    const ip=await get('https://api.ipify.org?format=json');
    const value=ip.body?.ip;
    if(ip.status===200&&typeof value==='string'&&isPublicV4(value))
      report({event:'flutterwave.outbound_ipv4',ipv4:value,observedAt:at,static:false});
    else report({event:'flutterwave.outbound_ip_unavailable',observedAt:at});
  }catch{report({event:'flutterwave.outbound_ip_unavailable',observedAt:at});}
  if(!discoverCatalogue)return;
  if(!secretKey?.trim()){report({event:'flutterwave.catalogue_probe',code:'credential_unavailable',observedAt:at});return;}
  const headers={authorization:'Bearer '+secretKey.trim(),accept:'application/json'};
  const read=async(path)=>{
    const response=await get('https://api.flutterwave.com'+path,headers);
    if(response.status!==200||response.body?.status!=='success'||!Array.isArray(response.body.data)){
      report({event:'flutterwave.catalogue_probe',code:response.status===403?'access_denied_check_whitelist':response.status===401?'provider_auth_rejected':'provider_unavailable',
        httpStatus:response.status,observedAt:at});return null;
    }
    return response.body.data;
  };
  try{
    const categories=await read('/v3/top-bill-categories?country=NG');if(!categories)return;
    const data=categories.filter(c=>c.country_code==='NG'&&typeof c.name==='string'&&/data/i.test(c.name));
    if(!data.length){report({event:'flutterwave.catalogue_probe',code:'data_category_unavailable',observedAt:at});return;}
    for(const category of data.slice(0,8)){
      const code=safeCode(category.code);if(!code)continue;
      report({event:'flutterwave.data_category',code,name:safeLabel(category.name),observedAt:at});
      const billers=await read('/v3/bills/'+code+'/billers?country=NG');if(!billers)continue;
      for(const biller of billers.slice(0,32)){
        const billerCode=safeCode(biller.biller_code??biller.code);if(!billerCode)continue;
        report({event:'flutterwave.data_biller',billerCode,name:safeLabel(biller.name),observedAt:at});
        const items=await read('/v3/billers/'+billerCode+'/items');if(!items)continue;
        for(const item of items.slice(0,300)){
          const itemCode=safeCode(item.item_code);if(!itemCode)continue;
          // Product fields only. No response messages, credentials, phone or customer data.
          report({event:'flutterwave.data_item',billerCode,itemCode,name:safeLabel(item.name),
            shortName:safeLabel(item.short_name),validityPeriod:safeValidity(item.validity_period),
            amount:amount(item.amount),currency:item.currency==null||item.currency==='NGN'?'NGN':'UNSUPPORTED',
            allowanceGb:Number.isSafeInteger(item.allowance_gb)?item.allowance_gb:null,
            validityDays:Number.isSafeInteger(item.validity_days)?item.validity_days:null,
            observedAt:at});
        }
      }
    }
    report({event:'flutterwave.catalogue_probe',code:'read_complete',observedAt:at});
  }catch{report({event:'flutterwave.catalogue_probe',code:'network_unavailable',observedAt:at});}
}
export function startObservationLoop(options){
  let running=false,closed=false,discovery=true,lastIp;
  const output=options.report??(entry=>console.log(JSON.stringify(entry)));
  const report=entry=>{
    if(entry.event==='flutterwave.outbound_ipv4'){
      if(lastIp&&lastIp!==entry.ipv4)discovery=true;
      lastIp=entry.ipv4;
    }
    if(entry.event==='flutterwave.catalogue_probe'&&entry.code==='read_complete')discovery=false;
    output(entry);
  };
  const run=async()=>{if(running||closed)return;running=true;try{
    await observeRuntime({...options,report,discoverCatalogue:discovery});
  }finally{running=false}};
  void run();const timer=setInterval(()=>{void run()},300_000);if(!options.keepAlive)timer.unref();
  return ()=>{closed=true;clearInterval(timer)};
}

if(process.argv[1]&&fileURLToPath(import.meta.url)===process.argv[1]){
  const stop=startObservationLoop({secretKey:process.env.FLUTTERWAVE_SECRET_KEY,keepAlive:true});
  const close=()=>{stop();process.exit(0)};
  process.once('SIGTERM',close);process.once('SIGINT',close);
}
