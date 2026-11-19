import {createServer} from 'node:http';
import {createRequire} from 'node:module';
import {randomUUID} from 'node:crypto';
import {rm} from 'node:fs/promises';
import {jidNormalizedUser} from '@whiskeysockets/baileys';
import {createPostgresServiceDependency,platformProductMigrationRoots} from '@masanawa/postgres';
import {browserAction} from './jobs/whatsapp_browser_provider.js';
import {createWhatsAppCallHandler} from './jobs/whatsapp_calls.js';
import {recordIncomingCallOffer} from './jobs/whatsapp_call_signals.js';
import {encryptLinkedSecret} from './jobs/whatsapp_linked.js';
import {BrowserIncomingSession,type BrowserOffer,activeBrowserCall} from './jobs/whatsapp_browser_media.js';

type BrowserClient={
  page:{evaluate<T>(fn:(action:string,id?:string)=>Promise<unknown>,action:string,id?:string):Promise<T>};
  close():Promise<void>;
};
type Pairing={tenant_id:string;channel_id:string;call_target_channel_id:string;linked_jid:string};
type Poll={connected:boolean;hosts:string[];calls:BrowserOffer[];ready:boolean};
const require=createRequire(import.meta.url);
const report=(code:string)=>process.stderr.write(`{"event":"whatsapp.browser.${code}"}\n`);
const direct=/^\d{5,32}(?::\d+)?@(s\.whatsapp\.net|c\.us|lid)$/;
const env=process.env;
const sessionKey=env.MASANAWA_WHATSAPP_SESSION_KEY;
const databaseUrl=env.MASANAWA_DATABASE_URL??env.DATABASE_URL;
if(!databaseUrl||!sessionKey)throw Error('whatsapp_browser_configuration_required');
const database=createPostgresServiceDependency({connectionString:databaseUrl,
  applicationName:'masanawa-whatsapp-browser',migrationRoots:platformProductMigrationRoots()});
const {pool}=database;
const owner=randomUUID();
const wpp=require('/opt/masanawa-browser/node_modules/@wppconnect-team/wppconnect') as {
  create(options:Record<string,unknown>):Promise<BrowserClient>;
};


let pairing:Pairing|undefined,client:BrowserClient|undefined,launch:Promise<void>|undefined,closing=false,running=false;
let handler:ReturnType<typeof createWhatsAppCallHandler>|undefined;
let current:BrowserIncomingSession|undefined;
const seen=new Map<string,number>();
let healthyAt=Date.now(),renewAt=0,lastState='';
let busy=false;

async function update(pair:Pairing,state:string,code:string|null=null,qr:string|null=null){
  const changed=await pool.query(`UPDATE security.whatsapp_channels SET state=$4,last_error_code=$5,
    qr_ciphertext=$6,qr_expires_at=CASE WHEN $6::bytea IS NULL THEN NULL ELSE clock_timestamp()+interval '55 seconds' END,
    linked_jid=CASE WHEN $4='connected' THEN $7 ELSE linked_jid END,updated_at=clock_timestamp()
    WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$3 AND call_transport='browser'
      AND state<>'disconnected' AND lease_expires_at>clock_timestamp()
      AND ($4<>'qr_ready' OR state<>'connected')
      AND ($4<>'connected' OR state<>'needs_pairing')
    RETURNING channel_id`,[pair.tenant_id,pair.channel_id,owner,state,code,
    qr?encryptLinkedSecret(qr,sessionKey!):null,pair.linked_jid]);
  if(changed.rows.length)lastState=state;
}

async function stop(removeProfile=false){
  const old=client,oldPairing=pairing;
  client=undefined;
  pairing=undefined;
  lastState='';
  seen.clear();
  await handler?.stop();
  handler=undefined;
  current=undefined;
  if(old)await old.close().catch(()=>undefined);
  if(removeProfile&&oldPairing){
    const path='/data/'+oldPairing.channel_id;
    await Promise.all([rm(path+'-chrome',{recursive:true,force:true}),rm(path+'.data.json',{force:true})]);
  }
}

async function begin(pair:Pairing){
  const settings={session:pair.channel_id,deviceName:'Masanawa Call Gateway',headless:false,useChrome:false,logQR:false,
    autoClose:0,waitForLogin:false,tokenStore:'file',folderNameToken:'/data',
    disableWelcome:true,disableGoogleAnalytics:true,updatesLog:false,
    catchQR:(_base64:string,_ascii:string,_attempt:number,urlCode:string)=>{
      if(pairing===pair&&urlCode&&urlCode.length<4096)void update(pair,'qr_ready',null,urlCode).catch(()=>report('qr_failed'));
    },
    browserArgs:['--no-sandbox','--disable-setuid-sandbox','--disable-dev-shm-usage','--use-fake-ui-for-media-stream',
      '--autoplay-policy=no-user-gesture-required','--disable-background-timer-throttling'],
    puppeteerOptions:{executablePath:'/usr/bin/chromium',userDataDir:`/data/${pair.channel_id}-chrome`,protocolTimeout:7000},
  };
  try{
    const opened=await wpp.create(settings);
    if(pairing!==pair||closing){await opened.close();return;}
    const identity={tenantId:pair.tenant_id,channelId:pair.channel_id,targetId:pair.call_target_channel_id,owner};
    handler=createWhatsAppCallHandler({pool,identity,env,sessionKey:sessionKey!,
      acquire:()=>{if(busy)return false;busy=true;return true;},release:()=>{busy=false;}});
    client=opened;
  }catch{
    if(pairing===pair){await update(pair,'degraded','browser_start_failed').catch(()=>undefined);await stop();}
  }
}

