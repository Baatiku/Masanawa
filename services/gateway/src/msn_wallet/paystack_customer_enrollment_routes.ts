import type { FastifyInstance } from "fastify";
import {
  MsnwEnrollmentError, type MsnwPaystackEnrollmentService,
} from "./paystack_customer_enrollment.js";

export function registerMsnwPaystackEnrollmentRoutes(
  app: FastifyInstance, service: MsnwPaystackEnrollmentService,
): void {
  async function session(authorizationHeader: string | undefined) {
    try {
      return await service.sessions.authorize({ authorizationHeader });
    } catch (error) {
      throw new MsnwEnrollmentError(
        error instanceof Error && "statusCode" in error && error.statusCode === 503
          ? "funding.authentication_unavailable" : "funding.authentication_required",
        error instanceof Error && "statusCode" in error && error.statusCode === 503 ? 503 : 401,
      );
    }
  }
  function fail(reply: { code(code: number): unknown }, error: unknown) {
    reply.code(error instanceof MsnwEnrollmentError ? error.statusCode : 503);
    return { error: error instanceof MsnwEnrollmentError
      ? error.code : "funding.enrollment_unavailable" };
  }
  app.get('/v1/wallet/msnw/funding/enrollment/banks',async(request,reply)=>{
    try{reply.header('Cache-Control','no-store');await session(request.headers.authorization);return {banks:await service.banks()};}
    catch(error){return fail(reply,error);}
  });
  app.get("/v1/wallet/msnw/funding/enrollment", async (request, reply) => {
    try {
      reply.header('Cache-Control','no-store');
      const identity=await session(request.headers.authorization);
      return {...await service.read(identity),profile:await service.profile(identity)};
    } catch (error) { return fail(reply, error); }
  });
  app.post("/v1/wallet/msnw/funding/enrollment", {
    bodyLimit: 2048,
  }, async (request, reply) => {
    try {
      const identity = await session(request.headers.authorization);
      const result = await service.submit(identity, request.body);
      if (result.state === "creating_customer" ||
          result.state === "identity_validation_pending") reply.code(202);
      return result;
    } catch (error) { return fail(reply, error); }
  });
}
