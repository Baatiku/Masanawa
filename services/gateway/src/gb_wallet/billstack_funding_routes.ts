import {randomUUID} from "node:crypto";
import type {FastifyInstance} from "fastify";
import {assertBillstackApplicant,BillstackProviderError,verifyBillstackWebhook,type BillstackReceivedPayment,type BillstackBankId} from "./billstack_provider.js";

export interface BillstackFundingActor {tenantId:string;userId:string}
export interface BillstackAccount {
 state:"pending"|"assigned"|"suspended";
 reference:string;accountNumber:string|null;accountName:string|null;bankName:string|null;bankId:BillstackBankId;
}
export interface BillstackFundingPorts {
 authorize:(header:string|undefined)=>Promise<BillstackFundingActor>;
 applicant:(actor:BillstackFundingActor,reference:string)=>Promise<{
  reference:string;email:string;phone:string;firstName:string;lastName:string;
 }>;
 read:(actor:BillstackFundingActor)=>Promise<BillstackAccount|null>;
 applicantComplete?:(actor:BillstackFundingActor)=>Promise<boolean>;
 completeApplicant?:(actor:BillstackFundingActor,details:{firstName:string;lastName:string;contactPhone:string})=>Promise<void>;
 start:(actor:BillstackFundingActor,reference:string)=>Promise<{account:BillstackAccount;created:boolean}>;
 create:(input:{reference:string;email:string;phone:string;firstName:string;lastName:string})=>
   Promise<{reference:string;accountNumber:string;accountName:string;bankName:string;bankId:BillstackBankId}>;
 finalize:(actor:BillstackFundingActor,reference:string,account:{
  reference:string;accountNumber:string;accountName:string;bankName:string;bankId:BillstackBankId;
 })=>Promise<BillstackAccount>;
 credit:(payment:BillstackReceivedPayment)=>Promise<{
  state:"credited"|"duplicate";creditedKobo:number;eventId:string;
 }>;
 ready?:()=>boolean;
 /** Allocation is independent of settlement credit; the card can show
  * assigned details while transfer instructions remain disabled. */
 canAssign?:()=>boolean;
 /** Independent provider transaction final-state/amount/account verification. */
 verifySettlement:(payment:BillstackReceivedPayment)=>Promise<BillstackReceivedPayment>;
 webhookSecret:string;
 now?:()=>number;
}

