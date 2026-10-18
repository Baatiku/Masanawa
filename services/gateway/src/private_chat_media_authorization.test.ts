import { createHash } from "node:crypto";
import Fastify from "fastify";
import { describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type { Pool } from "@masanawa/postgres";
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import { createPrivateChatMediaService } from "./private_chat_media.js";
import { registerPrivateChatMediaRoutes } from "./private_chat_media_routes.js";

const tenantId = createCanonicalId("tenant");
const ownerId = createCanonicalId("user");
const otherId = createCanonicalId("user");
const characterId = createCanonicalId("character");
const requestId = createCanonicalId("request");
const payload = Buffer.from("A-private-voice-message");
const sha256 = createHash("sha256").update(payload).digest("hex");

function fixture() {
  const reads: Array<{ sql: string; params: unknown[] }> = [];
  const pool = {
    async query(sql: string, params: unknown[]) {
      reads.push({ sql, params });
      // A query must contain all four predicates to find a private attachment.
      const scoped = sql.includes("tenant_id=$1") &&
        sql.includes("user_id=$2") &&
        sql.includes("character_id=$3") &&
        (sql.includes("request_id=$4") || sql.includes("request_id=ANY($4::text[])")) &&
        params[0] === tenantId && params[1] === ownerId &&
        params[2] === characterId &&
        (Array.isArray(params[3]) ? params[3].includes(requestId) : params[3] === requestId);
      if (!scoped) return { rows: [] };
      if (sql.includes("octet_length(payload) AS size_bytes"))
        return { rows: [{ request_id: requestId, slot: 0, kind: "voice",
          mime_type: "audio/ogg", filename: null, size_bytes: payload.length }] };
      if (sql.includes("SELECT kind,mime_type,filename,payload,sha256"))
        return { rows: [{ kind: "voice", mime_type: "audio/ogg", filename: null,
          payload, sha256 }] };
      return { rows: [] };
    },
  } as unknown as Pool;
  const authorizer = {
    async authorize(input: { authorizationHeader: string | undefined; characterId: string }) {
      if (input.authorizationHeader !== "Bearer owner" &&
          input.authorizationHeader !== "Bearer other") {
        throw Object.assign(new Error("UNAUTHORIZED"), { statusCode: 401 });
      }
      return { scope: { tenantId,
        userId: input.authorizationHeader === "Bearer owner" ? ownerId : otherId,
        characterId: input.characterId } };
    },
  } as unknown as AgentConversationAuthorizer;
  const app = Fastify();
  registerPrivateChatMediaRoutes(app, createPrivateChatMediaService({ pool, authorizer }));
  return { app, reads };
}

describe("private chat attachments: horizontal authorization", () => {
  it("never exposes someone else's bytes or manifest by guessing IDs", async () => {
    const { app, reads } = fixture();
    try {
      const url = `/agent/media/${requestId}/0?characterId=${characterId}`;
      const owner = await app.inject({ method: "GET", url,
        headers: { authorization: "Bearer owner" } });
      expect(owner.statusCode).toBe(200);
      expect(owner.json()).toMatchObject({
        dataBase64: payload.toString("base64"), mimeType: "audio/ogg",
      });
      const other = await app.inject({ method: "GET", url,
        headers: { authorization: "Bearer other" } });
      expect(other.statusCode).toBe(404);
      expect(other.headers["cache-control"]).toBe("private, no-store");
      const ownerManifest = await app.inject({ method: "POST", url: "/agent/media/list",
        headers: { authorization: "Bearer owner" },
        payload: { characterId, requestIds: [requestId] } });
      expect(ownerManifest.statusCode).toBe(200);
      expect(ownerManifest.json().items).toHaveLength(1);
      const manifest = await app.inject({ method: "POST", url: "/agent/media/list",
        headers: { authorization: "Bearer other" },
        payload: { characterId, requestIds: [requestId] } });
      expect(manifest.statusCode).toBe(200);
      expect(manifest.json()).toEqual({ items: [] });
      expect(reads).toHaveLength(4);
      expect(reads.map(read => read.params[1])).toEqual([
        ownerId, otherId, ownerId, otherId,
      ]);
      expect(reads.every(read => read.sql.includes("user_id=$2"))).toBe(true);
    } finally { await app.close(); }
  });

  it("never reaches storage without a valid bearer", async () => {
    const { app, reads } = fixture();
    try {
      const result = await app.inject({
        method: "GET",
        url: `/agent/media/${requestId}/0?characterId=${characterId}`,
      });
      expect(result.statusCode).toBe(401);
      expect(result.headers["cache-control"]).toBe("private, no-store");
      expect(reads).toHaveLength(0);
    } finally { await app.close(); }
  });
});
