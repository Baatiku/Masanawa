import type { FastifyInstance } from "fastify";
import type { createMsnwBillingService } from "./billing_service.js";
import { MsnwBillingError } from "./billing_funding.js";

export function registerMsnwBillingRoutes(
  app: FastifyInstance,
  service: ReturnType<typeof createMsnwBillingService>,
): void {
  function failure(reply: {code(value:number):unknown}, error:unknown) {
    const status=error instanceof MsnwBillingError ? error.statusCode
      : error instanceof Error && /(auth|unauthorized)/.test(error.message) ? 401
      : error instanceof Error && /(quote_expired|insufficient|quote_repriced)/.test(error.message) ? 409
      : 503;
    reply.code(status);
    return {error:error instanceof MsnwBillingError
      ?error.code:"msnw.billing.provider_or_service_unavailable",...(error instanceof MsnwBillingError&&error.details?error.details:{})};
  }
  app.post("/v1/wallet/msnw/billing/preview",{bodyLimit:1024},async(request,reply)=>{
    reply.header("Cache-Control","private, no-store");
    try {
      const body=request.body;
      if(!body || typeof body!=="object" || Array.isArray(body) ||
         Object.keys(body).sort().join(",")!=="quoteId,quoteRevision")
        throw new MsnwBillingError("msnw.billing.request_invalid",400);
      const item=body as {quoteId?:unknown;quoteRevision?:unknown};
      if(typeof item.quoteId!=="string" || !Number.isSafeInteger(item.quoteRevision))
        throw new MsnwBillingError("msnw.billing.request_invalid",400);
      return await service.preview({
        authorizationHeader:request.headers.authorization,
        quoteId:item.quoteId,quoteRevision:item.quoteRevision as number,
      });
    } catch(error){return failure(reply,error);}
  });
  app.post("/v1/wallet/msnw/billing/execute",{bodyLimit:2048},async(request,reply)=>{
    reply.header("Cache-Control","private, no-store");
    try {
      const body=request.body;
      if(!body || typeof body!=="object" || Array.isArray(body) ||
         !["expectedAmountMicro,expectedRateKoboPerMsnw,quoteId,quoteRevision","expectedAmountMicro,expectedRateKoboPerMsnw,quoteId,quoteRevision,repeatOf"].includes(Object.keys(body).sort().join(",")))
        throw new MsnwBillingError("msnw.billing.request_invalid",400);
      const v=body as Record<string,unknown>;
      if(typeof v.quoteId!=="string" || !Number.isSafeInteger(v.quoteRevision) ||
        typeof v.expectedAmountMicro!=="string" || typeof v.expectedRateKoboPerMsnw!=="string" ||
        (v.repeatOf!==undefined && (typeof v.repeatOf!=="string"||v.repeatOf.length>180)))
        throw new MsnwBillingError("msnw.billing.request_invalid",400);
      return await service.execute({
        authorizationHeader:request.headers.authorization,
        ...(typeof v.repeatOf==='string'?{repeatOf:v.repeatOf}:{}),
        quoteId:v.quoteId,quoteRevision:v.quoteRevision as number,
        expectedAmountMicro:v.expectedAmountMicro,
        expectedRateKoboPerMsnw:v.expectedRateKoboPerMsnw,
      });
    } catch(error){return failure(reply,error);}
  });
  app.post('/v1/wallet/msnw/billing/close-unsubmitted',{bodyLimit:1024},async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    try{
      const body=request.body;
      if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).sort().join(',')!=='quoteId,quoteRevision')throw new MsnwBillingError('msnw.billing.request_invalid',400);
      const v=body as Record<string,unknown>;
      if(typeof v.quoteId!=='string'||!Number.isSafeInteger(v.quoteRevision))throw new MsnwBillingError('msnw.billing.request_invalid',400);
      return await service.closeUnreserved({authorizationHeader:request.headers.authorization,quoteId:v.quoteId,quoteRevision:v.quoteRevision as number});
    }catch(error){return failure(reply,error);}
  });
  app.get("/v1/wallet/msnw/billing/:reference",async(request,reply)=>{
    reply.header("Cache-Control","private, no-store");
    try {
      const params=request.params as {reference?:unknown};
      if(typeof params.reference!=="string")
        throw new MsnwBillingError("msnw.billing.reference_invalid",400);
      return await service.read({
        authorizationHeader:request.headers.authorization,
        reference:params.reference,
      });
    } catch(error){return failure(reply,error);}
  });
}
