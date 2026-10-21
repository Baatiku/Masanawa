import type { FastifyInstance } from "fastify";
import type { MsnBalanceAuthority } from "./routes.js";
import type { createMsnwUsdtConversion } from "./usdt_conversion.js";
import { MsnwConversionError } from "./usdt_conversion.js";

type Service = ReturnType<typeof createMsnwUsdtConversion>;
export function registerMsnwUsdtConversionRoutes(
  app: FastifyInstance,
  input: Readonly<{ authorizer: MsnBalanceAuthority; service: Service }>,
): void {
  async function owner(header: string | undefined) {
    try {
      const identity=await input.authorizer.authorize({authorizationHeader:header});
      if(!identity.tenantId || !identity.userId)
        throw new MsnwConversionError("msnw.convert.auth_required",401);
      return identity;
    }catch(e){
      if(e instanceof MsnwConversionError)throw e;
      throw new MsnwConversionError("msnw.convert.auth_required",401);
    }
  }
  function failed(reply:{code(status:number):unknown},error:unknown){
    const ex=error instanceof MsnwConversionError ? error
      : new MsnwConversionError("msnw.convert.provider_or_ledger_unavailable",503);
    reply.code(ex.statusCode);
    return {error:ex.code};
  }
  function assert(body:unknown,keys:string[]):Record<string,unknown>{
    if(!body || typeof body!=="object" || Array.isArray(body) ||
       Object.keys(body).sort().join(",")!==keys.sort().join(","))
      throw new MsnwConversionError("msnw.convert.request_invalid",400);
    return body as Record<string,unknown>;
  }

  app.post("/v1/wallet/msnw/convert/quote",{bodyLimit:1024},async(request,reply)=>{
    try{
      const who=await owner(request.headers.authorization);
      const value=assert(request.body,["amountMicro","providerCode","destinationAddress"]);
      return await input.service.quote(who, {
        amountMicro:value.amountMicro,providerCode:value.providerCode,
        destinationAddress:value.destinationAddress,
      });
    }catch(e){return failed(reply,e);}
  });
  app.post("/v1/wallet/msnw/convert",{bodyLimit:2048},async(request,reply)=>{
    try{
      const who=await owner(request.headers.authorization);
      const value=assert(request.body,[...(request.body&&typeof request.body==="object"&&"expectedNgnQuoteId" in request.body?["expectedNgnQuoteId"]:[]),"amountMicro","providerCode","destinationAddress",
        "expectedTargetMicro","expectedFeeMicro","expectedRateUsdMicroPerMsnw","idempotencyKey"]);
      return await input.service.confirm(who, {
        amountMicro:value.amountMicro,providerCode:value.providerCode,
        destinationAddress:value.destinationAddress,
        expectedTargetMicro:value.expectedTargetMicro,
        expectedFeeMicro:value.expectedFeeMicro,
        expectedRateUsdMicroPerMsnw:value.expectedRateUsdMicroPerMsnw,
        idempotencyKey:value.idempotencyKey,
        ...(value.expectedNgnQuoteId!==undefined?{expectedNgnQuoteId:value.expectedNgnQuoteId}:{}),
      });
    }catch(e){return failed(reply,e);}
  });
  app.get("/v1/wallet/msnw/convert/status/:idempotencyKey",async(request,reply)=>{
    reply.header("Cache-Control","private, no-store");
    try {
      const who=await owner(request.headers.authorization);
      const key=(request.params as {idempotencyKey?:unknown}).idempotencyKey;
      return await input.service.lookup(who,key);
    } catch(e){return failed(reply,e);}
  });
  app.get("/v1/wallet/msnw/convert/history",async(request,reply)=>{
    try{
      return {items:await input.service.history(await owner(request.headers.authorization))};
    }catch(e){return failed(reply,e);}
  });
  app.get("/v1/wallet/msnw/convert/:conversionId",async(request,reply)=>{
    try{
      const who=await owner(request.headers.authorization);
      const id=(request.params as {conversionId?:unknown}).conversionId;
      if(typeof id!=="string")
        throw new MsnwConversionError("msnw.convert.operation_invalid",400);
      return await input.service.refresh(who,id);
    }catch(e){return failed(reply,e);}
  });
}
