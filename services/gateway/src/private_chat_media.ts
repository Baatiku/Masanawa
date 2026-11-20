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
      request.dataBase64.length > 4 * Math.ceil(MAX_CHAT_MEDIA_BYTES / 3) ||
      request.dataBase64.length % 4 !== 0 ||
      /[^A-Za-z0-9+/=]/u.test(request.dataBase64)) {
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

  async function store(who:Owner,request:PrivateChatMediaInput,generatedReply=false){
    const verified=validateMedia(request);
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
        if(request.slot===8&&!generatedReply)throw new RangeError('chat.media.reply_server_only');
        // Customer inputs and the generated reply have independent envelopes.
        // A reply restored first on another device must not consume input quota.
        const total = current.rows.reduce((sum, row) =>
          sum + (Number(row.slot) < 8 ? Number(row.size) : 0), 0);
        const usage = await client.query(
          "SELECT COALESCE(SUM(octet_length(payload)),0)::text AS total " +
          "FROM agents.private_chat_media WHERE tenant_id=$1 AND user_id=$2",
          [who.tenantId,who.userId],
        );
        const used = BigInt(String(usage.rows[0]?.total ?? "0"));
        if (used + BigInt(verified.data.length) > 128n * 1024n * 1024n) {
          throw new RangeError("chat.media.account_quota_exceeded");
        }
        if (request.slot < 8 && total + verified.data.length > MAX_MESSAGE_MEDIA_BYTES) {
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
      "expires_at,octet_length(payload) AS size_bytes FROM agents.private_chat_media " +
      "WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 " +
      "AND request_id=ANY($4::text[]) AND expires_at>clock_timestamp() " +
      "AND (slot<8 OR EXISTS (SELECT 1 FROM agents.mobile_turn_commands t WHERE " +
      "t.tenant_id=$1 AND t.user_id=$2 AND t.character_id=$3 AND t.request_id=private_chat_media.request_id AND t.state='completed')) " +
      "ORDER BY request_id,slot",
      [who.tenantId,who.userId,who.characterId,ids],
    );
    return Object.freeze(records.rows.map(row => Object.freeze({
      requestId:row.request_id as string, slot:Number(row.slot),
      kind:row.kind as ChatMediaKind,mimeType:row.mime_type as string,
      expiresAt:new Date(row.expires_at).toISOString(),name:row.filename as string|null,sizeBytes:Number(row.size_bytes),
    })));
  }

  async function get(authorizationHeader: string | undefined,
    characterId: string, requestId: string, slot: number) {
    const who=await owner(authorizationHeader,characterId);
    const id=parseCanonicalId("request",requestId);
    if(!Number.isSafeInteger(slot)||slot<0||slot>8)
      throw new RangeError("chat.media.slot_invalid");
    const r=await input.pool.query(
      "SELECT kind,mime_type,filename,payload,sha256,expires_at FROM agents.private_chat_media " +
      "WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND request_id=$4 " +
      "AND slot=$5 AND expires_at>clock_timestamp() " +
      "AND ($5<8 OR EXISTS (SELECT 1 FROM agents.mobile_turn_commands t WHERE " +
      "t.tenant_id=$1 AND t.user_id=$2 AND t.character_id=$3 AND t.request_id=$4 AND t.state='completed'))",
      [who.tenantId,who.userId,who.characterId,id,slot],
    );
    const entry=r.rows[0];
    if(!entry) return null;
    const bytes:Buffer=entry.payload;
    if(createHash("sha256").update(bytes).digest("hex")!==entry.sha256)
      throw new Error("chat.media.checksum_invalid");
    return Object.freeze({kind:entry.kind as ChatMediaKind,
      mimeType:entry.mime_type as string,name:entry.filename as string|null,
      expiresAt:new Date(entry.expires_at).toISOString(),sizeBytes:bytes.length,dataBase64:bytes.toString("base64")});
  }

  async function put(header:string|undefined,request:PrivateChatMediaInput){return store(await owner(header,request.characterId),request);}
  async function saveReplyAudio(scope:import('@masanawa/agents').CharacterSessionScope,requestId:string,
    audio:{dataBase64:string;mimeType:string},state:'completed'|'pending'='completed'){
    const proof=(await input.pool.query(`SELECT 1 FROM agents.mobile_turn_commands WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4 AND request_id=$5 AND state=$6`,[scope.tenantId,scope.userId,scope.characterId,scope.relationshipId,parseCanonicalId('request',requestId),state])).rows[0];
    if(!proof)throw new Error('chat.media.completed_reply_required');
    audio={...audio,mimeType:audio.mimeType.toLowerCase()};
    if(!['audio/wav','audio/pcm;rate=24000','audio/l16;rate=24000','audio/l16'].includes(audio.mimeType))throw new RangeError('chat.media.reply_audio_invalid');
    if(audio.mimeType!=='audio/wav'){const pcm=Buffer.from(audio.dataBase64,'base64');if(pcm.length%2||pcm.length>8*1024*1024-44||pcm.toString('base64')!==audio.dataBase64)throw new RangeError('chat.media.reply_audio_invalid');const header=Buffer.alloc(44);header.write('RIFF');header.writeUInt32LE(36+pcm.length,4);header.write('WAVEfmt ',8);header.writeUInt32LE(16,16);header.writeUInt16LE(1,20);header.writeUInt16LE(1,22);header.writeUInt32LE(24000,24);header.writeUInt32LE(48000,28);header.writeUInt16LE(2,32);header.writeUInt16LE(16,34);header.write('data',36);header.writeUInt32LE(pcm.length,40);audio={mimeType:'audio/wav',dataBase64:Buffer.concat([header,pcm]).toString('base64')};}
    return store(scope,{characterId:scope.characterId,requestId,slot:8,kind:'voice',mimeType:audio.mimeType,dataBase64:audio.dataBase64,name:'Voice reply'},true);
  }
  // Slot 8 stays private and invisible while its owning turn is pending. No
  // completed turn can expose a transcript before its audio has been stored.
  const stageReplyAudio=(scope:Parameters<typeof saveReplyAudio>[0],requestId:string,audio:Parameters<typeof saveReplyAudio>[2])=>
    saveReplyAudio(scope,requestId,audio,'pending');
  return Object.freeze({put,get,list,owner,saveReplyAudio,stageReplyAudio});
}

