import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedModerationPages} from '../../../../tests/support/room-moderation-pages.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},author={tenantId:'t',userId:'bob'},manager={tenantId:'t',userId:'eve'},path='room_mod_pages/community/';
beforeEach(async()=>{db=new PGlite();await seedModerationPages(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});},30000);
afterEach(async()=>{await db.close();});
it('finds exact author cases and manager appeals outside the first page without broadening permissions',async()=>{
 expect((await service.dispatch(author,'GET',path+'moderation/cases')).items.map((v:any)=>v.reviewId)).not.toContain('review_reply_110');
 const one=await service.dispatch(author,'GET',path+'moderation/cases/review_reply_110');expect(one).toMatchObject({moderationVersion:1,item:{reviewId:'review_reply_110',appeal:{status:'upheld'}}});
 await expect(service.dispatch(manager,'GET',path+'moderation/cases/review_reply_110')).rejects.toMatchObject({statusCode:404});
 const exact=await service.dispatch(owner,'GET',path+'moderation/appeals/appeal_review_reply_110');expect(exact.item).toMatchObject({appealId:'appeal_review_reply_110',status:'upheld',canReview:false});
 await expect(service.dispatch(author,'GET',path+'moderation/appeals/appeal_review_reply_110')).rejects.toMatchObject({statusCode:403});
 expect(JSON.stringify(one)).not.toMatch(/Confidential|reviewer_user_id|request_id|decided_by/);
});
it('recovers only the original review actor, target and kind, retaining immutable decision after later restoration',async()=>{
 await service.dispatch(owner,'POST',path+'reply-reports/reply_001/review',{decision:'removed',publicReason:'Public moderation reason',requestId:'original-review'});
 const query={action:'report-review',targetKind:'reply',targetId:'reply_001',requestId:'original-review'};
 const receipt=await service.dispatch(owner,'GET',path+'moderation/operations',query);expect(receipt).toMatchObject({operationVersion:1,item:{action:'report-review',targetId:'reply_001',decision:'removed',reportCount:1}});
 for(const a of [author,manager])expect((await service.dispatch(a,'GET',path+'moderation/operations',query)).item).toBeNull();
 for(const change of [{targetId:'reply_002'},{targetKind:'post'},{requestId:'missing'}])expect((await service.dispatch(owner,'GET',path+'moderation/operations',{...query,...change})).item).toBeNull();
 const appeal=(await service.dispatch(author,'POST',path+'moderation/cases/'+receipt.item.reviewId+'/appeal',{reason:'Author context',requestId:'original-appeal'})).appeal;
 await service.dispatch(manager,'POST',path+'moderation/appeals/'+appeal.appealId+'/review',{decision:'restored',publicReason:'Restoration reason',requestId:'original-decision'});
 expect((await service.dispatch(owner,'GET',path+'moderation/operations',query)).item.decision).toBe('removed');
 expect(JSON.stringify(receipt)).not.toMatch(/Confidential|reason|reviewer|alice|requestId/);
});
it('author and independent decision recovery are actor-bound and expose canonical current status',async()=>{
 const target='review_reply_110',query={action:'appeal',requestId:'appeal_request_'+target,targetId:target};
 expect((await service.dispatch(author,'GET',path+'moderation/operations',query)).item).toMatchObject({reviewId:target,status:'upheld'});
 expect((await service.dispatch(owner,'GET',path+'moderation/operations',query)).item).toBeNull();
 const appealId='appeal_'+target,decision={action:'appeal-review',requestId:'decision_'+appealId,targetId:appealId};
 expect((await service.dispatch(owner,'GET',path+'moderation/operations',decision)).item).toMatchObject({appealId,status:'upheld'});
 expect((await service.dispatch(manager,'GET',path+'moderation/operations',decision)).item).toBeNull();
});
it('exact reads and operation recovery never bypass Room/account/tenant revocation',async()=>{
 await db.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");
 await expect(service.dispatch(author,'GET',path+'moderation/cases/review_reply_110')).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch(author,'GET',path+'moderation/operations',{action:'appeal',requestId:'appeal_request_review_reply_110',targetId:'review_reply_110'})).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch({tenantId:'other',userId:'bob'},'GET',path+'moderation/cases/review_reply_110')).rejects.toMatchObject({statusCode:404});
});
it('rejects unsupported lookup and detail shapes without mutating moderation state',async()=>{
 for(const input of [{},{action:'post'},{action:'appeal',requestId:'',targetId:'x'},{action:'report-review',requestId:'x',targetId:'x',targetKind:'room'}])await expect(service.dispatch(owner,'GET',path+'moderation/operations',input)).rejects.toMatchObject({statusCode:422});
 await expect(service.dispatch(author,'GET',path+'moderation/cases/review_reply_110',{limit:1})).rejects.toMatchObject({statusCode:422});
 await expect(service.dispatch(owner,'GET',path+'moderation/appeals/appeal_review_reply_110',{cursor:'x'})).rejects.toMatchObject({statusCode:422});
 expect((await db.query('SELECT count(*)::int AS n FROM rooms.report_reviews')).rows[0]).toMatchObject({n:90});
});
