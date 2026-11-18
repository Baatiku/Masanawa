import {it,expect} from 'vitest';
import {readFile} from 'node:fs/promises';
import {renewMatchingNgnApprovals} from './renew_approvals.js';
import type {ApprovedWholeGbBundle} from './data_catalogue.js';
import type {FlutterwaveBillItem} from '@masanawa/providers';
it('renews only the existing exact-price enabled selection and preserves all allowance evidence',async()=>{
 const approved=JSON.parse(await readFile(new URL('../../../../infra/deployment/gateway/flutterwave-data-approved-20261027.json',import.meta.url),'utf8')) as ApprovedWholeGbBundle[];
 const live=approved.map(a=>({billerCode:a.billerCode,itemCode:a.itemCode,amount:a.providerAmount,currency:'NGN',name:'untrusted bonus label',labelName:'phone'})) as FlutterwaveBillItem[];
 const now=new Date('2026-11-16T10:00:00Z');
 const result=renewMatchingNgnApprovals({approved,liveItems:live,now});
 expect(result.available).toBe(36);expect(result.unavailable).toBe(0);
 for(let i=0;i<approved.length;i++){const {version,reviewedAt,expiresAt,...terms}=result.approved[i]!;const {version:_v,reviewedAt:_r,expiresAt:_e,...oldTerms}=approved[i]!;expect(terms).toEqual(oldTerms);expect(version).toMatch(/^owner-renewal-/);expect(Date.parse(expiresAt)-Date.parse(reviewedAt)).toBe(7*86400000);}
 const changed=[{...approved[0]!,enabled:false},...approved.slice(1)];
 const provider=live.slice(0,-1).map((a,i)=>i===1?{...a,amount:'0.01'}:a);
 const partial=renewMatchingNgnApprovals({approved:changed,liveItems:provider,now});
 expect(partial.available).toBe(33);expect(partial.unavailable).toBe(2);
 for(const i of [0,1,35])expect(partial.approved[i]).toEqual(changed[i]);
 expect(()=>renewMatchingNgnApprovals({approved,liveItems:[...live,live[0]!],now})).toThrow('duplicate');
});
