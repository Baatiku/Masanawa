import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedMediaPages} from '../../../../tests/support/room-media-pages.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const member={tenantId:'t',userId:'bob'},owner={tenantId:'t',userId:'alice'},path='room_mod_pages/community/media';
beforeEach(async()=>{db=new PGlite();await seedMediaPages(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};service=createRoomCommunityService({pool:pool as any,authorize:async()=>member});},30000);
afterEach(async()=>{await db.close();});
async function all(input:Record<string,unknown>={}){let cursor:string|null=null;const rows:any[]=[];do{const page:any=await service.dispatch(member,'GET',path,{limit:17,...input,...(cursor?{cursor}:{})});expect(page.paginationVersion).toBe(1);rows.push(...page.items);cursor=page.nextCursor;}while(cursor);return rows;}
it('traverses all shared files with microsecond ties and authoritative source metadata only',async()=>{
 const rows=await all();expect(rows).toHaveLength(130);expect(new Set(rows.map(v=>v.id)).size).toBe(130);
 expect(rows[0].id).toBe('media_129');expect(rows.every(v=>v.sourcePostId==='post_000')).toBe(true);
 expect(rows.find(v=>v.id==='media_001').sourceReplyId).toBe('reply_000');expect(rows.find(v=>v.id==='media_000').sourceReplyId).toBeNull();
 expect(JSON.stringify(rows)).not.toMatch(/dataBase64|data_base64|user_id|request_id|Private unsent|Retired source|Removed reply/);
 const first=await service.dispatch(member,'GET',path,{limit:2});expect(JSON.parse(Buffer.from(first.nextCursor,'base64url').toString()).at).toMatch(/\.\d{6}Z$/);
});
it('literal filename search and each type filter work beyond the first cap',async()=>{
 expect((await service.dispatch(member,'GET',path)).items.some((v:any)=>v.id==='media_005')).toBe(false);
 expect((await service.dispatch(member,'GET',path,{search:'100%_#'})).items.map((v:any)=>v.id)).toEqual(['media_005']);
 for(const kind of ['image','video','voice','doc']){const rows=await all({kind});expect(rows.length).toBeGreaterThan(30);expect(rows.every(v=>v.kind===kind)).toBe(true);}
 expect(await all({search:'no such file'})).toEqual([]);
});
it('binds cursors to viewer, Room, search and type; current membership is rechecked',async()=>{
 const first=await service.dispatch(member,'GET',path,{limit:2});
 for(const [actor,input] of [[owner,{}],[member,{search:'File'}],[member,{kind:'image'}]] as const)await expect(service.dispatch(actor,'GET',path,{...input,cursor:first.nextCursor})).rejects.toMatchObject({statusCode:422});
 const other=await service.dispatch(owner,'POST','',{name:'Other library',requestId:'other'});
 await expect(service.dispatch(owner,'GET',other.id+'/community/media',{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:422});
 await db.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");await expect(service.dispatch(member,'GET',path,{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:404});
});
it('rechecks reply removal, scheduling and parent retirement on later reads and byte GETs',async()=>{
 const first=await service.dispatch(member,'GET',path,{limit:2});
 await db.query("UPDATE rooms.discussion_replies SET moderation_state='removed' WHERE reply_id='reply_000'");
 const later=await service.dispatch(member,'GET',path,{cursor:first.nextCursor});expect(later.items.every((v:any)=>v.sourceReplyId===null)).toBe(true);
 await expect(service.dispatch(member,'GET',path+'/media_001')).rejects.toMatchObject({statusCode:404});
 await db.query("UPDATE rooms.lessons SET publish_at=now()+interval '1 day' WHERE lesson_id='post_000'");expect(await all()).toEqual([]);
 await expect(service.dispatch(member,'GET',path+'/media_000')).rejects.toMatchObject({statusCode:404});
 await db.query("UPDATE rooms.lessons SET publish_at=NULL,state='retired' WHERE lesson_id='post_000'");expect(await all()).toEqual([]);
});
it('keeps original uploader unsent readback separate from shared history and foreign readers',async()=>{
 expect((await service.dispatch(member,'GET',path+'/unsent')).dataBase64).toBe('cHJpdmF0ZQ==');
 await expect(service.dispatch(owner,'GET',path+'/unsent')).rejects.toMatchObject({statusCode:404});
 expect((await all()).some(v=>v.id==='unsent')).toBe(false);
});
it('rejects malformed controls and impossible cursor dates',async()=>{
 for(const input of [{limit:0},{limit:101},{limit:'x'},{kind:[]},{kind:'links'},{search:[]},{search:'x'.repeat(101)},{cursor:'%'},{cursor:''}])await expect(service.dispatch(member,'GET',path,input)).rejects.toMatchObject({statusCode:422});
 const first=await service.dispatch(member,'GET',path,{limit:1}),base=JSON.parse(Buffer.from(first.nextCursor,'base64url').toString());
 for(const change of [{at:'0000-01-01T00:00:00.000000Z'},{at:'2026-02-30T00:00:00.000000Z'},{id:''}])await expect(service.dispatch(member,'GET',path,{cursor:Buffer.from(JSON.stringify({...base,...change})).toString('base64url')})).rejects.toMatchObject({statusCode:422});
});