async function tick(){
  if(closing||running)return;
  running=true;
  try{
    if(Date.now()>=renewAt){
      renewAt=Date.now()+3000;
      const rows=await pool.query<Pairing>(`WITH next AS (
        SELECT c.tenant_id,c.channel_id,target.linked_jid FROM security.whatsapp_channels c
        JOIN security.whatsapp_channels target ON (target.tenant_id,target.channel_id)=(c.tenant_id,c.call_target_channel_id)
        WHERE c.call_transport='browser' AND c.state NOT IN ('disconnected','needs_pairing') AND target.linked_jid IS NOT NULL
          AND (c.lease_owner=$1 OR c.lease_expires_at IS NULL OR c.lease_expires_at<clock_timestamp())
        ORDER BY (c.lease_owner=$1) DESC NULLS LAST,c.created_at LIMIT 1 FOR UPDATE OF c SKIP LOCKED
      ) UPDATE security.whatsapp_channels c SET lease_owner=$1,lease_expires_at=clock_timestamp()+interval '20 seconds'
        FROM next WHERE (c.tenant_id,c.channel_id)=(next.tenant_id,next.channel_id)
        RETURNING c.tenant_id,c.channel_id,c.call_target_channel_id,next.linked_jid`,[owner]);
      const next=rows.rows[0];
      if(pairing&&pairing.channel_id!==next?.channel_id){
        const previous=await pool.query(`SELECT state FROM security.whatsapp_channels
          WHERE tenant_id=$1 AND channel_id=$2`,[pairing.tenant_id,pairing.channel_id]);
        await stop(previous.rows[0]?.state==='disconnected');
      }
      if(!pairing&&next&&!launch){pairing=next;launch=begin(next).finally(()=>{launch=undefined;});}
    }
    healthyAt=Date.now();
    if(!pairing||!client||!handler)return;
    const pair=pairing,activeClient=client;
    const result=await client.page.evaluate<Poll>(browserAction,'poll');
    if(!result.connected||!result.hosts.length||!result.ready){
      if(lastState==='connected'){await handler.stop();await update(pair,'degraded','browser_call_transport_unavailable');await stop();}
      return;
    }
    if(!result.hosts.some(host=>jidNormalizedUser(host.replace(/@c\.us$/,'@s.whatsapp.net'))===pair.linked_jid)){
      await update(pair,'needs_pairing','call_pairing_number_mismatch');
      await stop(true);
      return;
    }
    if(lastState!=='connected')await update(pair,'connected');
    if(lastState!=='connected')return;

    current?.observe(result.calls.find(offer=>offer.id===current?.callId)?.state??null);
    if(current?.ended)current=undefined;
    const now=Date.now();
    for(const [id,At] of seen)if(now-At>5*60_000)seen.delete(id);
    for(const offer of result.calls){
      if(!offer.id||offer.id.length>128||!direct.test(offer.peer)||offer.video||offer.group||
        !['3','8','INCOMING_RING','INCOMING_RINGING','INCOMINGRINGING','INCOMING','OFFERRECEIVED','OFFER_RECEIVED'].includes(offer.state)||
        activeBrowserCall(offer.state)||seen.has(offer.id))continue;
      seen.set(offer.id,now);
      const identity={tenantId:pair.tenant_id,channelId:pair.channel_id,targetId:pair.call_target_channel_id,owner};
      await recordIncomingCallOffer(pool,identity,offer.id);
      if(current)continue;
      current=new BrowserIncomingSession(offer,{
        state:id=>activeClient.page.evaluate<string|null>(browserAction,'state',id),
        accept:id=>activeClient.page.evaluate<boolean>(browserAction,'accept',id),
        end:async id=>{await activeClient.page.evaluate(browserAction,'end',id);},
      });
      current.observe(offer.state);
      handler.session(current);
      handler.signal({id:offer.id,from:offer.peer.replace(/@c\.us$/,'@s.whatsapp.net'),date:new Date(now),
        status:'offer',offline:false,isGroup:false,isVideo:false,...(offer.phone?{callerPn:offer.phone}:{})});
    }
  }catch{
    report('poll_failed');
    if(lastState==='connected'&&pairing){
      await update(pairing,'degraded','browser_runtime_lost').catch(()=>undefined);
      await stop();
    }
  }finally{running=false;}
}

const server=createServer((req,res)=>{
  const ready=Date.now()-healthyAt<18000;
  res.writeHead(req.url==='/readyz'?(ready?200:503):404,{'content-type':'application/json'});
  res.end(JSON.stringify({ready}));
});
server.listen(3003,'0.0.0.0');
const timer=setInterval(()=>void tick(),350);
void tick();
const shutdown=async()=>{closing=true;clearInterval(timer);server.close();await stop();await database.close();};
process.once('SIGTERM',()=>void shutdown());
process.once('SIGINT',()=>void shutdown());
