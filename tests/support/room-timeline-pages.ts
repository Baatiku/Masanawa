import {seedModerationPages} from './room-moderation-pages.js';
export async function seedTimelinePages(execute:(sql:string)=>Promise<unknown>){
 await seedModerationPages(execute);
 await execute(`
 UPDATE rooms.lessons SET body='A literal 100%_# body' WHERE lesson_id='post_005';
 INSERT INTO identity.characters(tenant_id,character_id) VALUES('t','character_timeline');
 INSERT INTO rooms.masana_participants(tenant_id,room_id,character_id,active) VALUES('t','room_mod_pages','character_timeline',true);
 INSERT INTO rooms.questions(tenant_id,room_id,question_id,user_id,body,idempotency_key,state,target_character_id,source_lesson_id)
 SELECT 't','room_mod_pages','room-question_timeline_'||n,'bob','Mentioned reply context','mention_'||n,'answered','character_timeline','post_000' FROM generate_series(0,4)n;
 INSERT INTO rooms.answers(tenant_id,answer_id,question_id,teacher_character_id,body,state,reviewed_by,reviewed_at,created_at)
 SELECT 't','room-answer_timeline_'||n,'room-question_timeline_'||n,'character_timeline','Masana reply '||n,'approved','alice','2026-01-01','2026-01-01'::timestamptz+(100+n)*interval '1 microsecond' FROM generate_series(0,4)n;
 `);
}
