import {EventEmitter} from 'node:events';
import {afterEach,describe,expect,it,vi} from 'vitest';
import {createCallPlayback,openWhatsAppCallLive} from './whatsapp_call_audio.js';
import {createWhatsAppCallHandler,type CallOffer,type IncomingSession} from './whatsapp_calls.js';

class TestSocket extends EventTarget {
  bufferedAmount=0;
  sent:unknown[]=[];
  send(raw:string){this.sent.push(JSON.parse(raw));}
  message(data:unknown){this.dispatchEvent(new MessageEvent('message',{data:JSON.stringify(data)}));}
  close=vi.fn();
}

class Session extends EventEmitter<{ended:[];error:[];connected:[];audio:[Float32Array]}> implements IncomingSession {
  callId='example-call';
  canAccept=true;
  ended=false;
  isVideo=false;
  isIncoming=true;
  isWaiting=false;
  masanawaAudioBridge?:boolean;
  send=vi.fn();
  startAudio:IncomingSession['startAudio']=vi.fn();
  stopAudio=vi.fn();
  accept=vi.fn(async()=>{
    this.canAccept=false;
    this.emit('connected');
    this.startAudio(16000,1,320,this.send);
  });
  end=vi.fn(async()=>{this.ended=true;this.stopAudio();this.emit('ended');});
}

const flush=async()=>{for(let i=0;i<20;i++)await Promise.resolve();};
const offer=():CallOffer=>({id:'example-call',status:'offer',date:new Date(),isVideo:false,isGroup:false,offline:false,
  from:'2348012345678:2@s.whatsapp.net'});

function fixture(withLookup=false){
  let allowed=true;
  const query=vi.fn(async(sql:string,_values?:unknown[])=>({rows:sql.includes('SELECT a.name')?
    allowed?[{name:'Example',owner_name:'',number_purpose:'service',instructions:'',personality:'',language:'en',live_voice_name:'Algenib'}]:[]:
    sql.includes('ON CONFLICT DO NOTHING')?[{reference:'recorded'}]:[]}));
  const session=new Session();
  const provider={sendAudio:vi.fn(),close:vi.fn()};
  const openLive=vi.fn(async()=>provider);
  const acquire=vi.fn(()=>true),release=vi.fn();
  const lookupSession=vi.fn(async()=>session);
  const handler=createWhatsAppCallHandler({pool:{query} as never,identity:{tenantId:'tenant',channelId:'channel',owner:'worker'},
    env:{MASANAWA_GEMINI_API_KEY:'fake-key'},sessionKey:'fake',acquire,release,openLive,
    ...(withLookup?{lookupSession}:{}),disclosure:async()=>Buffer.alloc(1280,64),
    unavailable:async()=>Buffer.alloc(1280,96)});
  return {handler,session,provider,acquire,release,query,openLive,lookupSession,pause:()=>{allowed=false;}};
}

afterEach(()=>vi.useRealTimers());

