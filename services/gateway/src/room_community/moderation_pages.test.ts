import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedModerationPages} from '../../../../tests/support/room-moderation-pages.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},author={tenantId:'t',userId:'bob'},admin={tenantId:'t',userId:'eve'},path='room_mod_pages/community/';
beforeEach(async()=>{db=new PGlite();await seedModerationPages(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});},30000);
afterEach(async()=>{await db.close();});
async function all(resource:string,actor=owner){let cursor:string|null=null;const result:any[]=[];do {const page:any=await service.dispatch(actor,'GET',path+resource,{limit:17,...(cursor?{cursor}:{})});expect(page.pageVersion).toBe(1);result.push(...page.items);cursor=page.nextCursor;}while(cursor);return result;}
it('pages every post and reply report beyond 100 without leaking reporter evidence',async()=>{
 for(const resource of ['reports/summary','reply-reports/summary']){
  const rows=await all(resource),ids=rows.map(v=>v.replyId??v.postId);expect(rows).toHaveLength(110);expect(new Set(ids).size).toBe(110);expect(ids[0]).toMatch(/109$/);expect(ids.at(-1)).toMatch(/000$/);
  expect(JSON.stringify(rows)).not.toMatch(/Confidential|eve|request_|page_rank|page_at|cursor_time/);
 }
});
it('pages reviews, author-only cases and pending-first appeals beyond 30 with precise ties',async()=>{
 for(const resource of ['reports/reviews','reply-reports/reviews']){const rows=await all(resource);expect(rows).toHaveLength(45);expect(new Set(rows.map(v=>v.reviewId)).size).toBe(45);}
 const cases=await all('moderation/cases',author);expect(cases).toHaveLength(90);expect(new Set(cases.map(v=>v.reviewId)).size).toBe(90);expect(cases.every(v=>v.canAppeal===false&&v.appeal)).toBe(true);
 const appeals=await all('moderation/appeals');expect(appeals).toHaveLength(90);expect(new Set(appeals.map(v=>v.appealId)).size).toBe(90);let closed=false;for(const v of appeals){if(v.status!=='pending')closed=true;else expect(closed).toBe(false);}
 expect((await service.dispatch(admin,'GET',path+'moderation/cases')).items).toEqual([]);
});
it('binds cursors to tenant, Room, actor and resource, never to an access grant',async()=>{
 const first=await service.dispatch(owner,'GET',path+'reply-reports/summary',{limit:3});
 for(const [actor,resource] of [[admin,'reply-reports/summary'],[owner,'reports/summary'],[owner,'reply-reports/reviews']] as const)await expect(service.dispatch(actor,'GET',path+resource,{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:422});
 await expect(service.dispatch(author,'GET',path+'reply-reports/summary',{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:403});
 await db.query("UPDATE rooms.memberships SET role='member' WHERE user_id='eve'");await expect(service.dispatch(admin,'GET',path+'moderation/appeals')).rejects.toMatchObject({statusCode:403});
 const own=await service.dispatch(author,'GET',path+'moderation/cases',{limit:3});await db.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");await expect(service.dispatch(author,'GET',path+'moderation/cases',{cursor:own.nextCursor})).rejects.toMatchObject({statusCode:404});
});
it('rejects invalid limits, cursor encodings, ranks and dates',async()=>{
 for(const input of [{limit:0},{limit:101},{limit:'abc'},{cursor:''},{cursor:'%%%'}])await expect(service.dispatch(owner,'GET',path+'reports/reviews',input)).rejects.toMatchObject({statusCode:422});
 const first=await service.dispatch(owner,'GET',path+'reports/reviews',{limit:1}),base=JSON.parse(Buffer.from(first.nextCursor,'base64url').toString());
 for(const change of [{rank:-1},{time:'0000-01-01T00:00:00.000000Z'},{time:'2026-02-30T00:00:00.000000Z'},{id:''},{scope:'other'}])await expect(service.dispatch(owner,'GET',path+'reports/reviews',{cursor:Buffer.from(JSON.stringify({...base,...change})).toString('base64url')})).rejects.toMatchObject({statusCode:422});
});
it('reapplies current visibility and pending predicates on every later page',async()=>{
 const first=await service.dispatch(owner,'GET',path+'reply-reports/summary',{limit:3});
 await db.query("UPDATE rooms.discussion_replies SET moderation_state='removed' WHERE reply_id='reply_100'");
 const next=await service.dispatch(owner,'GET',path+'reply-reports/summary',{cursor:first.nextCursor});expect(next.items.map((v:any)=>v.replyId)).not.toContain('reply_100');
 await db.query("UPDATE rooms.rooms SET state='retired' WHERE room_id='room_mod_pages'");await expect(service.dispatch(owner,'GET',path+'reply-reports/summary',{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:404});
});
