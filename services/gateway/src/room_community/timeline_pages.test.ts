import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedTimelinePages} from '../../../../tests/support/room-timeline-pages.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},member={tenantId:'t',userId:'bob'},manager={tenantId:'t',userId:'eve'},path='room_mod_pages/community/timeline';
beforeEach(async()=>{db=new PGlite();await seedTimelinePages(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});},30000);
afterEach(async()=>{await db.close();});
async function all(input:Record<string,unknown>={}){let cursor:string|null=null;const rows:any[]=[];do{const page:any=await service.dispatch(member,'GET',path,{limit:17,...input,...(cursor?{cursor}:{})});expect(page.paginationVersion).toBe(1);rows.push(...page.items);cursor=page.nextCursor;}while(cursor);return rows;}
it('traverses one full-precision timeline of posts, human replies and approved Masana answers',async()=>{
 const rows=await all();expect(rows).toHaveLength(225);expect(new Set(rows.map(v=>v.id)).size).toBe(225);expect(rows.filter(v=>v.authorKind==='masana')).toHaveLength(5);expect(rows.every(v=>Array.isArray(v.attachments)&&Array.isArray(v.reactions))).toBe(true);
 const first=await service.dispatch(member,'GET',path,{limit:17});expect(first.items.at(-1).id).toBe('room-answer_timeline_4');expect(JSON.parse(Buffer.from(first.nextCursor,'base64url').toString()).at).toMatch(/\.\d{6}Z$/);
 expect(JSON.stringify(rows)).not.toMatch(/idempotency_key|community_payload|removed_by_review_id/);
});
it('server search finds literal wildcard text outside the default first page',async()=>{
 const first=await service.dispatch(member,'GET',path);expect(first.items.map((v:any)=>v.id)).not.toContain('post_005');
 expect((await service.dispatch(member,'GET',path,{search:'100%_#'})).items.map((v:any)=>v.id)).toEqual(['post_005']);
 expect((await service.dispatch(member,'GET',path,{search:'not present'})).items).toEqual([]);
});
it('thread pages return the exact old parent plus only its children across all pages',async()=>{
 const first=await service.dispatch(member,'GET',path,{parentId:'post_000',limit:17});expect(first.parent).toMatchObject({id:'post_000',body:'Post 0',parentId:null});
 const children=await all({parentId:'post_000'});expect(children).toHaveLength(115);expect(children.every(v=>v.parentId==='post_000')).toBe(true);expect(children.some(v=>v.id==='post_000')).toBe(false);
 expect((await service.dispatch(member,'GET',path,{parentId:'post_000',search:'Masana reply 2'})).items).toHaveLength(1);
 await expect(service.dispatch(member,'GET',path,{parentId:'post_154'})).rejects.toMatchObject({statusCode:404});
});
it('binds cursors to current Room, actor, query and thread without granting access',async()=>{
 const first=await service.dispatch(member,'GET',path,{limit:3});
 for(const [actor,input] of [[manager,{}],[member,{search:'Post'}],[member,{parentId:'post_000'}]] as const)await expect(service.dispatch(actor,'GET',path,{...input,cursor:first.nextCursor})).rejects.toMatchObject({statusCode:422});
 const other=await service.dispatch(owner,'POST','',{name:'Other timeline',requestId:'other'});await expect(service.dispatch(owner,'GET',other.id+'/community/timeline',{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:422});
 await db.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");await expect(service.dispatch(member,'GET',path,{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:404});
});
it('rechecks removals, scheduling, parent visibility and Masana activation on later pages',async()=>{
 const first=await service.dispatch(member,'GET',path,{limit:5});await db.query("UPDATE rooms.discussion_replies SET moderation_state='removed' WHERE reply_id='reply_100'");
 const next=await service.dispatch(member,'GET',path,{cursor:first.nextCursor});expect(next.items.map((v:any)=>v.id)).not.toContain('reply_100');
 await db.query("UPDATE rooms.masana_participants SET active=false");expect((await all()).some(v=>v.authorKind==='masana')).toBe(false);
 await db.query("UPDATE rooms.lessons SET state='retired' WHERE lesson_id='post_000'");const rest=await all();expect(rest.some(v=>v.parentId==='post_000'||v.id==='post_000')).toBe(false);
 await expect(service.dispatch(member,'GET',path,{parentId:'post_000'})).rejects.toMatchObject({statusCode:404});
});
it('rejects malformed page controls and dates without turning them into a broad read',async()=>{
 for(const input of [{limit:0},{limit:101},{limit:'bad'},{search:[]},{search:'x'.repeat(101)},{parentId:''},{cursor:'%'},{cursor:''}])await expect(service.dispatch(member,'GET',path,input)).rejects.toMatchObject({statusCode:422});
 const first=await service.dispatch(member,'GET',path,{limit:1}),base=JSON.parse(Buffer.from(first.nextCursor,'base64url').toString());
 for(const change of [{at:'0000-01-01T00:00:00.000000Z'},{at:'2026-02-30T00:00:00.000000Z'},{kind:'private'},{id:''}])await expect(service.dispatch(member,'GET',path,{cursor:Buffer.from(JSON.stringify({...base,...change})).toString('base64url')})).rejects.toMatchObject({statusCode:422});
});
it('pinned history traverses all visible roots beyond loaded timeline and binds cursor collection',async()=>{
 await db.exec("UPDATE rooms.lessons SET pinned=true");
 const rows=await all({pinnedOnly:true});
 expect(rows).toHaveLength(110);expect(new Set(rows.map(v=>v.id)).size).toBe(110);
 expect(rows.every(v=>v.pinned&&v.contentKind==='post'&&v.parentId===null)).toBe(true);
 const first=await service.dispatch(member,'GET',path,{pinnedOnly:'true',limit:2});
 expect(first.pinnedOnly).toBe(true);
 await expect(service.dispatch(member,'GET',path,{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:422});
 await expect(service.dispatch(member,'GET',path,{pinnedOnly:true,parentId:'post_000'})).rejects.toMatchObject({statusCode:422});
 for(const pinnedOnly of [null,[],{},'yes',1])await expect(service.dispatch(member,'GET',path,{pinnedOnly})).rejects.toMatchObject({statusCode:422});
 const found=await service.dispatch(member,'GET',path,{pinnedOnly:true,search:'100%_#'});
 expect(found.items.map((v:any)=>v.id)).toEqual(['post_005']);
});
it('pinned continuation rechecks unpin, hidden/scheduled posts and lost membership',async()=>{
 await db.exec("UPDATE rooms.lessons SET pinned=true; UPDATE rooms.lessons SET publish_at='2099-01-01' WHERE lesson_id='post_005'");
 const first=await service.dispatch(member,'GET',path,{pinnedOnly:true,limit:2});
 await db.exec("UPDATE rooms.lessons SET pinned=false WHERE lesson_id='post_004'; UPDATE rooms.lessons SET state='retired' WHERE lesson_id='post_003'");
 const remaining=await all({pinnedOnly:true,cursor:first.nextCursor});
 for(const id of ['post_003','post_004','post_005'])expect(remaining.map(v=>v.id)).not.toContain(id);
 await db.exec("UPDATE rooms.memberships SET state='left' WHERE tenant_id='t' AND room_id='room_mod_pages' AND user_id='bob'");
 await expect(service.dispatch(member,'GET',path,{pinnedOnly:true,cursor:first.nextCursor})).rejects.toMatchObject({statusCode:404});
});
