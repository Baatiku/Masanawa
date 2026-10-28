import {createHmac} from "node:crypto";
import {describe,expect,it,vi} from "vitest";
import {assertBillstackApplicant,createBillstackReservedAccountClient,verifyBillstackWebhook} from "./billstack_provider.js";
const key="local-test-only-9psb-provider-webhook-key";
describe("Billstack reserved 9PSB and raw-body authenticated notification",()=>{
  it("reserves exactly 9PSB and maps only matching account identity",async()=>{
    const fetcher=vi.fn(async(_url:string,options:RequestInit)=>{
      expect(JSON.parse(String(options.body)).bank).toBe("9PSB");
      expect(options.headers).toMatchObject({authorization:"Bearer "+key});
      return new Response(JSON.stringify({status:true,data:{reference:"R-returned",account:[
        {account_number:"0000000013",account_name:"Customer",bank_name:"9PSB Bank",bank_id:"9PSB"}]}}),{status:200});
    });
    const client=createBillstackReservedAccountClient({secretKey:key,fetcher:fetcher as typeof fetch});
    const account=await client.reserve({reference:"customer123",email:"test@example.com",phone:"08012345678",firstName:"Mary",lastName:"Okafor"});
    expect(account).toMatchObject({accountNumber:"0000000013",bankId:"9PSB"});
    expect(fetcher).toHaveBeenCalledOnce();
  });
  it('accepts the new +234 contact storage while sending only Nigeria-local format',async()=>{
    const fetcher=vi.fn(async(_url:string,options:RequestInit)=>{
      expect(JSON.parse(String(options.body)).phone).toBe('08031234567');
      return new Response(JSON.stringify({status:true,data:{reference:'r',account:[{
        account_number:'0000000013',account_name:'Customer',bank_name:'9PSB',bank_id:'9PSB'}]}}),{status:200});
    });
    const details={reference:'customer123',email:'test@example.com',
      phone:'+2348031234567',firstName:'Mary',lastName:'Okafor'};
    expect(()=>assertBillstackApplicant(details)).not.toThrow();
    await expect(createBillstackReservedAccountClient({secretKey:key,fetcher:fetcher as typeof fetch})
      .reserve(details)).resolves.toMatchObject({bankId:'9PSB'});
    expect(fetcher).toHaveBeenCalledOnce();
    for(const foreign of ['+233241234567','+14165550123','+2341234'])
      expect(()=>assertBillstackApplicant({...details,phone:foreign})).toThrow();
  });
  it("rejects wrong bank and unsigned or stale transfer claims",async()=>{
    const client=createBillstackReservedAccountClient({secretKey:key,fetcher:async()=>new Response(
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
  it("accepts provider-confirmed PalmPay and signed numeric-naira reserved-account notifications",async()=>{
    const fetcher=vi.fn(async(_url:string,options:RequestInit)=>{
      expect(JSON.parse(String(options.body)).bank).toBe("PALMPAY");
      return new Response(JSON.stringify({status:true,data:{reference:"R-provider123",account:[{
        account_number:"0000000014",account_name:"BillStack/Customer",bank_name:"PalmPay",bank_id:"PALMPAY",
      }]}}),{status:200});
    });
    const client=createBillstackReservedAccountClient({secretKey:key,bankId:"PALMPAY",fetcher:fetcher as typeof fetch});
    await expect(client.reserve({reference:"customer123",email:"test@example.com",phone:"08012345678",firstName:"Mary",lastName:"Okafor"}))
      .resolves.toMatchObject({bankId:"PALMPAY",bankName:"PalmPay",accountNumber:"0000000014"});
    const payload={event:"PAYMENT_NOTIFICATION",data:{type:"RESERVED_ACCOUNT_TRANSACTION",
      reference:"R-event123",merchant_reference:"customer123",wiaxy_ref:"MI123",transaction_ref:"MI123",
      amount:100,created_at:"2026-05-18T01:32:29",account:{account_number:"0000000014",bank_name:"PalmPay",bank_id:"PALMPAY"},
      payer:[],customer:{firstName:"Mary",lastName:"Okafor",email:"test@example.com"}}};
    const raw=Buffer.from(JSON.stringify(payload)),ts="1792886400",now=Number(ts)*1000;
    const signature=createHmac("sha256",key).update(ts).update(".").update(raw).digest("hex");
    expect(verifyBillstackWebhook(raw,{"x-wiaxy-timestamp":ts,"x-wiaxy-signature-256":signature},key,now))
      .toMatchObject({eventId:"R-event123",merchantReference:"customer123",accountNumber:"0000000014",amountKobo:10000});
    expect(()=>verifyBillstackWebhook(raw,{},key,now)).toThrow();
  });
});