const safe=(account:BillstackAccount|null)=>{
 if(!account)return {state:"unassigned" as const};
 // Never invent transfer instructions when provider response is pending.
 if(account.state!=="assigned")return {state:account.state};
 if(!account.accountNumber||!account.accountName||!account.bankName)throw new Error("billstack.account_not_ready");
 return {state:"assigned" as const, bankId:account.bankId,bankName:account.bankName,
  accountNumber:account.accountNumber,accountName:account.accountName};
};
export function registerBillstackFundingRoutes(app:FastifyInstance,ports:BillstackFundingPorts) {
 const actor=async(header:string|undefined)=>{
  const identity=await ports.authorize(header);
  if(!identity?.tenantId||!identity.userId)throw new Error("unauthorized");
  return identity;
 };
 app.get("/v1/gb/wallet/virtual-account",async(request,reply)=>{
  reply.header("cache-control","no-store");
  let person:BillstackFundingActor;
  try{person=await actor(request.headers.authorization);}catch{
    reply.code(401);return {error:{code:"unauthorized"}};
  }
  try{
    const account=await ports.read(person);
    let applicantComplete=!account&&ports.applicantComplete?await ports.applicantComplete(person):false;
    if(!account&&applicantComplete){
      try{assertBillstackApplicant(await ports.applicant(person,"gbreadiness"));}
      catch(error){
        if(error instanceof BillstackProviderError&&error.code==="invalid_applicant")applicantComplete=false;
        else throw error;
      }
    }
    return {account:safe(account),fundingEnabled:ports.ready?.()??false,
      assignmentEnabled:ports.canAssign?.()??ports.ready?.()??false,applicantComplete};
  }catch{
    reply.code(503);return {error:{code:"bank_account_unavailable"}};
  }
 });
 app.post("/v1/gb/wallet/virtual-account/applicant",async(request,reply)=>{
  reply.header("cache-control","no-store");
  let person:BillstackFundingActor;
  try{person=await actor(request.headers.authorization);}catch{
    reply.code(401);return {error:{code:"unauthorized"}};
  }
  const body=request.body as Record<string,unknown>|null;
  const firstName=body?.firstName,lastName=body?.lastName,contactPhone=body?.contactPhone;
  if(!body||Object.keys(body).some(k=>!["firstName","lastName","contactPhone"].includes(k))||
    typeof firstName!=="string"||typeof lastName!=="string"||typeof contactPhone!=="string"||
    !/^[\p{L}\p{M} .'-]{1,80}$/u.test(firstName)||
    !/^[\p{L}\p{M} .'-]{1,80}$/u.test(lastName)||
    !/^0(?:70|80|81|90|91)\d{8}$/u.test(contactPhone)){
    reply.code(400);return {error:{code:"invalid_applicant"}};
  }
  if(!ports.completeApplicant){reply.code(503);return {error:{code:"applicant_unavailable"}};}
  try{await ports.completeApplicant(person,{firstName,lastName,contactPhone});
    return {complete:true};}catch{
    reply.code(409);return {error:{code:"applicant_change_unavailable"}};
  }
 });
 app.post("/v1/gb/wallet/virtual-account",async(request,reply)=>{
  reply.header("cache-control","no-store");
  let person:BillstackFundingActor;
  try{person=await actor(request.headers.authorization);}catch{
    reply.code(401);return {error:{code:"unauthorized"}};
  }
  try{
    if(ports.canAssign ? !ports.canAssign() : ports.ready && !ports.ready())
      throw new Error("account_assignment_not_verified");
    const existing=await ports.read(person);
    if(existing)return {account:safe(existing)};
    const ref="gb"+randomUUID().replaceAll("-","");
    const applicant=await ports.applicant(person,ref);
    try{assertBillstackApplicant(applicant);}catch(error){
      if(error instanceof BillstackProviderError&&error.code==="invalid_applicant"){
        reply.code(400);return {error:{code:"invalid_applicant",message:"Check your names, email and Nigerian contact phone before assigning an account."}};
      }
      throw error;
    }
    const first=await ports.start(person,ref);
    if(!first.created)return {account:safe(first.account)};
    // Provider create is a financial write: never automatically retry after
    // an unknown outcome; the durable pending reference is operator-reconcilable.
    const generated=await ports.create(applicant);
    const assigned=await ports.finalize(person,ref,generated);
    return {account:safe(assigned)};
  }catch{
    reply.code(503);
    return {error:{code:"account_assignment_pending",message:"Account assignment is pending verification. Do not transfer until bank details appear."}};
  }
 });
 // One scoped raw-body parser for exactly this provider route. No reserialised
 // JSON HMAC and no global request parser change.
 app.register(async scope=>{
  scope.removeContentTypeParser("application/json");
  scope.addContentTypeParser("application/json",{parseAs:"buffer",bodyLimit:65536},
    (_request,body,done)=>done(null,body));
  // Billstack checks reachability with HEAD before it sends a payment POST.
  // Fastify exposes HEAD for this GET route. This acknowledges only that the
  // endpoint exists; it must never acknowledge a payment or imply funding is on.
  scope.get("/webhooks/billstack/gb",async(_request,reply)=>{
    reply.header("cache-control","no-store");
    return {reachable:true};
  });
  scope.post("/webhooks/billstack/gb",async(request,reply)=>{
    reply.header("cache-control","no-store");
    try{
      if(ports.ready && !ports.ready())throw new Error("funding_not_verified");
      const raw=request.body;
      if(!Buffer.isBuffer(raw))throw new Error("invalid_raw_body");
      const header=(name:string)=>{
        const entry=request.headers[name];
        return typeof entry==="string"?entry:undefined;
      };
      const verified=verifyBillstackWebhook(raw,{
        "x-wiaxy-timestamp":header("x-wiaxy-timestamp"),
        "x-wiaxy-signature-256":header("x-wiaxy-signature-256"),
      },ports.webhookSecret,ports.now?.());
      const settlement=await ports.verifySettlement(verified);
      if(settlement.eventId!==verified.eventId || settlement.merchantReference!==verified.merchantReference ||
        settlement.accountNumber!==verified.accountNumber || settlement.amountKobo!==verified.amountKobo ||
        !Number.isFinite(Date.parse(settlement.receivedAt)))throw new Error("provider_settlement_mismatch");
      const receipt=await ports.credit(settlement);
      request.log.info({billstackResult:receipt.state},"Billstack notification processed");
      return {accepted:true,duplicate:receipt.state==="duplicate"};
    }catch(error){
      // Unknown event remains retryable; never acknowledge a forged or
      // unmatched event as credited. Never echo private signing data.
      const code=error instanceof BillstackProviderError?error.code:
        error instanceof Error&&/^(?:ngn|billstack)\.[a-z_]+$/.test(error.message)
          ? error.message:"settlement_or_credit_failed";
      request.log.warn({billstackCode:code},"Billstack notification rejected");
      reply.code(503);
      return {error:{code:"provider_notification_unverified"}};
    }
  });
 });
}
