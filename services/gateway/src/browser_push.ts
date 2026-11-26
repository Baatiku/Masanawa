import {createHash,randomBytes,randomUUID,ECDH,createECDH} from 'node:crypto';
import webpush from 'web-push';
import {withTransaction,type Pool} from '@masanawa/postgres';
import {hashPlatformSessionToken} from '@masanawa/security';
import type {MobileNotificationPreferences,MobilePushRepository} from '@masanawa/agents';
import type {AgentDirectoryAuthorizer} from './agent_directory.js';
export class BrowserPushError extends Error{constructor(readonly statusCode:number,readonly code:string){super(code);}}
const fail=(n:number,c:string):never=>{throw new BrowserPushError(n,c);};
export function checkedBrowserPushSubscription(input:unknown){
 const p=input as {endpoint?:unknown;keys?:{p256dh?:unknown;auth?:unknown}};
 if(!p||typeof p.endpoint!=='string'||p.endpoint.length>4096||!p.keys||typeof p.keys.p256dh!=='string'||typeof p.keys.auth!=='string')return fail(422,'invalid_push_subscription');
 let url:URL;try{url=new URL(p.endpoint);}catch{return fail(422,'invalid_push_endpoint');}
 const host=url.hostname;
 if(url.protocol!=='https:'||url.username||url.password||url.port||url.hash||!(['fcm.googleapis.com','updates.push.services.mozilla.com','web.push.apple.com'].includes(host)||host.endsWith('.notify.windows.com')))return fail(422,'unsupported_push_endpoint');
 for(const value of [p.keys.p256dh,p.keys.auth])if(!/^[A-Za-z0-9_-]+$/.test(value))return fail(422,'invalid_push_key');
 const point=Buffer.from(p.keys.p256dh,'base64url'),auth=Buffer.from(p.keys.auth,'base64url');if(point.toString('base64url')!==p.keys.p256dh||auth.toString('base64url')!==p.keys.auth)fail(422,'invalid_push_key');if(point.length!==65||point[0]!==4||auth.length!==16)return fail(422,'invalid_push_key');
 try{ECDH.convertKey(point,'prime256v1',undefined,undefined,'uncompressed');}catch{return fail(422,'invalid_push_key');}
 return {endpoint:url.href,keys:{p256dh:p.keys.p256dh,auth:p.keys.auth}};
}
export function pushQuietNow(p:MobileNotificationPreferences,now=new Date()){
 if(p.quietStart===null||p.quietEnd===null||p.quietStart===p.quietEnd)return false;
 const minute=(now.getUTCHours()*60+now.getUTCMinutes()+p.utcOffsetMinutes+1440)%1440;
 return p.quietStart<p.quietEnd?minute>=p.quietStart&&minute<p.quietEnd:minute>=p.quietStart||minute<p.quietEnd;
}
export function createBrowserPushService(input:{pool:Pool;directory:AgentDirectoryAuthorizer;preferences:Pick<MobilePushRepository,'readPreferences'>;beforeWrite:(header:string|undefined)=>Promise<void>;publicKey?:string|undefined;privateKey?:string|undefined;subject?:string|undefined;send?:typeof webpush.sendNotification}){
 const configured=Boolean(input.publicKey&&input.privateKey&&input.subject),send=input.send??webpush.sendNotification;
 if(configured){try{const key=createECDH('prime256v1');key.setPrivateKey(Buffer.from(input.privateKey!,'base64url'));if(key.getPublicKey().toString('base64url')!==input.publicKey||!/^mailto:[^\s@]+@[^\s@]+$/.test(input.subject!))throw Error();}catch{throw new TypeError('Browser push VAPID configuration is invalid');}}
 let running=false,stopped=false;let active:Promise<{processed:number}>|undefined;
 const owner=async(header:string|undefined)=>input.directory.authorize({authorizationHeader:header,capability:'agents.directory.read'});
 return {
  configured,
  async configuration(header:string|undefined){await owner(header);return {configured,publicKey:configured?input.publicKey:null};},
  async register(header:string|undefined,p:{deviceId:string;subscription:unknown}){if(!configured)fail(503,'browser_push_not_configured');const a=await owner(header);await input.beforeWrite(header);if(typeof p.deviceId!=='string'||!/^[A-Za-z0-9_-]{16,128}$/.test(p.deviceId))fail(422,'invalid_push_device');const sub=checkedBrowserPushSubscription(p.subscription),hash=createHash('sha256').update(sub.endpoint).digest('hex');const token=/^Bearer\s+(\S+)$/i.exec(header??'')?.[1];if(!token)fail(401,'sign_in_required');return withTransaction(input.pool,async client=>{
   await client.query('SELECT pg_advisory_xact_lock(hashtext($1))',['browser-push-owner:'+a.tenantId+':'+a.userId]);
   await client.query('SELECT pg_advisory_xact_lock(hashtext($1))',['browser-push:'+hash]);
   const session=(await client.query(`SELECT created_at::text FROM security.platform_sessions WHERE tenant_id=$1 AND user_id=$2 AND access_hash=$3 AND revoked_at IS NULL AND access_expires_at>clock_timestamp() FOR SHARE`,[a.tenantId,a.userId,hashPlatformSessionToken(token!)])).rows[0];if(!session)fail(401,'sign_in_required');
   const old=(await client.query(`SELECT tenant_id,user_id FROM agents.browser_push_subscriptions WHERE endpoint_hash=$1`,[hash])).rows[0];if(old&&(old.tenant_id!==a.tenantId||old.user_id!==a.userId))fail(409,'push_subscription_owned_elsewhere');
   const count=Number((await client.query(`SELECT count(*)::integer AS n FROM agents.browser_push_subscriptions WHERE tenant_id=$1 AND user_id=$2 AND enabled=true AND device_id<>$3`,[a.tenantId,a.userId,p.deviceId])).rows[0]?.n);if(count>=5)fail(409,'push_device_limit');
   const row=(await client.query(`INSERT INTO agents.browser_push_subscriptions(subscription_id,tenant_id,user_id,device_id,endpoint_hash,endpoint,p256dh,auth_key,scope_tag,session_created_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) ON CONFLICT(tenant_id,user_id,device_id) DO UPDATE SET endpoint_hash=$5,endpoint=$6,p256dh=$7,auth_key=$8,scope_tag=$9,session_created_at=$10,enabled=true,created_at=clock_timestamp(),updated_at=clock_timestamp() RETURNING subscription_id AS "subscriptionId",scope_tag AS "scopeTag"`,[randomUUID(),a.tenantId,a.userId,p.deviceId,hash,sub.endpoint,sub.keys.p256dh,sub.keys.auth,randomBytes(24).toString('base64url'),session.created_at])).rows[0];return {...row,accountId:a.userId};
  });},
  async unregister(header:string|undefined,deviceId:string){const a=await owner(header);if(!/^[A-Za-z0-9_-]{16,128}$/.test(deviceId))fail(422,'invalid_push_device');await input.pool.query(`UPDATE agents.browser_push_subscriptions SET enabled=false,updated_at=clock_timestamp() WHERE tenant_id=$1 AND user_id=$2 AND device_id=$3`,[a.tenantId,a.userId,deviceId]);return {disabled:true};},
  async test(header:string|undefined){const a=await owner(header);await input.beforeWrite(header);if(!configured)fail(503,'browser_push_not_configured');const eventId='browser-test:'+randomUUID();await withTransaction(input.pool,async client=>{await client.query('SELECT pg_advisory_xact_lock(hashtext($1))',['browser-push-test:'+a.tenantId+':'+a.userId]);if((await client.query(`SELECT 1 FROM agents.mobile_notification_history WHERE tenant_id=$1 AND user_id=$2 AND event_id LIKE 'browser-test:%' AND created_at>clock_timestamp()-interval '1 minute'`,[a.tenantId,a.userId])).rows.length)fail(429,'push_test_rate_limited');await client.query(`INSERT INTO agents.mobile_notification_history(tenant_id,user_id,event_id,category,title) VALUES($1,$2,$3,'status','Browser notifications connected')`,[a.tenantId,a.userId,eventId]);});return {eventId,queued:true};},
  async stop(){stopped=true;await active;},
  pump(){if(stopped)return Promise.resolve({processed:0});if(running)return active??Promise.resolve({processed:0});active=deliver();return active;}
 };
 async function deliver(){if(stopped||!configured||running)return {processed:0};running=true;let processed=0;try{
   // History exists only after the canonical operation commits. Registering a
   // device cannot flood it with older notifications or revive a revoked session.
   await input.pool.query(`UPDATE agents.browser_push_subscriptions s SET enabled=false WHERE enabled AND (NOT EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=s.tenant_id AND u.user_id=s.user_id AND u.state='active') OR NOT EXISTS(SELECT 1 FROM security.platform_sessions p WHERE p.tenant_id=s.tenant_id AND p.user_id=s.user_id AND p.created_at=s.session_created_at AND p.revoked_at IS NULL AND p.refresh_expires_at>clock_timestamp()))`);
   await input.pool.query(`INSERT INTO agents.browser_push_deliveries(subscription_id,event_id) SELECT s.subscription_id,n.event_id FROM agents.browser_push_subscriptions s JOIN agents.mobile_notification_history n ON n.tenant_id=s.tenant_id AND n.user_id=s.user_id AND n.created_at>=s.created_at WHERE s.enabled AND n.read_at IS NULL AND n.category<>'rooms' AND n.created_at>clock_timestamp()-interval '1 day' AND NOT EXISTS(SELECT 1 FROM agents.browser_push_deliveries d WHERE d.subscription_id=s.subscription_id AND d.event_id=n.event_id) ORDER BY n.created_at DESC LIMIT 50 ON CONFLICT DO NOTHING`);
   for(let i=0;i<3&&!stopped;i++){
    const lease=randomUUID();const row=await withTransaction(input.pool,async client=>{const q=await client.query(`SELECT d.subscription_id,d.event_id,s.tenant_id,s.user_id,s.endpoint,s.p256dh,s.auth_key,s.scope_tag,n.category,n.read_at,n.created_at FROM agents.browser_push_deliveries d JOIN agents.browser_push_subscriptions s USING(subscription_id) JOIN agents.mobile_notification_history n ON n.tenant_id=s.tenant_id AND n.user_id=s.user_id AND n.event_id=d.event_id WHERE d.state='pending' AND s.enabled AND d.available_at<=clock_timestamp() AND (d.lease_until IS NULL OR d.lease_until<clock_timestamp()) ORDER BY d.available_at FOR UPDATE OF d SKIP LOCKED LIMIT 1`);const row=q.rows[0];if(row)await client.query(`UPDATE agents.browser_push_deliveries SET lease_id=$3,lease_until=clock_timestamp()+interval '30 seconds' WHERE subscription_id=$1 AND event_id=$2`,[row.subscription_id,row.event_id,lease]);return row;});if(!row)break;
    const prefs=await input.preferences.readPreferences({tenantId:row.tenant_id,userId:row.user_id});
    if(row.read_at||!prefs[row.category as keyof MobileNotificationPreferences]||new Date(row.created_at).getTime()<Date.now()-86400000){await input.pool.query(`UPDATE agents.browser_push_deliveries SET state='skipped',lease_until=NULL,updated_at=clock_timestamp() WHERE subscription_id=$1 AND event_id=$2 AND lease_id=$3`,[row.subscription_id,row.event_id,lease]);continue;}
    if(pushQuietNow(prefs)){await input.pool.query(`UPDATE agents.browser_push_deliveries SET lease_until=NULL,available_at=clock_timestamp()+interval '5 minutes' WHERE subscription_id=$1 AND event_id=$2 AND lease_id=$3`,[row.subscription_id,row.event_id,lease]);continue;}
    let state='delivered',status=201;try{await send({endpoint:row.endpoint,keys:{p256dh:row.p256dh,auth:row.auth_key}},JSON.stringify({title:'ChatMeUp',body:row.category==='wallet'?'You have a wallet update.':'You have a new update.',tag:row.event_id,scopeTag:row.scope_tag,url:row.category==='wallet'||row.category==='p2p'?'/?tab=wallet':row.category==='calls'?'/?tab=calls':'/?tab=chats'}),{vapidDetails:{subject:input.subject!,publicKey:input.publicKey!,privateKey:input.privateKey!},TTL:300,timeout:1800,urgency:'normal'});}catch(error){const code=(error as {statusCode?:number}).statusCode;status=Number.isInteger(code)?code!:0;state=[404,410].includes(status)?'failed':'pending';if(state==='failed')await input.pool.query(`UPDATE agents.browser_push_subscriptions SET enabled=false WHERE subscription_id=$1`,[row.subscription_id]);}
    await input.pool.query(`UPDATE agents.browser_push_deliveries SET state=CASE WHEN attempts>=4 AND $4='pending' THEN 'failed' ELSE $4 END,attempts=attempts+1,last_status=$5,lease_until=NULL,available_at=clock_timestamp()+interval '1 minute'*(LEAST(attempts+1,10)),updated_at=clock_timestamp() WHERE subscription_id=$1 AND event_id=$2 AND lease_id=$3`,[row.subscription_id,row.event_id,lease,state,status]);processed++;
   }
   return {processed};
  }finally{running=false;}}
}
