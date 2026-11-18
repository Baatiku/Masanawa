import {describe,it,expect,vi} from 'vitest';
import {confirmedBillstackDeposit,createBillstackPaymentAdmin} from './billstack_payment_admin.js';

const session='100004261117164131177786256111';
const proof={eventId:session,accountReference:'R-provider-account',accountNumber:'6650000147',amountKobo:10000,receivedAt:'2026-11-17T16:41:31Z',bankName:'9PSB'};
const account={tenant_id:'tenant_owner',account_id:'user_owner',merchant_reference:'merchant-one',provider_reference:'R-provider-account',account_number:'6650000147',status:'assigned',bank_id:'9PSB'};
const actor={tenantId:'tenant_owner',actorId:'operator_one',name:'Owner',capabilities:['wallet.read','wallet.adjust.write']};

describe('Billstack administrator payment recovery',()=>{
 it('never accepts another account, bank, reference or unmatched identity',()=>{
  expect(confirmedBillstackDeposit(proof,[account])).toMatchObject({merchantReference:'merchant-one',eventId:session,amountKobo:10000,userId:'user_owner'});
  for(const patch of [{accountNumber:'another'},{accountReference:'other'},{bankName:'Not-9PSB'}])
   expect(()=>confirmedBillstackDeposit({...proof,...patch},[account])).toThrow();
  expect(()=>confirmedBillstackDeposit(proof,[{...account,status:'pending'}])).toThrow();
  expect(()=>confirmedBillstackDeposit(proof,[])).toThrow();
  expect(()=>confirmedBillstackDeposit(proof,[account,account])).toThrow();
 });
 function fixture(){
  const query=vi.fn(async(sql:string,_params?:unknown[])=>{
   if(sql.includes('FROM gb_wallet.billstack_accounts'))return {rows:[account]};
   if(sql.includes('RETURNING check_id'))return {rows:[{checkId:'1',checkedAt:'2026-11-18T00:00:00Z'}]};
   return {rows:[]};
  });
  const authorize=vi.fn(async()=>actor);
  const transaction=vi.fn(async()=>proof);
  const deposit=vi.fn(async():Promise<{state:'credited'|'duplicate';eventId:string}>=>({state:'credited',eventId:session}));
  const service=createBillstackPaymentAdmin({pool:{query} as never,authorize,transaction,deposit});
  return {service,query,authorize,transaction,deposit};
 }
 it('requires fresh financial-write authorization before provider lookup or wallet mutation',async()=>{
  const f=fixture();f.authorize.mockRejectedValue(Error('denied'));
  await expect(f.service.reconcile('Bearer denied',session)).rejects.toThrow('denied');
  expect(f.authorize).toHaveBeenCalledWith({authorizationHeader:'Bearer denied',capability:'wallet.adjust.write'});
  expect(f.transaction).not.toHaveBeenCalled();expect(f.deposit).not.toHaveBeenCalled();
 });
 it('only credits the provider-verified exact account and writes immutable checked status',async()=>{
  const f=fixture();const result=await f.service.reconcile('Bearer owner',session);
  expect(result).toMatchObject({state:'credited',sessionId:session,amountKobo:'10000',independentProviderProof:true});
  expect(f.query.mock.calls[0]?.[1]).toEqual(['tenant_owner','6650000147']);
  expect(f.deposit).toHaveBeenCalledWith(expect.objectContaining({eventId:session,legacyEventId:'R-provider-account',merchantReference:'merchant-one',accountNumber:'6650000147',amountKobo:10000}));
  expect(f.query.mock.calls[1]?.[0]).toContain('admin_billstack_reconciliation_checks');
 });
 it('retains existing duplicate receipt without a second funding event',async()=>{
  const f=fixture();f.deposit.mockResolvedValue({state:'duplicate',eventId:session});
  expect(await f.service.reconcile('Bearer owner',session)).toMatchObject({state:'duplicate'});
  expect(f.deposit).toHaveBeenCalledTimes(1);
 });
 it('records a failed verification without calling deposit',async()=>{
  const f=fixture();f.transaction.mockRejectedValue(Object.assign(Error('lookup unavailable'),{code:'billstack.transaction_lookup_unavailable'}));
  await expect(f.service.reconcile('Bearer owner',session)).rejects.toMatchObject({statusCode:503,code:'billstack.transaction_lookup_unavailable'});
  expect(f.deposit).not.toHaveBeenCalled();
  expect(f.query.mock.calls[0]?.[0]).toContain("'needs_review'");
 });
 it('fails closed on an unfamiliar receiving account and logs review',async()=>{
  const f=fixture();f.query.mockResolvedValueOnce({rows:[]});
  await expect(f.service.reconcile('Bearer owner',session)).rejects.toMatchObject({code:'recovery.provider_account_or_amount_mismatch'});
  expect(f.deposit).not.toHaveBeenCalled();
 });
 it('lists only tenant-scoped ledger and checked records',async()=>{
  const f=fixture();await f.service.list('Bearer reader',40,0);
  expect(f.authorize).toHaveBeenCalledWith({authorizationHeader:'Bearer reader',capability:'wallet.read'});
  expect(f.query.mock.calls[0]?.[0]).toContain('ngn_deposit_events');
  expect(f.query.mock.calls[0]?.[0]).toContain('admin_billstack_reconciliation_checks');
  expect(f.query.mock.calls[0]?.[1]).toEqual(['tenant_owner',40,0]);
 });
});
