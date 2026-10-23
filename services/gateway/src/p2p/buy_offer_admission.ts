import type {P2pActor} from './service.js';

/** Existing identity/risk/region authority must supply a current decision.
 * There is deliberately no production allow-all implementation or client flag.
 * No transaction client is exposed: a timed-out policy lookup may finish later.
 * Deploy all direction-aware readers before supplying this authority.
 */
export interface BuyOfferAdmission {
  read(actor:P2pActor):Promise<{
    canMakeBuyOffer:boolean;canTakeBuyOffer:boolean;policyReference:string;
  }>;
}
export async function readBuyOfferAdmission(authority:BuyOfferAdmission|undefined,actor:P2pActor) {
  if(!authority)return {canMakeBuyOffer:false,canTakeBuyOffer:false,policyReference:null};
  let timer:ReturnType<typeof setTimeout>|undefined;
  try {
    const result=await Promise.race([authority.read(actor),new Promise<never>((_,reject)=>{
      timer=setTimeout(()=>reject(new Error('Buy offer admission timed out')),5000);timer.unref?.();
    })]);
    if(typeof result.canMakeBuyOffer!=='boolean'||typeof result.canTakeBuyOffer!=='boolean'||
      typeof result.policyReference!=='string'||!/^[A-Za-z0-9_.:-]{8,128}$/.test(result.policyReference))
      throw new Error('Invalid buy offer admission');
    return result;
  }finally{if(timer)clearTimeout(timer);}
}
