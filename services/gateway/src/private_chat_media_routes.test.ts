import Fastify from "fastify";
import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { registerPrivateChatMediaRoutes } from "./private_chat_media_routes.js";
import type { createPrivateChatMediaService } from "./private_chat_media.js";

function fixture() {
  const app=Fastify();
  const media={list:vi.fn(async()=>[]),put:vi.fn(async()=>({})),get:vi.fn(async()=>null)};
  registerPrivateChatMediaRoutes(app,media as unknown as ReturnType<typeof createPrivateChatMediaService>);
  return {app,media};
}
describe("private media HTTP boundary",()=>{
  it("rejects malformed manifest IDs before invoking storage",async()=>{
    const {app,media}=fixture();
    try {
      for(const payload of [
        {characterId:"bad",requestIds:[]},
        {characterId:createCanonicalId("character"),requestIds:["bad"]},
      ]) {
        const response=await app.inject({method:"POST",url:"/agent/media/list",payload});
        expect(response.statusCode).toBe(400);
      }
      expect(media.list).not.toHaveBeenCalled();
    } finally {await app.close();}
  });
  it("never caches manifests or missing private attachments",async()=>{
    const {app}=fixture();
    const characterId=createCanonicalId("character");
    const requestId=createCanonicalId("request");
    try {
      const manifest=await app.inject({method:"POST",url:"/agent/media/list",payload:{characterId,requestIds:[requestId]}});
      expect(manifest.statusCode).toBe(200);
      expect(manifest.headers["cache-control"]).toBe("private, no-store");
      const missing=await app.inject({method:"GET",url:`/agent/media/${requestId}/0?characterId=${characterId}`});
      expect(missing.statusCode).toBe(404);
      expect(missing.headers["cache-control"]).toBe("private, no-store");
    } finally {await app.close();}
  });
  it("rejects malformed upload and download IDs",async()=>{
    const {app,media}=fixture();
    const characterId=createCanonicalId("character");
    try {
      const upload=await app.inject({method:"POST",url:"/agent/media/bad/0",payload:{characterId,kind:"voice",mimeType:"audio/ogg",dataBase64:"YQ=="}});
      expect(upload.statusCode).toBe(400);
      const download=await app.inject({method:"GET",url:`/agent/media/bad/0?characterId=${characterId}`});
      expect(download.statusCode).toBe(400);
      expect(media.put).not.toHaveBeenCalled();
      expect(media.get).not.toHaveBeenCalled();
    } finally {await app.close();}
  });
});
