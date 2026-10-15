import { randomUUID } from "node:crypto";
import { Pool } from "pg";
import { afterAll, beforeAll, describe, expect, it } from "vitest";
import { runMigrations } from "../migrations.js";
import { platformProductMigrationRoots } from "../readiness.js";
import { createMsnwCustodyService } from "../../../../../services/gateway/src/msn_wallet/custody_send.js";

const connection = process.env.MASANAWA_TEST_DATABASE_URL;
const suite = connection ? describe : describe.skip;

suite("MSNW custody Send PostgreSQL acceptance", () => {
  let pool: Pool;
  let tenant: string;
  let sender: string;
  let recipient: string;
  beforeAll(async () => {
    pool = new Pool({ connectionString: connection });
    await runMigrations(pool, platformProductMigrationRoots());
    tenant = randomUUID();
    sender = randomUUID();
    recipient = randomUUID();
    const now = new Date().toISOString();
    for (const [user,name,email] of [
      [sender,"Sender Tester","sender-" + tenant + "@example.com"],
      [recipient,"Recipient Tester","recipient-" + tenant + "@example.com"],
    ]) {
      await pool.query(
        "INSERT INTO security.platform_user_profiles " +
        "(tenant_id,user_id,display_name,email,locale,created_at,updated_at) " +
        "VALUES ($1,$2,$3,$4,'en',$5,$5)",
        [tenant,user,name,email,now],
      );
    }
    // Simulated existing *qualified* custody for isolated test database only.
    // This test is NOT a production mint or evidence of real token backing.
    await pool.query(
      "INSERT INTO commerce.msnw_custody_accounts " +
      "(tenant_id,user_id,available_micro) VALUES ($1,$2,5000000),($1,$3,0)",
      [tenant,sender,recipient],
    );
  });
  afterAll(async () => { await pool?.end(); });

  it("moves backed test units once, posts exactly balanced entries and fences replay", async () => {
    const service = createMsnwCustodyService(pool);
    const owner = { tenantId: tenant,userId: sender };
    const target = "recipient-" + tenant + "@example.com";
    expect(await service.preview(owner,target,"1000000"))
      .toMatchObject({ recipientUserId: recipient,feeMicro: "0",asset: "MSNW" });
    const request = { recipient: target,recipientUserId: recipient,
      amountMicro: "1000000",idempotencyKey: randomUUID() };
    const first = await service.send(owner,request);
    const replay = await service.send(owner,request);
    expect(replay.operationId).toBe(first.operationId);
    expect(await service.balance(owner))
      .toMatchObject({ availableMicro: "4000000",reservedMicro: "0" });
    expect(await service.balance({ tenantId: tenant,userId: recipient }))
      .toMatchObject({ availableMicro: "1000000",reservedMicro: "0" });
    const entries = await pool.query(
      "SELECT count(*)::integer AS n,sum(available_delta_micro)::text AS net " +
      "FROM commerce.msnw_custody_entries WHERE operation_id=$1",
      [first.operationId],
    );
    expect(entries.rows[0]).toMatchObject({ n: 2,net: "0" });
    await expect(service.send(owner,{ ...request,amountMicro: "2000000" }))
      .rejects.toMatchObject({ code: "msnw.idempotency_conflict" });
    await expect(pool.query(
      "UPDATE commerce.msnw_custody_entries SET available_delta_micro=7 " +
      "WHERE operation_id=$1", [first.operationId],
    )).rejects.toThrow("MSNW custody financial journal is immutable");
  });

  it("refuses unbalanced operations and insufficient funds", async () => {
    const service = createMsnwCustodyService(pool);
    const owner = { tenantId: tenant,userId: sender };
    const target = "recipient-" + tenant + "@example.com";
    await expect(service.send(owner,{
      recipient: target,recipientUserId: recipient,
      amountMicro: "999999999999",idempotencyKey: randomUUID(),
    })).rejects.toMatchObject({ code: "msnw.insufficient_available" });
    const db = await pool.connect();
    try {
      await db.query("BEGIN");
      await db.query(
        "INSERT INTO commerce.msnw_custody_operations " +
        "(operation_id,tenant_id,actor_user_id,recipient_user_id,kind,idempotency_key,amount_micro) " +
        "VALUES ($1,$2,$3,$4,'send',$5,100)",
        [randomUUID(),tenant,sender,recipient,randomUUID()],
      );
      await expect(db.query("COMMIT")).rejects.toThrow(
        "MSNW custody operation has unbalanced postings");
      await db.query("ROLLBACK").catch(() => undefined);
    } finally { db.release(); }
  });
});
