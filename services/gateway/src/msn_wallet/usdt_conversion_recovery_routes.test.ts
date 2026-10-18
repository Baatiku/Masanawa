import Fastify from "fastify";
import { describe, expect, it } from "vitest";
import { registerMsnwUsdtConversionRoutes } from "./usdt_conversion_routes.js";
import type { createMsnwUsdtConversion } from "./usdt_conversion.js";

describe("MSNW recovery endpoint privacy and no replay side effects",()=>{
  it("requires authenticated owner, scopes lookups and disables caches",async()=>{
    const app=Fastify();
    const calls:string[]=[];
    const service={
      async lookup(owner:{tenantId:string;userId:string},key:unknown){
        calls.push(owner.tenantId,owner.userId,String(key));
        return {asset:"MSNW",conversionId:"operation-1",state:"manual_review"};
      },
    } as unknown as ReturnType<typeof createMsnwUsdtConversion>;
    registerMsnwUsdtConversionRoutes(app,{
      authorizer:{async authorize({authorizationHeader}){
        if(authorizationHeader!=="Bearer valid")throw Error("unauthorized");
        return {tenantId:"tenant-A",userId:"owner-A"};
      }},
      service,
    });
    const url="/v1/wallet/msnw/convert/status/original-convert-key-123";
    const denied=await app.inject({method:"GET",url});
    expect(denied.statusCode).toBe(401);
    expect(calls).toEqual([]);
    const reply=await app.inject({method:"GET",url,
      headers:{authorization:"Bearer valid"}});
    expect(reply.statusCode).toBe(200);
    expect(reply.headers["cache-control"]).toBe("private, no-store");
    expect(reply.json()).toMatchObject({
      asset:"MSNW",state:"manual_review",conversionId:"operation-1",
    });
    expect(calls).toEqual(["tenant-A","owner-A","original-convert-key-123"]);
    await app.close();
  });
});
