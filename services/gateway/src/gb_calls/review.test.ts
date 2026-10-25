import {createHmac} from 'node:crypto';
import {describe,expect,it,vi} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createGbCallReviewService,type GbCallPorts} from './review.js';
import type {GbCallAdmission} from '@masanawa/postgres';

function fixture(){
  const actor={tenantId:'tenant',userId:'owner'},characterId=createCanonicalId('character');
  let time=Date.parse('2026-10-25T12:00:00Z'),version='v1',ready=true;
  let original:GbCallAdmission|null=null;
  const admit=vi.fn(async(_actor:unknown,input:{characterId:string;budgetMb:number})=>
    original={admissionId:'call-one',characterId:input.characterId,budgetMb:input.budgetMb,
      state:'reserved' as const,expiresAt:new Date(time+60000).toISOString(),verifiedConnectedMs:0,chargedMb:null});
  const ports:GbCallPorts={
    authorize:async()=>actor,approved:async()=>({version}),
    balance:async()=>({purchasedMb:50,welcomeMb:500,reservedPurchasedMb:0,reservedWelcomeMb:100,frozen:false}),
    ready:()=>ready,reviewSecret:'test-only-private-call-review-key-32-bytes',now:()=>new Date(time),
    journal:{admit,read:async()=>original,readOriginal:async()=>original},
  };
  return {actor,characterId,ports,admit,service:createGbCallReviewService(ports),
    args:{characterId,expectedSeconds:600,idempotencyKey:'original-call-key'},
    advance:(ms:number)=>{time+=ms},version:(v:string)=>{version=v},ready:(v:boolean)=>{ready=v}};
}
describe('protected retained MB call review',()=>{
  it('quotes the exact spendable budget and creates no hold until explicit acceptance',async()=>{
    const f=fixture(),review=await f.service.review(f.actor,f.args);
    expect(review).toMatchObject({budgetMb:450,maxConnectedSeconds:450,rateMbPerStartedSecond:1,ringingCostMb:0});
    expect(f.admit).not.toHaveBeenCalled();
    await expect(f.service.confirm(f.actor,{reviewToken:review.reviewToken,accepted:false}))
      .rejects.toThrow('gb.call.acceptance_required');
    expect(f.admit).not.toHaveBeenCalled();
    expect(await f.service.confirm(f.actor,{reviewToken:review.reviewToken,accepted:true}))
      .toMatchObject({budgetMb:450,state:'reserved'});
    expect(f.admit).toHaveBeenCalledTimes(1);
  });
  it('rejects tampering, a valid same-key cross-domain MAC and another owner',async()=>{
    const f=fixture(),{reviewToken}=await f.service.review(f.actor,f.args);
    await expect(f.service.confirm(f.actor,{reviewToken:'x'+reviewToken.slice(1),accepted:true}))
      .rejects.toThrow('gb.call.invalid_review');
    const payload=reviewToken.split('.')[0]!;
    const unrelated=payload+'.'+createHmac('sha256',f.ports.reviewSecret).update(payload).digest('base64url');
    await expect(f.service.confirm(f.actor,{reviewToken:unrelated,accepted:true}))
      .rejects.toThrow('gb.call.invalid_review');
    await expect(f.service.confirm({...f.actor,userId:'other'},{reviewToken,accepted:true}))
      .rejects.toThrow('gb.call.review_owner_mismatch');
    expect(f.admit).not.toHaveBeenCalled();
  });
  it('expires unconfirmed consent and rejects a changed/revoked Masana',async()=>{
    const f=fixture(),{reviewToken}=await f.service.review(f.actor,f.args);
    f.version('v2');
    await expect(f.service.confirm(f.actor,{reviewToken,accepted:true})).rejects.toThrow('gb.call.stale_masana');
    f.version('v1');f.advance(120001);
    await expect(f.service.confirm(f.actor,{reviewToken,accepted:true})).rejects.toThrow('gb.call.review_expired');
    expect(f.admit).not.toHaveBeenCalled();
  });
  it('recovers an existing admission after expiry/readiness change without another reserve',async()=>{
    const f=fixture(),{reviewToken}=await f.service.review(f.actor,f.args);
    const first=await f.service.confirm(f.actor,{reviewToken,accepted:true});
    f.advance(120001);f.ready(false);f.version('revoked');
    expect(await f.service.confirm(f.actor,{reviewToken,accepted:true})).toEqual(first);
    expect(f.admit).toHaveBeenCalledTimes(1);
  });
  it('resumes a pending original journal after a reservation timeout',async()=>{
    const f=fixture(),{reviewToken}=await f.service.review(f.actor,f.args);
    const first=await f.service.confirm(f.actor,{reviewToken,accepted:true});
    f.ports.journal.readOriginal=async()=>({...first,state:'pending'});
    expect(await f.service.confirm(f.actor,{reviewToken,accepted:true})).toMatchObject({state:'reserved'});
    expect(f.admit).toHaveBeenCalledTimes(2);
    expect(f.admit.mock.calls[0]?.[1]).toEqual(f.admit.mock.calls[1]?.[1]);
  });
  it('refuses unready, frozen, empty and unapproved targets',async()=>{
    const f=fixture();f.ready(false);
    await expect(f.service.review(f.actor,f.args)).rejects.toThrow('gb.call.unavailable');
    f.ready(true);f.ports.balance=async()=>({purchasedMb:10,welcomeMb:0,reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:true});
    await expect(f.service.review(f.actor,f.args)).rejects.toThrow('gb.call.account_restricted');
    f.ports.balance=async()=>({purchasedMb:0,welcomeMb:0,reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:false});
    await expect(f.service.review(f.actor,f.args)).rejects.toThrow('gb.call.insufficient_mb');
    f.ports.approved=async()=>null;
    await expect(f.service.review(f.actor,f.args)).rejects.toThrow('gb.call.masana_unavailable');
    expect(f.admit).not.toHaveBeenCalled();
  });
  it.each([0,-1,0.1,3601,Number.NaN])('rejects invalid second budgets %s',async expectedSeconds=>{
    const f=fixture();await expect(f.service.review(f.actor,{...f.args,expectedSeconds}))
      .rejects.toThrow('gb.call.invalid_budget');
  });
});
