import {describe,it,expect,vi} from 'vitest';
import {createOpsApp} from './app.js';
import {WalletAdminError} from './wallet_admin.js';

const session='100004261117164131177786256111';
describe('capability-gated admin payment routes',()=>{
 it('does not accept invalid transaction IDs or bypass financial authorization',async()=>{
  const list=vi.fn(async()=>({providerHistoryCoverage:'recorded_and_checked_only',items:[]}));
  const reconcile=vi.fn(async()=>{throw new WalletAdminError(403,'fresh_admin_sign_in_required');});
  const app=createOpsApp({billstackPaymentAdmin:{list,reconcile} as never});
  try{
   const invalid=await app.inject({method:'POST',url:'/v1/admin/payments/reconcile',payload:{sessionId:'fake'}});
   expect(invalid.statusCode).toBe(400);expect(reconcile).not.toHaveBeenCalled();
   const denied=await app.inject({method:'POST',url:'/v1/admin/payments/reconcile',payload:{sessionId:session}});
   expect(denied.statusCode).toBe(403);expect(denied.json()).toEqual({error:'fresh_admin_sign_in_required'});
   const history=await app.inject({method:'GET',url:'/v1/admin/payments?limit=10&offset=0'});
   expect(history.statusCode).toBe(200);expect(list).toHaveBeenCalledWith(undefined,10,0);
   expect(history.headers['cache-control']).toBe('private, no-store');
  }finally{await app.close();}
 });
});
