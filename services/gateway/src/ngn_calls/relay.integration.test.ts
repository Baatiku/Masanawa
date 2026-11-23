import {once} from 'node:events';
import {request as httpRequest} from 'node:http';
import {fileURLToPath} from 'node:url';
import Fastify from 'fastify';
import WebSocket,{WebSocketServer} from 'ws';
import {afterAll,beforeAll,describe,expect,it,vi} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {runMigrations} from '../../../../adapters/storage/postgres/src/migrations.js';
import {characterSessionMigrationRoots} from '../../../../adapters/storage/postgres/src/readiness.js';
import {createNgnCallAdmissions} from '../../../../adapters/storage/postgres/src/gb_wallet/ngn_call_admissions.js';
import {createNgnCallRelay,installNgnCallRelay,type NgnRelayGrant} from './relay.js';

const connection=process.env.MASANAWA_TEST_DATABASE_URL;
async function until(check:()=>Promise<boolean>,timeout=5000){
  const end=Date.now()+timeout;
  while(Date.now()<end){if(await check())return;await new Promise(resolve=>setTimeout(resolve,10));}
  throw new Error('Relay fixture timed out');
}
(connection?describe:describe.skip)('actual WebSocket relay with real NGN PostgreSQL accounting',()=>{
  let pool:Pool;
  beforeAll(async()=>{
    pool=createPostgresPool({connectionString:connection!,applicationName:'mb-call-relay-tests'});
    await runMigrations(pool,characterSessionMigrationRoots());
    await runMigrations(pool,[{owner:'commerce',directory:fileURLToPath(
      new URL('../../../../packages/commerce/migrations',import.meta.url))}]);
  });
  afterAll(async()=>{await pool?.end()});
  const sound={serverContent:{modelTurn:{parts:[{inlineData:{data:'ABAAAA==',mimeType:'audio/pcm;rate=24000'}}]}}};
  async function fixture(seconds=5,{heartbeatMs=5000,manualPong=false,providerError=false,suppressPong=false,silent=false,rateKoboPerSecond=100}={}){
    const budgetKobo=seconds*rateKoboPerSecond;
    const actor={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user')};
    const characterId=createCanonicalId('character');
    await pool.query(`INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo)
      VALUES($1,$2,5000)`,[actor.tenantId,actor.userId]);
    const store=createNgnCallAdmissions(pool);
    const {admissionId:id}=await store.admit(actor,{characterId,budgetKobo,rateKoboPerStartedSecond:rateKoboPerSecond,maxConnectedSeconds:seconds,idempotencyKey:'relay-original-call'});
    const upstream=new WebSocketServer({host:'127.0.0.1',port:0,autoPong:!manualPong&&!suppressPong});
    await once(upstream,'listening');
    const address=upstream.address();if(!address||typeof address==='string')throw Error('Invalid test address');
    const upstreamUrl='ws://127.0.0.1:'+address.port;
    const received:Record<string,unknown>[]=[];
    let provider:WebSocket|undefined,ponged=false;
    upstream.on('connection',socket=>{
      provider=socket;socket.on('error',()=>{});
      if(manualPong)socket.on('ping',()=>{if(!ponged){ponged=true;socket.pong()}});
      socket.on('message',raw=>{
        const message=JSON.parse(raw.toString());received.push(message);
        if(message.clientContent&&!silent)socket.send(JSON.stringify(sound));
        if(message.setup)socket.send(JSON.stringify(providerError?{error:{status:'INVALID_ARGUMENT',message:'private provider configuration token=provider-private-token'}}:{setupComplete:{}}));
      });
    });
    const validate=vi.fn(async()=>{}),validateOwner=vi.fn(async()=>{}),report=vi.fn();
    let clockOffset=0;
    const relay=createNgnCallRelay({store,publicOrigin:'https://gateway.example',validate,
      dial:()=>new WebSocket(upstreamUrl),heartbeatMs,recoveryMs:10000,report,now:()=>new Date(Date.now()+clockOffset)});
    const app=Fastify();installNgnCallRelay(app,relay);
    const origin=await app.listen({host:'127.0.0.1',port:0});
    const providerGrant={token:'provider-private-token',
      websocketUrl:'wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1beta.GenerativeService.BidiGenerateContent?key=provider-private-token',
      model:'fixture-live-model',voiceName:'ApprovedVoice',systemInstruction:'Canonical persona',
      expiresAt:new Date(Date.now()+60000).toISOString()};
    const issue=()=>relay.issue(actor,characterId,id,providerGrant,validateOwner);
    const socket=(grant:NgnRelayGrant,query='')=>{
      const client=new WebSocket(origin.replace('http:','ws:')+new URL(grant.websocketUrl).pathname+query,
        {headers:{authorization:'Bearer '+grant.token}});
      client.on('error',()=>{});return client;
    };
    const open=async(grant:NgnRelayGrant)=>{const client=socket(grant);await once(client,'open');return client;};
    const setup=async(client:WebSocket)=>{
      const frames:Record<string,unknown>[]=[];
      const collect=(raw:Buffer)=>frames.push(JSON.parse(raw.toString()));
      client.on('message',collect);
      client.send(JSON.stringify({setup:{model:'client-forged-model',
        generationConfig:{speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:'Forged'}}}},
        systemInstruction:{parts:[{text:'client-forged-persona'}]},sessionResumption:{handle:'forged-handle'},
      }}));
      await until(async()=>frames.some(frame=>Object.hasOwn(frame,'setupComplete')));
      if(!frames[0]?.resumed)await until(async()=>frames.some(frame=>Object.hasOwn(frame,'serverContent')));
      client.off('message',collect);
    };
    const cleanup=async()=>{
      await app.close();for(const client of upstream.clients)client.terminate();
      await new Promise<void>(resolve=>upstream.close(()=>resolve()));
      const row=await store.read(actor,id);
      if(row?.state==='pending'||row?.state==='reserved')await store.finish(actor,id);
    };
    return {actor,characterId,id,store,relay,validate,validateOwner,report,issue,socket,open,setup,cleanup,origin,
      received,provider:()=>provider,grant:providerGrant,advanceClock:(ms:number)=>{clockOffset+=ms;}};
  }
  it('connects a free call with zero wallet hold and settles zero cost after real audio',async()=>{
    const f=await fixture(3,{rateKoboPerSecond:0});
    try{
      const admission=await f.store.read(f.actor,f.id);
      expect(admission).toMatchObject({state:'reserved',budgetKobo:0,rateKoboPerStartedSecond:0,maxConnectedSeconds:3});
      const client=await f.open(await f.issue());
      await f.setup(client);
      await new Promise(resolve=>setTimeout(resolve,20));
      const closed=once(client,'close');client.close(1000);await closed;
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt).toMatchObject({state:'completed',budgetKobo:0,chargedKobo:0,rateKoboPerStartedSecond:0});
      expect(receipt.verifiedConnectedMs).toBeGreaterThan(0);
    }finally{await f.cleanup()}
  });
  it('serves only server-owned public evidence tools inside the authenticated call',async()=>{
    const f=await fixture();const evidence={officialName:'Example Official',office:'Governor',countryCode:'NG' as const,identitySourceUrl:'https://example.gov.ng',reviewedAt:'2026-10-01',reviewExpiresAt:'2099-01-01',evidence:[]};
    const lookup=vi.fn(async()=>evidence);
    try{
      const grant=await f.relay.issue(f.actor,f.characterId,f.id,f.grant,f.validateOwner,lookup);
      const client=await f.open(grant);await f.setup(client);
      const setup=f.received.find(r=>r.setup)!.setup as Record<string,any>;
      expect(setup.tools[0].functionDeclarations[0].name).toBe('read_official_evidence');
      f.provider()!.send(JSON.stringify({toolCall:{functionCalls:[{id:'fact-1',name:'read_official_evidence',args:{query:'historical office'}}]}}));
      await until(async()=>f.received.some(r=>!!r.toolResponse));
      expect(lookup).toHaveBeenCalledWith('historical office');
      expect(JSON.stringify(f.received.find(r=>r.toolResponse))).toContain('Example Official');
      const closed=once(client,'close');client.send(JSON.stringify({toolResponse:{functionResponses:[{name:'read_official_evidence',response:{invented:true}}]}}));await closed;
      expect(JSON.stringify(f.received)).not.toContain('invented');
    }finally{await f.cleanup();}
  });
  it('keeps provider credentials private and locks setup to approved persona/model/voice',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();
      expect(JSON.stringify(grant)).not.toContain('provider-private-token');
      expect(new URL(grant.websocketUrl).search).toBe('');
      expect(grant.transport).toBe('gateway_relay');
      const client=await f.open(grant);await f.setup(client);
      const setups=f.received.filter(message=>message.setup);
      expect(setups).toHaveLength(1);
      expect(setups[0]!.setup).toMatchObject({model:'models/fixture-live-model',
        generationConfig:{speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:'ApprovedVoice'}}}},
        systemInstruction:{parts:[{text:'Canonical persona'}]},sessionResumption:{},
      });
      await new Promise(resolve=>setTimeout(resolve,20));
      const closed=once(client,'close');client.close(1000);await closed;
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt.state).toBe('completed');expect(receipt.chargedKobo).toBe(Math.ceil(receipt.verifiedConnectedMs/1000)*100);
      expect(receipt.verifiedConnectedMs).toBeGreaterThan(0);
    }finally{await f.cleanup()}
  });
  it('consumes grants once and never permits a replay to create another connection',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue(),client=await f.open(grant);await f.setup(client);
      await expect(once(f.socket(grant),'open')).rejects.toThrow('401');
      expect((await f.store.read(f.actor,f.id))?.state).toBe('connected');
      await f.relay.finish(f.actor,f.id);
      const receipt=(await f.store.read(f.actor,f.id))!;
      expect(receipt.chargedKobo).toBe(Math.ceil(receipt.verifiedConnectedMs/1000)*100);
    }finally{await f.cleanup()}
  });
  it('reconnect reuses the same budget and only the server-observed resumption handle',async()=>{
    const f=await fixture();
    try{
      const first=await f.open(await f.issue());await f.setup(first);
      const update=once(first,'message');
      f.provider()!.send(JSON.stringify({sessionResumptionUpdate:{resumable:true,newHandle:'server-observed-handle'}}));
      await update;await new Promise(resolve=>setTimeout(resolve,20));
      const closed=once(first,'close');
      const next=await f.issue();await closed;
      const second=await f.open(next);await f.setup(second);
      const setup=f.received.filter(message=>message.setup).at(-1)!.setup as Record<string,unknown>;
      expect(setup.sessionResumption).toEqual({handle:'server-observed-handle'});
      await new Promise(resolve=>setTimeout(resolve,20));
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt).toMatchObject({budgetKobo:500,state:'completed'});
      expect(receipt.chargedKobo).toBe(Math.ceil(receipt.verifiedConnectedMs/1000)*100);
      expect(receipt.verifiedConnectedMs).toBeGreaterThanOrEqual(40);
    }finally{await f.cleanup()}
  });
  it('relays native audio and its transcript across multiple conversational turns, then settles the original call',async()=>{
    const f=await fixture();
    try {
      const client=await f.open(await f.issue());await f.setup(client);
      expect(f.received[0]?.setup).toMatchObject({contextWindowCompression:{slidingWindow:{}}});
      for (const text of ['Hello', 'I can help with that too']) {
        const audio={data:'AQAAAA==',mimeType:'audio/pcm;rate=24000'};
        const frames=[
          {serverContent:{modelTurn:{parts:[{inlineData:audio}]}}},
          {serverContent:{outputTranscription:{text,finished:true},turnComplete:true}},
        ];
        for (const frame of frames) {
          const received=once(client,'message');
          f.provider()!.send(Buffer.from(JSON.stringify(frame)));
          expect(JSON.parse((await received)[0].toString())).toEqual(frame);
        }
        expect((await f.store.read(f.actor,f.id))?.state).toBe('connected');
      }
      const closed=once(client,'close');client.close(1000);await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({admissionId:f.id,state:'completed',budgetKobo:500});
    }finally{await f.cleanup()}
  });
  it('requires playback confirmation before metering the web call',async()=>{
    const f=await fixture();
    try{
      const client=await f.open(await f.issue());
      const greeting=once(client,'message');
      client.send(JSON.stringify({setup:{playbackAcknowledgement:true}}));
      expect(JSON.parse((await greeting)[0].toString())).toHaveProperty('openingAudio');
      expect((await f.store.read(f.actor,f.id))?.state).toBe('connecting');
      expect(f.received[0]?.setup).not.toHaveProperty('playbackAcknowledgement');
      expect(JSON.stringify(f.received)).toContain('follow-up question');
      // An acknowledgement arriving at the beginning of playback is not
      // proof that the assistant finished greeting the caller.
      client.send(JSON.stringify({greetingPlayback:true}));
      await new Promise(resolve=>setTimeout(resolve,25));
      expect((await f.store.read(f.actor,f.id))?.state).toBe('connecting');
      f.provider()!.send(JSON.stringify({serverContent:{turnComplete:true}}));
      await until(async()=>(await f.store.read(f.actor,f.id))?.state==='connected');
      expect((await f.store.read(f.actor,f.id))?.state).toBe('connected');
    }finally{await f.cleanup();}
  });
  it('delivers a split greeting completion before playback acknowledgement without charging early',async()=>{
    const f=await fixture(5,{silent:true});
    try{
      const client=await f.open(await f.issue());
      const frames:Record<string,any>[]=[];
      client.on('message',raw=>frames.push(JSON.parse(raw.toString())));
      client.send(JSON.stringify({setup:{playbackAcknowledgement:true}}));
      await until(async()=>f.received.some(frame=>!!frame.clientContent));
      f.provider()!.send(JSON.stringify(sound));
      await until(async()=>frames.some(frame=>!!frame.openingAudio?.modelTurn));
      f.provider()!.send(JSON.stringify({serverContent:{turnComplete:true}}));
      await until(async()=>frames.some(frame=>frame.openingAudio?.turnComplete===true));
      expect((await f.store.read(f.actor,f.id))?.state).toBe('connecting');
      expect(frames.some(frame=>!!frame.setupComplete)).toBe(false);
      client.send(JSON.stringify({greetingPlayback:true}));
      await until(async()=>frames.some(frame=>!!frame.setupComplete));
      expect((await f.store.read(f.actor,f.id))?.state).toBe('connected');
    }finally{await f.cleanup();}
  });
  it('settles a provider setup and silent greeting at zero',async()=>{
    const f=await fixture(5,{silent:true});
    try{
      const client=await f.open(await f.issue());
      client.send(JSON.stringify({setup:{playbackAcknowledgement:true}}));
      await until(async()=>f.received.some(frame=>!!frame.clientContent));
      client.send(JSON.stringify({greetingPlayback:true}));
      f.provider()!.send(JSON.stringify({serverContent:{modelTurn:{parts:[
        {inlineData:{data:'AAAAAA==',mimeType:'audio/pcm;rate=24000'}},
      ]},turnComplete:true}}));
      await until(async()=>(await f.store.read(f.actor,f.id))?.state==='failed');
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({state:'failed',chargedKobo:0,verifiedConnectedMs:0});
    }finally{await f.cleanup();}
  });
  it('expired one-use grants fail closed without a charge',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();f.advanceClock(61000);
      await expect(once(f.socket(grant),'open')).rejects.toThrow('401');
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedKobo:0,state:'failed'});
    }finally{await f.cleanup()}
  });
  it('rejects client-forged connection proof before any billable setup',async()=>{
    const f=await fixture();
    try{
      const client=await f.open(await f.issue()),closed=once(client,'close');
      client.send(JSON.stringify({setupComplete:{},connectedSeconds:999999}));await closed;
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt).toMatchObject({state:'failed',chargedKobo:0,verifiedConnectedMs:0});
    }finally{await f.cleanup()}
  });
  it('enforces the hard NGN budget and settles exactly once without a client duration',async()=>{
    const f=await fixture(1);
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      await once(client,'close');
      await until(async()=>(await f.store.read(f.actor,f.id))?.state==='completed');
      expect(await f.store.read(f.actor,f.id)).toMatchObject({budgetKobo:100,chargedKobo:100});
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedKobo:100});
      const held=await pool.query(`SELECT held_kobo::int AS held FROM gb_wallet.ngn_accounts
        WHERE tenant_id=$1 AND account_id=$2`,[f.actor.tenantId,f.actor.userId]);
      expect(held.rows[0].held).toBe(0);
    }finally{await f.cleanup()}
  });
  it('upstream loss bills only a persisted server checkpoint, excluding unknown downtime',async()=>{
    const f=await fixture(5,{heartbeatMs:30,manualPong:true});
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      await until(async()=>((await f.store.read(f.actor,f.id))?.verifiedConnectedMs??0)>0);
      const saved=(await f.store.read(f.actor,f.id))!.verifiedConnectedMs;
      const closed=once(client,'close');f.provider()!.terminate();await closed;
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt.verifiedConnectedMs).toBe(saved);expect(receipt.chargedKobo).toBe(Math.ceil(saved/1000)*100);
    }finally{await f.cleanup()}
  });
  it('periodic authorization revocation stops the call before further billable proof',async()=>{
    const f=await fixture(5,{suppressPong:true});
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      const closed=once(client,'close');f.validate.mockRejectedValueOnce(new Error('revoked'));
      f.provider()!.pong();
      await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedKobo:0,verifiedConnectedMs:0});
      expect(f.validate.mock.calls.length).toBeGreaterThanOrEqual(4);
    }finally{await f.cleanup()}
  });
  it('a revoked originating session is checked again on provider progress',async()=>{
    const f=await fixture(5,{suppressPong:true});
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      const closed=once(client,'close');f.validateOwner.mockRejectedValueOnce(new Error('session revoked'));
      f.provider()!.pong();await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedKobo:0,verifiedConnectedMs:0});
      expect(f.validateOwner.mock.calls.length).toBeGreaterThanOrEqual(4);
    }finally{await f.cleanup()}
  });
  it('redacts provider rejection details and never bills a failed setup',async()=>{
    const f=await fixture(5,{providerError:true});
    try{
      const client=await f.open(await f.issue()),response=once(client,'message'),closed=once(client,'close');
      client.send(JSON.stringify({setup:{}}));
      const text=(await response)[0].toString();
      expect(JSON.parse(text)).toEqual({error:{code:'ngn.call.provider_unavailable',
        message:'Voice service is unavailable. Please try again.'}});
      expect(text).not.toContain('private');await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({state:'failed',chargedKobo:0});
      expect(f.report).toHaveBeenCalledWith({stage:'provider',code:'unavailable',providerStatus:'INVALID_ARGUMENT'});
      expect(JSON.stringify(f.report.mock.calls)).not.toContain('provider-private-token');
    }finally{await f.cleanup()}
  });
  it('revocation and a forged target/owner cannot consume an admission',async()=>{
    const f=await fixture();
    try{
      await expect(f.relay.issue({...f.actor,userId:createCanonicalId('user')},f.characterId,f.id,f.grant,f.validateOwner)).rejects.toThrow();
      await expect(f.relay.issue(f.actor,createCanonicalId('character'),f.id,f.grant,f.validateOwner)).rejects.toThrow();
      const grant=await f.issue();f.validate.mockRejectedValueOnce(new Error('revoked'));
      await expect(once(f.socket(grant),'open')).rejects.toThrow('403');
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedKobo:0,state:'failed'});
    }finally{await f.cleanup()}
  });
  it('a malformed upgrade releases its unconnected lease instead of stranding the hold',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();
      const status=await new Promise<number>((resolve,reject)=>{
        const request=httpRequest(f.origin+'/agent/live/ngn/stream',{headers:{
          Connection:'Upgrade',Upgrade:'websocket','Sec-WebSocket-Version':'13',
          'Sec-WebSocket-Key':'invalid',authorization:'Bearer '+grant.token,
        }},response=>{response.resume();response.on('end',()=>resolve(response.statusCode??0));});
        request.on('error',reject);request.end();
      });
      expect(status).toBe(400);
      await until(async()=>(await f.store.read(f.actor,f.id))?.state==='reserved');
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedKobo:0,verifiedConnectedMs:0});
    }finally{await f.cleanup()}
  });
  it('does not accept credentials in a URL and shutdown releases a setup-only hold',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();
      await expect(once(f.socket(grant,'?grant='+grant.token),'open')).rejects.toThrow('401');
      const client=await f.open(grant); // Rejected URL did not consume header credential.
      const closed=once(client,'close');await f.relay.close();await closed;
      expect(await f.store.read(f.actor,f.id)).toMatchObject({state:'failed',chargedKobo:0});
      expect(f.relay.ready()).toBe(false);
    }finally{await f.cleanup()}
  });
});

