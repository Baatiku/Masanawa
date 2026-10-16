import { createHash } from "node:crypto";
import type { Pool } from "@masanawa/postgres";
import { parseCanonicalId } from "@masanawa/contracts";
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";

export const MAX_CHAT_MEDIA_BYTES = 8 * 1024 * 1024;
const MAX_MESSAGE_MEDIA_BYTES = 12 * 1024 * 1024;
export type ChatMediaKind = "voice" | "audio" | "image" | "video" | "doc";
export interface PrivateChatMediaInput {
  characterId: string;
  requestId: string;
  slot: number;
  kind: ChatMediaKind;
  mimeType: string;
  name?: string;
  dataBase64: string;
}
type Owner = Readonly<{ tenantId: string; userId: string; characterId: string }>;

function validateMedia(request: PrivateChatMediaInput) {
  const requestId = parseCanonicalId("request", request.requestId);
  const characterId = parseCanonicalId("character", request.characterId);
  if (!Number.isSafeInteger(request.slot) || request.slot < 0 || request.slot > 8 ||
      (request.slot === 8 && request.kind !== "voice") ||
      !["voice", "audio", "image", "video", "doc"].includes(request.kind) ||
      !/^[a-z0-9.+-]+\/[a-z0-9.+-]+(?:;\s*[a-z0-9._+-]+=[a-z0-9._+-]+)?$/iu.test(request.mimeType) ||
      request.mimeType.length > 160 ||
      (request.name !== undefined && request.name.length > 240) ||
      typeof request.dataBase64 !== "string" ||
      !/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/u.test(request.dataBase64)) {
    throw new RangeError("chat.media.invalid");
  }
  const data = Buffer.from(request.dataBase64, "base64");
  if (data.length < 1 || data.length > MAX_CHAT_MEDIA_BYTES ||
      data.toString("base64") !== request.dataBase64) {
    throw new RangeError("chat.media.invalid_size");
  }
  return { requestId, characterId, data,
    checksum: createHash("sha256").update(data).digest("hex") };
}

