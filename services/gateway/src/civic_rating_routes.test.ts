import {expect,it} from 'vitest';
import {publicRatingSummary,validCivicRatingBody} from './civic_rating_routes.js';
it('suppresses small samples and publishes only coarse aggregate statistics',()=>{
 expect(publicRatingSummary([0,0,0,0,19])).toEqual({published:false,minimum:20,count:null,average:null,approval:null});
 expect(publicRatingSummary([2,2,4,6,6])).toEqual({published:true,minimum:20,count:20,average:3.6,approval:60});
 expect(publicRatingSummary([0,0,0,0,23]).count).toBe(20);
});
it('requires voluntary consent and rejects comments, invalid ratings and arbitrary input',()=>{
 expect(validCivicRatingBody({score:5,consentVersion:1})).toBe(true);
 expect(validCivicRatingBody({score:null})).toBe(true);
 for(const value of [{score:5},{score:0,consentVersion:1},{score:2.5,consentVersion:1},{score:5,consentVersion:1,comment:'text'},{score:null,consentVersion:1},null])expect(validCivicRatingBody(value)).toBe(false);
});
