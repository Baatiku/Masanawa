import { fileURLToPath } from "node:url";
import { Pool } from "pg";
import { afterAll, beforeAll, describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { foundationMigrationRoots } from "../readiness.js";
import { runMigrations } from "../migrations.js";
import { createGbUsageReservations } from "./reservations.js";

const conn=process.env.MASANAWA_TEST_DATABASE_URL;
const testDb=conn?describe:describe.skip;

testDb("GB reserved welcome and provider-proof usage semantics",()=>{
  let pool:Pool;
  beforeAll(async()=>{
    pool=new Pool({connectionString:conn});
    await runMigrations(pool,foundationMigrationRoots());
    await runMigrations(pool,[{
      owner:"commerce",
      directory:fileURLToPath(new URL("../../../../../packages/commerce/migrations",import.meta.url)),
    }]);
  });
  afterAll(async()=>{await pool?.end()});
  const identity=()=>({
    tenantId:createCanonicalId("tenant"),
    userId:createCanonicalId("user"),
  });
  it("holds welcome for successful reply, captures exactly once",async()=>{
    const actor=identity(),operationId=createCanonicalId("operation");
    await pool.query(
      `INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,welcome_mb)
      VALUES($1,'human',$2,500)`,
      [actor.tenantId,actor.userId],
    );
    const repo=createGbUsageReservations(pool);
    const request={...actor,operationId,idempotencyKey:"reply-one",
      use:"reply" as const,amountMb:1};
    const hold=await repo.reserve(request);
    expect(hold).toMatchObject({state:"reserved",welcomeReservedMb:1,purchasedReservedMb:0});
    expect(await repo.reserve(request)).toEqual(hold);
    expect(await repo.capture(actorWithId(actor,operationId),1))
      .toMatchObject({state:"completed",amountMb:1});
    expect(await repo.capture(actorWithId(actor,operationId),1))
      .toMatchObject({state:"completed",amountMb:1});
    const row=await pool.query(
      `SELECT welcome_mb::text AS balance,reserved_welcome_mb::text AS reserved
      FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2`,
      [actor.tenantId,actor.userId],
    );
    expect(row.rows[0]).toMatchObject({balance:"499",reserved:"0"});
    expect(await pool.query(
      `SELECT count(*)::text AS count FROM gb_wallet.movements
       WHERE tenant_id=$1 AND operation_id=$2`,
      [actor.tenantId,operationId],
    )).toMatchObject({rows:[{count:"1"}]});
  });
  it("does not allow welcome to redeem and releases failed charge",async()=>{
    const actor=identity(),operationId=createCanonicalId("operation");
    await pool.query(
      `INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,welcome_mb)
      VALUES($1,'human',$2,500)`,
      [actor.tenantId,actor.userId],
    );
    const repo=createGbUsageReservations(pool);
    await expect(repo.reserve({...actor,operationId,
      idempotencyKey:"data",use:"redeem",amountMb:1000}))
      .rejects.toThrow("gb.wallet.insufficient_mb");
    const req={...actor,operationId,idempotencyKey:"voice-1",
      use:"connected_call" as const,amountMb:60};
    const pending=await repo.reserve(req);
    expect(pending.welcomeReservedMb).toBe(60);
    expect(await repo.release(actorWithId(actor,operationId))).toBe(true);
    expect(await repo.release(actorWithId(actor,operationId))).toBe(false);
    expect(await repo.reserve(req)).toMatchObject({state:"failed"});
  });
  it("settles actual connected seconds and releases unused time",async()=>{
    const actor=identity(),operationId=createCanonicalId("operation");
    await pool.query(
      `INSERT INTO gb_wallet.accounts(
        tenant_id,account_kind,account_id,welcome_mb,purchased_mb)
       VALUES($1,'human',$2,2,100)`,
      [actor.tenantId,actor.userId],
    );
    const repo=createGbUsageReservations(pool);
    await repo.reserve({...actor,operationId,idempotencyKey:"call",
      use:"connected_call",amountMb:10});
    await repo.capture(actorWithId(actor,operationId),3);
    const balance=await pool.query(
      `SELECT welcome_mb::text AS welcome,purchased_mb::text AS purchased,
      reserved_welcome_mb::text AS reserve_welcome,
      reserved_purchased_mb::text AS reserve_purchased
      FROM gb_wallet.accounts
      WHERE tenant_id=$1 AND account_id=$2`,
      [actor.tenantId,actor.userId],
    );
    expect(balance.rows[0]).toMatchObject({
      welcome:"0",purchased:"99",reserve_welcome:"0",reserve_purchased:"0",
    });
  });
});
function actorWithId(actor:{tenantId:string;userId:string},operationId:string){
  return {...actor,operationId};
}