export function createPrivateChatMediaService(input: Readonly<{
  pool: Pool;
  authorizer: AgentConversationAuthorizer;
}>) {
  async function owner(authorizationHeader: string | undefined, characterId: string): Promise<Owner> {
    const parsed = parseCanonicalId("character", characterId);
    const who = await input.authorizer.authorize({
      authorizationHeader, characterId: parsed,
    });
    if (who.scope.characterId !== parsed) throw new Error("chat.media.character_denied");
    return {
      tenantId: who.scope.tenantId,
      userId: who.scope.userId,
      characterId: parsed,
    };
  }

  async function put(authorizationHeader: string | undefined, request: PrivateChatMediaInput) {
    const verified = validateMedia(request);
    const who = await owner(authorizationHeader, request.characterId);
    const client = await input.pool.connect();
    let transaction = false;
    try {
      await client.query("BEGIN"); transaction = true;
      // Serialize one message's 1-8 uploads across concurrent devices and
      // retries. Never allow storage that exceeds the 12 MB total envelope.
      // Serialize storage quota across multiple simultaneous chat requests.
      // A malicious client cannot fill PostgreSQL with arbitrary request IDs.
      await client.query("SELECT pg_advisory_xact_lock(hashtext($1))",
        ["chat-media-user:" + who.tenantId + ":" + who.userId]);
      await client.query(
        "DELETE FROM agents.private_chat_media WHERE tenant_id=$1 " +
        "AND user_id=$2 AND expires_at<=clock_timestamp()",
        [who.tenantId,who.userId],
      );
      await client.query("SELECT pg_advisory_xact_lock(hashtext($1))",
        [who.tenantId + ":" + who.userId + ":" + verified.requestId]);
      const current = await client.query(
        "SELECT slot,sha256,kind,mime_type,filename,octet_length(payload) AS size " +
        "FROM agents.private_chat_media WHERE tenant_id=$1 AND user_id=$2 " +
        "AND character_id=$3 AND request_id=$4 FOR UPDATE",
        [who.tenantId,who.userId,who.characterId,verified.requestId],
      );
      const row = current.rows.find(row => Number(row.slot) === request.slot);
      if (row) {
        if (row.sha256 !== verified.checksum || row.kind !== request.kind ||
            row.mime_type !== request.mimeType ||
            (row.filename ?? null) !== (request.name ?? null)) {
          throw new Error("chat.media.idempotency_conflict");
        }
      } else {
        const total = current.rows.reduce((sum, row) => sum + Number(row.size), 0);
        const usage = await client.query(
          "SELECT COALESCE(SUM(octet_length(payload)),0)::text AS total " +
          "FROM agents.private_chat_media WHERE tenant_id=$1 AND user_id=$2",
          [who.tenantId,who.userId],
        );
        const used = BigInt(String(usage.rows[0]?.total ?? "0"));
        if (used + BigInt(verified.data.length) > 128n * 1024n * 1024n) {
          throw new RangeError("chat.media.account_quota_exceeded");
        }
        if (total + verified.data.length > MAX_MESSAGE_MEDIA_BYTES +
            (request.slot === 8 ? MAX_CHAT_MEDIA_BYTES : 0)) {
          throw new RangeError("chat.media.message_too_large");
        }
        await client.query(
          "INSERT INTO agents.private_chat_media " +
          "(tenant_id,user_id,character_id,request_id,slot,kind,mime_type,filename,payload,sha256) " +
          "VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)",
          [who.tenantId,who.userId,who.characterId,verified.requestId,
            request.slot,request.kind,request.mimeType,request.name??null,
            verified.data,verified.checksum],
        );
      }
      await client.query("COMMIT");transaction=false;
      return Object.freeze({
        requestId: verified.requestId, slot: request.slot,
        sizeBytes: verified.data.length, checksum: verified.checksum,
      });
    } catch(e) {
      if(transaction)await client.query("ROLLBACK").catch(()=>undefined);
      throw e;
    } finally { client.release(); }
  }

  async function list(authorizationHeader: string | undefined,
    characterId: string, requestIds: readonly string[]) {
    const who = await owner(authorizationHeader, characterId);
    if (!Array.isArray(requestIds) || requestIds.length > 100)
      throw new RangeError("chat.media.manifest_invalid");
    const ids = requestIds.map(value => parseCanonicalId("request", value));
    if (!ids.length) return Object.freeze([]);
    const records=await input.pool.query(
      "SELECT request_id,slot,kind,mime_type,filename," +
      "octet_length(payload) AS size_bytes FROM agents.private_chat_media " +
      "WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 " +
      "AND request_id=ANY($4::text[]) AND expires_at>clock_timestamp() " +
      "ORDER BY request_id,slot",
      [who.tenantId,who.userId,who.characterId,ids],
    );
    return Object.freeze(records.rows.map(row => Object.freeze({
      requestId:row.request_id as string, slot:Number(row.slot),
      kind:row.kind as ChatMediaKind,mimeType:row.mime_type as string,
      name:row.filename as string|null,sizeBytes:Number(row.size_bytes),
    })));
  }

  async function get(authorizationHeader: string | undefined,
    characterId: string, requestId: string, slot: number) {
    const who=await owner(authorizationHeader,characterId);
    const id=parseCanonicalId("request",requestId);
    if(!Number.isSafeInteger(slot)||slot<0||slot>8)
      throw new RangeError("chat.media.slot_invalid");
    const r=await input.pool.query(
      "SELECT kind,mime_type,filename,payload,sha256 FROM agents.private_chat_media " +
      "WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND request_id=$4 " +
      "AND slot=$5 AND expires_at>clock_timestamp()",
      [who.tenantId,who.userId,who.characterId,id,slot],
    );
    const entry=r.rows[0];
    if(!entry) return null;
    const bytes:Buffer=entry.payload;
    if(createHash("sha256").update(bytes).digest("hex")!==entry.sha256)
      throw new Error("chat.media.checksum_invalid");
    return Object.freeze({kind:entry.kind as ChatMediaKind,
      mimeType:entry.mime_type as string,name:entry.filename as string|null,
      sizeBytes:bytes.length,dataBase64:bytes.toString("base64")});
  }

  return Object.freeze({put,get,list,owner});
}
