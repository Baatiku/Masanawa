import {readFileSync} from "node:fs";
import {afterAll,beforeAll,describe,expect,it} from "vitest";
import {createIsolatedPostgresTestDatabase} from "../home_feed/isolated_test_database.js";
import {createPostgresGbWalletRepository} from "./repository.js";

const conn=process.env.MASANAWA_TEST_DATABASE_URL;
const pg=conn?describe:describe.skip;
const post="381026c2-9d56-47b1-b73d-1784e24e41e2";
const key="tip_12345678901234567890123456789012";
pg("Status MB tips: real serializable purchased ledger",()=>{
 let db:Awaited<ReturnType<typeof createIsolatedPostgresTestDatabase>>;
 beforeAll(async()=>{
  db=await createIsolatedPostgresTestDatabase(conn!);
  const pool=db.pool;
  await pool.query(`CREATE SCHEMA identity;CREATE SCHEMA masana;
    CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
    CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
    CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text);
    INSERT INTO identity.characters VALUES('tip_tenant','masana_one','active');
    INSERT INTO identity.character_ownership VALUES('tip_tenant','masana_one','platform');
    INSERT INTO masana.character_revisions VALUES('tip_tenant','masana_one','approved');`);
  const migration=(path:string)=>pool.query(readFileSync(
    new URL(path,import.meta.url),"utf8"));
  await migration("../../../../../packages/feed/migrations/0001_feed.sql");
  await migration("../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql");
  await migration("../../../../../packages/commerce/migrations/0208_gb_status_tip_receipts.sql");
  await pool.query(`INSERT INTO feed.posts
    (tenant_id,id,author_masana_id,kind,body,idempotency_key,published_by)
    VALUES('tip_tenant',$1::uuid,'masana_one','text','Tip me','post-key','editor')`,[post]);
  await pool.query(`INSERT INTO gb_wallet.accounts
    (tenant_id,account_kind,account_id,purchased_mb,welcome_mb,reserved_purchased_mb)
    VALUES('tip_tenant','human','fan_one',500,500,100)`);
 });
 afterAll(async()=>{await db?.close();});
 const repo=()=>createPostgresGbWalletRepository(db.pool);
 const original=()=>({tenantId:"tip_tenant",userId:"fan_one",
   postId:post,characterId:"masana_one",
   operationId:key,idempotencyKey:key,amountMb:200});
 it("posts exactly one immutable movement, credits platform Masana and excludes welcome MB",async()=>{
  const receipts=await Promise.all([repo().tip(original()),repo().tip(original())]);
  expect(receipts[0]).toEqual(receipts[1]);
  expect(await repo().readTip({tenantId:"tip_tenant",userId:"fan_one"},key))
    .toEqual(receipts[0]);
  expect(await repo().readTip({tenantId:"tip_tenant",userId:"fan_other"},key))
    .toBeNull();
  expect((await repo().read({tenantId:"tip_tenant",userId:"fan_one"})))
    .toMatchObject({purchasedMb:300,welcomeMb:500,reservedPurchasedMb:100});
  const target=await db.pool.query<{purchased_mb:string}>(`
    SELECT purchased_mb::text FROM gb_wallet.accounts
    WHERE tenant_id='tip_tenant' AND account_kind='masana' AND account_id='masana_one'`);
  expect(target.rows[0]?.purchased_mb).toBe("200");
  const movements=await db.pool.query<{count:string}>(`
    SELECT count(*)::text AS count FROM gb_wallet.movements
    WHERE tenant_id='tip_tenant' AND operation_id=$1`,[key]);
  expect(movements.rows[0]?.count).toBe("1");
 });
 it("rejects changed replay amount and never spends reserved/welcome MB",async()=>{
  await expect(repo().tip({...original(),amountMb:201}))
    .rejects.toThrow("gb.wallet.idempotency_conflict");
  await expect(repo().tip({...original(),
    operationId:"tip_22222222222222222222222222222222",
    idempotencyKey:"tip_22222222222222222222222222222222",
    amountMb:201})).rejects.toThrow("gb.wallet.insufficient_purchased_mb");
 });
 it("takedown denies a new tip but original receipt remains available",async()=>{
  await db.pool.query(`UPDATE feed.posts SET state='hidden'
    WHERE tenant_id='tip_tenant' AND id=$1::uuid`,[post]);
  await expect(repo().tip({...original(),
    operationId:"tip_33333333333333333333333333333333",
    idempotencyKey:"tip_33333333333333333333333333333333",
    amountMb:1})).rejects.toThrow("gb.wallet.tip_post_unavailable");
  expect(await repo().readTip({tenantId:"tip_tenant",userId:"fan_one"},key))
    .toMatchObject({operationId:key,amountMb:200});
 });
});
