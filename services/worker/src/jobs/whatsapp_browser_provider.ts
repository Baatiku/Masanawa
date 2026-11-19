// This function runs inside the connected browser. It only handles the exact
// incoming call ID approved by the server's existing policy and lease.
export async function browserAction(action:string,id?:string):Promise<unknown>{
  // WA-JS exposes dynamic internal stores whose shapes vary by WhatsApp version.
  const browser=globalThis as unknown as {WPP?:any;masanawaCallArm?:Promise<void>;masanawaOffers?:Map<string,{call:any;seenAt:number}>};
  const W=browser.WPP;
  const store=W?.whatsapp?.CallStore;
  const text=(value:any):string=>typeof value==='string'||typeof value==='number'?String(value):
    typeof value?._serialized==='string'?value._serialized:String(value?.toString?.()??'');
  const readState=async(call:any)=>text(typeof call?.getState==='function'?await call.getState():call?.state??call?.status).toUpperCase();
  const models=()=>{
    const list=store?.getModelsArray?.()??[];
    const active=store?.activeCall;
    return active?[active,...list.filter((call:any)=>call!==active)]:list;
  };
  if(action==='poll'){
    const connected=Boolean(await W?.conn?.isAuthenticated?.());
    const hosts=connected?[text(await W?.conn?.getMyUserId?.()),text(await W?.conn?.getMyUserLid?.())].filter(Boolean):[];
    const usable=!!store&&(typeof W?.whatsapp?.getVoipStackInterface==='function'||typeof W?.call?.accept==='function');
    if(connected&&usable&&!browser.masanawaOffers&&typeof W?.on==='function'){
      const pending=new Map<string,{call:any;seenAt:number}>();
      W.on('call.incoming_call',(call:any)=>{
        const key=text(call?.id);
        if(!key||pending.size>=12)return;
        pending.set(key,{call,seenAt:Date.now()});
      });
      browser.masanawaOffers=pending;
    }
    if(connected&&usable&&!browser.masanawaCallArm&&typeof W?.call?.enableCallInterface==='function'){
      browser.masanawaCallArm=Promise.resolve().then(()=>W.call.enableCallInterface()).catch(()=>{
        delete browser.masanawaCallArm;
      });
    }
    const ready=!!(usable&&browser.masanawaCallArm&&browser.masanawaOffers);
    const live=models();
    const offers=await Promise.all(live.slice(0,12).filter((call:any)=>call.isOutgoing!==true&&call.outgoing!==true&&
      String(call.direction??'').toLowerCase()!=='outgoing').map(async (call:any)=>({
      id:text(call.id??call.callId),peer:text(call.peerJid??call.peer?.id??call.peer??call.remoteJid??call.from),
      phone:text(call.callerPn),state:await readState(call),video:call.isVideo===true,group:call.isGroup===true,
    })));
    for(const [key,{call,seenAt}] of browser.masanawaOffers??[]){
      if(Date.now()-seenAt>20000){browser.masanawaOffers?.delete(key);continue;}
      if(offers.some(offer=>offer.id===key))continue;
      offers.push({id:key,peer:text(call.peerJid??call.sender),phone:text(call.callerPn),
        state:'INCOMING_RING',video:call.isVideo===true,group:call.isGroup===true});
    }
    return {connected,hosts,calls:offers,ready};
  }
  const call=models().find((current:any)=>text(current.id??current.callId)===id);
  if(!call)return action==='accept'?false:null;
  if(action==='state')return readState(call);
  // The WA-JS primitives act on the active call. Never let a race during
  // acceptance or hangup affect a different call.
  if(text(store.activeCall?.id??store.activeCall?.callId)!==id)return false;
  if(action==='accept'){
    if(call.isOutgoing===true||call.isGroup===true||call.isVideo===true)return false;
    browser.masanawaOffers?.delete(id!);
    if(typeof W.whatsapp.getVoipStackInterface==='function'){
      const voip=await W.whatsapp.getVoipStackInterface();
      if(text(store.activeCall?.id??store.activeCall?.callId)!==id||typeof voip?.acceptCall!=='function')return false;
      return await voip.acceptCall(true,false)!==false;
    }
    return await W.call.accept()!==false;
  }
  if(action==='end')return W.call.end();
  return false;
}