it("forwards caller PCM, hybrid-VAD end markers and subsequent AI audio with safe milestone logging",async()=>{
 const f=await fixture(5,{rateKoboPerSecond:0});
 const info=vi.spyOn(console,"info").mockImplementation(()=>{});
 try{
  const client=await f.open(await f.issue());
  await f.setup(client);
  client.send(JSON.stringify({realtimeInput:{audio:{data:"ABAAAA==",mimeType:"audio/pcm;rate=16000"}}}));
  client.send(JSON.stringify({realtimeInput:{audioStreamEnd:true}}));
  await until(async()=>f.received.some(r=>(r.realtimeInput as {audioStreamEnd?:boolean}|undefined)?.audioStreamEnd===true));
  f.provider()!.send(JSON.stringify(sound));
  await until(async()=>info.mock.calls.some(row=>String(row[0]).includes("model_reply_audio_forwarded")));
  const labels=info.mock.calls.map(row=>String(row[0]));
  expect(labels.some(x=>x.includes("first_mic_packet_forwarded"))).toBe(true);
  expect(labels.some(x=>x.includes("speech_end_forwarded"))).toBe(true);
  expect(labels.some(x=>x.includes("model_reply_audio_forwarded"))).toBe(true);
  expect(labels.join(" ")).not.toContain("ABAAAA==");
  expect((await f.store.read(f.actor,f.id))?.state).toBe("connected");
 }finally{info.mockRestore();await f.cleanup();}
});
