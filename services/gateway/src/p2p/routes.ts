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
function historyQuery(raw:unknown){
 const q=raw as Record<string,unknown>,input:Record<string,string|number>={};
 const fields=['cursor','filter','status','direction','fromDate','toDate','asset','fiat','method','limit'];
 for(const [key,value] of Object.entries(q)){
  if(!fields.includes(key)||typeof value!=='string')throw new P2pError('p2p.invalid_filter',422);
  if(key==='limit'){if(!/^[0-9]{1,2}$/.test(value))throw new P2pError('p2p.invalid_limit',422);input.limit=Number(value);}else input[key]=value;
 }
 return input;
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
      for(const field of ['cursor','amountMicro','search','asset','fiat','method','side','sort','fiatKobo']) {
        if(query[field]!==undefined){
          if(typeof query[field]!=='string')throw new P2pError('p2p.invalid_filter',422);
          input[field]=query[field];
        }
      }
      return await deps.service.offersPage(a,input);
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/ad-reports/page',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{const q=req.query as {cursor?:unknown};if(q.cursor!==undefined&&typeof q.cursor!=='string')throw new P2pError('p2p.invalid_cursor',422);
      return await deps.service.myAdReports(await actor(req.headers.authorization),typeof q.cursor==='string'?{cursor:q.cursor}:{});
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/offers/:offerId/report',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.adReportByOffer(await actor(req.headers.authorization),(req.params as {offerId:string}).offerId);}
    catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/offers/:offerId/report',{bodyLimit:12288},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{const a=await actor(req.headers.authorization),b=req.body as Record<string,unknown>|null;
      if(!b||typeof b!=='object'||Array.isArray(b)||Object.keys(b).some(k=>!['category','details'].includes(k)))throw new P2pError('p2p.invalid_report',422);
      const result=await deps.service.reportAd(a,(req.params as {offerId:string}).offerId,{category:b.category,details:b.details});
      return reply.code(result.replay?200:201).send(result);
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/admin/msnw/p2p/ad-reports',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{const a=await operator(req.headers.authorization),q=req.query as {cursor?:unknown;filter?:unknown};
      if((q.cursor!==undefined&&typeof q.cursor!=='string')||(q.filter!==undefined&&typeof q.filter!=='string'))throw new P2pError('p2p.invalid_filter',422);
      return await deps.service.adReports(a,{...(typeof q.cursor==='string'?{cursor:q.cursor}:{}),...(typeof q.filter==='string'?{filter:q.filter}:{})});
    }catch(error){return respond(error,reply);}
  });
  app.post('/v1/admin/msnw/p2p/ad-reports/:reportId/review',{bodyLimit:12288},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{const a=await operator(req.headers.authorization),b=req.body as Record<string,unknown>|null;
      if(!b||typeof b!=='object'||Array.isArray(b)||Object.keys(b).some(k=>!['decision','reason','version'].includes(k)))throw new P2pError('p2p.invalid_ad_report_review',422);
      return await deps.service.reviewAdReport(a,(req.params as {reportId:string}).reportId,{decision:b.decision,reason:b.reason,version:b.version});
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
  app.get('/v1/wallet/msnw/p2p/my-offers/page',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.myOffersPage(await actor(req.headers.authorization),historyQuery(req.query));}catch(error){return respond(error,reply);}
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
  app.get('/v1/wallet/msnw/p2p/offers/:offerId/edit',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.offerForEdit(await actor(req.headers.authorization),(req.params as {offerId:string}).offerId);}
    catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/offer-edits/by-request/:requestKey',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.offerEditByRequest(await actor(req.headers.authorization),(req.params as {requestKey:string}).requestKey);}
    catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/offers/:offerId/edit',{bodyLimit:2048},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{
      const a=await actor(req.headers.authorization),b=req.body as Record<string,unknown>|null;
      const fields=['expectedRevision','paymentMethodId','rateKoboPerMsnw','minMicro','maxMicro','remainingMicro'];
      if(!b||typeof b!=='object'||Array.isArray(b)||Object.keys(b).some(k=>!fields.includes(k))||
        fields.some(k=>typeof b[k] !== (k==='expectedRevision'?'number':'string'))||typeof req.headers['idempotency-key']!=='string')throw new P2pError('p2p.invalid_offer_edit',422);
      const result=await deps.service.editOffer(a,{offerId:(req.params as {offerId:string}).offerId,
        requestKey:req.headers['idempotency-key'],expectedRevision:b.expectedRevision as number,
        paymentMethodId:b.paymentMethodId as string,rateKoboPerMsnw:b.rateKoboPerMsnw as string,
        minMicro:b.minMicro as string,maxMicro:b.maxMicro as string,remainingMicro:b.remainingMicro as string});
      return reply.code(result.replay?200:201).send(result);
    }catch(error){return respond(error,reply);}
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
  app.post('/v1/wallet/msnw/p2p/methods/:methodId/label',{bodyLimit:512},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{
      const a=await actor(req.headers.authorization),b=req.body as Record<string,unknown>|null;
      if(!b||typeof b!=='object'||Array.isArray(b)||Object.keys(b).join(',')!=='label')throw new P2pError('p2p.invalid_method_label',422);
      return await deps.service.renameMethod(a,(req.params as {methodId:string}).methodId,b.label);
    }catch(error){return respond(error,reply);}
  });
  for(const operation of ['prefer','archive'] as const)app.post('/v1/wallet/msnw/p2p/methods/:methodId/'+operation,{bodyLimit:256},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{
      const a=await actor(req.headers.authorization),b=req.body;
      if(b!==undefined&&b!==null&&(typeof b!=='object'||Array.isArray(b)||Object.keys(b).length!==0))throw new P2pError('p2p.invalid_method_update',422);
      const methodId=(req.params as {methodId:string}).methodId;
      return operation==='prefer'?await deps.service.preferMethod(a,methodId):await deps.service.archiveMethod(a,methodId);
    }catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/methods/manage',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.managedMethods(await actor(req.headers.authorization));}
    catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/methods/:methodId/disable',{bodyLimit:256},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{
      const a=await actor(req.headers.authorization),body=req.body;
      if(body!==undefined&&body!==null&&
        (typeof body!=='object'||Array.isArray(body)||Object.keys(body).length!==0))
        throw new P2pError('p2p.invalid_method_update',422);
      return await deps.service.disableMethod(a,(req.params as {methodId:string}).methodId);
    }catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/methods", async (req,reply) => {
    reply.header("Cache-Control","no-store");
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
  app.get('/v1/wallet/msnw/p2p/orders/page',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.ordersPage(await actor(req.headers.authorization),historyQuery(req.query));}catch(error){return respond(error,reply);}
  });
  app.get("/v1/wallet/msnw/p2p/orders",async(req,reply)=>{
    try { return {items:await deps.service.orders(await actor(req.headers.authorization))};}
    catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/ad-availability',async(req,reply)=>{
    reply.header('cache-control','no-store');
    try{return await deps.service.adAvailability(await actor(req.headers.authorization));}catch(error){return respond(error,reply);}
  });
  app.get('/v1/wallet/msnw/p2p/pause-requests/:requestKey',async(req,reply)=>{
    reply.header('cache-control','no-store');
    try{return await deps.service.bulkPauseByRequest(await actor(req.headers.authorization),(req.params as {requestKey:string}).requestKey);}catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/pause-all',async(req,reply)=>{
    reply.header('cache-control','no-store');
    try{
      const a=await actor(req.headers.authorization),body=req.body;
      if(body!==undefined&&(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).length))throw new P2pError('p2p.invalid_pause_request',422);
      const request=req.headers['idempotency-key'];
      const value=await deps.service.pauseAllAds(a,typeof request==='string'?request:'');
      return reply.code(value.replay?200:201).send(value);
    }catch(error){return respond(error,reply);}
  });
  app.post("/v1/wallet/msnw/p2p/orders",async(req,reply)=>{
    try{
      const a=await actor(req.headers.authorization);
      const body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=="object"||Array.isArray(body)||
        Object.keys(body).some(k=>!['offerId','amountMicro','expectedRateKoboPerMsnw','expectedFeeBps','paymentMethodId','expectedTermsRevision'].includes(k))||
        (body.paymentMethodId!==undefined&&typeof body.paymentMethodId!=='string')||
        (body.expectedTermsRevision!==undefined&&(!Number.isSafeInteger(body.expectedTermsRevision)||Number(body.expectedTermsRevision)<1)))
        throw new P2pError("p2p.invalid_order",422);
      const key=req.headers["idempotency-key"];
      const result=await deps.service.createOrder(a,{
        offerId:String(body.offerId??""),amountMicro:String(body.amountMicro??""),
        idempotencyKey:typeof key==="string"?key:"",
        ...(typeof body.paymentMethodId==='string'?{paymentMethodId:body.paymentMethodId}:{}),
        ...(typeof body.expectedRateKoboPerMsnw==="string"
          ?{expectedRateKoboPerMsnw:body.expectedRateKoboPerMsnw}:{}),
        ...(typeof body.expectedTermsRevision==='number'?{expectedTermsRevision:body.expectedTermsRevision}:{}),
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
  app.get('/v1/wallet/msnw/p2p/orders/:orderId/support',async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{return await deps.service.orderSupport(await actor(req.headers.authorization),(req.params as {orderId:string}).orderId);}catch(error){return respond(error,reply);}
  });
  app.post('/v1/wallet/msnw/p2p/orders/:orderId/dispute',{bodyLimit:12288},async(req,reply)=>{
    reply.header('Cache-Control','no-store');
    try{
      const a=await actor(req.headers.authorization),body=req.body as Record<string,unknown>|null;
      if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).some(k=>!['reason','category'].includes(k))||typeof body.reason!=='string'||(body.category!==undefined&&typeof body.category!=='string'))throw new P2pError('p2p.invalid_dispute',422);
      return await deps.service.action(a,(req.params as {orderId:string}).orderId,'dispute',{explanation:body.reason,...(typeof body.category==='string'?{disputeCategory:body.category}:{})});
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
