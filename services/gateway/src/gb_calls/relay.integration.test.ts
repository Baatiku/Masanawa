import {once} from 'node:events';
import {request as httpRequest} from 'node:http';
import {fileURLToPath} from 'node:url';
import Fastify from 'fastify';
import WebSocket,{WebSocketServer} from 'ws';
import {afterAll,beforeAll,describe,expect,it,vi} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {runMigrations} from '../../../../adapters/storage/postgres/src/migrations.js';
import {foundationMigrationRoots} from '../../../../adapters/storage/postgres/src/readiness.js';
import {createGbCallAdmissions} from '../../../../adapters/storage/postgres/src/gb_wallet/call_admissions.js';
import {createGbCallRelay,installGbCallRelay,type MbRelayGrant} from './relay.js';

const connection=process.env.MASANAWA_TEST_DATABASE_URL;
async function until(check:()=>Promise<boolean>,timeout=5000){
  const end=Date.now()+timeout;
  while(Date.now()<end){if(await check())return;await new Promise(resolve=>setTimeout(resolve,10));}
  throw new Error('Relay fixture timed out');
}
(connection?describe:describe.skip)('actual WebSocket relay with real MB PostgreSQL accounting',()=>{
  let pool:Pool;
  beforeAll(async()=>{
    pool=createPostgresPool({connectionString:connection!,applicationName:'mb-call-relay-tests'});
    await runMigrations(pool,foundationMigrationRoots());
    await runMigrations(pool,[{owner:'commerce',directory:fileURLToPath(
      new URL('../../../../packages/commerce/migrations',import.meta.url))}]);
  });
  afterAll(async()=>{await pool?.end()});
  async function fixture(budgetMb=5,{heartbeatMs=5000,manualPong=false,providerError=false,suppressPong=false}={}){
    const actor={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user')};
    const characterId=createCanonicalId('character');
    await pool.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,welcome_mb)
      VALUES($1,'human',$2,50)`,[actor.tenantId,actor.userId]);
    const store=createGbCallAdmissions(pool);
    const {admissionId:id}=await store.admit(actor,{characterId,budgetMb,idempotencyKey:'relay-original-call'});
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
        if(message.setup)socket.send(JSON.stringify(providerError?{error:{status:'INVALID_ARGUMENT',message:'private provider configuration token=provider-private-token'}}:{setupComplete:{}}));
      });
    });
    const validate=vi.fn(async()=>{}),validateOwner=vi.fn(async()=>{}),report=vi.fn();
    let clockOffset=0;
    const relay=createGbCallRelay({store,publicOrigin:'https://gateway.example',validate,
      dial:()=>new WebSocket(upstreamUrl),heartbeatMs,recoveryMs:10000,report,now:()=>new Date(Date.now()+clockOffset)});
    const app=Fastify();installGbCallRelay(app,relay);
    const origin=await app.listen({host:'127.0.0.1',port:0});
    const providerGrant={token:'provider-private-token',
      websocketUrl:'wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1beta.GenerativeService.BidiGenerateContentConstrained?access_token=provider-private-token',
      model:'fixture-live-model',voiceName:'ApprovedVoice',systemInstruction:'Canonical persona',
      expiresAt:new Date(Date.now()+60000).toISOString()};
    const issue=()=>relay.issue(actor,characterId,id,providerGrant,validateOwner);
    const socket=(grant:MbRelayGrant,query='')=>{
      const client=new WebSocket(origin.replace('http:','ws:')+new URL(grant.websocketUrl).pathname+query,
        {headers:{authorization:'Bearer '+grant.token}});
      client.on('error',()=>{});return client;
    };
    const open=async(grant:MbRelayGrant)=>{const client=socket(grant);await once(client,'open');return client;};
    const setup=async(client:WebSocket)=>{
      const response=once(client,'message');
      client.send(JSON.stringify({setup:{model:'client-forged-model',
        generationConfig:{speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:'Forged'}}}},
        systemInstruction:{parts:[{text:'client-forged-persona'}]},sessionResumption:{handle:'forged-handle'},
      }}));
      expect(JSON.parse((await response)[0].toString())).toHaveProperty('setupComplete');
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
      expect(receipt.state).toBe('completed');expect(receipt.chargedMb).toBe(Math.ceil(receipt.verifiedConnectedMs/1000));
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
      expect(receipt.chargedMb).toBe(Math.ceil(receipt.verifiedConnectedMs/1000));
    }finally{await f.cleanup()}
  });
  it('reconnect reuses the same budget and only the server-observed resumption handle',async()=>{
    const f=await fixture();
    try{
      const first=await f.open(await f.issue());await f.setup(first);
      const update=once(first,'message');
      f.provider()!.send(JSON.stringify({sessionResumptionUpdate:{newHandle:'server-observed-handle'}}));
      await update;await new Promise(resolve=>setTimeout(resolve,20));
      const closed=once(first,'close');
      const next=await f.issue();await closed;
      const second=await f.open(next);await f.setup(second);
      const setup=f.received.filter(message=>message.setup).at(-1)!.setup as Record<string,unknown>;
      expect(setup.sessionResumption).toEqual({handle:'server-observed-handle'});
      await new Promise(resolve=>setTimeout(resolve,20));
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt).toMatchObject({budgetMb:5,state:'completed'});
      expect(receipt.chargedMb).toBe(Math.ceil(receipt.verifiedConnectedMs/1000));
      expect(receipt.verifiedConnectedMs).toBeGreaterThanOrEqual(40);
    }finally{await f.cleanup()}
  });
  it('expired one-use grants fail closed without a charge',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();f.advanceClock(61000);
      await expect(once(f.socket(grant),'open')).rejects.toThrow('401');
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedMb:0,state:'failed'});
    }finally{await f.cleanup()}
  });
  it('rejects client-forged connection proof before any billable setup',async()=>{
    const f=await fixture();
    try{
      const client=await f.open(await f.issue()),closed=once(client,'close');
      client.send(JSON.stringify({setupComplete:{},connectedSeconds:999999}));await closed;
      const receipt=await f.relay.finish(f.actor,f.id);
      expect(receipt).toMatchObject({state:'failed',chargedMb:0,verifiedConnectedMs:0});
    }finally{await f.cleanup()}
  });
  it('enforces the hard MB budget and settles exactly once without a client duration',async()=>{
    const f=await fixture(1);
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      await once(client,'close');
      await until(async()=>(await f.store.read(f.actor,f.id))?.state==='completed');
      expect(await f.store.read(f.actor,f.id)).toMatchObject({budgetMb:1,chargedMb:1,verifiedConnectedMs:1000});
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedMb:1});
      const held=await pool.query(`SELECT reserved_welcome_mb::int AS held FROM gb_wallet.accounts
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
      expect(receipt.verifiedConnectedMs).toBe(saved);expect(receipt.chargedMb).toBe(Math.ceil(saved/1000));
    }finally{await f.cleanup()}
  });
  it('periodic authorization revocation stops the call before further billable proof',async()=>{
    const f=await fixture(5,{suppressPong:true});
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      const closed=once(client,'close');f.validate.mockRejectedValueOnce(new Error('revoked'));
      f.provider()!.pong();
      await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedMb:0,verifiedConnectedMs:0});
      expect(f.validate.mock.calls.length).toBeGreaterThanOrEqual(4);
    }finally{await f.cleanup()}
  });
  it('a revoked originating session is checked again on provider progress',async()=>{
    const f=await fixture(5,{suppressPong:true});
    try{
      const client=await f.open(await f.issue());await f.setup(client);
      const closed=once(client,'close');f.validateOwner.mockRejectedValueOnce(new Error('session revoked'));
      f.provider()!.pong();await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedMb:0,verifiedConnectedMs:0});
      expect(f.validateOwner.mock.calls.length).toBeGreaterThanOrEqual(4);
    }finally{await f.cleanup()}
  });
  it('redacts provider rejection details and never bills a failed setup',async()=>{
    const f=await fixture(5,{providerError:true});
    try{
      const client=await f.open(await f.issue()),response=once(client,'message'),closed=once(client,'close');
      client.send(JSON.stringify({setup:{}}));
      const text=(await response)[0].toString();
      expect(JSON.parse(text)).toEqual({error:{code:'gb.call.provider_unavailable',
        message:'Voice service is unavailable. Please try again.'}});
      expect(text).not.toContain('private');await closed;
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({state:'failed',chargedMb:0});
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
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedMb:0,state:'failed'});
    }finally{await f.cleanup()}
  });
  it('a malformed upgrade releases its unconnected lease instead of stranding the hold',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();
      const status=await new Promise<number>((resolve,reject)=>{
        const request=httpRequest(f.origin+'/agent/live/stream',{headers:{
          Connection:'Upgrade',Upgrade:'websocket','Sec-WebSocket-Version':'13',
          'Sec-WebSocket-Key':'invalid',authorization:'Bearer '+grant.token,
        }},response=>{response.resume();response.on('end',()=>resolve(response.statusCode??0));});
        request.on('error',reject);request.end();
      });
      expect(status).toBe(400);
      await until(async()=>(await f.store.read(f.actor,f.id))?.state==='reserved');
      expect(await f.relay.finish(f.actor,f.id)).toMatchObject({chargedMb:0,verifiedConnectedMs:0});
    }finally{await f.cleanup()}
  });
  it('does not accept credentials in a URL and shutdown releases a setup-only hold',async()=>{
    const f=await fixture();
    try{
      const grant=await f.issue();
      await expect(once(f.socket(grant,'?grant='+grant.token),'open')).rejects.toThrow('401');
      const client=await f.open(grant); // Rejected URL did not consume header credential.
      const closed=once(client,'close');await f.relay.close();await closed;
      expect(await f.store.read(f.actor,f.id)).toMatchObject({state:'failed',chargedMb:0});
      expect(f.relay.ready()).toBe(false);
    }finally{await f.cleanup()}
  });
});
