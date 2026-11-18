import {createOfficialLiveEvidenceSession,officialLiveTool,officialLiveToolInstruction} from '../official_live_evidence.js';
import type {PublicOfficialPersona} from '@masanawa/agents';
import {createHash,randomBytes} from 'node:crypto';
import type {Duplex} from 'node:stream';
import type {IncomingMessage} from 'node:http';
import type {FastifyInstance} from 'fastify';
import WebSocket,{WebSocketServer,type RawData} from 'ws';
import type {GbCallActor,GbCallAdmission,createGbCallAdmissions} from '@masanawa/postgres';
import type {LiveVoiceTokenService} from '../agent_shell_contract.js';
import {GbCallRelayError} from './errors.js';

export type ProviderVoiceGrant=Awaited<ReturnType<LiveVoiceTokenService['mint']>>;
export type MbRelayGrant=ProviderVoiceGrant&{transport:'gateway_relay'};
type Store=Pick<ReturnType<typeof createGbCallAdmissions>,
  'read'|'claimConnection'|'connected'|'checkpoint'|'disconnect'|'abandonConnection'|'finish'|'recover'>;
interface Ticket {readOfficialEvidence?: (query:string)=>Promise<PublicOfficialPersona>;actor:GbCallActor;characterId:string;id:string;grant:ProviderVoiceGrant;expires:number;bytes:number;validateOwner:()=>Promise<void>}
interface Connection {actor:GbCallActor;stop(confirmed:boolean,finish:boolean):Promise<void>}
interface RelayOptions {
  store:Store;publicOrigin:string;
  validate(actor:GbCallActor,characterId:string):Promise<void>;
  dial?:(url:string)=>WebSocket;
  now?:()=>Date;
  heartbeatMs?:number;
  recoveryMs?:number;
  report?:(event:{stage:'connection'|'recovery'|'provider';code:'unavailable';providerStatus?:string})=>void;
}
const endpoint='/agent/live/stream',maxFrame=1024*1024;
const digest=(s:string)=>createHash('sha256').update(s).digest('hex');
const rejected=()=>new GbCallRelayError();
/** Preserve all entropy while satisfying the durable journal's ID grammar. */
export function createRelayLeaseId(entropy:Uint8Array):string {
  if(entropy.byteLength!==24)throw new TypeError('Relay leases require 24 random bytes');
  return 'relay_'+Buffer.from(entropy).toString('base64url');
}


/** Capability and provider tokens exist only in this process's bounded memory.
 * Admission/usage/recovery are durable. A lost grant fails closed and is retried
 * against the original admission; it never becomes a second wallet hold.
 */
