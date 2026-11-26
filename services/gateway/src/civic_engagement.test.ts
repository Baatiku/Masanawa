import {expect,it} from 'vitest';
import {publicCivicReach,validEngagementConsent,validCivicRankingQuery,rankCivicReach} from './civic_rating_routes.js';
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

it('limits ranking windows and scopes to explicit fixed choices',()=>{
 expect(validCivicRankingQuery({days:'7',kind:'agency'})).toBe(true);
 expect(validCivicRankingQuery({days:'30',kind:'all'})).toBe(true);
 for(const q of [{days:'1',kind:'all'},{days:'30',kind:'unknown'},{days:7,kind:'person'},{days:'7',kind:'person',userId:'other'},null])expect(validCivicRankingQuery(q)).toBe(false);
});
it('ranks only public buckets, assigns equal ranks and never exposes raw counts',()=>{
 const id=(n:number)=>'character_00000000-0000-0000-0000-'+String(n).padStart(12,'0');
 const row=(n:number,count:number)=>({characterId:id(n),kind:'person' as const,count});
 expect(rankCivicReach([row(3,50),row(2,75),row(1,75),row(4,49),row(5,51),row(2,75)])).toEqual([
  {...row(1,75),rank:1},{...row(2,75),rank:1},{...row(3,50),rank:3}
 ]);
 expect(rankCivicReach(Array.from({length:60},(_,i)=>row(i+1,50)))).toHaveLength(50);
});
