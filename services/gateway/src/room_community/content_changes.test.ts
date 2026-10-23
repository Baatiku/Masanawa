import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedModerationPages} from '../../../../tests/support/room-moderation-pages.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const member={tenantId:'t',userId:'bob'},owner={tenantId:'t',userId:'alice'},base='room_mod_pages/community/';
const edit=(requestId:string,body='Edited human text',expectedRevision=0)=>({requestId,body,expectedRevision});
beforeEach(async()=>{db=new PGlite();await seedModerationPages(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};service=createRoomCommunityService({pool:pool as any,authorize:async()=>member});},30000);
afterEach(async()=>{await db.close();});
it('edits own post and reply with canonical versions and restricted before/after evidence',async()=>{
 for(const [kind,id] of [['post','post_000'],['reply','reply_000']] as const){
  const result=await service.dispatch(member,'PATCH',base+(kind==='post'?'posts':'replies')+'/'+id+'/content',edit('edit_'+kind));
  expect(result).toMatchObject({changeVersion:1,found:true,receipt:{targetKind:kind,targetId:id,action:'edit',previousRevision:0,revision:1},currentItem:{id,body:'Edited human text',contentKind:kind,contentRevision:1,canEdit:true,canDelete:true}});
  expect(result.currentItem.editedAt).toBeTruthy();expect(JSON.stringify(result)).not.toMatch(/before_body|after_body|fingerprint|community_payload/);
 }
 const audit=(await db.query('SELECT before_body,after_body FROM rooms.content_changes ORDER BY target_kind')).rows;
 expect(audit).toEqual([{before_body:'Post 0',after_body:'Edited human text'},{before_body:'Reply 0',after_body:'Edited human text'}]);
});
it('recovers original receipts after later changes/removal without returning old removed text',async()=>{
 const path=base+'posts/post_000/content',payload=edit('first');
 const first=await service.dispatch(member,'PATCH',path,payload);
 const replay=await service.dispatch(member,'PATCH',path,payload);expect(replay.receipt).toEqual(first.receipt);
 await service.dispatch(member,'DELETE',path,{requestId:'remove',expectedRevision:1});
 const lookup=await service.dispatch(member,'GET',base+'content-operations',{requestId:'first',targetKind:'post',targetId:'post_000'});
 expect(lookup.receipt).toEqual(first.receipt);expect(lookup.currentItem).toBeNull();
 expect((await service.dispatch(member,'PATCH',path,payload)).currentItem).toBeNull();
 expect((await db.query<{n:number}>('SELECT count(*)::int AS n FROM rooms.content_changes')).rows[0]!.n).toBe(2);
 await expect(service.dispatch(member,'PATCH',path,{...payload,body:'Different retry'})).rejects.toMatchObject({statusCode:409});
});
it('rejects stale edits and manager/foreign edits of another human without changing evidence',async()=>{
 await expect(service.dispatch(owner,'PATCH',base+'posts/post_000/content',edit('foreign'))).rejects.toMatchObject({statusCode:404});
 await service.dispatch(member,'PATCH',base+'posts/post_000/content',edit('first'));
 await expect(service.dispatch(member,'PATCH',base+'posts/post_000/content',edit('stale','Stale text'))).rejects.toMatchObject({statusCode:409});
 await expect(service.dispatch(member,'DELETE',base+'posts/post_000/content',{requestId:'stale_delete',expectedRevision:0})).rejects.toMatchObject({statusCode:409});
 const foreign=await service.dispatch(owner,'GET',base+'content-operations',{requestId:'first',targetKind:'post',targetId:'post_000'});expect(foreign.found).toBe(false);
 expect((await db.query<{n:number}>('SELECT count(*)::int AS n FROM rooms.content_changes')).rows[0]!.n).toBe(1);
});
it('checks current posting/comments policy but permits own removal when writing is closed',async()=>{
 await db.query("UPDATE rooms.rooms SET posting_policy='admins',comments_enabled=false");
 await expect(service.dispatch(member,'PATCH',base+'posts/post_000/content',edit('closed_post'))).rejects.toMatchObject({statusCode:403});
 await expect(service.dispatch(member,'PATCH',base+'replys/reply_000/content',edit('bad_path'))).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch(member,'PATCH',base+'replies/reply_000/content',edit('closed_reply'))).rejects.toMatchObject({statusCode:403});
 const result=await service.dispatch(member,'DELETE',base+'replies/reply_000/content',{requestId:'delete_reply',expectedRevision:0});expect(result.currentItem).toBeNull();
 expect((await db.query("SELECT moderation_state,removed_by_review_id FROM rooms.discussion_replies WHERE reply_id='reply_000'")).rows[0]).toEqual({moderation_state:'removed',removed_by_review_id:null});
});
it('parent removal fences all children and any later restoration marker',async()=>{
 await service.dispatch(member,'DELETE',base+'posts/post_000/content',{requestId:'delete_parent',expectedRevision:0});
 const children=(await db.query<{moderation_state:string;removed_by_review_id:string|null}>("SELECT moderation_state,removed_by_review_id FROM rooms.discussion_replies WHERE lesson_id='post_000'")).rows;
 expect(children.every(v=>v.moderation_state==='removed'&&v.removed_by_review_id===null)).toBe(true);
 await expect(service.dispatch(member,'PATCH',base+'replies/reply_001/content',edit('hidden_child'))).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch(member,'GET',base+'timeline',{parentId:'post_000'})).rejects.toMatchObject({statusCode:404});
});
it('keeps creation retries bound to original payload after an author edit',async()=>{
 const payload={body:'Original creation',requestId:'create_original'};
 const created=await service.dispatch(member,'POST',base+'timeline',payload);
 await service.dispatch(member,'PATCH',base+'posts/'+created.id+'/content',edit('edit_created'));
 const original=await service.dispatch(member,'POST',base+'timeline',payload);
 expect(original).toMatchObject({id:created.id,body:'Edited human text',contentRevision:1});
 await expect(service.dispatch(member,'POST',base+'timeline',{...payload,body:'Changed creation retry'})).rejects.toMatchObject({statusCode:409});
 expect((await db.query<{n:number}>("SELECT count(*)::int AS n FROM rooms.lessons WHERE idempotency_key='create_original'")).rows[0]!.n).toBe(1);
});
it('rechecks membership and hides scheduled/retired or nonhuman thread targets',async()=>{
 await db.query("UPDATE rooms.lessons SET publish_at=now()+interval '1 day' WHERE lesson_id='post_000'");
 await expect(service.dispatch(member,'PATCH',base+'posts/post_000/content',edit('future'))).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch(member,'PATCH',base+'posts/post_110/content',edit('removed'))).rejects.toMatchObject({statusCode:404});
 await db.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");
 await expect(service.dispatch(member,'GET',base+'content-operations',{requestId:'future',targetKind:'post',targetId:'post_000'})).rejects.toMatchObject({statusCode:404});
});
it('validates revisions/body/schema and disallows empty content without existing media',async()=>{
 const path=base+'posts/post_000/content';
 for(const payload of [edit('same','Post 0'),edit('empty',''),edit('long','x'.repeat(6001)),edit('negative','Text',-1),{...edit('extra'),canEdit:true},{...edit('fraction'),expectedRevision:0.5}])await expect(service.dispatch(member,'PATCH',path,payload)).rejects.toMatchObject({statusCode:422});
 await expect(service.dispatch(member,'PATCH',base+'replies/reply_000/content',edit('long_reply','x'.repeat(2001)))).rejects.toMatchObject({statusCode:422});
 expect((await db.query<{n:number}>('SELECT count(*)::int AS n FROM rooms.content_changes')).rows[0]!.n).toBe(0);
});
