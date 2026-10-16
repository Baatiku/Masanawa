import { describe,expect,it } from "vitest";
import { createGatewayApp } from "../app.js";
import { MsnwConversionError } from "./usdt_conversion.js";

describe("MSNW stablecoin provider payout routes",()=>{
  it("requires an authenticated customer and never accepts client injected reserve authority",async()=>{
    const actions:string[]=[];
    const app=createGatewayApp({msnwConversion:{
      authorizer:{
        async authorize({authorizationHeader}:any){
          if(authorizationHeader!=="Bearer genuine-session")
            throw new Error("unauthorized");
          return {tenantId:"tenant",userId:"owner"};
        },
      },
      service:{
        async quote(){actions.push("quote");return {asset:"MSNW"};},
        async confirm(){actions.push("confirm");return {asset:"MSNW"};},
        async history(){actions.push("history");return [];},
        async refresh(){actions.push("refresh");return {};},
      },
    } as any});
    const noAuth=await app.inject({method:"POST",
      url:"/v1/wallet/msnw/convert/quote",
      payload:{amountMicro:"1000000",providerCode:"USDTTRC20",
        destinationAddress:"T".repeat(34)}});
    expect(noAuth.statusCode).toBe(401);
    const injected=await app.inject({method:"POST",
      url:"/v1/wallet/msnw/convert",
      headers:{authorization:"Bearer genuine-session"},
      payload:{amountMicro:"1000000",providerCode:"USDTTRC20",
        destinationAddress:"T".repeat(34),expectedTargetMicro:"1000000",
        expectedFeeMicro:"10000",expectedRateUsdMicroPerMsnw:"1000000",
        idempotencyKey:"stable-confirmation-123",force:true}});
    expect(injected.statusCode).toBe(400);
    expect(actions).toEqual([]);
    await app.close();
  });
  it("propagates missing treasury readiness as unavailable, not a completed payout",async()=>{
    const app=createGatewayApp({msnwConversion:{
      authorizer:{
        async authorize(){return {tenantId:"tenant",userId:"owner"};},
      },
      service:{
        async quote(){throw new MsnwConversionError("msnw.convert.provider_liquidity_unavailable",503);},
      },
    } as any});
    const result=await app.inject({method:"POST",
      url:"/v1/wallet/msnw/convert/quote",
      headers:{authorization:"Bearer genuine-session"},
      payload:{amountMicro:"1000000",providerCode:"USDTTRC20",
        destinationAddress:"T".repeat(34)}});
    expect(result.statusCode).toBe(503);
    expect(JSON.parse(result.body).error).toBe("msnw.convert.provider_liquidity_unavailable");
    await app.close();
  });
});
