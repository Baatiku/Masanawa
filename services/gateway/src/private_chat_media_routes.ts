import type { FastifyInstance } from "fastify";
import { parseCanonicalId } from "@masanawa/contracts";
import type { createPrivateChatMediaService } from "./private_chat_media.js";
type Service = ReturnType<typeof createPrivateChatMediaService>;
function id(value: unknown, kind: "character" | "request"): string {
  try { return parseCanonicalId(kind, string(value, kind + "Id", 160)); }
  catch { throw new RangeError("chat.media." + kind + "Id_invalid"); }
}
function string(value: unknown, name: string, limit = 256): string {
  if (typeof value !== "string" || !value || value.length > limit)
    throw new RangeError("chat.media." + name + "_invalid");
  return value;
}
function slot(value: unknown): number {
  const n = Number(value);
  if (!Number.isInteger(n) || n < 0 || n > 8)
    throw new RangeError("chat.media.slot_invalid");
  return n;
}
export function registerPrivateChatMediaRoutes(app: FastifyInstance, media: Service): void {
  app.post("/agent/media/list", { bodyLimit: 16_384 }, async (request, reply) => {
    reply.header("cache-control", "private, no-store");
    try {
      const body=request.body as Record<string,unknown>;
      if (!body || typeof body !== "object" || !Array.isArray(body.requestIds) ||
          body.requestIds.length > 100 ||
          body.requestIds.some(x => typeof x !== "string")) {
        throw new RangeError("chat.media.manifest_invalid");
      }
      return { items: await media.list(request.headers.authorization,
        id(body.characterId,"character"),body.requestIds.map(value=>id(value,"request"))) };
    } catch (error) {
      if (error instanceof RangeError) {
        reply.code(400);
        return {error:error.message};
      }
      throw error;
    }
  });
  app.post("/agent/media/:requestId/:slot", { bodyLimit: 12_000_000 },
    async (request, reply) => {
      reply.header("cache-control", "private, no-store");
      try {
        const params=request.params as Record<string,unknown>;
        const body=request.body as Record<string,unknown>;
        if (!body || typeof body!=="object" || Array.isArray(body))
          throw new RangeError("chat.media.invalid");
        return await media.put(request.headers.authorization,{
          characterId:id(body.characterId,"character"),
          requestId:id(params.requestId,"request"),
          slot:slot(params.slot),
          kind:string(body.kind,"kind",24) as "voice"|"audio"|"image"|"video"|"doc",
          mimeType:string(body.mimeType,"mimeType",160),
          ...(body.name===undefined?{}:{name:string(body.name,"name",240)}),
          dataBase64:string(body.dataBase64,"dataBase64",11_250_000),
        });
      } catch(error) {
        if (error instanceof Error && error.message === "chat.media.idempotency_conflict") {
          reply.code(409);
          return {error:error.message};
        }
        if (error instanceof RangeError) {
          reply.code(400);
          return {error:error.message};
        }
        throw error;
      }
    });
  app.get("/agent/media/:requestId/:slot",async(request,reply)=>{
    reply.header("cache-control", "private, no-store");
    try {
      const params=request.params as Record<string,unknown>;
      const query=request.query as Record<string,unknown>;
      const file=await media.get(
        request.headers.authorization,
        id(query.characterId,"character"),
        id(params.requestId,"request"),
        slot(params.slot),
      );
      if(!file){reply.code(404);return {error:"chat.media.not_found"};}
      reply.header("cache-control","private, no-store");
      return file;
    } catch(error) {
      if(error instanceof RangeError){
        reply.code(400);return {error:error.message};
      }
      throw error;
    }
  });
}

