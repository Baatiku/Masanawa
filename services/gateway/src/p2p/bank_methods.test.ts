import { describe, expect, it, vi } from "vitest";
import { createVerifiedP2pBankMethods } from "./bank_methods.js";
import type { P2pPool, P2pService } from "./service.js";

const actor={tenantId:"tenant-1",userId:"seller-1"};
const bankCode="058", accountNumber="0123456789";
function system(legalName: string, resolvedName: string) {
  let proof="";
  const calls:string[]=[];
  const service={recordVerifiedMethod:vi.fn(async (_actor:unknown, method:{verificationReference:string})=>{
    proof=method.verificationReference;
  })} as unknown as P2pService;
  const pool={query:vi.fn(async(sql:string)=>{
    if(sql.includes("msnw_paystack_customer_onboarding"))
      return {rows:[{legal_name:legalName,customer_id:"1234"}],rowCount:1};
    if(sql.includes("SELECT method_id"))return {rows:[{
      method_id:"15c20c73-00cc-447c-b51e-1c199cffc225",
      bank_name:"Example Bank",account_name:resolvedName,
      account_number:accountNumber,verification_reference:proof,
    }],rowCount:1};
    return {rows:[],rowCount:0};
  })} as unknown as P2pPool;
  const fetchImpl=async (url: RequestInfo | URL)=>{
    calls.push(String(url));
    if(String(url).includes("/bank/resolve?"))
      return new Response(JSON.stringify({status:true,data:{
        account_number:accountNumber,account_name:resolvedName,
      }}),{status:200});
    return new Response(JSON.stringify({status:true,data:[{
      code:bankCode,name:"Example Bank",active:true,
    }]}),{status:200});
  };
  return {bank:createVerifiedP2pBankMethods({
    pool,service,paystackSecretKey:"sk_test_validtestkey123",
    fetchImpl:fetchImpl as typeof fetch,
  }),service,calls};
}
describe("P2P seller bank verification",()=>{
  it("rejects missing explicit consent before KYC or provider calls",async()=>{
    const s=system("Amina Yusuf","AMINA YUSUF");
    await expect(s.bank.verify(actor,{bankCode,accountNumber,consent:false}))
      .rejects.toMatchObject({code:"p2p.bank_input_invalid"});
    expect(s.calls).toHaveLength(0);
  });
  it("rejects a third-party account even when Paystack resolves it",async()=>{
    const s=system("Amina Yusuf","MARY IBRAHIM");
    await expect(s.bank.verify(actor,{bankCode,accountNumber,consent:true}))
      .rejects.toMatchObject({code:"p2p.bank_owner_not_verified"});
    expect(s.service.recordVerifiedMethod).not.toHaveBeenCalled();
  });
  it("requires all legal-name tokens, allowing a reversed bank display order",async()=>{
    const s=system("Amina Fatima Yusuf","YUSUF AMINA FATIMA");
    await expect(s.bank.verify(actor,{bankCode,accountNumber,consent:true}))
      .resolves.toMatchObject({
        accountName:"YUSUF AMINA FATIMA",accountNumber,
        bankName:"Example Bank",verified:true,
      });
    expect(s.service.recordVerifiedMethod).toHaveBeenCalledTimes(1);
    expect(s.calls.some(s=>s.includes("/bank/resolve?"))).toBe(true);
  });
  it("never trusts client-supplied payee names, even if equal to legal name",async()=>{
    const s=system("Amina Yusuf","MARY IBRAHIM");
    await expect(s.bank.verify(actor,{
      bankCode,accountNumber,consent:true,accountName:"Amina Yusuf",
    })).rejects.toMatchObject({code:"p2p.bank_input_invalid"});
  });
});