export function createGbCallRelay(options:RelayOptions){
  const origin=new URL(options.publicOrigin);
  const local=['127.0.0.1','localhost','[::1]'].includes(origin.hostname);
  if(origin.username||origin.password||origin.search||origin.hash||origin.pathname!=='/'||
     (origin.protocol!=='https:'&&!(local&&origin.protocol==='http:')))
    throw new TypeError('Relay requires a credential-free HTTPS origin');
  const relayUrl=new URL(endpoint,origin);relayUrl.protocol=origin.protocol==='https:'?'wss:':'ws:';
  const now=options.now??(()=>new Date());
  const dial=options.dial??(url=>new WebSocket(url,{handshakeTimeout:15000,maxPayload:maxFrame}));
  const beatMs=options.heartbeatMs??5000,recoveryMs=options.recoveryMs??10000;
  if(!Number.isSafeInteger(beatMs)||beatMs<10||beatMs>5000||
     !Number.isSafeInteger(recoveryMs)||recoveryMs<10||recoveryMs>10000)
    throw new TypeError('Invalid relay lifecycle intervals');
  const tickets=new Map<string,Ticket>(),byAdmission=new Map<string,string>();
  const connections=new Map<string,Connection>();
  const resumptions=new Map<string,{handle:string;expires:number}>();
  let ticketBytes=0;
  const server=new WebSocketServer({noServer:true,maxPayload:maxFrame});
  let ready=false,closed=false,recovery:ReturnType<typeof setInterval>|undefined;
  let runningRecovery=false;
  const removeTicket=(hash:string)=>{
    const ticket=tickets.get(hash);if(!ticket)return;
    ticketBytes-=ticket.bytes;tickets.delete(hash);
    if(byAdmission.get(ticket.id)===hash)byAdmission.delete(ticket.id);
  };
  const purge=()=>{
    for(const [key,ticket]of tickets)if(ticket.expires<=now().getTime())removeTicket(key);
    for(const [id,resume]of resumptions)if(!connections.has(id)&&resume.expires<=now().getTime())resumptions.delete(id);
  };
  const recover=async()=>{
    if(runningRecovery||closed)return;
    runningRecovery=true;
    try{
      const receipts=await options.store.recover();
      for(const row of receipts){
        await connections.get(row.admissionId)?.stop(false,false);
        resumptions.delete(row.admissionId);
      }
      ready=true;
    }catch{ready=false;options.report?.({stage:'recovery',code:'unavailable'});}
    finally{runningRecovery=false;purge();}
  };
  const assertAccess=async(ticket:Ticket)=>{
    await options.validate(ticket.actor,ticket.characterId);
    await ticket.validateOwner();
  };
  const verifyAdmission=async(ticket:Ticket)=>{
    await assertAccess(ticket);
    const row=await options.store.read(ticket.actor,ticket.id);
    if(!row||row.characterId!==ticket.characterId||row.state!=='reserved'||
       (!Number.isFinite(Date.parse(row.expiresAt))||Date.parse(row.expiresAt)<=now().getTime())||row.verifiedConnectedMs>=row.budgetMb*1000)throw rejected();
    return row;
  };
  const attach=(client:WebSocket,ticket:Ticket,lease:string,row:GbCallAdmission)=>{
    let provider:WebSocket;
    try{provider=dial(ticket.grant.websocketUrl);}catch{
      client.terminate();void options.store.abandonConnection(ticket.actor,ticket.id,lease).catch(()=>{});return;
    }
    let chain=Promise.resolve(),stopping=false,setup=false,connected=false;
    let closedTask:Promise<void>|undefined;
    const officialEvidence=ticket.readOfficialEvidence?createOfficialLiveEvidenceSession(ticket.readOfficialEvidence):undefined;
    let setupSent=false;
    let setupFrame:string|undefined,waiting:string[]=[],waitingBytes=0,queuedBytes=0;
    let heartbeat:ReturnType<typeof setInterval>|undefined;
    let deadline:ReturnType<typeof setTimeout>|undefined;
    const setupDeadline=setTimeout(()=>{void stop(false,false)},30000);
    let lastProof=now().getTime();
    const send=(socket:WebSocket,value:string)=>{
      if(socket.readyState!==WebSocket.OPEN||socket.bufferedAmount>maxFrame)throw rejected();
      socket.send(value,{binary:false});
    };
    const stop=(confirmed:boolean,finish:boolean):Promise<void>=>{
      if(closedTask)return finish?closedTask.then(async()=>{await options.store.finish(ticket.actor,ticket.id)}):closedTask;
      if(stopping)return Promise.resolve();
      stopping=true;clearTimeout(setupDeadline);clearTimeout(deadline);clearInterval(heartbeat);
      client.terminate();provider.terminate();
      closedTask=chain.catch(()=>{}).then(async()=>{
        try{
          if(confirmed)await options.store.disconnect(ticket.actor,ticket.id,lease);
          else await options.store.abandonConnection(ticket.actor,ticket.id,lease);
        }catch{ /* Expired/recovered lease is read back below, never re-created. */ }
        if(finish)await options.store.finish(ticket.actor,ticket.id);
      }).catch(()=>{options.report?.({stage:'connection',code:'unavailable'});})
        .finally(()=>{
          if(connections.get(ticket.id)?.stop===stop)connections.delete(ticket.id);
          const resume=resumptions.get(ticket.id);
          if(finish)resumptions.delete(ticket.id);else if(resume)resume.expires=now().getTime()+30000;
        });
      return closedTask;
    };
    const enqueue=(action:()=>Promise<void>|void)=>{
      chain=chain.then(async()=>{if(!stopping)await action();}).catch(()=>{
        options.report?.({stage:'connection',code:'unavailable'});
        // Schedule cleanup after this queue item resolves; never await our own queue.
        void Promise.resolve().then(()=>stop(false,false));
      });
    };
    const flushSetup=()=>{
      if(setupFrame&&!setupSent&&provider.readyState===WebSocket.OPEN){setupSent=true;send(provider,setupFrame);}
    };
    const checkpoint=async()=>{
      await assertAccess(ticket);
      await options.store.checkpoint(ticket.actor,ticket.id,lease);lastProof=now().getTime();
    };
    connections.set(ticket.id,{actor:ticket.actor,stop});
    client.on('message',(raw:RawData,binary:boolean)=>{
      const text=raw.toString();queuedBytes+=Buffer.byteLength(text);
      if(binary||queuedBytes>maxFrame){void stop(false,false);return;}
      enqueue(async()=>{
        queuedBytes-=Buffer.byteLength(text);
        const message=JSON.parse(text) as Record<string,unknown>;
        if(!message||typeof message!=='object'||Array.isArray(message))throw rejected();
        if(!setup){
          if(Object.keys(message).length!==1||!message.setup||typeof message.setup!=='object'||Array.isArray(message.setup))throw rejected();
          const input=message.setup as Record<string,unknown>;
          const allowed=['model','generationConfig','systemInstruction','inputAudioTranscription',
            'outputAudioTranscription','realtimeInputConfig','sessionResumption','contextWindowCompression'];
          if(Object.keys(input).some(key=>!allowed.includes(key)))throw rejected();
          const canonical:Record<string,unknown>={...input,
            model:'models/'+ticket.grant.model,
            generationConfig:{responseModalities:['AUDIO'],speechConfig:{
              voiceConfig:{prebuiltVoiceConfig:{voiceName:ticket.grant.voiceName}},
            }},
          };
          if(ticket.grant.systemInstruction)canonical.systemInstruction={parts:[{text:ticket.grant.systemInstruction}]};
          else delete canonical.systemInstruction;
          if(officialEvidence){
            canonical.tools=[officialLiveTool];
            canonical.systemInstruction={parts:[{text:(ticket.grant.systemInstruction??'')+'\n'+officialLiveToolInstruction}]};
          }
          if(input.sessionResumption){
            const saved=resumptions.get(ticket.id)?.handle;
            canonical.sessionResumption=saved?{handle:saved}:{};
          }
          setupFrame=JSON.stringify({setup:canonical});setup=true;
          flushSetup();
          return;
        }
        if(!Object.keys(message).length||Object.keys(message).some(key=>!['realtimeInput','clientContent'].includes(key)))throw rejected();
        if(connected)send(provider,text);
        else{waitingBytes+=Buffer.byteLength(text);if(waitingBytes>maxFrame)throw rejected();waiting.push(text);}
      });
    });
    provider.on('open',()=>enqueue(flushSetup));
    provider.on('message',(raw:RawData,binary:boolean)=>{
      const text=raw.toString();queuedBytes+=Buffer.byteLength(text);
      if(binary||queuedBytes>maxFrame){void stop(false,false);return;}
      enqueue(async()=>{
        queuedBytes-=Buffer.byteLength(text);
        const message=JSON.parse(text) as Record<string,unknown>;
        if(!message||typeof message!=='object'||Array.isArray(message))throw rejected();
        if(message.error){
          const status=(message.error as {status?:unknown}).status;
          const providerStatus=typeof status==='string'&&[
            'INVALID_ARGUMENT','FAILED_PRECONDITION','NOT_FOUND','UNAUTHENTICATED',
            'PERMISSION_DENIED','RESOURCE_EXHAUSTED','INTERNAL','UNAVAILABLE','DEADLINE_EXCEEDED',
          ].includes(status)?status:'UNKNOWN';
          options.report?.({stage:'provider',code:'unavailable',providerStatus});
          send(client,JSON.stringify({error:{code:'gb.call.provider_unavailable',
            message:'Voice service is unavailable. Please try again.'}}));
          void Promise.resolve().then(()=>stop(false,false));return;
        }
        if(message.setupComplete||message.setup_complete){
          const confirmation=message.setupComplete??message.setup_complete;
          if(!confirmation||typeof confirmation!=='object'||Array.isArray(confirmation))throw rejected();
          if(!setup)throw rejected();
          if(!connected){
            await assertAccess(ticket);
            await options.store.connected(ticket.actor,ticket.id,lease);connected=true;
            clearTimeout(setupDeadline);lastProof=now().getTime();
            const remaining=row.budgetMb*1000-row.verifiedConnectedMs;
            deadline=setTimeout(()=>{void stop(true,true)},remaining);
            heartbeat=setInterval(()=>{
              if(now().getTime()-lastProof>=14000){void stop(false,false);return;}
              if(provider.readyState===WebSocket.OPEN)provider.ping();
            },beatMs);
            for(const frame of waiting)send(provider,frame);waiting=[];waitingBytes=0;
          }
        }
        const toolCall=message.toolCall??message.tool_call;
        if(toolCall){
          if(!connected||!officialEvidence)throw rejected();
          await assertAccess(ticket);
          const result=await officialEvidence.respond(toolCall);
          if(!stopping)send(provider,JSON.stringify(result));
        }
        const resume=(message.sessionResumptionUpdate??message.session_resumption_update) as
          {newHandle?:unknown;new_handle?:unknown}|undefined;
        const handle=resume?.newHandle??resume?.new_handle;
        if(typeof handle==='string'&&handle.length<=4096)resumptions.set(ticket.id,{handle,expires:now().getTime()+30000});
        if(connected&&now().getTime()-lastProof>=beatMs)await checkpoint();
        if(connected){
          const allowed=['setupComplete','setup_complete','serverContent','server_content',
            'sessionResumptionUpdate','session_resumption_update','goAway','go_away','usageMetadata'];
          const visible=Object.fromEntries(Object.entries(message).filter(([key])=>allowed.includes(key)));
          if(Object.keys(visible).length)send(client,JSON.stringify(visible));
        }
      });
    });
    provider.on('pong',()=>enqueue(async()=>{if(connected)await checkpoint()}));
    provider.on('error',()=>{void stop(false,false)});
    provider.on('close',(code:number)=>{void stop(code===1000,false)});
    client.on('error',()=>{void stop(false,false)});
    client.on('close',(code:number)=>{void stop(code===1000,false)});
  };
  const rejectSocket=(socket:Duplex,status=401)=>{
    if(socket.destroyed)return;
    socket.end(`HTTP/1.1 ${status} ${status===403?'Forbidden':'Unauthorized'}\r\nConnection: close\r\nContent-Length: 0\r\n\r\n`);
  };
  const upgrade=async(request:IncomingMessage,socket:Duplex,head:Buffer)=>{
    if(request.url!==endpoint||request.method!=='GET'||!ready||closed){rejectSocket(socket);return;}
    const token=/^Bearer ([A-Za-z0-9_-]{43})$/.exec(request.headers.authorization??'')?.[1];
    const hash=token?digest(token):'',ticket=tickets.get(hash);removeTicket(hash);
    if(!ticket||ticket.expires<=now().getTime()||connections.size>=1000){rejectSocket(socket);return;}
    if(byAdmission.get(ticket.id)===hash)byAdmission.delete(ticket.id);
    const lease=createRelayLeaseId(randomBytes(24));
    try{
      const row=await verifyAdmission(ticket);
      await options.store.claimConnection(ticket.actor,ticket.id,ticket.characterId,lease);
      if(closed||!ready||socket.destroyed){
        await options.store.abandonConnection(ticket.actor,ticket.id,lease);rejectSocket(socket);return;
      }
      let attached=false;
      const abandoned=()=>{if(!attached)void options.store.abandonConnection(ticket.actor,ticket.id,lease).catch(()=>{});};
      socket.once('close',abandoned);
      server.handleUpgrade(request,socket,head,client=>{
        attached=true;socket.off('close',abandoned);attach(client,ticket,lease,row);
      });
    }catch{
      rejectSocket(socket,403);
      // Handles malformed upgrade after a successful claim without creating proof.
      await options.store.abandonConnection(ticket.actor,ticket.id,lease).catch(()=>{});
    }
  };
  return {
    ready:()=>ready&&!closed,
    async start(){if(closed)throw rejected();await recover();recovery??=setInterval(()=>{void recover()},recoveryMs);},
    async issue(actor:GbCallActor,characterId:string,id:string,grant:ProviderVoiceGrant,validateOwner:()=>Promise<void>,readOfficialEvidence?: (query:string)=>Promise<PublicOfficialPersona>):Promise<MbRelayGrant>{
      if(!ready||closed||typeof validateOwner!=='function')throw rejected();purge();
      const url=new URL(grant.websocketUrl);
      if(url.protocol!=='wss:'||url.hostname!=='generativelanguage.googleapis.com'||url.username||url.password||url.port||
         url.pathname!=='/ws/google.ai.generativelanguage.v1beta.GenerativeService.BidiGenerateContentConstrained')
        throw rejected();
      const old=connections.get(id);
      if(old){
        if(old.actor.tenantId!==actor.tenantId||old.actor.userId!==actor.userId)throw rejected();
        await old.stop(true,false);
      }
      if(!grant.model||grant.model.length>160||!grant.voiceName||grant.voiceName.length>160||
         (grant.systemInstruction!==undefined&&grant.systemInstruction.length>200000))throw rejected();
      const canonicalGrant:ProviderVoiceGrant=Object.freeze({token:grant.token,
        websocketUrl:grant.websocketUrl,model:grant.model,voiceName:grant.voiceName,
        expiresAt:grant.expiresAt,...(grant.callId?{callId:grant.callId}:{}),
        ...(grant.systemInstruction?{systemInstruction:grant.systemInstruction}:{}),
      });
      const ticket:Ticket={actor:Object.freeze({tenantId:actor.tenantId,userId:actor.userId}),
        characterId,id,grant:canonicalGrant,validateOwner,...(readOfficialEvidence?{readOfficialEvidence}:{}),bytes:Buffer.byteLength(JSON.stringify(canonicalGrant)),
        expires:Math.min(now().getTime()+60000,Date.parse(grant.expiresAt))};
      if(!Number.isFinite(ticket.expires)||ticket.expires<=now().getTime())throw rejected();
      const admission=await verifyAdmission(ticket);
      if(closed||!ready)throw rejected();
      ticket.expires=Math.min(ticket.expires,Date.parse(admission.expiresAt));
      const previous=byAdmission.get(id);if(previous)removeTicket(previous);
      if(tickets.size>=10000||ticketBytes+ticket.bytes>32*1024*1024)throw rejected();
      const token=randomBytes(32).toString('base64url'),hash=digest(token);
      tickets.set(hash,ticket);ticketBytes+=ticket.bytes;byAdmission.set(id,hash);
      return {token,websocketUrl:relayUrl.toString(),transport:'gateway_relay',
        model:grant.model,voiceName:grant.voiceName,expiresAt:new Date(ticket.expires).toISOString(),
        ...(grant.callId?{callId:grant.callId}:{}),
        ...(grant.systemInstruction?{systemInstruction:grant.systemInstruction}:{}),
      };
    },
    upgrade,
    async finish(actor:GbCallActor,id:string){
      const record=await options.store.read(actor,id);if(!record)throw rejected();
      const connection=connections.get(id);
      if(connection&&(connection.actor.tenantId!==actor.tenantId||connection.actor.userId!==actor.userId))throw rejected();
      await connection?.stop(true,false);
      resumptions.delete(id);const hash=byAdmission.get(id);if(hash)removeTicket(hash);byAdmission.delete(id);
      return options.store.finish(actor,id);
    },
    async close(){
      if(closed)return;closed=true;ready=false;clearInterval(recovery);
      tickets.clear();ticketBytes=0;byAdmission.clear();resumptions.clear();
      await Promise.all([...connections.values()].map(connection=>connection.stop(true,true)));
      await new Promise<void>(resolve=>server.close(()=>resolve()));
    },
  };
}

/** Explicit opt-in installation; ordinary Gateway construction mounts no relay. */
export function installGbCallRelay(app:FastifyInstance,relay:ReturnType<typeof createGbCallRelay>){
  const listener=(request:IncomingMessage,socket:Duplex,head:Buffer)=>{
    void relay.upgrade(request,socket,head).catch(()=>{socket.destroy()});
  };
  app.server.on('upgrade',listener);
  app.addHook('onReady',async()=>{await relay.start()});
  app.addHook('preClose',async()=>{app.server.off('upgrade',listener);await relay.close()});
}
