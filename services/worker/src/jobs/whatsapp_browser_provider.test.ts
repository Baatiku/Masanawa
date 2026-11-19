import {runInNewContext} from 'node:vm';
import {describe,expect,it,vi} from 'vitest';
import {browserAction} from './whatsapp_browser_provider.js';
import {BrowserIncomingSession} from './whatsapp_browser_media.js';

describe('WhatsApp browser call gateway',()=>{
  it('captures a provider event before its call model arrives and only accepts the matching native call',async()=>{
    const enableCallInterface=vi.fn(async()=>undefined);
    const nativeAccept=vi.fn(async()=>true);
    const call={id:'provider-id',peerJid:{_serialized:'2348012345678@c.us'},getState:()=> 'INCOMING_RING'};
    const store={activeCall:undefined as typeof call|undefined,getModelsArray:()=>[]};
    let incoming:(event:typeof call)=>void=()=>undefined;
    const context=runInNewContext(`(${browserAction.toString()})`,{
      WPP:{
        conn:{isAuthenticated:()=>true,isMainReady:()=>true,getMyUserId:()=>({_serialized:'2348010000000@c.us'}),
          getMyUserLid:()=>{throw Error('LID unavailable during device registration');}},
        on:(name:string,callback:typeof incoming)=>{if(name==='call.incoming_call')incoming=callback;},
        call:{enableCallInterface},
        whatsapp:{CallStore:store,getVoipStackInterface:async()=>({acceptCall:nativeAccept})},
      },
    });
    expect(await context('poll')).toMatchObject({connected:true,ready:true,hosts:['2348010000000@c.us'],calls:[]});
    expect(enableCallInterface).toHaveBeenCalledOnce();
    incoming(call);
    expect(await context('poll')).toMatchObject({calls:[{id:call.id,peer:'2348012345678@c.us',state:'INCOMING_RING'}]});
    expect(await context('accept',call.id)).toBe(false);
    store.activeCall=call;
    expect(await context('accept','different-call')).toBe(false);
    expect(await context('accept',call.id)).toBe(true);
    expect(nativeAccept).toHaveBeenCalledExactlyOnceWith(true,false);
  });

  it('tracks scan and sync separately from QR refresh and connection',async()=>{
    let ready=false;
    const stream={mode:'QR',info:'NORMAL'};
    const socket={state:'UNPAIRED'};
    const click=vi.fn();
    let refresh=false;
    const qr='current-browser-offer-with-a-fresh-code';
    const poll=runInNewContext(`(${browserAction.toString()})`,{
      document:{querySelector:()=>({closest:()=>({
        getAttribute:()=>qr,querySelector:()=>refresh?{click}:null,
      })})},
      WPP:{
        conn:{isRegistered:()=>ready,isMainReady:()=>ready,getStreamData:()=>stream,
          getMyUserId:()=>({_serialized:'2348010000000@c.us'})},
        call:{enableCallInterface:async()=>undefined,accept:async()=>true},
        on:()=>undefined,whatsapp:{Socket:socket,CallStore:{}},
      },
    });
    expect(await poll('poll')).toMatchObject({connected:false,syncing:false,qr});
    socket.state='UNPAIRED_IDLE';
    refresh=true;
    expect(await poll('poll')).toMatchObject({connected:false,syncing:false,qr:''});
    await poll('poll');
    expect(click).toHaveBeenCalledOnce();
    socket.state='PAIRING';
    stream.info='PAIRING';
    expect(await poll('poll')).toMatchObject({connected:false,syncing:true,qr:''});
    ready=true;
    socket.state='CONNECTED';
    stream.mode='MAIN';
    stream.info='NORMAL';
    expect(await poll('poll')).toMatchObject({connected:true,ready:true,hosts:['2348010000000@c.us'],qr:''});
  });

  it('cannot attach audio to a declined or already ended browser call',async()=>{
    const accepted=vi.fn(async()=>false);
    const state=vi.fn(async()=>null);
    const session=new BrowserIncomingSession({id:'provider-id',peer:'2348012345678@c.us',
      state:'INCOMING_RING',video:false,group:false},{accept:accepted,state,end:async()=>undefined});
    const connected=vi.fn();
    session.on('connected',connected);
    session.masanawaAudioBridge=true;
    await expect(session.accept()).rejects.toThrow('browser_call_accept_failed');
    expect(state).not.toHaveBeenCalled();
    expect(connected).not.toHaveBeenCalled();
    session.observe('ENDED');
    expect(session.ended).toBe(true);
  });
});
