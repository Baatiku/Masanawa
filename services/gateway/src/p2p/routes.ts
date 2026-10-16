import type { FastifyInstance } from "fastify";
import { P2pError, type P2pActor, type P2pService } from "./service.js";
import type { VerifiedP2pBankMethods } from "./bank_methods.js";
import { sellerConfirmedReceipt } from "./seller_confirmation.js";
import type { P2pEvidenceStorage } from "./evidence_storage.js";

export interface P2pRoutesDependencies {
  readonly service: P2pService;
  readonly bankMethods?: VerifiedP2pBankMethods;
  readonly evidenceStorage?: P2pEvidenceStorage;
  /** Existing platform session authorizer, same identity authority as MSNW Wallet. */
  readonly authorize: (authorizationHeader: string | undefined) => Promise<P2pActor>;
  /** An operator session must be independently role-checked; never trust client roles. */
  readonly authorizeOperator?: (authorizationHeader: string | undefined) => Promise<P2pActor>;
  /** Step-up financial authorization must be bound to orderId and authenticated seller. */
  readonly verifySellerConfirmation?: (input: {
    actor: P2pActor; orderId: string; confirmation: unknown;
  }) => Promise<boolean>;
  /** Storage adapter must prove ownership of an already-stored restricted object. */
  readonly verifyEvidence?: (input: {
    actor: P2pActor; orderId: string; objectRef: string; sha256: string;
  }) => Promise<{ verifiedOwnerId: string }>;
}
function respond(error: unknown, reply: { code(n: number): any }) {
  if (error instanceof P2pError)
    return reply.code(error.status).send({ error: error.code });
  if (error instanceof Error && "statusCode" in error && error.statusCode === 401)
    return reply.code(401).send({ error: "p2p.authentication_required" });
  return reply.code(503).send({ error: "p2p.unavailable" });
}
export function registerP2pRoutes(app: FastifyInstance, deps: P2pRoutesDependencies): void {
  const actor = async (header?: string): Promise<P2pActor> => {
    if (!header) throw new P2pError("p2p.authentication_required",401);
    const value=await deps.authorize(header);
    if(!value?.tenantId||!value?.userId)throw new P2pError("p2p.authentication_required",401);
    return value;
  };
  const operator = async (header?: string):Promise<P2pActor> => {
    if (!deps.authorizeOperator) throw new P2pError("p2p.operator_unavailable",503);
    if (!header) throw new P2pError("p2p.authentication_required",401);
    const value=await deps.authorizeOperator(header);
    if(!value?.tenantId||!value?.userId)throw new P2pError("p2p.operator_forbidden",403);
    return value;
  };
  app.get("/v1/wallet/msnw/p2p/offers", async (req,reply) => {
    try { return {items:await deps.service.offers(await actor(req.headers.authorization))}; }
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/my-offers",async(req,reply)=>{
    try {return {items:await deps.service.myOffers(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/offers/:offerId/close",async(req,reply)=>{
    try {return await deps.service.closeOffer(await actor(req.headers.authorization),
      (req.params as {offerId:string}).offerId);}
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/banks",async(req,reply)=>{
    try{
      await actor(req.headers.authorization);
      if(!deps.bankMethods)throw new P2pError("p2p.bank_verification_unavailable",503);
      return {items:await deps.bankMethods.banks()};
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/methods/verify",{bodyLimit:2048},async(req,reply)=>{
    try{
      const owner=await actor(req.headers.authorization);
      if(!deps.bankMethods)throw new P2pError("p2p.bank_verification_unavailable",503);
      const method=await deps.bankMethods.verify(owner,req.body);
      return reply.code(201).send(method);
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/methods", async (req,reply) => {
    try { return {items:await deps.service.methods(await actor(req.headers.authorization))}; }
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/offers", async (req,reply) => {
    try {
      const a=await actor(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=="object"||Array.isArray(body))
        throw new P2pError("p2p.invalid_offer",422);
      return reply.code(201).send(await deps.service.createOffer(a,{
        paymentMethodId:String(body.paymentMethodId??""),
        rateKoboPerMsnw:String(body.rateKoboPerMsnw??""),
        minMicro:String(body.minMicro??""),
        maxMicro:String(body.maxMicro??""),
        inventoryMicro:String(body.inventoryMicro??""),
      }));
    } catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/notifications",async(req,reply)=>{
    try {return {items:await deps.service.notifications(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders",async(req,reply)=>{
    try { return {items:await deps.service.orders(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=="object"||Array.isArray(body))
        throw new P2pError("p2p.invalid_order",422);
      const key=req.headers["idempotency-key"];
      const result=await deps.service.createOrder(a,{
        offerId:String(body.offerId??""),amountMicro:String(body.amountMicro??""),
        idempotencyKey:typeof key==="string"?key:"",
      });
      return reply.code(result.replay?200:201).send(result);
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders/:orderId/receipt",async(req,reply)=>{
    try {
      return await deps.service.receipt(await actor(req.headers.authorization),
        (req.params as {orderId:string}).orderId);
    } catch(error) { return respond(error,reply); }
  });
  app.get("/v1/wallet/msnw/p2p/orders/:orderId",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      return await deps.service.order(a,(req.params as {orderId:string}).orderId);
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/late-payment",
    {bodyLimit:4096},async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const body=req.body as {reason?:unknown}|null;
      const value=await deps.service.reportLatePayment(a,
        (req.params as {orderId:string}).orderId,
        typeof body?.reason==="string"?body.reason:"");
      return reply.code(value.replay?200:201).send(value);
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/claim",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      return await deps.service.action(a,(req.params as {orderId:string}).orderId,"claim");
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/dispute",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const body=req.body as {reason?:unknown}|null;
      return await deps.service.action(a,(req.params as {orderId:string}).orderId,"dispute",
        {explanation:typeof body?.reason==="string"?body.reason:""});
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/cancel",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      return await deps.service.action(a,(req.params as {orderId:string}).orderId,"cancel");
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/confirm-receipt",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const orderId=(req.params as {orderId:string}).orderId;
      const body=req.body as {confirmation?:unknown}|null;
      // Seller-owned, exact-order voluntary bank-receipt assertion is always
      // mandatory. An optional stronger identity step-up cannot bypass it.
      const local=await sellerConfirmedReceipt(deps.service,a,orderId,body?.confirmation);
      if(!local)throw new P2pError("p2p.confirmation_denied",403);
      if(deps.verifySellerConfirmation &&
         !await deps.verifySellerConfirmation({actor:a,orderId,
           confirmation:body?.confirmation}))
        throw new P2pError("p2p.confirmation_denied",403);
      return await deps.service.action(a,orderId,"confirm",{releaseAuthorized:true});
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders/:orderId/evidence",async(req,reply)=>{
    try {
      const a=await actor(req.headers.authorization);
      return {items:await deps.service.listEvidence(a,
        (req.params as {orderId:string}).orderId)};
    } catch(error){return respond(error,reply);}
  });
  // Private object uploaded by Gateway using bounded bytes and signed digest.
  // Mobile never sees S3 credentials or selects another order's storage path.
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/evidence/upload",
    {bodyLimit:3_100_000},async(req,reply)=>{
    try {
      const a=await actor(req.headers.authorization);
      if(!deps.evidenceStorage)throw new P2pError("p2p.evidence_storage_unavailable",503);
      return reply.code(201).send(await deps.evidenceStorage.upload(
        a,(req.params as {orderId:string}).orderId,req.body));
    } catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders/:orderId/evidence/:evidenceId",
    async(req,reply)=>{
    try {
      const a=await actor(req.headers.authorization);
      if(!deps.evidenceStorage)throw new P2pError("p2p.evidence_storage_unavailable",503);
      const p=req.params as {orderId:string;evidenceId:string};
      return await deps.evidenceStorage.download(a,p.orderId,p.evidenceId);
    } catch(error){return respond(error,reply);}
  });
  app.get("/v1/admin/msnw/p2p/disputes/:orderId/evidence/:evidenceId",
    async(req,reply)=>{
    try {
      const a=await operator(req.headers.authorization);
      if(!deps.evidenceStorage)throw new P2pError("p2p.evidence_storage_unavailable",503);
      const p=req.params as {orderId:string;evidenceId:string};
      return await deps.evidenceStorage.download(a,p.orderId,p.evidenceId,true);
    } catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders/:orderId/evidence",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const orderId=(req.params as {orderId:string}).orderId;
      const body=req.body as {objectRef?:unknown;sha256?:unknown}|null;
      if(!deps.verifyEvidence)throw new P2pError("p2p.evidence_storage_unavailable",503);
      const objectRef=typeof body?.objectRef==="string"?body.objectRef:"";
      const sha256=typeof body?.sha256==="string"?body.sha256:"";
      const stored=await deps.verifyEvidence({actor:a,orderId,objectRef,sha256});
      // Evidence is saved for operators; this endpoint has no token transfer.
      return reply.code(201).send(await deps.service.recordEvidence(a,orderId,{
        objectRef,sha256,verifiedOwnerId:stored.verifiedOwnerId}));
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/admin/msnw/p2p/disputes/:orderId",async(req,reply)=>{
    try { return await deps.service.caseFile(await operator(req.headers.authorization),
      (req.params as {orderId:string}).orderId); }
    catch(error){ return respond(error,reply); }
  });
  app.post("/v1/admin/msnw/p2p/expire",async(req,reply)=>{
    try{
      const a=await operator(req.headers.authorization);
      // Manual operator recovery, safe to retry. Locked state + canonical
      // custody refund must commit together; unavailable custody returns 503.
      return await deps.service.expireDue(a,25);
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/admin/msnw/p2p/disputes",async(req,reply)=>{
    try{return {items:await deps.service.disputes(await operator(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/admin/msnw/p2p/late-payments/:orderId/resolve",
    {bodyLimit:4096},async(req,reply)=>{
    try{
      const a=await operator(req.headers.authorization);
      const body=req.body as {resolution?:unknown;reason?:unknown}|null;
      if(body?.resolution!=="escalate"&&body?.resolution!=="close")
        throw new P2pError("p2p.late_case_action_invalid",422);
      return await deps.service.resolveLatePayment(a,
        (req.params as {orderId:string}).orderId,body.resolution,
        typeof body.reason==="string"?body.reason:"");
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/admin/msnw/p2p/disputes/:orderId/resolve",async(req,reply)=>{
    try{
      const a=await operator(req.headers.authorization);
      const body=req.body as {resolution?:unknown;reason?:unknown}|null;
      const action=body?.resolution==="release"?"release":body?.resolution==="refund"?"refund":null;
      if(!action)throw new P2pError("p2p.resolution_invalid",422);
      return await deps.service.action(a,(req.params as {orderId:string}).orderId,action,{
        isOperator:true,explanation:typeof body?.reason==="string"?body.reason:""});
    }catch(error){return respond(error,reply);}
  });
}
