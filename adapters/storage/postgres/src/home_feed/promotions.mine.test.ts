import {describe,expect,it,vi} from 'vitest';
import {PgStatusPromotions} from './promotions.js';

describe('inactive paid post ownership and server-authoritative retention clock',()=>{
 it('returns only signed-in owners their disabled body, verified history and UTC expiry',async()=>{
  const query=vi.fn(async(statement:string,params?:unknown[])=>{
   if(statement.includes('FROM feed.promotion_campaigns')&&statement.includes('sponsor_id'))
     return {rows:[]};
   if(statement.includes('FROM feed.posts p')){
     expect(statement).toContain('p.author_user_id=$2');
     expect(statement).toContain('p.paid_purge_at>statement_timestamp()');
     expect(statement).toContain('p.paid_purged_at IS NULL');
     expect(params).toEqual(['tenant','owner']);
     return {rows:[{id:'post-1',body:'My inactive campaign',kind:'text',
       paid_disabled_at:'2026-10-27T11:00:00Z',paid_purge_at:'2026-10-30T11:00:00Z',
       historical_views:17}]};
   }
   if(statement.includes('FROM feed.promotion_view_charges'))return {rows:[]};
   if(statement.includes('statement_timestamp() AS now_utc'))return {rows:[{now_utc:'2026-10-27T12:00:00Z'}]};
   throw new Error('Unexpected promotion query');
  });
  const engine=new PgStatusPromotions({query} as never,'x'.repeat(32),'https://masanawa.com');
  const mine=await engine.mine('tenant','owner');
  expect(mine.serverNow).toBe('2026-10-27T12:00:00Z');
  expect(mine.inactivePosts).toEqual([{postId:'post-1',body:'My inactive campaign',kind:'text',
    disabledAt:'2026-10-27T11:00:00Z',purgeAt:'2026-10-30T11:00:00Z',
    historicalVerifiedViews:17}]);
  expect(query).toHaveBeenCalledTimes(4);
  await expect(engine.mine('tenant','bad actor !')).rejects.toMatchObject({code:'invalid_actor'});
 });
});
