import type { FastifyInstance } from "fastify";
import { P2pError, type P2pActor, type P2pService } from "./service.js";
import type { VerifiedP2pBankMethods } from "./bank_methods.js";
import { sellerConfirmedReceipt } from "./seller_confirmation.js";
import type { P2pEvidenceStorage } from "./evidence_storage.js";

export interface P2pRoutesDependencies {
  readonly service: P2pService;
  readonly bankMethods?: VerifiedP2pBankMethods;
  readonly authorizeBankStepUp?: (input: Readonly<{
    authorizationHeader:string|undefined;bankCode:string;accountNumber:string;
    stepUpToken:string|undefined;
  }>)=>Promise<void>;
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
  if (error instanceof Error && "statusCode" in error) {
    const status=(error as {statusCode?:unknown}).statusCode;
    if(status===401)return reply.code(401).send({error:"p2p.authentication_required"});
    if(status===403)return reply.code(403).send({error:"p2p.step_up_required"});
    if(status===409)return reply.code(409).send({error:"p2p.verified_email_required"});
    if(status===429)return reply.code(429).send({error:"p2p.verification_rate_limited"});
  }
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
  app.get('/v1/wallet/msnw/p2p/capabilities',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.capabilities(await actor(req.headers.authorization));}
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/offers/page",async(req,reply)=>{
    try {
      const a=await actor(req.headers.authorization);
      const query=req.query as Record<string,unknown>;
      const input:Record<string,string>={};
      for(const field of ['cursor','amountMicro','search','asset','fiat','method','side']) {
        if(query[field]!==undefined){
          if(typeof query[field]!=='string')throw new P2pError('p2p.invalid_filter',422);
          input[field]=query[field];
        }
      }
      return await deps.service.offersPage(a,input);
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/offers/:offerId/trader',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try {
      const a=await actor(req.headers.authorization);
      const q=req.query as {cursor?:unknown};
      if(q.cursor!==undefined&&typeof q.cursor!=='string')throw new P2pError('p2p.invalid_cursor',422);
      return await deps.service.traderProfile(a,(req.params as {offerId:string}).offerId,
        typeof q.cursor==='string'?{cursor:q.cursor}:{});
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/my-offers/page",async(req,reply)=>{
    try {
      const query=req.query as {cursor?:unknown};
      return await deps.service.myOffersPage(await actor(req.headers.authorization),{
        ...(typeof query.cursor==="string"?{cursor:query.cursor}:{})});
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/notifications/page",async(req,reply)=>{
    try {
      const query=req.query as {cursor?:unknown};
      return await deps.service.notificationsPage(await actor(req.headers.authorization),{
        ...(typeof query.cursor==="string"?{cursor:query.cursor}:{})});
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/offers", async (req,reply) => {
    try { return {items:await deps.service.offers(await actor(req.headers.authorization))}; }
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/my-offers",async(req,reply)=>{
    try {return {items:await deps.service.myOffers(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/offers/:offerId/pause",async(req,reply)=>{
    try {return await deps.service.pauseOffer(await actor(req.headers.authorization),
      (req.params as {offerId:string}).offerId);}
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/offers/:offerId/resume",async(req,reply)=>{
    try {return await deps.service.resumeOffer(await actor(req.headers.authorization),
      (req.params as {offerId:string}).offerId);}
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
      if(!deps.authorizeBankStepUp)throw new P2pError("p2p.step_up_unavailable",503);
      const body=req.body as Record<string,unknown>|null;
      if(!body || typeof body.bankCode!=="string" || typeof body.accountNumber!=="string")
        throw new P2pError("p2p.bank_input_invalid",422);
      await deps.authorizeBankStepUp({
        authorizationHeader:req.headers.authorization,
        bankCode:body.bankCode,accountNumber:body.accountNumber,
        stepUpToken:req.headers["x-masanawa-step-up"] as string|undefined,
      });
      const method=await deps.bankMethods.verify(owner,req.body);
      return reply.code(201).send(method);
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/seller-capacity",async(req,reply)=>{
    try {return await deps.service.sellerCapacity(await actor(req.headers.authorization));}
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/methods", async (req,reply) => {
    try { return {items:await deps.service.methods(await actor(req.headers.authorization))}; }
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/offers/by-request/:requestKey",async(req,reply)=>{
    try {
      return await deps.service.offerByRequest(await actor(req.headers.authorization),
        (req.params as {requestKey:string}).requestKey);
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/offers", async (req,reply) => {
    try {
      const a=await actor(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=="object"||Array.isArray(body)||
        Object.keys(body).some(k=>!['paymentMethodId','rateKoboPerMsnw','minMicro','maxMicro','inventoryMicro','offerSide'].includes(k))||
        (body.offerSide!==undefined&&typeof body.offerSide!=='string'))
        throw new P2pError("p2p.invalid_offer",422);
      const requestKey=req.headers["idempotency-key"];
      const created=await deps.service.createOffer(a,{
        paymentMethodId:String(body.paymentMethodId??""),
        ...(typeof body.offerSide==='string'?{offerSide:body.offerSide}:{}),
        rateKoboPerMsnw:String(body.rateKoboPerMsnw??""),
        minMicro:String(body.minMicro??""),
        maxMicro:String(body.maxMicro??""),
        inventoryMicro:String(body.inventoryMicro??""),
        ...(typeof requestKey==="string"?{idempotencyKey:requestKey}:{}),
      });
      return reply.code(created.replay?200:201).send(created);
    } catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/orders/:orderId/messages',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try {
      const a=await actor(req.headers.authorization);
      const q=req.query as {cursor?:unknown};
      if(q.cursor!==undefined&&typeof q.cursor!=='string')throw new P2pError('p2p.invalid_cursor',422);
      return await deps.service.messagesPage(a,(req.params as {orderId:string}).orderId,
        typeof q.cursor==='string'?{cursor:q.cursor}:{});
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/orders/:orderId/messages/by-request/:requestKey',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try {
      const a=await actor(req.headers.authorization);
      const p=req.params as {orderId:string;requestKey:string};
      return await deps.service.messageByRequest(a,p.orderId,p.requestKey);
    }catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/orders/:orderId/messages',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try {
      const a=await actor(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).some(k=>k!=='body'))
        throw new P2pError('p2p.invalid_message',422);
      const result=await deps.service.sendMessage(a,(req.params as {orderId:string}).orderId,
        {body:body.body,requestKey:req.headers['idempotency-key']});
      return reply.code(result.replay?200:201).send(result);
    }catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/orders/:orderId/messages/:messageId/report',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try {
      const a=await actor(req.headers.authorization);
      const p=req.params as {orderId:string;messageId:string};
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).some(k=>!['category','details'].includes(k)))
        throw new P2pError('p2p.invalid_report',422);
      const result=await deps.service.reportMessage(a,p.orderId,p.messageId,{category:body.category,details:body.details});
      return reply.code(result.replay?200:201).send(result);
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/admin/msnw/p2p/message-reports',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.messageReports(await operator(req.headers.authorization));}
    catch(error){return respond(error,reply);}
  });
  app.post('/v1/admin/msnw/p2p/message-reports/:reportId/review',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try {
      const a=await operator(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).some(k=>!['decision','reason','version'].includes(k)))
        throw new P2pError('p2p.invalid_message_review',422);
      return await deps.service.reviewMessageReport(a,(req.params as {reportId:string}).reportId,
        {decision:body.decision,reason:body.reason,version:body.version});
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/notifications",async(req,reply)=>{
    try {return {items:await deps.service.notifications(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/offers/:offerId/quote",async(req,reply)=>{
    try {
      const a=await actor(req.headers.authorization);
      const offerId=(req.params as {offerId:string}).offerId;
      const q=req.query as {amountMicro?:unknown;paymentMethodId?:unknown};
      if(q.paymentMethodId!==undefined&&typeof q.paymentMethodId!=='string')throw new P2pError('p2p.invalid_id',422);
      return await deps.service.quote(a,{
        offerId,amountMicro:typeof q.amountMicro==="string"?q.amountMicro:"",
        ...(typeof q.paymentMethodId==='string'?{paymentMethodId:q.paymentMethodId}:{}),
      });
    } catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders/by-request/:requestKey",async(req,reply)=>{
    try {return await deps.service.orderByRequest(await actor(req.headers.authorization),
      (req.params as {requestKey:string}).requestKey);}
    catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders/page",async(req,reply)=>{
    try {
      const a=await actor(req.headers.authorization);
      const q=req.query as {filter?:unknown;cursor?:unknown;limit?:unknown};
      const requestedLimit=typeof q.limit==="string"&&/^[0-9]{1,2}$/.test(q.limit)
        ?Number(q.limit):undefined;
      return await deps.service.ordersPage(a,{
        ...(typeof q.filter==="string"?{filter:q.filter}:{}),
        ...(typeof q.cursor==="string"?{cursor:q.cursor}:{}),
        ...(requestedLimit!==undefined?{limit:requestedLimit}:{}),
      });
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders",async(req,reply)=>{
    try { return {items:await deps.service.orders(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=="object"||Array.isArray(body)||
        Object.keys(body).some(k=>!['offerId','amountMicro','expectedRateKoboPerMsnw','expectedFeeBps','paymentMethodId'].includes(k))||
        (body.paymentMethodId!==undefined&&typeof body.paymentMethodId!=='string'))
        throw new P2pError("p2p.invalid_order",422);
      const key=req.headers["idempotency-key"];
      const result=await deps.service.createOrder(a,{
        offerId:String(body.offerId??""),amountMicro:String(body.amountMicro??""),
        idempotencyKey:typeof key==="string"?key:"",
        ...(typeof body.paymentMethodId==='string'?{paymentMethodId:body.paymentMethodId}:{}),
        ...(typeof body.expectedRateKoboPerMsnw==="string"
          ?{expectedRateKoboPerMsnw:body.expectedRateKoboPerMsnw}:{}),
        ...(typeof body.expectedFeeBps==="number"
          ?{expectedFeeBps:body.expectedFeeBps}:{}),
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
  app.get("/v1/admin/msnw/p2p/reconciliation",async(req,reply)=>{
    try {
      return await deps.service.reconciliationHealth(
        await operator(req.headers.authorization));
    } catch(error) {return respond(error,reply);}
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
