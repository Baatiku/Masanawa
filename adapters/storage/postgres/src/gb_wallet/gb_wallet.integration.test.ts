import { createHash } from "node:crypto";
import { fileURLToPath } from "node:url";
import { Pool } from "pg";
import { beforeAll, afterAll, describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { runMigrations } from "../migrations.js";
import { characterSessionMigrationRoots } from "../readiness.js";
import { createPostgresGbWalletRepository } from "./repository.js";

const connectionString = process.env.MASANAWA_TEST_DATABASE_URL;
const describeDatabase = connectionString ? describe : describe.skip;

describeDatabase("isolated GB wallet serializable accounting", () => {
  let pool: Pool;
  beforeAll(async () => {
    pool = new Pool({ connectionString });
    await runMigrations(pool, characterSessionMigrationRoots());
    await runMigrations(pool, [{
      owner: "commerce",
      directory: fileURLToPath(new URL(
        "../../../../../packages/commerce/migrations", import.meta.url,
      )),
    }]);
  });
  afterAll(async () => { await pool?.end(); });

  const repo = () => createPostgresGbWalletRepository(pool);
  const identity = () => ({
    tenantId: createCanonicalId("tenant"),
    userId: createCanonicalId("user"),
  });

  async function activeCustomer(actor:ReturnType<typeof identity>) {
    await pool.query(`INSERT INTO identity.tenants
      (tenant_id,state,created_at,updated_at) VALUES($1,'active',now(),now())`,
      [actor.tenantId]);
    await pool.query(`INSERT INTO identity.users
      (tenant_id,user_id,state,created_at,updated_at)
      VALUES($1,$2,'active',now(),now())`,[actor.tenantId,actor.userId]);
  }

  it('grants existing/new authenticated users 500 restricted MB once even under concurrent visits', async () => {
    const actor=identity();
    await activeCustomer(actor);
    const results=await Promise.all(Array.from({length:4},
      ()=>repo().ensureUniversalWelcome(actor)));
    expect(results.filter(Boolean)).toHaveLength(1);
    expect(await repo().ensureUniversalWelcome(actor)).toBe(false);
    expect(await repo().read(actor)).toMatchObject({
      welcomeMb:500,purchasedMb:0,reservedWelcomeMb:0,
    });
    const movement=await pool.query(`SELECT COUNT(*)::int AS count
      FROM gb_wallet.movements WHERE tenant_id=$1 AND to_id=$2
      AND source_bucket='issuance'`,[actor.tenantId,actor.userId]);
    expect(movement.rows[0].count).toBe(1);
  });

  it('does not reissue 500 MB to a customer with an older verified-phone grant',async()=>{
    const actor=identity();
    await activeCustomer(actor);
    await repo().grantWelcome({...actor,
      verifiedPhoneHmac:createHash('sha256').update(actor.userId).digest('hex'),
      operationId:createCanonicalId('operation')});
    expect(await repo().ensureUniversalWelcome(actor)).toBe(false);
    expect((await repo().read(actor))?.welcomeMb).toBe(500);
  });

  it('rejects a late phone-welcome attempt after the universal allowance',async()=>{
    const actor=identity();
    await activeCustomer(actor);
    expect(await repo().ensureUniversalWelcome(actor)).toBe(true);
    expect(await repo().grantWelcome({...actor,
      verifiedPhoneHmac:createHash('sha256').update(actor.userId).digest('hex'),
      operationId:createCanonicalId('operation')})).toBe(false);
    expect((await repo().read(actor))?.welcomeMb).toBe(500);
  });

  it("grants restricted welcome exactly once across duplicate identity and phone", async () => {
    const a = identity(), b = { tenantId:a.tenantId, userId:createCanonicalId("user") };
    const digest = createHash("sha256").update("test-only-phone-hmac").digest("hex");
    const operationId = createCanonicalId("operation");
    const first = await repo().grantWelcome({
      ...a,verifiedPhoneHmac:digest,operationId,
    });
    expect(first).toBe(true);
    expect(await repo().grantWelcome({
      ...a,verifiedPhoneHmac:digest,operationId:createCanonicalId("operation"),
    })).toBe(false);
    expect(await repo().grantWelcome({
      ...b,verifiedPhoneHmac:digest,operationId:createCanonicalId("operation"),
    })).toBe(false);
    expect(await repo().read(a)).toMatchObject({
      welcomeMb:500,purchasedMb:0,reservedWelcomeMb:0,
    });
  });

  it("disallows transfer of 500 MB welcome credit", async () => {
    const user=identity(), recipientId=createCanonicalId("user");
    const phone=createHash("sha256").update(user.userId).digest("hex");
    await repo().grantWelcome({
      ...user,verifiedPhoneHmac:phone,operationId:createCanonicalId("operation"),
    });
    await expect(repo().transfer({
      ...user,recipientId,amountMb:1,
      operationId:createCanonicalId("operation"),idempotencyKey:"once",
    })).rejects.toThrow("gb.wallet.insufficient_purchased_mb");
    expect((await repo().read(user))?.welcomeMb).toBe(500);
  });

  it("does not overspend or double-transfer with concurrent requests", async () => {
    const user=identity();
    const recipientId=createCanonicalId("user");
    await pool.query(
      `INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
       VALUES($1,'human',$2,1000)`,
      [user.tenantId,user.userId],
    );
    const first={...user,recipientId,operationId:"send_12345678901234567890123456789012",
      idempotencyKey:"same-call",amountMb:700};
    const duplicates=await Promise.all([repo().transfer(first),repo().transfer(first)]);
    expect(duplicates[0]).toEqual(duplicates[1]);
    expect(await repo().readTransfer(user,first.operationId)).toEqual(duplicates[0]);
    expect(await repo().readTransfer({...user,userId:recipientId},first.operationId)).toBeNull();
    expect(await repo().readTransfer({...user,tenantId:createCanonicalId("tenant")},first.operationId)).toBeNull();
    expect(await repo().read(user)).toMatchObject({purchasedMb:300,welcomeMb:0});
    expect(await repo().read({...user,userId:recipientId}))
      .toMatchObject({purchasedMb:700});
    await expect(repo().transfer({...first,amountMb:1}))
      .rejects.toThrow("gb.wallet.idempotency_conflict");
    await expect(repo().transfer({...first,
      operationId:createCanonicalId("operation"),idempotencyKey:"next",
    })).rejects.toThrow("gb.wallet.insufficient_purchased_mb");
    const entries=await pool.query<{count:string}>(
      `SELECT count(*)::text AS count FROM gb_wallet.movements
        WHERE tenant_id=$1 AND operation_id=$2`,
      [user.tenantId,first.operationId],
    );
    expect(entries.rows[0]?.count).toBe("1");
  });
});
