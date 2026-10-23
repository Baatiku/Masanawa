import {seedModerationPages} from './room-moderation-pages.js';
export async function seedMediaPages(execute:(sql:string)=>Promise<unknown>){
 await seedModerationPages(execute);
 await execute(`
 INSERT INTO rooms.media(tenant_id,room_id,media_id,user_id,lesson_id,reply_id,kind,mime_type,name,size_bytes,data_base64,request_id,created_at)
 SELECT 't','room_mod_pages','media_'||lpad(n::text,3,'0'),'bob',CASE WHEN n%2=0 THEN 'post_000' END,CASE WHEN n%2=1 THEN 'reply_000' END,
  (ARRAY['image','video','voice','doc'])[n%4+1],'application/test',CASE WHEN n=5 THEN 'literal 100%_#.pdf' ELSE 'File '||n END,
  8,'cHJpdmF0ZQ==','media_req_'||n,'2026-01-01'::timestamptz+n/3*interval '1 microsecond' FROM generate_series(0,129)n;
 INSERT INTO rooms.media(tenant_id,room_id,media_id,user_id,lesson_id,reply_id,kind,mime_type,name,size_bytes,data_base64,request_id) VALUES
  ('t','room_mod_pages','unsent','bob',NULL,NULL,'doc','application/pdf','Private unsent',8,'cHJpdmF0ZQ==','unsent'),
  ('t','room_mod_pages','retired','bob','post_110',NULL,'doc','application/pdf','Retired source',8,'cHJpdmF0ZQ==','retired'),
  ('t','room_mod_pages','removed','bob',NULL,'reply_110','doc','application/pdf','Removed reply',8,'cHJpdmF0ZQ==','removed');
 `);
}
