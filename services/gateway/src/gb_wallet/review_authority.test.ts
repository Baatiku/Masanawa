import {expect,it,vi} from 'vitest';
import {createWalletInquiryReviewAuthority} from './review_authority.js';
const actor={tenantId:'t',userId:'operator'},at=Date.parse('2026-10-29T12:00:00Z');
it('requires a verified allowlisted email bound to the authenticated tenant and account',async()=>{
 const identity={...actor,profile:{email:' Owner@Example.com ',accountState:'active'}};
 const linkedEmail=vi.fn(async()=>true),sessionsFor=vi.fn(async()=>[{current:true,createdAt:'2026-10-29T11:55:00Z'}]);
 const authority=createWalletInquiryReviewAuthority({sessions:{authorize:async()=>identity},adminEmails:new Set(['owner@example.com']),linkedEmail,sessionsFor,now:()=>at});
 expect(await authority('Bearer operator',actor,false)).toBe(true);
 expect(await authority('Bearer operator',{tenantId:'other',userId:actor.userId},false)).toBe(false);
 identity.profile.accountState='suspended';expect(await authority('Bearer operator',actor,false)).toBe(false);
 identity.profile.accountState='active';linkedEmail.mockResolvedValueOnce(false);
 expect(await authority('Bearer operator',actor,false)).toBe(false);
 identity.profile.email='non-admin@example.com';expect(await authority('Bearer operator',actor,false)).toBe(false);
 expect(sessionsFor).not.toHaveBeenCalled();
});
it('recent proof/evidence access uses the current original session, not a different fresh session',async()=>{
 const sessionsFor=vi.fn(async()=>[{current:false,createdAt:'2026-10-29T12:00:00Z'},
  {current:true,createdAt:'2026-10-29T10:00:00Z'}]);
 const authority=createWalletInquiryReviewAuthority({sessions:{authorize:async()=>({...actor,profile:{email:'owner@example.com'}})},
  adminEmails:new Set(['owner@example.com']),linkedEmail:async()=>true,sessionsFor,now:()=>at});
 await expect(authority('Bearer operator',actor,true)).rejects.toMatchObject({status:403,code:'fresh_auth_required'});
 sessionsFor.mockResolvedValueOnce([{current:true,createdAt:'2026-10-29T11:50:00Z'}]);
 expect(await authority('Bearer operator',actor,true)).toBe(true);
 sessionsFor.mockResolvedValueOnce([{current:true,createdAt:'2026-10-30T11:50:00Z'}]);
 await expect(authority('Bearer operator',actor,true)).rejects.toMatchObject({status:403});
});
