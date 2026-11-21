import {describe,expect,it,vi} from 'vitest';
import type {Pool} from '@masanawa/postgres';
import {createNewsNotificationFanout} from './news_fanout.js';
import {mobilePushAndroidChannel,mobilePushSafeData,mobilePushSafePreview,pushCategory,pushAllowed} from '@masanawa/mobile-push';

const event={tenant_id:'tenant_public',event_id:'news-123abc',last_user_id:''};
function setup(owners:string[],fail=false) {
 const query=vi.fn(async(sql:string,values?:unknown[])=>{
  if(sql.includes('FROM feed.news_notification_events')&&sql.includes('FOR UPDATE'))return {rows:[event]};
  if(sql.includes('FROM agents.mobile_push_registrations'))return {rows:owners.map(user_id=>({user_id}))};
  if(sql.includes('agents.queue_mobile_notice')) {
   if(fail)throw Error('database failure');
   return {rows:[]};
  }
  return {rows:[]};
 });
 const release=vi.fn();
 const pool={connect:vi.fn(async()=>({query,release}))} as unknown as Pool;
 return {pool,query,release};
}
describe('durable news publication notifications',()=>{
 it('queues once per registered user under a committed, resumable cursor',async()=>{
  const {pool,query,release}=setup(['user_1','user_2']);
  expect(await createNewsNotificationFanout(pool).runOnce())
    .toEqual({events:1,queued:2,remaining:false});
  expect(query.mock.calls.map(call=>call[0])).toContain('COMMIT');
  const recipients=query.mock.calls.find(call=>(call[0] as string).includes('FROM agents.mobile_push_registrations'));
  expect(recipients?.[0]).toMatch(/SELECT DISTINCT r.user_id/);
  expect(recipients?.[0]).toMatch(/COALESCE\(p.status,TRUE\)/);
  const updates=query.mock.calls.find(call=>(call[0] as string).includes('UPDATE feed.news_notification_events'));
  expect(updates?.[1]).toEqual(['tenant_public','news-123abc','user_2',true]);
  const notices=query.mock.calls.filter(call=>(call[0] as string).includes('agents.queue_mobile_notice'));
  expect(notices).toHaveLength(2);
  expect(notices.map(row=>row[1])).toEqual([
   ['tenant_public','user_1','news-123abc'],
   ['tenant_public','user_2','news-123abc'],
  ]);
  expect(release).toHaveBeenCalledOnce();
 });
 it('does not mark done at the batch limit; restarts continue after the persisted account cursor',async()=>{
  const owners=Array.from({length:200},(_,i)=>'user_'+i.toString().padStart(3,'0'));
  const {pool,query}=setup(owners);
  expect(await createNewsNotificationFanout(pool).runOnce())
    .toEqual({events:1,queued:200,remaining:true});
  expect(query.mock.calls.find(call=>(call[0] as string).includes('UPDATE feed.news_notification_events'))?.[1])
   .toEqual(['tenant_public','news-123abc','user_199',false]);
 });
 it('rolls back all queued notices when any database operation fails',async()=>{
  const {pool,query,release}=setup(['user_1'],true);
  await expect(createNewsNotificationFanout(pool).runOnce()).rejects.toThrow('database failure');
  expect(query.mock.calls.map(call=>call[0])).toContain('ROLLBACK');
  expect(query.mock.calls.map(call=>call[0])).not.toContain('COMMIT');
  expect(release).toHaveBeenCalledOnce();
 });
 it('uses only the news category and channel, enforcing opt-out and quiet hours',()=>{
  const data={type:'news_update',eventId:'news-123abc',deepLink:'masanawa://home',headline:'Public'};
  expect(pushCategory(data)).toBe('status');
  expect(mobilePushAndroidChannel(data)).toBe('masanawa_news');
  expect(mobilePushSafeData(data)).toEqual({type:'news_update',eventId:'news-123abc',deepLink:'masanawa://home',headline:'Public'});
  expect(mobilePushSafePreview(data)).toEqual({title:'Public',body:'Public'});
  const pref={messages:true,calls:true,rooms:true,status:true,wallet:true,p2p:false,
   quietStart:1200,quietEnd:420,utcOffsetMinutes:0};
  expect(pushAllowed({...pref,status:false},'status',new Date('2026-11-21T12:00:00Z'),data)).toBe(false);
  expect(pushAllowed(pref,'status',new Date('2026-11-21T23:00:00Z'),data)).toBe(false);
  expect(pushAllowed(pref,'status',new Date('2026-11-21T12:00:00Z'),data)).toBe(true);
 });
});