describe('WhatsApp incoming calls',()=>{
  it('answers one fresh direct offer, streams the disclosure first and ends an active call on pause',async()=>{
    vi.useFakeTimers();
    const {handler,session,provider,release,query,openLive,pause}=fixture();
    handler.signal(offer());
    handler.session(session);
    handler.session(session);
    await flush();
    expect(openLive).toHaveBeenCalledWith(expect.objectContaining({voice:'Algenib'}));
    expect(session.accept).toHaveBeenCalledTimes(1);
    // The provider adjudicates accepted-elsewhere signaling from linked devices.
    handler.signal({...offer(),status:'terminate'});
    expect(session.end).not.toHaveBeenCalled();
    const speech=new Float32Array(320).fill(.4);
    session.emit('audio',speech);
    expect(provider.sendAudio).not.toHaveBeenCalled();
    await vi.advanceTimersByTimeAsync(40);
    expect(session.send.mock.calls[0]?.[0][0]).toBeGreaterThan(0);
    session.emit('audio',speech);
    expect(provider.sendAudio).toHaveBeenCalledWith(speech);
    expect(query.mock.calls.some(([sql])=>sql.includes('SET answered_at'))).toBe(true);
    pause();
    await vi.advanceTimersByTimeAsync(1000);
    expect(session.end).toHaveBeenCalledTimes(1);
    expect(provider.close).toHaveBeenCalledTimes(1);
    expect(release).toHaveBeenCalledTimes(1);
    expect(query.mock.calls.some(([sql])=>sql.includes('SET ended_at'))).toBe(true);
    await handler.stop();
  });

  it('ignores group, video, offline and stale offers and leaves manual calls ringing',async()=>{
    vi.useFakeTimers();
    const {handler,session,acquire,openLive,pause}=fixture();
    handler.session(session);
    for(const flags of [{isGroup:true},{isVideo:true},{offline:true},{isCallLink:true},
      {id:'stale',date:new Date(Date.now()-60_000)}])
      handler.signal({...offer(),...flags});
    expect(acquire).not.toHaveBeenCalled();
    pause();
    handler.session(session);
    handler.signal(offer());
    await flush();
    expect(openLive).not.toHaveBeenCalled();
    expect(session.accept).not.toHaveBeenCalled();
    expect(session.end).not.toHaveBeenCalled();
    await handler.stop();
  });

  it('uses the registered SDK session and accepts while Gemini is still connecting',async()=>{
    vi.useFakeTimers();
    const {handler,session,provider,openLive,lookupSession}=fixture(true);
    let ready!:()=>void;
    openLive.mockImplementation(()=>new Promise(resolve=>{ready=()=>resolve(provider);}));
    handler.signal(offer());
    await flush();
    expect(lookupSession).toHaveBeenCalledWith(session.callId);
    expect(session.accept).toHaveBeenCalledTimes(1);
    expect(session.masanawaAudioBridge).toBe(true);
    await vi.advanceTimersByTimeAsync(40);
    expect(session.send).toHaveBeenCalledTimes(2);
    session.emit('audio',new Float32Array(320));
    expect(provider.sendAudio).not.toHaveBeenCalled();
    ready();
    await flush();
    session.emit('audio',new Float32Array(320));
    expect(provider.sendAudio).toHaveBeenCalledTimes(1);
    await handler.stop();
    expect(session.masanawaAudioBridge).toBe(false);
  });

  it('plays a local fallback and records a Gemini startup failure',async()=>{
    vi.useFakeTimers();
    const {handler,session,openLive,query}=fixture(true);
    openLive.mockRejectedValueOnce(Error('provider unavailable'));
    handler.signal(offer());
    await flush();
    await vi.advanceTimersByTimeAsync(340);
    expect(session.send.mock.calls[0]?.[0][0]).toBeGreaterThan(0);
    expect(session.send.mock.calls[2]?.[0][0]).toBeGreaterThan(session.send.mock.calls[0]?.[0][0]);
    expect(query.mock.calls.find(([sql])=>sql.includes('SET ended_at'))?.[1]?.[3]).toBe('provider_failed');
    expect(session.end).toHaveBeenCalledTimes(1);
  });

  it('records offer, acceptance and media failures without caller details',async()=>{
    vi.useFakeTimers();
    const missing=fixture();
    missing.handler.signal(offer());
    await vi.advanceTimersByTimeAsync(3000);
    const miss=missing.query.mock.calls.find(([sql])=>sql.includes('INSERT'))?.[1];
    expect(miss).toEqual(['tenant','channel',expect.stringMatching(/^[a-f0-9]{64}$/),'session_unavailable']);

    const rejected=fixture(true);
    rejected.session.accept.mockRejectedValueOnce(Error('private provider diagnostics'));
    rejected.handler.signal(offer());
    await flush();
    expect(rejected.query.mock.calls.find(([sql])=>sql.includes('SET ended_at'))?.[1]?.[3]).toBe('accept_failed');

    const silent=fixture(true);
    silent.session.accept.mockImplementation(async()=>{silent.session.emit('connected');});
    silent.handler.signal(offer());
    await vi.advanceTimersByTimeAsync(20_000);
    expect(silent.query.mock.calls.find(([sql])=>sql.includes('SET ended_at'))?.[1]?.[3]).toBe('media_timeout');
    expect(silent.query.mock.calls.some(([sql])=>sql.includes('SET answered_at'))).toBe(false);
  });

  it('bridges PCM in both directions and drops model playback on interruption',async()=>{
    const socket=new TestSocket();
    const playback=createCallPlayback(Buffer.alloc(0));
    const livePromise=openWhatsAppCallLive({apiKey:'fake',model:'gemini-test',voice:'Kore',system:'Assist',
      signal:new AbortController().signal,createSocket:()=>socket as unknown as WebSocket,
      onAudio:pcm=>playback.append(pcm),onInterrupt:()=>playback.interrupt(),onFailure:vi.fn()});
    socket.dispatchEvent(new Event('open'));
    socket.message({setupComplete:{}});
    const live=await livePromise;
    live.sendAudio(new Float32Array([.5,-1]));
    expect(socket.sent[1]).toEqual({realtimeInput:{audio:{mimeType:'audio/pcm;rate=16000',data:'AEAAgA=='}}});
    const response={modelTurn:{parts:[{inlineData:{mimeType:'audio/pcm;rate=24000',data:'AEAAQABAAEAAQABA'}}]}};
    socket.message({serverContent:response});
    await flush();
    expect([...playback.next(2)]).toEqual([.5,.5]);
    socket.message({serverContent:{interrupted:true}});
    await flush();
    expect([...playback.next(4)]).toEqual([0,0,0,0]);
    live.close();
    expect(socket.close).toHaveBeenCalledTimes(1);
  });

});
