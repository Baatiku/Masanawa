import {describe,expect,it,vi} from 'vitest';
import {createGbCallRelay,createRelayLeaseId} from './relay.js';
import {createGatewayApp} from '../app.js';
import {GbCallRelayError} from './errors.js';

type Store=Parameters<typeof createGbCallRelay>[0]['store'];
describe('relay readiness and origin boundary',()=>{
  it.each([0,248,255])('opaque entropy %s always yields an admissible durable lease',byte=>{
    const id=createRelayLeaseId(new Uint8Array(24).fill(byte));
    expect(id).toMatch(/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/);
    expect(id).not.toBe(createRelayLeaseId(new Uint8Array(24).fill(byte^1)));
  });
  it('stays unavailable during failed recovery and becomes ready after recovery heals',async()=>{
    const report=vi.fn(),recover=vi.fn().mockRejectedValueOnce(new Error('private database information'))
      .mockResolvedValue([]);
    const relay=createGbCallRelay({publicOrigin:'https://gateway.example',
      store:{recover} as unknown as Store,validate:async()=>{},report,recoveryMs:10});
    try{
      await relay.start();expect(relay.ready()).toBe(false);
      expect(JSON.stringify(report.mock.calls)).not.toContain('private database');
      await vi.waitFor(()=>expect(relay.ready()).toBe(true),{timeout:1000,interval:10});
    }finally{await relay.close()}
    expect(relay.ready()).toBe(false);
  });
  it('the actual live-token route returns a safe 503 for relay unavailability',async()=>{
    const app=createGatewayApp({liveVoiceTokens:{mint:async()=>{throw new GbCallRelayError()}}});
    try{
      const response=await app.inject({method:'POST',url:'/agent/live/token',
        payload:{characterId:'character-fixture'}});
      expect(response.statusCode).toBe(503);
      expect(response.json()).toEqual({error:{code:'gb.call.relay_unavailable',
        message:'Voice connection is temporarily unavailable. Please try again.'}});
    }finally{await app.close()}
  });
  it.each(['http://untrusted.example','https://user:secret@gateway.example',
    'https://gateway.example/?token=secret','https://gateway.example/private'])
    ('refuses an unsafe public relay origin %s',publicOrigin=>{
      expect(()=>createGbCallRelay({publicOrigin,store:{} as Store,validate:async()=>{}})).toThrow();
    });
});
