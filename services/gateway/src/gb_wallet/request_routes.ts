import type { FastifyInstance } from "fastify";
import Type from "typebox";
import {
  GbRequestStoreError,
  type GbRequestActor,
  type GbPaymentRequest,
} from "@masanawa/postgres";
import type { GbSendPorts } from "./send_review.js";

export interface GbRequestStore {
  create: (actor: GbRequestActor, input: {
    payerId: string;amountMb:number;idempotencyKey:string;
  }) => Promise<GbPaymentRequest>;
  list: (actor: GbRequestActor) => Promise<readonly GbPaymentRequest[]>;
  pay: (actor: GbRequestActor,requestId:string) =>
    Promise<{operationId:string;amountMb:number;state:"completed"}>;
  cancel: (actor: GbRequestActor,requestId:string) =>
    Promise<GbPaymentRequest>;
  decline: (actor: GbRequestActor,requestId:string) =>
    Promise<GbPaymentRequest>;
}
export interface GbRequestPorts {
  readonly authorize: GbSendPorts["authorize"];
  readonly resolveRecipient: GbSendPorts["resolveRecipient"];
  readonly store: GbRequestStore;
}

export function registerGbRequestRoutes(
  app: FastifyInstance, ports: GbRequestPorts,
): void {
  const actor = async (header: string | undefined) => {
    const identity = await ports.authorize(header);
    if (!identity?.tenantId || !identity?.userId) {
      throw new GbRequestStoreError(403, "unauthorized");
    }
    return identity;
  };
  const failure = (error: unknown, reply: {code:(n:number)=>unknown}) => {
    if (error instanceof GbRequestStoreError) {
      reply.code(error.status);
      return {error:{code:error.code}};
    }
    if (error && typeof error === "object" && "statusCode" in error) {
      const code=(error as {statusCode?:unknown}).statusCode;
      if (code===401 || code===403) {
        reply.code(code);
        return {error:{code:"unauthorized"}};
      }
    }
    reply.code(503);
    return {error:{code:"mb_request_unavailable"}};
  };
  app.get("/v1/gb/wallet/requests", async (request, reply) => {
    reply.header("cache-control","no-store");
    try { return {requests: await ports.store.list(
      await actor(request.headers.authorization))};
    } catch (error) { return failure(error,reply); }
  });
  app.post("/v1/gb/wallet/requests",{
    schema: {body: Type.Object({
      username: Type.String({minLength:3,maxLength:80}),
      amountMb: Type.Integer({minimum:1,maximum:1000000000}),
      idempotencyKey: Type.String({minLength:12,maxLength:128}),
    },{additionalProperties:false})},
  },async (request,reply) => {
    reply.header("cache-control","no-store");
    try {
      const owner=await actor(request.headers.authorization);
      const body=request.body as {username:string;amountMb:number;idempotencyKey:string};
      const handle=body.username.trim().replace(/^@/,"").toLowerCase();
      if (!/^[a-z0-9_][a-z0-9_.-]{2,63}$/.test(handle)) {
        throw new GbRequestStoreError(422,"invalid_username");
      }
      const payer=await ports.resolveRecipient(owner,handle);
      if (!payer?.active || payer.userId===owner.userId ||
          payer.username.toLowerCase()!==handle) {
        throw new GbRequestStoreError(404,"recipient_unavailable");
      }
      const created=await ports.store.create(owner,{
        payerId:payer.userId,amountMb:body.amountMb,
        idempotencyKey:body.idempotencyKey,
      });
      reply.code(201);
      return {request:created};
    }catch(error){return failure(error,reply);}
  });
  const params=Type.Object({
    requestId:Type.String({minLength:12,maxLength:160}),
  },{additionalProperties:false});
  app.post("/v1/gb/wallet/requests/:requestId/pay",{
    schema:{params,body:Type.Object({
      reviewAccepted:Type.Literal(true),
    },{additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try {
      const owner=await actor(request.headers.authorization);
      const id=(request.params as {requestId:string}).requestId;
      return {receipt:await ports.store.pay(owner,id)};
    }catch(error){return failure(error,reply);}
  });
  app.post("/v1/gb/wallet/requests/:requestId/cancel",{
    schema:{params,body:Type.Object({}, {additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try {
      const owner=await actor(request.headers.authorization);
      const id=(request.params as {requestId:string}).requestId;
      return {request:await ports.store.cancel(owner,id)};
    }catch(error){return failure(error,reply);}
  });
  app.post("/v1/gb/wallet/requests/:requestId/decline",{
    schema:{params,body:Type.Object({}, {additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try {
      const owner=await actor(request.headers.authorization);
      const id=(request.params as {requestId:string}).requestId;
      return {request:await ports.store.decline(owner,id)};
    }catch(error){return failure(error,reply);}
  });
}
