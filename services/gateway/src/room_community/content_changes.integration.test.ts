import {randomUUID} from 'node:crypto';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import Fastify from 'fastify';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {seedMediaPages} from '../../../../tests/support/room-media-pages.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';
const connection=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!connection)('PG18 author content revisions, recovery and rollback',()=>{
 const database='content_changes_'+randomUUID().replaceAll('-',''),member={tenantId:'t',userId:'bob'},base='room_mod_pages/community/';
 let admin:Pool,pool:Pool,service:ReturnType<typeof createRoomCommunityService>;
 beforeAll(async()=>{
  const url=new URL(connection!);if(!['127.0.0.1','localhost'].includes(url.hostname))throw new Error('requires-local-disposable-postgres');
  admin=createPostgresPool({connectionString:connection!,applicationName:'content-changes-admin'});await admin.query(`CREATE DATABASE "${database}"`);url.pathname='/'+database;
  pool=createPostgresPool({connectionString:url.toString(),applicationName:'content-changes-tests'});await seedMediaPages(sql=>pool.query(sql));
  service=createRoomCommunityService({pool,authorize:async({authorizationHeader})=>({tenantId:authorizationHeader==='foreign'?'other':'t',userId:authorizationHeader==='owner'?'alice':'bob'})});
 },30000);
 afterAll(async()=>{if(pool)await pool.end();if(admin){try{await admin.query(`DROP DATABASE IF EXISTS "${database}"`);}finally{await admin.end();}}});
 it('serializes identical original edits and competing different-key editors',async()=>{
  const payload={requestId:'duplicate',expectedRevision:0,body:'One accepted edit'};
  const duplicates=await Promise.all([1,2].map(()=>service.dispatch(member,'PATCH',base+'posts/post_001/content',payload)));
  expect(duplicates[0].receipt).toEqual(duplicates[1].receipt);
  expect((await pool.query("SELECT count(*)::int AS n FROM rooms.content_changes WHERE request_id='duplicate'")).rows[0].n).toBe(1);
  const races=await Promise.allSettled(['a','b'].map(key=>service.dispatch(member,'PATCH',base+'posts/post_002/content',{requestId:'race_'+key,expectedRevision:0,body:'Competing '+key})));
  expect(races.filter(v=>v.status==='fulfilled')).toHaveLength(1);
  expect((races.find(v=>v.status==='rejected') as PromiseRejectedResult).reason).toMatchObject({statusCode:409});
  expect((await pool.query("SELECT moderation_revision FROM rooms.lessons WHERE lesson_id='post_002'")).rows[0].moderation_revision).toBe(1);
 });
 it('rolls back a body change when restricted audit insertion fails',async()=>{
  await pool.query(`CREATE FUNCTION rooms.reject_content_test() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN IF NEW.request_id='reject_audit' THEN RAISE EXCEPTION 'fixture audit rejection'; END IF; RETURN NEW; END $$;
   CREATE TRIGGER reject_content_test BEFORE INSERT ON rooms.content_changes FOR EACH ROW EXECUTE FUNCTION rooms.reject_content_test()`);
  try{
   await expect(service.dispatch(member,'PATCH',base+'posts/post_003/content',{requestId:'reject_audit',expectedRevision:0,body:'Must roll back'})).rejects.toThrow('fixture audit rejection');
   expect((await pool.query("SELECT body,moderation_revision FROM rooms.lessons WHERE lesson_id='post_003'")).rows[0]).toEqual({body:'Post 3',moderation_revision:0});
   expect((await pool.query("SELECT count(*)::int AS n FROM rooms.content_changes WHERE request_id='reject_audit'")).rows[0].n).toBe(0);
  }finally{await pool.query('DROP TRIGGER reject_content_test ON rooms.content_changes;DROP FUNCTION rooms.reject_content_test()');}
 });
 it('preserves original creation replay after edit without duplicate content or provider work',async()=>{
  const create={body:'Original posted text',requestId:'original_creation'};
  const post=await service.dispatch(member,'POST',base+'timeline',create);
  const before=(await pool.query('SELECT count(*)::int AS n FROM events.outbox')).rows[0].n;
  await service.dispatch(member,'PATCH',base+'posts/'+post.id+'/content',{requestId:'edit_created',expectedRevision:0,body:'Edited posted text'});
  expect(await service.dispatch(member,'POST',base+'timeline',create)).toMatchObject({id:post.id,body:'Edited posted text',contentRevision:1});
  expect((await pool.query('SELECT count(*)::int AS n FROM events.outbox')).rows[0].n).toBe(before);
  expect((await pool.query("SELECT count(*)::int AS n FROM rooms.lessons WHERE idempotency_key='original_creation'")).rows[0].n).toBe(1);
 });
 it('HTTP recovers minimal actor receipts, removes child/media visibility and rechecks private membership',async()=>{
  const app=Fastify();registerRoomCommunityRoutes(app,service);
  try{
   const prefix='/v1/rooms/room_mod_pages/community/',headers={authorization:'member'};
   const edit=await app.inject({method:'PATCH',url:prefix+'replies/reply_000/content',headers,payload:{requestId:'edit_reply',expectedRevision:0,body:'Edited reply'}});
   expect(edit.statusCode).toBe(200);expect(edit.headers['cache-control']).toBe('no-store');
   const lookup='content-operations?requestId=edit_reply&targetKind=reply&targetId=reply_000';
   expect((await app.inject({method:'GET',url:prefix+lookup,headers:{authorization:'owner'}})).json().found).toBe(false);
   const remove=await app.inject({method:'DELETE',url:prefix+'posts/post_000/content',headers,payload:{requestId:'remove_parent',expectedRevision:0}});expect(remove.statusCode).toBe(200);
   const recovered=await app.inject({method:'GET',url:prefix+lookup,headers});expect(recovered.statusCode).toBe(200);expect(recovered.json().receipt).toMatchObject({requestId:'edit_reply',revision:1});expect(recovered.json().currentItem).toBeNull();
   expect(recovered.body).not.toMatch(/Edited reply|before_body|fingerprint/);
   expect((await app.inject({method:'GET',url:prefix+'media/media_001',headers})).statusCode).toBe(404);
   expect((await app.inject({method:'GET',url:prefix+lookup,headers:{authorization:'foreign'}})).statusCode).toBe(404);
   await pool.query("UPDATE rooms.memberships SET state='left' WHERE user_id='bob'");
   expect((await app.inject({method:'GET',url:prefix+lookup,headers})).statusCode).toBe(404);
  }finally{await app.close();}
 });
});
