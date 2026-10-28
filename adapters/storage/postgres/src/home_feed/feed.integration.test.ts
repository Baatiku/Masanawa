import {readFileSync} from "node:fs";
import {afterAll,beforeAll,describe,expect,it} from "vitest";
import {createIsolatedPostgresTestDatabase} from "./isolated_test_database.js";
import {SavedLibraryService} from "@masanawa/feed";
import {PgSavedLibraryRepository} from "./saved_repository.js";
import {FeedService} from "@masanawa/feed";
import {PgHomeFeedRepository} from "./repository.js";
import {PgEditorialReviewRepository} from "./review_repository.js";
import {PgStatusPromotions} from "./promotions.js";
const conn=process.env.MASANAWA_TEST_DATABASE_URL;
const integration=conn?describe:describe.skip;
integration("J06 real PostgreSQL18 Feed tenant/idempotency/visibility",()=>{
 let isolated:Awaited<ReturnType<typeof createIsolatedPostgresTestDatabase>>;
 let repo:PgHomeFeedRepository;
 let legacyCommentId="";
 beforeAll(async()=>{
  isolated=await createIsolatedPostgresTestDatabase(conn!);
  const {pool}=isolated;
  await pool.query(readFileSync(new URL("../../../../../packages/events/migrations/0001_event_foundation.sql",import.meta.url),"utf8"));
  // Minimal canonical identity tables for real author eligibility. Production
  // ownership remains in identity; these exist only in this disposable database.
  await pool.query(`CREATE SCHEMA identity; CREATE SCHEMA creator; CREATE TABLE creator.agents(tenant_id text,character_id text,owner_user_id text,state text); CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE identity.characters(tenant_id text,character_id text,state text,PRIMARY KEY(tenant_id,character_id));
   CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text,owner_user_id text,PRIMARY KEY(tenant_id,character_id));
   INSERT INTO identity.characters VALUES('tenant_test','masana_one','active'),('tenant_thread','masana_one','active');
   INSERT INTO identity.character_ownership(tenant_id,character_id,kind) VALUES('tenant_test','masana_one','platform'),('tenant_thread','masana_one','platform');`);
  await pool.query("CREATE SCHEMA talks");
  await pool.query(readFileSync(new URL("../../../../../packages/talks/migrations/0003_talk_profiles.sql",import.meta.url),"utf8"));
  await pool.query(readFileSync(new URL("../../../../../packages/talks/migrations/0009_talk_safety.sql",import.meta.url),"utf8"));
  await pool.query("INSERT INTO identity.users(tenant_id,user_id,state) VALUES('tenant_test','fan_one','active')");
  await pool.query("INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES('tenant_test','fan_one','musa_verified','Musa Verified')");
  await pool.query("CREATE SCHEMA masana; CREATE TABLE masana.character_media(tenant_id text, character_id text, media_id text, rights_note text, approved_by text, object_key text, kind text); CREATE TABLE masana.follows(tenant_id text NOT NULL,fan_user_id text NOT NULL,character_id text NOT NULL,PRIMARY KEY(tenant_id,fan_user_id,character_id)); CREATE TABLE masana.character_revisions(tenant_id text NOT NULL,character_id text NOT NULL,state text NOT NULL,profile jsonb NOT NULL); INSERT INTO masana.character_revisions VALUES ('tenant_test','masana_one','approved','{\"displayName\":\"Teacher\"}'::jsonb)");
  await pool.query(readFileSync(new URL("../../../../../packages/feed/migrations/0001_feed.sql",import.meta.url),"utf8"));
  // Simulate the forward-only upgrade with existing historic comments, before C22.
  const old=await pool.query("INSERT INTO feed.posts(tenant_id,author_masana_id,kind,body,idempotency_key,published_by) VALUES('tenant_upgrade','masana_one','text','Old discussion','legacy-post-001','staff_upgrader') RETURNING id");
  const legacy=await pool.query("INSERT INTO feed.comments(tenant_id,post_id,fan_id,body,state,idempotency_key) VALUES('tenant_upgrade',$1,'fan_old','Historic question','visible','legacy-comment-001') RETURNING id",[old.rows[0]!.id]);
  legacyCommentId=String(legacy.rows[0]!.id);
  const threadMigration=readFileSync(new URL("../../../../../packages/feed/migrations/0002_comment_threads.sql",import.meta.url),"utf8");
  await pool.query(threadMigration);
  await pool.query(threadMigration); // idempotent upgrade rehearsal, never rewrite 0001
  await pool.query("INSERT INTO masana.character_revisions(tenant_id,character_id,state,profile) VALUES('tenant_thread','masana_one','approved',jsonb_build_object('displayName','Teacher'))");
  await pool.query(readFileSync(new URL("../../../../../packages/feed/migrations/0004_editorial_review.sql",import.meta.url),"utf8"));
  const reactionMigration=readFileSync(new URL("../../../../../packages/feed/migrations/0005_status_reactions.sql",import.meta.url),"utf8");
  await pool.query(reactionMigration);
  await pool.query(reactionMigration); // safe expand-only rerun
  const humanMigration=readFileSync(new URL("../../../../../packages/feed/migrations/0006_human_public_status.sql",import.meta.url),"utf8");
  await pool.query(humanMigration);
  await pool.query(humanMigration); // historic Masana IDs retained and idempotent
  await pool.query(readFileSync(new URL("../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql",import.meta.url),"utf8"));
  await pool.query(readFileSync(new URL("../../../../../packages/feed/migrations/0007_paid_promotions.sql",import.meta.url),"utf8"));
  // The real PostgreSQL feed integration fixture must mirror every active
  // forward-only paid promotion migration before querying reviewed CTA fields.
  for(const name of [
   "0008_paid_media_deletion_outbox.sql","0009_view_challenge_abuse_index.sql",
   "0010_promotion_rejection_appeals.sql","0011_promotion_budget_immutability.sql",
   "0012_reviewed_paid_post_edits.sql","0013_campaign_drafts_and_expiry.sql","0014_paid_image_uploads.sql","0015_paid_policy_review_evidence.sql","0016_extension_quotes_and_reports.sql",
  ])await pool.query(readFileSync(new URL("../../../../../packages/feed/migrations/"+name,import.meta.url),"utf8"));
  repo=new PgHomeFeedRepository(pool);
 });
 afterAll(async()=>{await isolated?.close();});
 it("ST0/ST4 pages microsecond ties through service cursors on real PG18",async()=>{
  const pool=isolated.pool;
  await pool.query(`INSERT INTO identity.users VALUES
    ('tenant_precision','precision_author','active'),('tenant_precision','precision_viewer','active');
    INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES
    ('tenant_precision','precision_author','precision_author','Precision Author');
    INSERT INTO talks.follows(tenant_id,follower_user_id,followed_user_id,created_at) VALUES
    ('tenant_precision','precision_viewer','precision_author',now());
    INSERT INTO identity.characters VALUES ('tenant_precision','precision_masana','active');
    INSERT INTO identity.character_ownership(tenant_id,character_id,kind) VALUES ('tenant_precision','precision_masana','platform');
    INSERT INTO masana.character_revisions VALUES ('tenant_precision','precision_masana','approved','{"displayName":"Precision Masana"}'::jsonb);
    INSERT INTO masana.follows VALUES ('tenant_precision','precision_viewer','precision_masana');
    INSERT INTO feed.posts(tenant_id,author_type,author_user_id,author_masana_id,
      audience,kind,body,media_ids,idempotency_key,published_by,published_at)
    SELECT 'tenant_precision','masana',NULL,'precision_masana','public','text',
      'Precision needle '||n,ARRAY[]::text[],'precision-page-'||n,'precision_author',
      '2026-10-01T10:00:00.123456Z'::timestamptz +
        CASE WHEN n=32 THEN interval '1 microsecond'
             WHEN n=33 THEN interval '-1 microsecond' ELSE interval '0' END
    FROM generate_series(1,33)n`);
  const service=new FeedService(repo,async()=>true);
  for(const mode of ['for_you','following'] as const){
   for(const search of [undefined,'Precision needle']){
    const viewer='precision_viewer';
    const first=await service.list('tenant_precision',viewer,mode,undefined,undefined,search);
    expect(first.items).toHaveLength(20);
    expect(first.nextCursor).toBeTruthy();
    expect(first.items[19]!.publishedAt).toBe('2026-10-01T10:00:00.123456Z');
    const second=await service.list('tenant_precision',viewer,mode,first.nextCursor!,undefined,search);
    expect(second.items).toHaveLength(13);
    expect(second.nextCursor).toBeNull();
    expect(new Set([...first.items,...second.items].map(p=>p.id)).size).toBe(33);
    expect(second.items[12]!.publishedAt).toBe('2026-10-01T10:00:00.123455Z');
   }
  }
  await pool.query(`CREATE SCHEMA external_videos;
    CREATE TABLE external_videos.items(tenant_id text,item_id uuid,provider text,
      source_url text,title text,channel_name text,review_state text,
      verified_at timestamptz,verification_reference text,PRIMARY KEY(tenant_id,item_id));`);
  await pool.query(readFileSync(new URL("../../../../../packages/feed/migrations/0003_saved_videos.sql",import.meta.url),"utf8"));
  await pool.query(`INSERT INTO feed.saves(tenant_id,post_id,fan_id,created_at)
    SELECT tenant_id,id,'precision_viewer','2026-10-01T10:00:00.123456Z'
    FROM feed.posts WHERE tenant_id='tenant_precision';
    INSERT INTO external_videos.items VALUES
      ('tenant_precision','aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','youtube','https://example.invalid/1','One','Public','approved',now(),'fixture-1'),
      ('tenant_precision','bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb','youtube','https://example.invalid/2','Two','Public','approved',now(),'fixture-2');
    INSERT INTO feed.saved_videos(tenant_id,video_id,fan_id,created_at)
    SELECT tenant_id,item_id,'precision_viewer','2026-10-01T10:00:00.123456Z'
    FROM external_videos.items;`);
  const saved=new SavedLibraryService(new PgSavedLibraryRepository(pool));
  const actor={kind:'fan' as const,tenantId:'tenant_precision',id:'precision_viewer'};
  const firstSaved=await saved.list(actor);
  expect(firstSaved.items).toHaveLength(20);
  expect(firstSaved.items[19]!.savedAt).toBe('2026-10-01T10:00:00.123456Z');
  const secondSaved=await saved.list(actor,firstSaved.nextCursor!);
  expect(secondSaved.items).toHaveLength(13);
  expect(secondSaved.nextCursor).toBeNull();
  expect(new Set([...firstSaved.items,...secondSaved.items].map(p=>p.kind+':'+p.id)).size).toBe(33);
  expect(firstSaved.items.every(p=>p.kind==='post')).toBe(true);
  expect((await pool.query("SELECT count(*)::int AS n FROM feed.saved_videos WHERE tenant_id='tenant_precision'")).rows[0]?.n).toBe(2);
  expect((await saved.list({...actor,id:'precision_author'})).items).toEqual([]);

 });
 it("publishes once on stable key and rejects changed payload",async()=>{
  const value={authorMasanaId:"masana_one",kind:"text",body:"Welcome",media:[],transcript:null,idempotencyKey:"request-publish-001"};
  const first=await repo.publish("tenant_test","masana_one",value);
  expect((await repo.publish("tenant_test","masana_one",value)).id).toBe(first.id);
  await expect(repo.publish("tenant_test","masana_one",{...value,body:"Modified"})).rejects.toMatchObject({code:"idempotency_conflict"});
  expect((await repo.list("tenant_test",null,"for_you",null,30))).toHaveLength(1);
  expect((await repo.list("tenant_other",null,"for_you",null,30))).toHaveLength(0);
  expect((await repo.find("tenant_test","fan_one",first.id))?.verifiedViewCount).toBe(0);
 });
 it('joins only reviewed funded human campaigns to the existing Home and Saved projections, then hides on exhaustion',async()=>{
  const pool=isolated.pool;
  await pool.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
    VALUES('tenant_test','human','fan_one',6) ON CONFLICT DO NOTHING`);
  const paid=new PgStatusPromotions(pool,'long-test-secret-for-real-postgres-qualified-home',
    'https://status.example.test');
  const q=await paid.quote({tenantId:'tenant_test',sponsorId:'fan_one',
    body:'Paid lesson for all readers',targetViews:2});
  const campaign=await paid.confirm('tenant_test','fan_one',q.quoteId,'original-home-paid-0001');
  const mixed=new FeedService(repo,async()=>true,async()=>false,false);
  expect((await mixed.list('tenant_test','fan_other','for_you',undefined,undefined,'Paid lesson')).items).toEqual([]);
  await paid.review('tenant_test','distinct_staff',campaign.id,true);
  const items=(await mixed.list('tenant_test','fan_other','for_you',undefined,undefined,'Paid lesson')).items;
  expect(items).toHaveLength(1);
  expect(items[0]).toMatchObject({id:campaign.postId,author:{type:'human',id:'fan_one',
    handle:'musa_verified'},verifiedViewCount:0,promotionActive:true,
    shareEarnEligible:true,boostEligible:true});
  await repo.setSave('tenant_test','fan_other',campaign.postId,true);
  expect((await new PgSavedLibraryRepository(pool).list('tenant_test','fan_other',null,10))[0]?.post)
    .toMatchObject({id:campaign.postId,verifiedViewCount:0,promotionActive:true});
  for(const viewer of ['distinct_viewer_a','distinct_viewer_b']){
   const challenge=await paid.beginView('tenant_test',viewer,campaign.postId);
   await pool.query(`UPDATE feed.view_challenges SET started_at=statement_timestamp()-interval '7 seconds'
      WHERE id=$1`,[challenge.challengeId]);
   expect(await paid.finishView('tenant_test',viewer,challenge.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true})).toMatchObject({qualified:true,payable:true});
  }
  expect((await mixed.list('tenant_test','fan_other','for_you',undefined,undefined,'Paid lesson')).items).toEqual([]);
  expect(await new PgSavedLibraryRepository(pool).list('tenant_test','fan_other',null,10)).toEqual([]);
  expect((await paid.mine('tenant_test','fan_one')).inactivePosts).toEqual([
    expect.objectContaining({postId:campaign.postId})]);
 });
 it('serializes two real-PG last views across independent Boost sponsors without overcharging',async()=>{
  const pool=isolated.pool;
  const t='tenant_boost_race';
  await pool.query(`INSERT INTO identity.users(tenant_id,user_id,state) VALUES
   ($1,'owner','active'),($1,'sponsor','active'),($1,'viewer_a','active'),($1,'viewer_b','active')`,[t]);
  await pool.query(`INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name) VALUES
   ($1,'owner','race_owner','Race owner'),($1,'sponsor','race_sponsor','Race sponsor')`,[t]);
  await pool.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
   VALUES($1,'human','owner',1),($1,'human','sponsor',1)`,[t]);
  const payments=new PgStatusPromotions(pool,'boost-postgres-race-secret-with-real-entropy',
   'https://status.example.test');
  const originalQuote=await payments.quote({tenantId:t,sponsorId:'owner',
   body:'Two independently funded qualified exposures',targetViews:1});
  const original=await payments.confirm(t,'owner',originalQuote.quoteId,
   'race-primary-confirm-001');
  await payments.review(t,'independent_staff',original.id,true);
  const boostQuote=await payments.quote({tenantId:t,sponsorId:'sponsor',
   postId:original.postId,targetViews:1});
  const boost=await payments.confirm(t,'sponsor',boostQuote.quoteId,
   'race-boost-confirm-001');
  const [first,second]=await Promise.all([
   payments.beginView(t,'viewer_a',original.postId),
   payments.beginView(t,'viewer_b',original.postId),
  ]);
  await pool.query(`UPDATE feed.view_challenges SET started_at=statement_timestamp()-interval '7 seconds'
   WHERE tenant_id=$1 AND id=ANY($2::uuid[])`,[t,[first.challengeId,second.challengeId]]);
  const [a,b]=await Promise.all([
   payments.finishView(t,'viewer_a',first.challengeId,
    {visibleFraction:0.9,foreground:true,engaged:true}),
   payments.finishView(t,'viewer_b',second.challengeId,
    {visibleFraction:0.9,foreground:true,engaged:true}),
  ]);
  expect(a).toMatchObject({qualified:true,payable:true});
  expect(b).toMatchObject({qualified:true,payable:true});
  expect(await payments.finishView(t,'viewer_a',first.challengeId,
   {visibleFraction:0.9,foreground:true,engaged:true}))
   .toMatchObject({qualified:false,duplicate:true});
  const totals=await pool.query(`SELECT c.campaign_id::text AS id,
   count(*)::int AS charges,sum(c.platform_half_mb+c.sharer_half_mb)::int AS half_mb
   FROM feed.promotion_view_charges c WHERE c.tenant_id=$1
   GROUP BY c.campaign_id ORDER BY id`,[t]);
  expect(totals.rows).toEqual(expect.arrayContaining([
   {id:original.id,charges:1,half_mb:2},
   {id:boost.id,charges:1,half_mb:2},
  ]));
  const balances=await pool.query(`SELECT account_id,purchased_mb::int AS purchased,
   reserved_purchased_mb::int AS reserved FROM gb_wallet.accounts
   WHERE tenant_id=$1 ORDER BY account_id`,[t]);
  expect(balances.rows).toEqual([
   {account_id:'owner',purchased:0,reserved:0},
   {account_id:'sponsor',purchased:0,reserved:0},
  ]);
  const post=await pool.query(`SELECT state,
   EXTRACT(EPOCH FROM (paid_purge_at-paid_disabled_at))::int AS grace_seconds
   FROM feed.posts WHERE tenant_id=$1 AND id=$2`,[t,original.postId]);
  expect(post.rows[0]).toEqual({state:'hidden',grace_seconds:259200});
  await expect(payments.beginView(t,'viewer_a',original.postId))
   .rejects.toMatchObject({code:'post_not_found'});
 });
 it('reveals reviewed campaign CTA only after approval and only with eligible public post',async()=>{
  const pool=isolated.pool;
  const paid=new PgStatusPromotions(pool,'long-test-secret-for-real-postgres-qualified-home',
   'https://status.example.test');
  const q=await paid.quote({tenantId:'tenant_test',sponsorId:'fan_one',
   body:'Reviewed destination content',targetViews:1,destinationUrl:'https://example.org/resources'});
  const c=await paid.confirm('tenant_test','fan_one',q.quoteId,'original-cta-home-0001');
  const mixed=new FeedService(repo,async()=>true,async()=>false,false);
  expect((await mixed.list('tenant_test','fan_other','for_you',undefined,undefined,
    'Reviewed destination content')).items).toEqual([]);
  await paid.review('tenant_test','distinct_staff',c.id,true,'External destination inspected');
  expect((await mixed.list('tenant_test','fan_other','for_you',undefined,undefined,
    'Reviewed destination content')).items).toEqual([
      expect.objectContaining({id:c.postId,destinationUrl:'https://example.org/resources'})
    ]);
  expect((await mixed.list('tenant_other','fan_other','for_you',undefined,undefined,
    'Reviewed destination content')).items).toEqual([]);
  await paid.cancel('tenant_test','fan_one',c.id);
  expect((await mixed.list('tenant_test','fan_other','for_you',undefined,undefined,
    'Reviewed destination content')).items).toEqual([]);
 });
 it("following uses the authoritative masana.follows table",async()=>{
  await isolated.pool.query("INSERT INTO masana.follows(tenant_id,fan_user_id,character_id) VALUES($1,$2,$3)",["tenant_test","fan_one","masana_one"]);
  expect((await repo.list("tenant_test","fan_one","following",null,30))).toHaveLength(1);
  expect((await repo.list("tenant_test","fan_other","following",null,30))).toHaveLength(0);
 });
 it("likes, saves, and pending comments remain tenant and fan fenced",async()=>{
  const [p]=await repo.list("tenant_test",null,"for_you",null,20);
  expect(p).toBeDefined();const id=p!.id;
  await repo.setLike("tenant_test","fan_one",id,true);
  await repo.setLike("tenant_test","fan_one",id,true);
  await repo.setSave("tenant_test","fan_one",id,true);
  expect((await repo.find("tenant_test","fan_one",id))!.likeCount).toBe(1);
  expect((await repo.find("tenant_test","fan_other",id))!.viewerSaved).toBe(false);
  const c=await repo.comment("tenant_test","fan_one",id,"My question","request-comment-001",true);
  expect(c.state).toBe("pending");
  const second=await repo.comment("tenant_test","fan_one",id,"My question","request-comment-001",true);
  expect(second.id).toBe(c.id);
  await expect(repo.comment("tenant_test","fan_one",id,"different","request-comment-001",true)).rejects.toMatchObject({code:"idempotency_conflict"});
  const visible=await repo.comments("tenant_test",id,"fan_one",null,30);
  expect(visible).toHaveLength(1);
  expect(visible[0]?.author).toEqual({type:"human",id:"fan_one",handle:"musa_verified",displayName:"Musa Verified"});
  expect((await repo.find("tenant_test","fan_one",id))?.author)
   .toEqual({type:"masana",id:"masana_one",displayName:"Teacher"});
  await isolated.pool.query("UPDATE identity.users SET state='disabled' WHERE tenant_id='tenant_test' AND user_id='fan_one'");
  expect((await repo.comments("tenant_test",id,"fan_one",null,30))[0]?.author).toBeNull();
  await isolated.pool.query("UPDATE identity.users SET state='active' WHERE tenant_id='tenant_test' AND user_id='fan_one'");

  expect((await repo.comments("tenant_test",id,"fan_other",null,30))).toHaveLength(0);
  const tasks=await isolated.pool.query("SELECT * FROM events.outbox WHERE tenant_id=$1 AND event_type=$2",["tenant_test","feed.comment.pending"]);
  expect(tasks.rows).toHaveLength(1);
 });
 it("ST2 one historic Like becomes Like/Love/Care without duplicating the actor",async()=>{
  const p=await repo.find("tenant_test","fan_one",(await repo.list("tenant_test","fan_one","for_you",null,20))[0]!.id);
  expect(p).toBeDefined();
  const id=p!.id;
  const original=await repo.find("tenant_test","fan_one",id);
  expect(original?.viewerReaction).toBe("like");
  expect(original?.likeCount).toBe(1);
  expect(await repo.setReaction("tenant_test","fan_one",id,"love")).toBe("love");
  const loved=await repo.find("tenant_test","fan_one",id);
  expect(loved?.viewerReaction).toBe("love");
  expect(loved?.likeCount).toBe(0);
  expect(loved?.reactionCounts?.love).toBe(1);
  await repo.setReaction("tenant_test","fan_one",id,"care");
  const changed=await repo.find("tenant_test","fan_one",id);
  expect(changed?.reactionCounts?.care).toBe(1);
  expect(changed?.reactionCounts?.love).toBeUndefined();
  expect((await isolated.pool.query("SELECT count(*)::int AS n FROM feed.likes WHERE tenant_id=$1 AND post_id=$2 AND fan_id=$3",
   ["tenant_test",id,"fan_one"])).rows[0]?.n).toBe(1);
  await repo.setReaction("tenant_test","fan_one",id,null);
  expect((await repo.find("tenant_test","fan_one",id))?.viewerReaction).toBeNull();
 });
 it("C22 keeps historic comment bytes intact across forward-only migration",async()=>{
  const rows=await isolated.pool.query("SELECT body,fan_id,parent_comment_id FROM feed.comments WHERE tenant_id='tenant_upgrade' AND id=$1::uuid",[legacyCommentId]);
  expect(rows.rows).toEqual([{body:"Historic question",fan_id:"fan_old",parent_comment_id:null}]);
 });
 it("C22 real PG accepts visible top-level replies and preserves idempotency",async()=>{
  const p=await repo.publish("tenant_thread","masana_one",{authorMasanaId:"masana_one",kind:"text",
   body:"Study circle",media:[],transcript:null,idempotencyKey:"thread-post-001"});
  const root=await repo.comment("tenant_thread","fan_one",p.id,"First question","thread-root-001",false);
  const child=await repo.comment("tenant_thread","fan_two",p.id,"Answer","thread-child-001",false,root.id);
  expect(child.parentId).toBe(root.id);
  expect((await repo.comment("tenant_thread","fan_two",p.id,"Answer","thread-child-001",false,root.id)).id).toBe(child.id);
  await expect(repo.comment("tenant_thread","fan_two",p.id,"Answer","thread-child-001",false,null)).rejects.toMatchObject({code:"idempotency_conflict"});
  await expect(repo.comment("tenant_thread","fan_three",p.id,"Nested","thread-nested-001",false,child.id)).rejects.toMatchObject({code:"idempotency_conflict"});
  const hidden=await repo.comment("tenant_thread","fan_hidden",p.id,"Awaiting review","thread-pending-001",true);
  await expect(repo.comment("tenant_thread","fan_three",p.id,"Cannot reply pending","thread-pending-child-001",false,hidden.id)).rejects.toMatchObject({code:"idempotency_conflict"});
  const q=await repo.publish("tenant_thread","masana_one",{authorMasanaId:"masana_one",kind:"text",
   body:"Second discussion",media:[],transcript:null,idempotencyKey:"thread-post-002"});
  await expect(repo.comment("tenant_thread","fan_three",q.id,"Cross post","thread-cross-001",false,root.id)).rejects.toMatchObject({code:"idempotency_conflict"});
  const newest=await repo.comments("tenant_thread",p.id,"fan_two",null,30,"newest");
  const oldest=await repo.comments("tenant_thread",p.id,"fan_two",null,30,"oldest");
  expect(newest.map(c=>c.id)).toEqual([...oldest].reverse().map(c=>c.id));
  expect((await repo.comments("tenant_thread",p.id,"fan_other",null,30)).every(c=>c.id!==hidden.id)).toBe(true);
  const task=await isolated.pool.query("SELECT event_type FROM events.outbox WHERE tenant_id='tenant_thread' AND aggregate_id=$1",[hidden.id]);
  expect(task.rows).toEqual([{event_type:"feed.comment.pending"}]);
 });

 it("Status cannot publish directly as staff or into a foreign tenant",async()=>{
  const value={authorMasanaId:"masana_one",kind:"text",body:"No bypass",media:[],transcript:null,idempotencyKey:"deny-publish-001"};
  await expect(repo.publish("tenant_test","staff_one",value)).rejects.toMatchObject({status:403});
  await expect(repo.publish("foreign_tenant","masana_one",value)).rejects.toMatchObject({status:403});
  const writes=await isolated.pool.query("SELECT count(*)::int AS n FROM feed.posts WHERE idempotency_key=$1",[value.idempotencyKey]);
  expect(writes.rows[0]?.n).toBe(0);
 });
 it("Status revocation and ownership transfer remove reads and prevent fan writes, then recover",async()=>{
  const pool=isolated.pool;
  const [post]=await repo.list("tenant_test","fan_one","for_you",null,20,"masana_one");expect(post).toBeDefined();
  const id=post!.id;
  for(const revoke of [
   "UPDATE identity.characters SET state='inactive' WHERE tenant_id='tenant_test'",
   "UPDATE identity.character_ownership SET kind='customer' WHERE tenant_id='tenant_test'",
   "UPDATE masana.character_revisions SET state='retired' WHERE tenant_id='tenant_test'",
  ]){
   await pool.query(revoke);
   expect(await repo.list("tenant_test","fan_one","for_you",null,20,"masana_one")).toEqual([]);
   // Retired human posts cannot substitute for a revoked platform Masana.
   expect((await repo.list("tenant_test","fan_one","for_you",null,20))
    .some(entry=>entry.author.type==="human")).toBe(false);
   expect(await repo.find("tenant_test","fan_one",id)).toBeNull();
   expect(await repo.comments("tenant_test",id,"fan_one",null,30)).toEqual([]);
   await expect(repo.setLike("tenant_test","denied_fan",id,true)).rejects.toMatchObject({status:404});
   await expect(repo.setSave("tenant_test","denied_fan",id,true)).rejects.toMatchObject({status:404});
   await expect(repo.comment("tenant_test","denied_fan",id,"Denied","denied-comment-001",true)).rejects.toMatchObject({status:409});
   await expect(repo.publish("tenant_test","masana_one",{authorMasanaId:"masana_one",kind:"text",body:"Denied",media:[],transcript:null,idempotencyKey:"denied-post-001"})).rejects.toMatchObject({status:403});
   await pool.query("UPDATE identity.characters SET state='active' WHERE tenant_id='tenant_test'; UPDATE identity.character_ownership SET kind='platform' WHERE tenant_id='tenant_test'; UPDATE masana.character_revisions SET state='approved' WHERE tenant_id='tenant_test'");
   expect(await repo.find("tenant_test","fan_one",id)).not.toBeNull();
  }
  for(const table of ["likes","saves","comments"]){
   const rows=await pool.query(`SELECT count(*)::int AS n FROM feed.${table} WHERE tenant_id='tenant_test' AND fan_id='denied_fan'`);
   expect(rows.rows[0]?.n).toBe(0);
  }
 });
 it("Status immediate approval denies deactivation in final SQL and recovers without lost draft",async()=>{
  const editorial=new PgEditorialReviewRepository(isolated.pool);
  const draft=await editorial.create("tenant_test","editor_one",{authorMasanaId:"masana_one",kind:"text",body:"Reviewed status",media:[],transcript:null,idempotencyKey:"editorial-create-001"});
  await editorial.change("tenant_test",draft.id,"editor_one",0,"submit","editorial-submit-001",null);
  await isolated.pool.query("UPDATE identity.characters SET state='inactive' WHERE tenant_id='tenant_test'");
  await expect(editorial.change("tenant_test",draft.id,"reviewer_two",1,"approve","editorial-approve-001",null)).rejects.toMatchObject({status:409});
  expect((await editorial.get("tenant_test",draft.id))?.state).toBe("in_review");
  const audits=await isolated.pool.query("SELECT count(*)::int AS n FROM feed.editorial_events WHERE post_id=$1 AND action='approve'",[draft.id]);
  expect(audits.rows[0]?.n).toBe(0);
  await isolated.pool.query("UPDATE identity.characters SET state='active' WHERE tenant_id='tenant_test'");
  expect((await editorial.change("tenant_test",draft.id,"reviewer_two",1,"approve","editorial-approve-001",null)).state).toBe("published");
  expect(await repo.find("tenant_test",null,draft.id)).not.toBeNull();
 });
 it("Status scheduled release denies ownership transfer and later releases exactly once",async()=>{
  const editorial=new PgEditorialReviewRepository(isolated.pool);
  const draft=await editorial.create("tenant_test","editor_one",{authorMasanaId:"masana_one",kind:"text",body:"Scheduled status",media:[],transcript:null,idempotencyKey:"schedule-create-001"});
  await editorial.change("tenant_test",draft.id,"editor_one",0,"submit","schedule-submit-001",null);
  await editorial.change("tenant_test",draft.id,"reviewer_two",1,"schedule","schedule-review-001","2026-10-11T10:00:00Z");
  await isolated.pool.query("UPDATE identity.character_ownership SET kind='customer' WHERE tenant_id='tenant_test'");
  const now=new Date("2026-10-12T10:00:00Z");
  expect(await editorial.releaseScheduled("tenant_test",draft.id,2,now)).toBe(false);
  expect((await editorial.get("tenant_test",draft.id))?.state).toBe("scheduled");
  await isolated.pool.query("UPDATE identity.character_ownership SET kind='platform' WHERE tenant_id='tenant_test'");
  expect(await editorial.releaseScheduled("tenant_test",draft.id,2,now)).toBe(true);
  expect(await editorial.releaseScheduled("tenant_test",draft.id,2,now)).toBe(false);
  const audit=await isolated.pool.query("SELECT count(*)::int AS n FROM feed.editorial_events WHERE post_id=$1 AND action='scheduled_release'",[draft.id]);
  expect(audit.rows[0]?.n).toBe(1);
 });

});
