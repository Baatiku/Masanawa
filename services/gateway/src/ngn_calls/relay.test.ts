import {describe,expect,it,vi} from 'vitest';
import {createNgnCallRelay,createRelayLeaseId,admissionHasTimeRemaining} from './relay.js';
import {createGatewayApp} from '../app.js';
import {NgnCallRelayError} from './errors.js';
import {createCanonicalId} from '@masanawa/contracts';

type Store=Parameters<typeof createNgnCallRelay>[0]['store'];
describe('relay readiness and origin boundary',()=>{
  it("admission time, not Naira cost, controls free and variable-price calls",()=>{
    const withPrice=(budgetKobo:number,elapsed:number,maxConnectedSeconds=3)=>({
      budgetKobo, verifiedConnectedMs:elapsed, maxConnectedSeconds,
    });
    // Both zero-priced and non-default paid tariffs must get the same signed duration.
    expect(admissionHasTimeRemaining(withPrice(0,0))).toBe(true);
    expect(admissionHasTimeRemaining(withPrice(0,2999))).toBe(true);
    expect(admissionHasTimeRemaining(withPrice(0,3000))).toBe(false);
    expect(admissionHasTimeRemaining(withPrice(750,2999))).toBe(true);
    expect(admissionHasTimeRemaining(withPrice(750,3000))).toBe(false);
    expect(admissionHasTimeRemaining(withPrice(150,2999))).toBe(true);
    expect(admissionHasTimeRemaining(withPrice(150,3000))).toBe(false);
    expect(admissionHasTimeRemaining(withPrice(0,-1))).toBe(false);
    expect(admissionHasTimeRemaining(withPrice(0,0,0))).toBe(false);
  });

  it.each([0,248,255])('opaque entropy %s always yields an admissible durable lease',byte=>{
    const id=createRelayLeaseId(new Uint8Array(24).fill(byte));
    expect(id).toMatch(/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/);
    expect(id).not.toBe(createRelayLeaseId(new Uint8Array(24).fill(byte^1)));
  });
  it('stays unavailable during failed recovery and becomes ready after recovery heals',async()=>{
    const report=vi.fn(),recover=vi.fn().mockRejectedValueOnce(new Error('private database information'))
      .mockResolvedValue([]);
    const relay=createNgnCallRelay({publicOrigin:'https://gateway.example',
      store:{recover} as unknown as Store,validate:async()=>{},report,recoveryMs:10});
    try{
      await relay.start();expect(relay.ready()).toBe(false);
      expect(JSON.stringify(report.mock.calls)).not.toContain('private database');
      await vi.waitFor(()=>expect(relay.ready()).toBe(true),{timeout:1000,interval:10});
    }finally{await relay.close()}
    expect(relay.ready()).toBe(false);
  });
  it('the actual live-token route returns a safe 503 for relay unavailability',async()=>{
    const app=createGatewayApp({liveVoiceTokens:{mint:async()=>{throw new NgnCallRelayError()}}});
    try{
      const response=await app.inject({method:'POST',url:'/agent/live/token',
        payload:{characterId:createCanonicalId('character')}});
      expect(response.statusCode).toBe(503);
      expect(response.json()).toEqual({error:{code:'ngn.call.relay_unavailable',
        message:'Voice connection is temporarily unavailable. Please try again.'}});
    }finally{await app.close()}
  });
  it.each(['http://untrusted.example','https://user:secret@gateway.example',
    'https://gateway.example/?token=secret','https://gateway.example/private'])
    ('refuses an unsafe public relay origin %s',publicOrigin=>{
      expect(()=>createNgnCallRelay({publicOrigin,store:{} as Store,validate:async()=>{}})).toThrow();
    });
});
