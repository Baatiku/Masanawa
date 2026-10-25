import { createHash } from "node:crypto";
import { fileURLToPath } from "node:url";
import { Pool } from "pg";
import { beforeAll, afterAll, describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { runMigrations } from "../migrations.js";
import { foundationMigrationRoots } from "../readiness.js";
import { createPostgresGbWalletRepository } from "./repository.js";

const connectionString = process.env.MASANAWA_TEST_DATABASE_URL;
const describeDatabase = connectionString ? describe : describe.skip;

describeDatabase("isolated GB wallet serializable accounting", () => {
  let pool: Pool;
  beforeAll(async () => {
    pool = new Pool({ connectionString });
    await runMigrations(pool, foundationMigrationRoots());
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
    const first={...user,recipientId,operationId:createCanonicalId("operation"),
      idempotencyKey:"same-call",amountMb:700};
    const duplicates=await Promise.all([repo().transfer(first),repo().transfer(first)]);
    expect(duplicates[0]).toEqual(duplicates[1]);
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
