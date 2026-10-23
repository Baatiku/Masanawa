import {readFileSync} from "node:fs";
import {describe,expect,it} from "vitest";
import {PGlite} from "@electric-sql/pglite";
import type {Pool} from "pg";
import {PgHomeFeedRepository} from "./repository.js";
import {PgSavedLibraryRepository} from "./saved_repository.js";

const migration=(file:string)=>readFileSync(
 new URL("../../../../../packages/feed/migrations/"+file,import.meta.url),"utf8");

describe("ST1 public human Status PostgreSQL-compatible migration and readback",()=>{
 it("preserves old posts and authenticates two human accounts through SQL",async()=>{
  const db=new PGlite();
  try {
   await db.exec(` CREATE SCHEMA identity; CREATE SCHEMA creator; CREATE SCHEMA talks; CREATE SCHEMA masana;
     CREATE TABLE identity.users(tenant_id text,user_id text,state text);
     CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
     CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text,owner_user_id text);
     CREATE TABLE creator.agents(tenant_id text,character_id text,owner_user_id text,state text);
     CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text,profile jsonb);
     CREATE TABLE masana.follows(tenant_id text,fan_user_id text,character_id text);
     CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text,avatar_url text);
     CREATE TABLE talks.follows(tenant_id text,follower_user_id text,followed_user_id text);
     INSERT INTO identity.users VALUES
       ('tenant','fanA','active'),('tenant','fanB','active'),
       ('foreign','fanA','active');
     INSERT INTO talks.public_profiles VALUES
       ('tenant','fanA','amina','Amina A.',NULL),
       ('tenant','fanB','musa','Musa B.',NULL);`);
   await db.exec(` CREATE SCHEMA external_videos;
     CREATE TABLE external_videos.items(tenant_id text NOT NULL,item_id uuid NOT NULL,
       provider text,source_url text,title text,channel_name text,review_state text,
       verified_at timestamptz,verification_reference text,
       PRIMARY KEY(tenant_id,item_id));`);
   await db.exec(` CREATE TABLE talks.safety_preferences(
    tenant_id text NOT NULL,viewer_user_id text NOT NULL,subject_user_id text NOT NULL,
    blocked boolean NOT NULL DEFAULT false,muted boolean NOT NULL DEFAULT false,
    updated_at timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY(tenant_id,viewer_user_id,subject_user_id));
    CREATE TABLE talks.safety_enforcement(
     tenant_id text NOT NULL,target_kind text NOT NULL,target_id text NOT NULL,
     revision integer NOT NULL,visibility text NOT NULL,reason_code text,
     updated_at timestamptz NOT NULL DEFAULT now(),
     PRIMARY KEY(tenant_id,target_kind,target_id)); `);
   await db.exec(migration("0001_feed.sql"));
   await db.exec(migration("0003_saved_videos.sql"));
   const old=await db.query<{id:string}>(
    "INSERT INTO feed.posts(tenant_id,author_masana_id,kind,body,idempotency_key,published_by) VALUES('tenant','masana-old','text','Historic approved body','legacy-abc0001','masana-old') RETURNING id");
   const oldId=old.rows[0]!.id;
   await db.exec(migration("0002_comment_threads.sql"));
   await db.exec(migration("0004_editorial_review.sql"));
   await db.exec(migration("0005_status_reactions.sql"));
   const expanded=migration("0006_human_public_status.sql");
   await db.exec(expanded);
   await db.exec(expanded);
   const historic=await db.query<{author_type:string;author_masana_id:string;id:string}>(
    "SELECT id,author_type,author_masana_id FROM feed.posts WHERE id=$1",[oldId]);
   expect(historic.rows[0]).toEqual({id:oldId,author_type:"masana",author_masana_id:"masana-old"});

   const repo=new PgHomeFeedRepository(db as unknown as Pool);
   const args={body:"First public human Status",audience:"public" as const,idempotencyKey:"human-post-key001"};
   const created=await repo.publishHumanText("tenant","fanA",args);
   expect(created.author).toMatchObject({type:"human",id:"fanA",handle:"amina",displayName:"Amina A."});
   expect(created.authorMasanaId).toBe("");
   expect((await repo.publishHumanText("tenant","fanA",args)).id).toBe(created.id);
   await expect(repo.publishHumanText("tenant","fanA",{...args,body:"Changed after uncertain response"}))
    .rejects.toMatchObject({status:409,code:"idempotency_conflict"});
   await expect(repo.publishHumanText("foreign","fanA",{...args,idempotencyKey:"human-foreign001"}))
    .rejects.toMatchObject({status:403,code:"human_profile_unavailable"});
   expect((await repo.list("tenant","fanB","for_you",null,21)).map(p=>p.id)).toContain(created.id);
   expect((await repo.list("tenant","fanA","mine",null,21)).map(p=>p.id))
    .toEqual([created.id]);
   expect(await repo.list("tenant","fanB","mine",null,21)).toHaveLength(0);
   // Search is evaluated by the same SQL authorization predicate as the feed,
   // not by filtering a downloaded first page. Percent/underscore are literal.
   await db.query(`INSERT INTO feed.posts(tenant_id,author_type,author_user_id,
     author_masana_id,audience,kind,body,media_ids,idempotency_key,published_by,published_at)
    SELECT 'tenant','human','fanA',NULL,'public','text',
      CASE WHEN i=1 THEN 'River%actual' WHEN i=2 THEN 'River_actual'
           ELSE 'River chapter '||i::text END,
      ARRAY[]::text[],'river-search-'||i::text,'fanA',
      now()-make_interval(secs=>i::int) FROM generate_series(1,31) i`);
   const hits=await repo.list('tenant','fanB','for_you',null,21,undefined,'river');
   expect(hits).toHaveLength(21);
   const last=hits[20]!;
   const older=await repo.list('tenant','fanB','for_you',
     {at:last.publishedAt,id:last.id},21,undefined,'river');
   expect(older).toHaveLength(10);
   expect(new Set([...hits,...older].map(p=>p.id)).size).toBe(31);
   expect((await repo.list('tenant','fanB','for_you',null,21,undefined,'River%')).map(p=>p.body))
     .toEqual(['River%actual']);
   expect((await repo.list('tenant','fanB','for_you',null,21,undefined,'River_')).map(p=>p.body))
     .toEqual(['River_actual']);
   // In comment queries $2 is post UUID and $3 is the viewer.
   expect(await repo.comments("tenant",created.id,"fanB",null,20)).toEqual([]);
   await repo.setSave("tenant","fanB",created.id,true);
   const savedRepo=new PgSavedLibraryRepository(db as unknown as Pool);
   const saved=await savedRepo.list("tenant","fanB",null,20);
   expect(saved).toHaveLength(1);
   expect(saved[0]?.post?.author).toMatchObject({type:"human",id:"fanA",handle:"amina"});
   await db.query("INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked) VALUES('tenant','fanB','fanA',true)");
   expect(await repo.find("tenant","fanB",created.id)).toBeNull();
   expect(await savedRepo.list("tenant","fanB",null,20)).toHaveLength(0);
   expect(await repo.list("tenant","fanB","for_you",null,21,undefined,"river")).toHaveLength(0);
   // Leave this pre-existing lifecycle test's later own-post counts unchanged.
   await db.query("DELETE FROM feed.posts WHERE tenant_id='tenant' AND idempotency_key LIKE 'river-search-%'");
   await db.query("DELETE FROM talks.safety_preferences");
   await db.query("INSERT INTO talks.safety_enforcement(tenant_id,target_kind,target_id,revision,visibility,reason_code) VALUES('tenant','profile','amina',1,'blocked','fraud')");
   expect(await repo.find("tenant","fanB",created.id)).toBeNull();
   expect(await savedRepo.list("tenant","fanB",null,20)).toHaveLength(0);
   await expect(repo.editHumanText("tenant","fanA",created.id,args.body,"Invisible edit"))
    .rejects.toMatchObject({status:404});
   const unchanged=await db.query<{body:string}>("SELECT body FROM feed.posts WHERE id=$1",[created.id]);
   expect(unchanged.rows[0]?.body).toBe(args.body);
   await expect(repo.publishHumanText("tenant","fanA",{...args,idempotencyKey:"human-restricted001"}))
    .rejects.toMatchObject({status:403,code:"human_profile_unavailable"});
   await db.query("DELETE FROM talks.safety_enforcement");
   await db.query("INSERT INTO talks.follows VALUES('tenant','fanB','fanA')");
   expect((await repo.list("tenant","fanB","following",null,21)).map(p=>p.id)).toContain(created.id);
   expect(await repo.list("tenant","fanB","mine",null,21)).toHaveLength(0);
   expect((await repo.list("tenant","fanA","following",null,21))).toHaveLength(0);
   await db.query("UPDATE identity.users SET state='disabled' WHERE tenant_id='tenant' AND user_id='fanA'");
   expect(await repo.find("tenant","fanB",created.id)).toBeNull();
   expect(await savedRepo.list("tenant","fanB",null,20)).toHaveLength(0);
   await expect(repo.publishHumanText("tenant","fanA",{...args,idempotencyKey:"human-disabled001"}))
    .rejects.toMatchObject({status:403});
   await db.query("UPDATE identity.users SET state='active' WHERE tenant_id='tenant' AND user_id='fanA'");
   expect((await repo.find("tenant","fanB",created.id))?.id).toBe(created.id);
   // Two accounts, CAS editing, idempotent removal and original audit row.
   await expect(repo.editHumanText("tenant","fanB",created.id,args.body,"Other edit"))
    .rejects.toMatchObject({status:404});
   const updated=await repo.editHumanText("tenant","fanA",created.id,args.body,"Edited public Status");
   expect(updated.body).toBe("Edited public Status");
   expect((await repo.editHumanText("tenant","fanA",created.id,args.body,"Edited public Status")).body)
    .toBe("Edited public Status");
   await expect(repo.editHumanText("tenant","fanA",created.id,args.body,"Stale overwrite"))
    .rejects.toMatchObject({status:409,code:"post_edit_conflict"});
   await expect(repo.editHumanText("tenant","fanA",oldId,"Historic approved body","Cannot edit Masana"))
    .rejects.toMatchObject({status:404});
   await expect(repo.removeHumanPost("tenant","fanB",created.id))
    .rejects.toMatchObject({status:404});
   expect(await repo.removeHumanPost("tenant","fanA",created.id))
    .toEqual({id:created.id,state:"removed"});
   expect(await repo.removeHumanPost("tenant","fanA",created.id))
    .toEqual({id:created.id,state:"removed"});
   expect(await repo.find("tenant","fanA",created.id)).toBeNull();
   expect(await repo.find("tenant","fanB",created.id)).toBeNull();
   expect(await repo.list("tenant","fanA","mine",null,21)).toHaveLength(0);
   expect((await repo.list("tenant","fanB","for_you",null,21)).map(p=>p.id))
    .not.toContain(created.id);
   expect(await savedRepo.list("tenant","fanB",null,20)).toHaveLength(0);
   expect(await repo.comments("tenant",created.id,"fanA",null,20)).toHaveLength(0);
   await expect(repo.editHumanText("tenant","fanA",created.id,"Edited public Status","Undo removal"))
    .rejects.toMatchObject({status:404});
   const retained=await db.query<{state:string}>(
    "SELECT state FROM feed.posts WHERE tenant_id='tenant' AND id=$1",[created.id]);
   expect(retained.rows[0]?.state).toBe("removed");
   const totals=await db.query<{n:number}>("SELECT count(*)::int AS n FROM feed.posts WHERE tenant_id='tenant' AND author_type='human'");
   expect(totals.rows[0]?.n).toBe(1);
  } finally {await db.close();}
 },25000);
});
