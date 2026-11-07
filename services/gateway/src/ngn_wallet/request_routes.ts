import type { FastifyInstance } from "fastify";
import Type from "typebox";
import {
  NgnRequestStoreError,
  type NgnRequestActor,
  type NgnPaymentRequest,
} from "@masanawa/postgres";
import type { NgnSendPorts } from "./send_review.js";

export interface NgnRequestStore {
  create: (actor: NgnRequestActor, input: {
    payerId: string;amountKobo:number;idempotencyKey:string;
  }) => Promise<NgnPaymentRequest>;
  get: (actor:NgnRequestActor,requestId:string)=>Promise<NgnPaymentRequest|null>;
  list: (actor: NgnRequestActor) => Promise<readonly NgnPaymentRequest[]>;
  pay: (actor: NgnRequestActor,requestId:string) =>
    Promise<{operationId:string;amountKobo:number;state:"completed"}>;
  cancel: (actor: NgnRequestActor,requestId:string) =>
    Promise<NgnPaymentRequest>;
  decline: (actor: NgnRequestActor,requestId:string) =>
    Promise<NgnPaymentRequest>;
}
export interface NgnRequestPorts {
  readonly authorize: NgnSendPorts["authorize"];
  readonly resolveRecipient: NgnSendPorts["resolveRecipient"];
  readonly store: NgnRequestStore;
}

export function registerNgnRequestRoutes(
  app: FastifyInstance, ports: NgnRequestPorts,
): void {
  const actor = async (header: string | undefined) => {
    const identity = await ports.authorize(header);
    if (!identity?.tenantId || !identity?.userId) {
      throw new NgnRequestStoreError(403, "unauthorized");
    }
    return identity;
  };
  const failure = (error: unknown, reply: {code:(n:number)=>unknown}) => {
    if (error instanceof NgnRequestStoreError) {
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
    return {error:{code:"ngn_request_unavailable"}};
  };
  app.get("/v1/ngn/wallet/requests", async (request, reply) => {
    reply.header("cache-control","no-store");
    try { return {requests: await ports.store.list(
      await actor(request.headers.authorization))};
    } catch (error) { return failure(error,reply); }
  });
  app.get<{Params:{requestId:string}}>("/v1/ngn/wallet/requests/:requestId",async(request,reply)=>{
    reply.header('cache-control','no-store');
    try{const user=await actor(request.headers.authorization);const found=await ports.store.get(user,request.params.requestId);
      return found?{request:found}:reply.code(404).send({error:{code:'request_not_found'}});
    }catch(e){return failure(e,reply);}
  });
  app.post("/v1/ngn/wallet/requests",{
    schema: {body: Type.Object({
      username: Type.String({minLength:2,maxLength:80}),
      amountKobo: Type.Integer({minimum:1,maximum:1000000000}),
      idempotencyKey: Type.String({minLength:12,maxLength:128}),
    },{additionalProperties:false})},
  },async (request,reply) => {
    reply.header("cache-control","no-store");
    try {
      const owner=await actor(request.headers.authorization);
      const body=request.body as {username:string;amountKobo:number;idempotencyKey:string};
      const handle=body.username.trim().replace(/^@/,"").toLowerCase();
      if (!/^[a-z0-9_][a-z0-9_.-]{1,63}$/.test(handle)) {
        throw new NgnRequestStoreError(422,"invalid_username");
      }
      const payer=await ports.resolveRecipient(owner,handle);
      if (!payer?.active || payer.userId===owner.userId ||
          payer.username.toLowerCase()!==handle) {
        throw new NgnRequestStoreError(404,"recipient_unavailable");
      }
      const created=await ports.store.create(owner,{
        payerId:payer.userId,amountKobo:body.amountKobo,
        idempotencyKey:body.idempotencyKey,
      });
      reply.code(201);
      return {request:created};
    }catch(error){return failure(error,reply);}
  });
  const params=Type.Object({
    requestId:Type.String({minLength:12,maxLength:160}),
  },{additionalProperties:false});
  app.post("/v1/ngn/wallet/requests/:requestId/pay",{
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
  app.post("/v1/ngn/wallet/requests/:requestId/cancel",{
    schema:{params,body:Type.Object({}, {additionalProperties:false})},
  },async(request,reply)=>{
    reply.header("cache-control","no-store");
    try {
      const owner=await actor(request.headers.authorization);
      const id=(request.params as {requestId:string}).requestId;
      return {request:await ports.store.cancel(owner,id)};
    }catch(error){return failure(error,reply);}
  });
  app.post("/v1/ngn/wallet/requests/:requestId/decline",{
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
