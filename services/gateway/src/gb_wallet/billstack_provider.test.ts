import {createHmac} from "node:crypto";
import {describe,expect,it,vi} from "vitest";
import {createBillstack9PsbClient,verifyBillstackWebhook} from "./billstack_provider.js";
const key="local-test-only-9psb-provider-webhook-key";
describe("Billstack reserved 9PSB and raw-body authenticated notification",()=>{
  it("reserves exactly 9PSB and maps only matching account identity",async()=>{
    const fetcher=vi.fn(async(_url:string,options:RequestInit)=>{
      expect(JSON.parse(String(options.body)).bank).toBe("9PSB");
      expect(options.headers).toMatchObject({authorization:"Bearer "+key});
      return new Response(JSON.stringify({status:true,data:{reference:"R-returned",account:[
        {account_number:"0000000013",account_name:"Customer",bank_name:"9PSB Bank",bank_id:"9PSB"}]}}),{status:200});
    });
    const client=createBillstack9PsbClient({secretKey:key,fetcher:fetcher as typeof fetch});
    const account=await client.reserve({reference:"customer123",email:"test@example.com",phone:"08012345678",firstName:"Mary",lastName:"Okafor"});
    expect(account).toMatchObject({accountNumber:"0000000013",bankId:"9PSB"});
    expect(fetcher).toHaveBeenCalledOnce();
  });
  it("rejects wrong bank and unsigned or stale transfer claims",async()=>{
    const client=createBillstack9PsbClient({secretKey:key,fetcher:async()=>new Response(
      JSON.stringify({status:true,data:{reference:"R-1",account:[
        {account_number:"0000000013",account_name:"Customer",bank_name:"Other",bank_id:"PALMPAY"}]}}),
      {status:200})});
    await expect(client.reserve({reference:"customer123",email:"test@example.com",phone:"08012345678",firstName:"Mary",lastName:"Okafor"})).rejects.toMatchObject({code:"wrong_bank"});
    const payload={event:"PAYMENT_NOTIFICATION",data:{
      type:"RESERVED_ACCOUNT_TRANSACTION",reference:"event-123",
      merchant_reference:"original-123",amount:"1500.25",
      created_at:"2026-10-25T00:00:00Z",
      account:{account_number:"0000000013",bank_name:"9PSB Bank"}}};
    const raw=Buffer.from(JSON.stringify(payload)),ts="1792886400";
    const sign=(body:Buffer)=>createHmac("sha256",key).update(ts+"."+body.toString()).digest("hex");
    const now=Number(ts)*1000;
    const payment=verifyBillstackWebhook(raw,{"x-wiaxy-timestamp":ts,"x-wiaxy-signature-256":sign(raw)},key,now);
    expect(payment).toMatchObject({eventId:"event-123",merchantReference:"original-123",amountKobo:150025});
    expect(()=>verifyBillstackWebhook(raw,{"x-wiaxy-timestamp":ts,"x-wiaxy-signature-256":"0".repeat(64)},key,now)).toThrow();
    expect(()=>verifyBillstackWebhook(raw,{"x-wiaxy-timestamp":ts,"x-wiaxy-signature-256":sign(raw)},key,now+301000)).toThrow();
    expect(()=>verifyBillstackWebhook(raw,{},key,now)).toThrow();
  });
});
