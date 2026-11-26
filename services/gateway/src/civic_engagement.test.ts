import {expect,it} from 'vitest';
import {publicCivicReach,validEngagementConsent} from './civic_rating_routes.js';
it('only publishes coarse counts for a sufficiently large consenting cohort',()=>{
 for(const n of [0,49,-1,NaN,50.5])expect(publicCivicReach(n)).toEqual({published:false,minimum:50,count:null});
 expect(publicCivicReach(50)).toEqual({published:true,minimum:50,count:50});
 expect(publicCivicReach(74).count).toBe(50);
 expect(publicCivicReach(75).count).toBe(75);
});
it('requires affirmative independent consent and accepts unconditional withdrawal',()=>{
 expect(validEngagementConsent({consented:true,consentVersion:1})).toBe(true);
 expect(validEngagementConsent({consented:false})).toBe(true);
 for(const body of [{consented:true},{consented:false,consentVersion:1},{consented:true,consentVersion:1,score:5},{consented:true,consentVersion:2},{consented:'true'},null])expect(validEngagementConsent(body)).toBe(false);
});
