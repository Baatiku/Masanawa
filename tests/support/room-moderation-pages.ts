import {seedRoomCommunityTestDatabase} from './room-community-database.js';
export async function seedModerationPages(execute:(sql:string)=>Promise<unknown>){
 await seedRoomCommunityTestDatabase(execute);
 await execute(`
 INSERT INTO rooms.rooms(tenant_id,room_id,slug,profession_title,state,visibility,owner_user_id) VALUES('t','room_mod_pages','moderation-pages','Moderation pages','published','private','alice');
 INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role) VALUES('t','room_mod_pages','alice','owner'),('t','room_mod_pages','bob','member'),('t','room_mod_pages','eve','admin');
 INSERT INTO rooms.lessons(tenant_id,room_id,lesson_id,kind,body,state,author_user_id,created_at,moderation_revision,removed_by_review_id)
 SELECT 't','room_mod_pages','post_'||lpad(n::text,3,'0'),'announcement','Post '||n,CASE WHEN n<110 THEN 'published' ELSE 'retired' END,'bob','2026-01-01'::timestamptz+n/3*interval '1 microsecond',CASE WHEN n<110 THEN 0 ELSE 1 END,CASE WHEN n>=110 THEN 'review_post_'||n END FROM generate_series(0,154) n;
 INSERT INTO rooms.discussion_replies(tenant_id,room_id,reply_id,lesson_id,user_id,body,moderation_state,created_at,moderation_revision,removed_by_review_id)
 SELECT 't','room_mod_pages','reply_'||lpad(n::text,3,'0'),'post_000','bob','Reply '||n,CASE WHEN n<110 THEN 'visible' ELSE 'removed' END,'2026-01-01'::timestamptz+n/3*interval '1 microsecond',CASE WHEN n<110 THEN 0 ELSE 1 END,CASE WHEN n>=110 THEN 'review_reply_'||n END FROM generate_series(0,154) n;
 INSERT INTO rooms.reports(tenant_id,room_id,report_id,user_id,target_id,target_kind,reason,request_id,created_at)
 SELECT 't','room_mod_pages','report_'||kind||n,'eve',kind||'_'||lpad(n::text,3,'0'),kind,'Confidential reporter evidence','request_'||kind||n,'2026-02-01' FROM generate_series(0,109) n CROSS JOIN (VALUES('post'),('reply')) AS kinds(kind);
 INSERT INTO rooms.report_reviews(tenant_id,room_id,review_id,target_id,target_kind,target_author_user_id,target_revision,public_reason,reviewer_user_id,request_id,decision,report_count,reviewed_at)
 SELECT 't','room_mod_pages','review_'||kind||'_'||n,kind||'_'||lpad(n::text,3,'0'),kind,'bob',1,'Public removal reason','alice','review_request_'||kind||n,'removed',1,'2026-03-01'::timestamptz+n/3*interval '1 microsecond' FROM generate_series(110,154) n CROSS JOIN (VALUES('post'),('reply')) AS kinds(kind);
 INSERT INTO rooms.moderation_appeals(tenant_id,room_id,appeal_id,review_id,author_user_id,request_id,reason,created_at)
 SELECT tenant_id,room_id,'appeal_'||review_id,review_id,'bob','appeal_request_'||review_id,'Author appeal reason',reviewed_at FROM rooms.report_reviews;
 UPDATE rooms.moderation_appeals SET state='upheld',decided_at='2026-04-01',decided_by_user_id='alice',decision_request_id='decision_'||appeal_id,public_reason='Public appeal decision' WHERE right(appeal_id,3)::int%2=0;
 `);
}
