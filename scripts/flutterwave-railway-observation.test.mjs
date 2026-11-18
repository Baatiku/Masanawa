import {test} from 'node:test';
import assert from 'node:assert/strict';
import {observeRuntime} from './flutterwave-railway-observation.mjs';

test('reports only observed outbound IPv4 and bounded read-only data catalogue',async()=>{
 const events=[],requests=[];
 await observeRuntime({secretKey:'fixture-private-key',report:e=>events.push(e),get:async(url,headers)=>{
  requests.push({url,headers});
  if(url.startsWith('https://api.ipify.org'))return {status:200,body:{ip:'8.8.4.4'}};
  if(url.includes('top-bill-categories'))return {status:200,body:{status:'success',data:[
   {code:'DATA',name:'Mobile Data',country_code:'NG'},{code:'AIRTIME',name:'Airtime',country_code:'NG'}]}};
  if(url.includes('/bills/'))return {status:200,body:{status:'success',data:[{biller_code:'MTN',name:'MTN Data'}]}};
  return {status:200,body:{status:'success',data:[{item_code:'D1',name:'1 GB',amount:500,currency:'NGN',allowance_gb:1,validity_days:30,
   short_name:'1 GB monthly',validity_period:'30 Days',
   customer_id:'private-phone',authorization:'fixture-private-key'}]}};
 }});
 assert.equal(events[0].event,'flutterwave.outbound_ipv4');assert.equal(events[0].static,false);
 assert.equal(events.find(e=>e.event==='flutterwave.data_item').itemCode,'D1');
 assert.equal(events.find(e=>e.event==='flutterwave.data_item').validityPeriod,'30 Days');
 assert.equal(events.find(e=>e.event==='flutterwave.data_item').shortName,'1 GB monthly');
 assert.equal(events.at(-1).code,'read_complete');
 assert.equal(requests.length,4);assert.ok(!requests.some(r=>/payment|validate|AIRTIME/.test(r.url)));
 assert.equal(requests[0].headers,undefined);
 assert.equal(requests[1].headers.authorization,'Bearer fixture-private-key');
 assert.doesNotMatch(JSON.stringify(events),/fixture-private-key|private-phone|customer_id|authorization/);
});
test('reports a whitelist rejection without leaking the provider error or credentials',async()=>{
 const events=[];
 await observeRuntime({secretKey:'fixture-private-key',report:e=>events.push(e),get:async url=>url.includes('ipify')
  ?{status:200,body:{ip:'1.2.3.4'}}:{status:403,body:{message:'private account and fixture-private-key'}}});
 assert.equal(events.at(-1).code,'access_denied_check_whitelist');
 assert.doesNotMatch(JSON.stringify(events),/private account|fixture-private-key/);
});
test('a private/unavailable IP and missing credential never become a fake IP or request',async()=>{
 const events=[];let calls=0;
 await observeRuntime({report:e=>events.push(e),get:async()=>{calls++;return {status:200,body:{ip:'10.0.0.1'}}}});
 assert.equal(calls,1);assert.equal(events[0].event,'flutterwave.outbound_ip_unavailable');
 assert.equal(events.at(-1).code,'credential_unavailable');
 assert.ok(events.every(e=>!('ipv4' in e)));
});
