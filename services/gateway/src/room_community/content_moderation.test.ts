import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},author={tenantId:'t',userId:'bob'},reporter={tenantId:'t',userId:'eve'};
beforeEach(async()=>{db=new PGlite();await seedRoomCommunityTestDatabase(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner,isApprovedMasana:async()=>true});},30000);
afterEach(async()=>{await db.close();});
it('replays a pre-upgrade review without rewriting its missing reason or granting unsafe historical restoration',async()=>{
 const f=await setup();
 await db.query("INSERT INTO rooms.report_reviews(tenant_id,review_id,room_id,target_id,reviewer_user_id,request_id,decision,report_count) VALUES('t','legacy',$1,$2,'alice','old-key','removed',1)",[f.room.id,f.post.id]);
 expect(await service.dispatch(owner,'POST',f.path+'/reports/'+f.post.id+'/review',{decision:'removed',requestId:'old-key'})).toMatchObject({reviewed:true,decision:'removed',reportCount:1});
 expect((await service.dispatch(author,'GET',f.path+'/moderation/cases')).items).toEqual([]);
 expect((await db.query<{public_reason:null;target_revision:null}>("SELECT public_reason,target_revision FROM rooms.report_reviews WHERE review_id='legacy'")).rows[0]).toEqual({public_reason:null,target_revision:null});
});
async function setup(){
 const room=await service.dispatch(owner,'POST','',{name:'Moderation Room',postingPolicy:'members',requestId:'room'}),path=room.id+'/community';
 for(const a of [author,reporter])await service.dispatch(a,'POST',path+'/join');
 const post=await service.dispatch(author,'POST',path+'/timeline',{body:'Parent post',requestId:'post'});
 const payload={body:'Reply for review',parentId:post.id,requestId:'reply'};
 const reply=await service.dispatch(author,'POST',path+'/timeline',payload);
 return {room,path,post,reply,payload};
}
async function remove(path:string,id:string,kind='reply',key='remove'){
 const route=kind==='reply'?'reply-reports':'reports';
 await service.dispatch(reporter,'POST',path+'/'+route,{targetId:id,reason:'Confidential reporter allegation',requestId:'report-'+key});
 await service.dispatch(owner,'POST',path+'/'+route+'/'+id+'/review',{decision:'removed',publicReason:'Please follow Room rules.',requestId:key});
 return (await service.dispatch(author,'GET',path+'/moderation/cases')).items.find((v:any)=>v.targetId===id);
}
async function appeal(path:string,reviewId:string){return service.dispatch(author,'POST',path+'/moderation/cases/'+reviewId+'/appeal',{reason:'Please reconsider the context.',requestId:'appeal-'+reviewId});}
const decide=(path:string,id:string,decision='restored',a=owner)=>service.dispatch(a,'POST',path+'/moderation/appeals/'+id+'/review',{decision,publicReason:'Reviewed the full context.',requestId:'decision-'+id});
it('scopes replies separately, deduplicates reporters and withholds private report details',async()=>{
 const f=await setup(),request={targetId:f.reply.id,reason:'Private allegation',requestId:'original'};
 await service.dispatch(reporter,'POST',f.path+'/reply-reports',request);
 await service.dispatch(reporter,'POST',f.path+'/reply-reports',request);
 await service.dispatch(reporter,'POST',f.path+'/reply-reports',{...request,requestId:'another'});
 const queue=await service.dispatch(owner,'GET',f.path+'/reply-reports/summary');
 expect(queue.items).toEqual([{replyId:f.reply.id,postId:f.post.id,excerpt:'Reply for review',reportCount:1}]);
 expect(JSON.stringify(queue)).not.toMatch(/Private allegation|eve|requestId/);
 await expect(service.dispatch(author,'GET',f.path+'/reply-reports/summary')).rejects.toMatchObject({statusCode:403});
 await expect(service.dispatch(reporter,'POST',f.path+'/reports',request)).rejects.toMatchObject({statusCode:409});
 await expect(service.dispatch(reporter,'POST',f.path+'/reply-reports',{...request,targetId:f.post.id,requestId:'wrong-kind'})).rejects.toMatchObject({statusCode:404});
});
it('removes only the reviewed reply, hides media and returns a redacted send-retry receipt',async()=>{
 const f=await setup();
 const image=await service.dispatch(author,'POST',f.path+'/media',{requestId:'image',kind:'image',mimeType:'image/png',name:'reply.png',dataBase64:Buffer.from([137,80,78,71,13,10,26,10,1]).toString('base64')});
 await db.query('UPDATE rooms.media SET reply_id=$1 WHERE media_id=$2',[f.reply.id,image.id]);
 const review=await remove(f.path,f.reply.id);
 expect((await service.dispatch(author,'GET',f.path+'/timeline')).items.map((v:any)=>v.id)).toEqual([f.post.id]);
 await expect(service.dispatch(author,'GET',f.path+'/media/'+image.id)).rejects.toMatchObject({statusCode:404});
 expect(await service.dispatch(author,'POST',f.path+'/timeline',f.payload)).toMatchObject({id:f.reply.id,removed:true,body:'',attachments:[]});
 expect(review).toMatchObject({targetKind:'reply',canAppeal:true,publicReason:'Please follow Room rules.'});
 expect(JSON.stringify(review)).not.toMatch(/Confidential|eve|alice|reviewer_user_id/);
 const audit=(await db.query('SELECT * FROM rooms.report_reviews')).rows[0];
 expect(audit).toMatchObject({target_kind:'reply',target_author_user_id:'bob',target_revision:1,reviewer_user_id:'alice'});
});
it('allows one original author appeal with private scoped status and no optimistic restoration',async()=>{
 const f=await setup(),review=await remove(f.path,f.reply.id),first=await appeal(f.path,review.reviewId);
 expect((await appeal(f.path,review.reviewId)).appeal).toEqual(first.appeal);
 await expect(service.dispatch(author,'POST',f.path+'/moderation/cases/'+review.reviewId+'/appeal',{reason:'Changed reason',requestId:'changed'})).rejects.toMatchObject({statusCode:409});
 await expect(service.dispatch(reporter,'POST',f.path+'/moderation/cases/'+review.reviewId+'/appeal',{reason:'Not mine',requestId:'foreign'})).rejects.toMatchObject({statusCode:404});
 expect((await service.dispatch(reporter,'GET',f.path+'/moderation/cases')).items).toEqual([]);
 expect((await service.dispatch(author,'GET',f.path+'/moderation/cases')).items[0]).toMatchObject({canAppeal:false,appeal:{status:'pending'}});
 expect((await service.dispatch(author,'GET',f.path+'/timeline')).items.map((v:any)=>v.id)).not.toContain(f.reply.id);
});
it('restores a current reply removal exactly once and retains the immutable original review',async()=>{
 const f=await setup(),review=await remove(f.path,f.reply.id),ap=(await appeal(f.path,review.reviewId)).appeal;
 const original=(await db.query('SELECT * FROM rooms.report_reviews')).rows;
 expect((await decide(f.path,ap.appealId)).appeal.status).toBe('restored');
 expect((await decide(f.path,ap.appealId)).appeal.status).toBe('restored');
 await expect(decide(f.path,ap.appealId,'upheld')).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(author,'GET',f.path+'/timeline')).items.map((v:any)=>v.id)).toContain(f.reply.id);
 expect((await db.query('SELECT * FROM rooms.report_reviews')).rows).toEqual(original);
 expect((await service.dispatch(author,'GET',f.path+'/moderation/cases')).items[0].appeal).toMatchObject({status:'restored',publicReason:'Reviewed the full context.'});
});
it('post restoration revives only replies hidden by that removal, preserving separate reply decisions',async()=>{
 const f=await setup();await remove(f.path,f.reply.id);
 const sibling=await service.dispatch(author,'POST',f.path+'/timeline',{...f.payload,body:'Independent sibling',requestId:'sibling'});
 const parent=await remove(f.path,f.post.id,'post','parent');
 const ap=(await appeal(f.path,parent.reviewId)).appeal;await decide(f.path,ap.appealId);
 const ids=(await service.dispatch(author,'GET',f.path+'/timeline')).items.map((v:any)=>v.id);
 expect(ids).toEqual(expect.arrayContaining([f.post.id,sibling.id]));expect(ids).not.toContain(f.reply.id);
});
it('later deletion invalidates restoration, while uphold can close the pending appeal without exposing content',async()=>{
 const f=await setup(),review=await remove(f.path,f.post.id,'post'),ap=(await appeal(f.path,review.reviewId)).appeal;
 await service.dispatch(owner,'DELETE',f.path+'/posts/'+f.post.id);
 await expect(decide(f.path,ap.appealId)).rejects.toMatchObject({statusCode:409});
 expect((await decide(f.path,ap.appealId,'upheld')).appeal.status).toBe('upheld');
 expect((await service.dispatch(author,'GET',f.path+'/timeline')).items).toEqual([]);
});
it('requires an independent current manager and an active author for restoration',async()=>{
 const f=await setup(),review=await remove(f.path,f.reply.id),ap=(await appeal(f.path,review.reviewId)).appeal;
 await service.dispatch(owner,'PATCH',f.path+'/members/bob',{role:'admin'});
 await expect(decide(f.path,ap.appealId,'restored',author)).rejects.toMatchObject({statusCode:403});
 await expect(decide(f.path,ap.appealId,'restored',reporter)).rejects.toMatchObject({statusCode:403});
 await db.exec("UPDATE identity.users SET state='disabled' WHERE user_id='bob'");
 await expect(decide(f.path,ap.appealId)).rejects.toMatchObject({statusCode:409});
 expect((await db.query<{state:string}>('SELECT state FROM rooms.moderation_appeals')).rows[0]?.state).toBe('pending');
});
it('never exposes or restores a reply whose parent is scheduled/retired, or a foreign Room case',async()=>{
 const f=await setup(),review=await remove(f.path,f.reply.id),ap=(await appeal(f.path,review.reviewId)).appeal;
 await db.query("UPDATE rooms.lessons SET publish_at=now()+interval '1 day' WHERE lesson_id=$1",[f.post.id]);
 await expect(decide(f.path,ap.appealId)).rejects.toMatchObject({statusCode:409});
 const other=await service.dispatch(owner,'POST','',{name:'Other room',requestId:'other'});
 await expect(decide(other.id+'/community',ap.appealId)).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch({...owner,tenantId:'other'},'GET',f.path+'/moderation/appeals')).rejects.toMatchObject({statusCode:401});
});
it('dismissed reply concerns can reopen with a new audit, without inflating current reporters',async()=>{
 const f=await setup();
 for(let n=0;n<2;n++){
  await service.dispatch(reporter,'POST',f.path+'/reply-reports',{targetId:f.reply.id,reason:'Concern '+n,requestId:'report'+n});
  expect(await service.dispatch(owner,'POST',f.path+'/reply-reports/'+f.reply.id+'/review',{decision:'dismissed',requestId:'review'+n})).toMatchObject({reportCount:1});
 }
 expect((await service.dispatch(owner,'GET',f.path+'/reply-reports/reviews')).items).toHaveLength(2);
 expect((await service.dispatch(owner,'GET',f.path+'/reply-reports/summary')).items).toEqual([]);
 expect((await service.dispatch(author,'GET',f.path+'/moderation/cases')).items).toEqual([]);
});
it('removing an addressed reply suppresses its Masana derivative without restarting it on appeal',async()=>{
 const f=await setup();await db.exec("INSERT INTO identity.characters(tenant_id,character_id) VALUES('t','agent')");
 await service.dispatch(owner,'POST',f.path+'/masana',{characterId:'agent',active:true});
 const reply=await service.dispatch(author,'POST',f.path+'/timeline',{...f.payload,body:'Question for AI',requestId:'ai-reply',mentions:['agent']});
 await db.exec("UPDATE rooms.questions SET state='answered'");
 await db.exec("INSERT INTO rooms.answers(tenant_id,answer_id,question_id,teacher_character_id,body,state,reviewed_by,reviewed_at) SELECT tenant_id,'room-answer_'||question_id,question_id,target_character_id,'Derivative answer','approved','test',now() FROM rooms.questions");
 const review=await remove(f.path,reply.id);const ap=(await appeal(f.path,review.reviewId)).appeal;await decide(f.path,ap.appealId);
 expect((await service.dispatch(author,'GET',f.path+'/timeline')).items.some((v:any)=>v.body==='Derivative answer')).toBe(false);
 expect((await db.query<{state:string}>('SELECT state FROM rooms.questions')).rows[0]?.state).toBe('rejected');
});
