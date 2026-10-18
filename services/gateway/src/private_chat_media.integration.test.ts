import { createHash, randomUUID } from "node:crypto";
import { cp, mkdtemp, readdir, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import path from "node:path";
import Fastify from "fastify";
import { afterAll, beforeAll, describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import {
  characterSessionMigrationRoots,
  createPostgresPool,
  runMigrations,
  type Pool,
} from "@masanawa/postgres";
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import { createPrivateChatMediaService } from "./private_chat_media.js";
import { registerPrivateChatMediaRoutes } from "./private_chat_media_routes.js";

const databaseUrl = process.env.MASANAWA_TEST_DATABASE_URL;

describe.skipIf(!databaseUrl)("private chat media PostgreSQL lifecycle", () => {
  const database = `ws2_media_${randomUUID().replaceAll("-", "")}`;
  const tenantId = createCanonicalId("tenant");
  const otherTenantId = createCanonicalId("tenant");
  const alice = createCanonicalId("user");
  const bob = createCanonicalId("user");
  const quotaUser = createCanonicalId("user");
  const characterId = createCanonicalId("character");
  let admin: Pool;
  let pool: Pool;
  let temporaryMigrations: string;
  let created = false;
  const authorizer = {
    async authorize(input: { authorizationHeader?: string; characterId: string }) {
      if (!input.authorizationHeader?.startsWith("Bearer ")) {
        throw Object.assign(new Error("Authentication required"), { statusCode: 401 });
      }
      return {
        scope: {
          tenantId: input.authorizationHeader === "Bearer other-tenant" ? otherTenantId : tenantId,
          userId: input.authorizationHeader === "Bearer bob" ? bob
            : input.authorizationHeader === "Bearer quota" ? quotaUser : alice,
          characterId: input.characterId,
          relationshipId: createCanonicalId("relationship"),
        },
      };
    },
  } as unknown as AgentConversationAuthorizer;
  const device = () => createPrivateChatMediaService({ pool, authorizer });
  const upload = (requestId: string, slot = 0, bytes = Buffer.from("customer voice")) => ({
    characterId, requestId, slot, kind: "voice" as const,
    mimeType: "audio/ogg", name: `voice-${slot}.ogg`, dataBase64: bytes.toString("base64"),
  });

  beforeAll(async () => {
    admin = createPostgresPool({ connectionString: databaseUrl!, applicationName: "ws2-media-test-admin" });
    // Every test run owns a new database; never drop schemas in a shared test DB.
    await admin.query(`CREATE DATABASE "${database}"`);
    created = true;
    const url = new URL(databaseUrl!);
    url.pathname = `/${database}`;
    pool = createPostgresPool({ connectionString: url.toString(), applicationName: "ws2-media-test" });
    const roots = characterSessionMigrationRoots();
    const agents = roots.find(root => root.owner === "agents")!;
    temporaryMigrations = await mkdtemp(path.join(tmpdir(), "ws2-media-migrations-"));
    // Exercise the actual pre-reply schema and a subsequent forward upgrade.
    for (const name of await readdir(agents.directory)) {
      if (name.endsWith(".sql") && name < "0011_") {
        await cp(path.join(agents.directory, name), path.join(temporaryMigrations, name));
      }
    }
    await runMigrations(pool, roots.map(root => root.owner === "agents"
      ? { ...root, directory: temporaryMigrations } : root));
  }, 30_000);

  afterAll(async () => {
    await pool?.end();
    if (created) await admin.query(`DROP DATABASE "${database}"`);
    await admin?.end();
    if (temporaryMigrations) await rm(temporaryMigrations, { recursive: true, force: true });
  }, 30_000);

  it("upgrades 0010 to assistant audio without losing customer media and reruns safely", async () => {
    const requestId = createCanonicalId("request");
    const firstDevice = device();
    await firstDevice.put("Bearer alice", upload(requestId));
    const applied = await runMigrations(pool, characterSessionMigrationRoots());
    expect(applied).toContain("agents/0011_private_masana_reply_audio.sql");
    await firstDevice.put("Bearer alice", upload(requestId, 8, Buffer.from("Masana reply")));
    const secondDevice = device();
    expect((await secondDevice.list("Bearer alice", characterId, [requestId])).map(row => row.slot))
      .toEqual([0, 8]);
    expect((await secondDevice.get("Bearer alice", characterId, requestId, 0))?.dataBase64)
      .toBe(upload(requestId).dataBase64);
    expect((await secondDevice.get("Bearer alice", characterId, requestId, 8))?.dataBase64)
      .toBe(Buffer.from("Masana reply").toString("base64"));
    expect(await runMigrations(pool, characterSessionMigrationRoots())).toEqual([]);
  });

  it("fences another account, tenant and Masana even when request identity is known", async () => {
    const requestId = createCanonicalId("request");
    await device().put("Bearer alice", upload(requestId));
    for (const header of ["Bearer bob", "Bearer other-tenant"]) {
      expect(await device().get(header, characterId, requestId, 0)).toBeNull();
      expect(await device().list(header, characterId, [requestId])).toEqual([]);
    }
    expect(await device().get("Bearer alice", createCanonicalId("character"), requestId, 0)).toBeNull();
  });

  it("serializes identical retries and rejects later substitution without replacing bytes", async () => {
    const requestId = createCanonicalId("request");
    const results = await Promise.all([device().put("Bearer alice", upload(requestId)),
      device().put("Bearer alice", upload(requestId))]);
    expect(results[0]).toEqual(results[1]);
    await expect(device().put("Bearer alice", upload(requestId, 0, Buffer.from("different"))))
      .rejects.toThrow("chat.media.idempotency_conflict");
    expect((await pool.query("SELECT count(*)::int AS count FROM agents.private_chat_media WHERE request_id=$1", [requestId])).rows[0].count)
      .toBe(1);
    expect((await device().get("Bearer alice", characterId, requestId, 0))?.dataBase64)
      .toBe(upload(requestId).dataBase64);
  });

  it("allows only one winner when two devices concurrently upload different bytes", async () => {
    const requestId = createCanonicalId("request");
    const inputs = [upload(requestId, 0, Buffer.from("device A")),
      upload(requestId, 0, Buffer.from("device B"))];
    const outcomes = await Promise.allSettled(inputs.map(input => device().put("Bearer alice", input)));
    expect(outcomes.filter(result => result.status === "fulfilled")).toHaveLength(1);
    const rejected = outcomes.find(result => result.status === "rejected") as PromiseRejectedResult;
    expect(rejected.reason.message).toBe("chat.media.idempotency_conflict");
    const winner = outcomes.findIndex(result => result.status === "fulfilled");
    expect((await device().get("Bearer alice", characterId, requestId, 0))?.dataBase64)
      .toBe(inputs[winner]!.dataBase64);
  });

  it("enforces the customer envelope atomically while allowing independent reply audio", async () => {
    const requestId = createCanonicalId("request");
    await device().put("Bearer alice", upload(requestId, 8, Buffer.alloc(1)));
    const results = await Promise.allSettled([0, 1].map(slot =>
      device().put("Bearer alice", upload(requestId, slot, Buffer.alloc(7 * 1024 * 1024)))));
    expect(results.filter(result => result.status === "fulfilled")).toHaveLength(1);
    const failed = results.find(result => result.status === "rejected") as PromiseRejectedResult;
    expect(failed.reason.message).toBe("chat.media.message_too_large");
    expect(await device().list("Bearer alice", characterId, [requestId])).toHaveLength(2);
  });

  it("hides expired content and removes expired bytes only for the uploading owner", async () => {
    const requestId = createCanonicalId("request");
    await device().put("Bearer alice", upload(requestId));
    await device().put("Bearer bob", upload(requestId));
    await pool.query("UPDATE agents.private_chat_media SET expires_at=clock_timestamp()-interval '1 second' WHERE request_id=$1", [requestId]);
    expect(await device().get("Bearer alice", characterId, requestId, 0)).toBeNull();
    expect(await device().list("Bearer alice", characterId, [requestId])).toEqual([]);
    await device().put("Bearer alice", upload(createCanonicalId("request")));
    const retained = await pool.query("SELECT user_id FROM agents.private_chat_media WHERE request_id=$1", [requestId]);
    expect(retained.rows.map(row => row.user_id)).toEqual([bob]);
  });

  it("enforces the account quota across independent requests and recovers expired capacity", async () => {
    const bytes = Buffer.alloc(8 * 1024 * 1024, 97);
    const requestIds = Array.from({ length: 16 }, () => createCanonicalId("request"));
    // Seed legal retained files at exactly the cap without repeating 128 MiB
    // of base64 HTTP fixture traffic. Each file has its own original request.
    await pool.query(
      "INSERT INTO agents.private_chat_media(tenant_id,user_id,character_id,request_id,slot,kind,mime_type,payload,sha256) " +
      "SELECT $1,$2,$3,id,0,'voice','audio/ogg',$5,$6 FROM unnest($4::text[]) AS id",
      [tenantId, quotaUser, characterId, requestIds, bytes, createHash("sha256").update(bytes).digest("hex")],
    );
    const next = upload(createCanonicalId("request"), 0, Buffer.from("new voice"));
    await expect(device().put("Bearer quota", next)).rejects.toThrow("chat.media.account_quota_exceeded");
    expect(await device().get("Bearer quota", characterId, next.requestId, 0)).toBeNull();
    await pool.query("UPDATE agents.private_chat_media SET expires_at=clock_timestamp()-interval '1 second' WHERE user_id=$1 AND request_id=$2",
      [quotaUser, requestIds[0]]);
    await expect(device().put("Bearer quota", next)).resolves.toMatchObject({ slot: 0 });
    expect((await device().get("Bearer quota", characterId, next.requestId, 0))?.dataBase64).toBe(next.dataBase64);
  }, 15_000);

  it("refuses corrupted stored payloads rather than returning unchecked audio", async () => {
    const requestId = createCanonicalId("request");
    await device().put("Bearer alice", upload(requestId));
    await pool.query("UPDATE agents.private_chat_media SET payload=$2 WHERE request_id=$1", [requestId, Buffer.from("corrupt")]);
    await expect(device().get("Bearer alice", characterId, requestId, 0))
      .rejects.toThrow("chat.media.checksum_invalid");
  });

  it("returns an actionable conflict for changed upload bytes and preserves the original", async () => {
    const app = Fastify();
    registerPrivateChatMediaRoutes(app, device());
    const requestId = createCanonicalId("request");
    const first = upload(requestId);
    const send = (payload: typeof first) => app.inject({ method: "POST",
      url: `/agent/media/${requestId}/0`, headers: { authorization: "Bearer alice" }, payload });
    try {
      expect((await send(first)).statusCode).toBe(200);
      const conflict = await send(upload(requestId, 0, Buffer.from("substitution")));
      expect(conflict.statusCode).toBe(409);
      expect(conflict.json()).toEqual({ error: "chat.media.idempotency_conflict" });
      expect(conflict.headers["cache-control"]).toBe("private, no-store");
      expect((await device().get("Bearer alice", characterId, requestId, 0))?.dataBase64)
        .toBe(first.dataBase64);
    } finally { await app.close(); }
  });
});
