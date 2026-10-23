import {describe,it,expect,vi} from 'vitest';
import {readBuyOfferAdmission} from './buy_offer_admission.js';
const actor={tenantId:'tenant',userId:'user'};
describe('buy offer admission source contract',()=>{
 it('defaults closed without a production authority',async()=>{expect(await readBuyOfferAdmission(undefined,actor)).toMatchObject({canMakeBuyOffer:false,canTakeBuyOffer:false});});
 it('rejects malformed policy decisions',async()=>{await expect(readBuyOfferAdmission({read:async()=>({canMakeBuyOffer:true,canTakeBuyOffer:true,policyReference:''})},actor)).rejects.toThrow('Invalid');});
 it('exposes only actor identity to asynchronous policy work',async()=>{const read=vi.fn(async()=>({canMakeBuyOffer:true,canTakeBuyOffer:true,policyReference:'test-policy-only'}));await readBuyOfferAdmission({read},actor);expect(read).toHaveBeenCalledWith(actor);});
 it('bounds an unavailable authority with a timeout',async()=>{vi.useFakeTimers();try{const p=readBuyOfferAdmission({read:async()=>new Promise(()=>{})},actor);const assertion=expect(p).rejects.toThrow('timed out');await vi.advanceTimersByTimeAsync(5000);await assertion;}finally{vi.useRealTimers();}});
});
