import { createHash, randomUUID } from "node:crypto";
import { P2pError, type P2pActor, type P2pPool, type P2pService } from "./service.js";

type Bank = Readonly<{ code: string; name: string }>;
export interface VerifiedP2pBankMethods {
  banks(): Promise<readonly Bank[]>;
  verify(actor: P2pActor, body: unknown): Promise<Readonly<{
    methodId: string; bankName: string; accountName: string; accountNumber: string;
    verified: true;
  }>>;
}
function normalizedName(name: string): string {
  // Strict full-token name match after case, punctuation and order differences.
  // No partial/substring matching: a third-party beneficiary must not pass.
  return name.normalize("NFKD").replace(/[\u0300-\u036f]/g,"")
    .toUpperCase().replace(/[^A-Z ]/g," ").split(/\s+/)
    .filter(Boolean).sort().join(" ");
}
export function createVerifiedP2pBankMethods(input: Readonly<{
  pool: P2pPool;
  service: P2pService;
  paystackSecretKey: string;
  fetchImpl?: typeof fetch;
}>): VerifiedP2pBankMethods {
  const key=input.paystackSecretKey.trim();
  if(!/^sk_(test|live)_[a-zA-Z0-9]+$/.test(key))
    throw new P2pError("p2p.provider_configuration_invalid",503);
  const send=input.fetchImpl ?? fetch;
  async function provider<T>(path: string): Promise<T> {
    let response: Response;
    try {
      response=await send("https://api.paystack.co"+path,{
        method:"GET",
        headers:{Authorization:"Bearer "+key,Accept:"application/json"},
        redirect:"error",signal:AbortSignal.timeout(12000),
      });
    } catch { throw new P2pError("p2p.bank_verification_unavailable",503); }
    if(!response.ok) throw new P2pError("p2p.bank_verification_unavailable",503);
    let payload:unknown;
    try{payload=await response.json();}
    catch {throw new P2pError("p2p.bank_verification_unavailable",503);}
    if(!payload||typeof payload!=="object"||Array.isArray(payload)||
      (payload as {status?:unknown}).status!==true)
      throw new P2pError("p2p.bank_verification_unavailable",503);
    return payload as T;
  }
  type BankResponse={
    status: true; data: Array<{code?:unknown;name?:unknown;country?:unknown;active?:unknown}>;
    meta?:{next?:unknown};
  };
  async function banks():Promise<readonly Bank[]> {
    const all=new Map<string,string>();
    let cursor:string|undefined;
    for(let page=0;page<8;page++){
      const suffix=cursor?"&next="+encodeURIComponent(cursor):"";
      const data=await provider<BankResponse>("/bank?country=nigeria&perPage=100"+suffix);
      if(!Array.isArray(data.data))
        throw new P2pError("p2p.bank_directory_unavailable",503);
      for(const entry of data.data){
        if(typeof entry.code==="string" && /^[0-9]{3,6}$/.test(entry.code) &&
          typeof entry.name==="string" && entry.name.length>=2 &&
          entry.name.length<=120 && entry.active!==false)
          all.set(entry.code,entry.name);
      }
      const next=data.meta?.next;
      if(typeof next!=="string"||next.length===0)break;
      if(next.length>200)throw new P2pError("p2p.bank_directory_unavailable",503);
      cursor=next;
    }
    if(all.size===0)throw new P2pError("p2p.bank_directory_unavailable",503);
    return [...all.entries()].map(([code,name])=>({code,name}))
      .sort((a,b)=>a.name.localeCompare(b.name));
  }
  async function verify(actor: P2pActor, raw: unknown) {
    if(!raw||typeof raw!=="object"||Array.isArray(raw))
      throw new P2pError("p2p.bank_input_invalid",422);
    const body=raw as Record<string,unknown>;
    if(Object.keys(body).sort().join(",")!=="accountNumber,bankCode,consent" ||
      body.consent!==true||typeof body.bankCode!=="string"||
      !/^[0-9]{3,6}$/.test(body.bankCode)||
      typeof body.accountNumber!=="string"||!/^[0-9]{10}$/.test(body.accountNumber))
      throw new P2pError("p2p.bank_input_invalid",422);

    // Paystack-identified customer is an independent authority; free-form
    // mobile phone/display name is not proof of identity or bank ownership.
    const kyc=await input.pool.query(`SELECT legal_name,customer_id::text
      FROM commerce.msnw_paystack_customer_onboarding
      WHERE tenant_id=$1 AND user_id=$2 AND state='verified'
        AND verified_at IS NOT NULL`,[actor.tenantId,actor.userId]);
    const legal=kyc.rows[0]?.legal_name;
    if(typeof legal!=="string"||normalizedName(legal).split(" ").length<2)
      throw new P2pError("p2p.paystack_kyc_required",403);

    const bank=(await banks()).find(b=>b.code===body.bankCode);
    if(!bank)throw new P2pError("p2p.unsupported_bank",422);
    type AccountResponse={status:true;data:{
      account_number?:unknown;account_name?:unknown;
    }};
    const resolved=await provider<AccountResponse>("/bank/resolve?account_number="+
      encodeURIComponent(body.accountNumber)+"&bank_code="+encodeURIComponent(body.bankCode));
    if(!resolved.data||resolved.data.account_number!==body.accountNumber||
      typeof resolved.data.account_name!=="string"||
      normalizedName(resolved.data.account_name)!==normalizedName(legal))
      throw new P2pError("p2p.bank_owner_not_verified",403);

    const reference="paystack-resolve:"+createHash("sha256").update(
      [actor.tenantId,actor.userId,body.bankCode,body.accountNumber,
        resolved.data.account_name,kyc.rows[0]?.customer_id].join("|"),"utf8").digest("hex");
    const newId=randomUUID();
    await input.service.recordVerifiedMethod(actor,{
      methodId:newId,bankName:bank.name,bankCode:bank.code,
      accountName:resolved.data.account_name,accountNumber:body.accountNumber,
      verificationReference:reference,
    });
    const row=await input.pool.query(`SELECT method_id,bank_name,account_name,account_number,
      verification_reference,verified_at FROM commerce.msnw_p2p_payment_methods
      WHERE tenant_id=$1 AND owner_id=$2 AND bank_code=$3
        AND account_number=$4 AND disabled_at IS NULL
      ORDER BY created_at DESC LIMIT 1`,
      [actor.tenantId,actor.userId,bank.code,body.accountNumber]);
    const saved=row.rows[0];
    if(!saved||saved.verification_reference!==reference)
      throw new P2pError("p2p.bank_method_conflict",409);
    return {methodId:String(saved.method_id),bankName:String(saved.bank_name),
      accountName:String(saved.account_name),accountNumber:String(saved.account_number),
      verified:true as const};
  }
  return {banks,verify};
}
