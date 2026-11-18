import type {FlutterwaveBillItem} from '@masanawa/providers';
import {projectVerifiedWholeGbBundles,type ApprovedWholeGbBundle} from './data_catalogue.js';

/** Owner-authorized renewal of an existing selection, never a new plan or
 * price/allowance inference. Every request still rechecks the live provider. */
export function renewMatchingNgnApprovals(input:{
 approved:readonly ApprovedWholeGbBundle[];liveItems:readonly FlutterwaveBillItem[];now:Date;
}):{approved:readonly ApprovedWholeGbBundle[];available:number;unavailable:number}{
 const {approved,liveItems,now}=input;
 // Validate even expired/disabled configuration and reject ambiguous live IDs.
 projectVerifiedWholeGbBundles(approved,liveItems,now);
 const reviewedAt=now.toISOString(),expiresAt=new Date(now.getTime()+7*86400000).toISOString();
 const version='owner-renewal-'+now.getTime();
 const candidates=approved.map(a=>a.enabled?{...a,version,reviewedAt,expiresAt}:a);
 const verified=projectVerifiedWholeGbBundles(candidates,liveItems,now);
 const keys=new Set(verified.map(a=>a.id));
 return {approved:Object.freeze(approved.map((a,i)=>keys.has(a.billerCode+':'+a.itemCode)?candidates[i]!:a)),available:verified.length,unavailable:approved.filter(a=>a.enabled).length-verified.length};
}
