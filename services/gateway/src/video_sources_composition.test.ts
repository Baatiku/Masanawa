import {describe,it,expect} from "vitest";
import {createGatewayApp} from "./app.js";

describe("Gateway YouTube source route composition", () => {
  it("never mounts retired video-source management even with injected dependencies", async () => {
    const app=createGatewayApp({
      videoSources:{
        resolvePrincipal:async()=>({
          tenantId:"tenant_test",actorId:"staff",
          staffRoles:[],
        }),
        store:{
          list:async()=>[],
          create:async(input)=>({
            id:input.id,channelId:input.channelId,
            channelName:input.channelName,targetRegion:input.targetRegion,
            enabled:false,syncMode:"manual" as const,
          }),
          pause:async()=>false,
        },
      },
    });
    try {
      expect((await app.inject({method:"GET",url:"/v1/admin/video-sources"})).statusCode).toBe(404);
      expect((await app.inject({method:"POST",url:"/v1/admin/video-sources",
        payload:{channelId:"UC"+"a".repeat(22),channelName:"test",targetRegion:"NG"}})).statusCode).toBe(404);
    } finally {await app.close();}
  });

  it("does not mount source management without durable source dependency", async()=>{
    const app=createGatewayApp();
    try {
      expect((await app.inject({method:"GET",url:"/v1/admin/video-sources"})).statusCode).toBe(404);
    } finally {await app.close();}
  });
});
