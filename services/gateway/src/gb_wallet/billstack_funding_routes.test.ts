import Fastify from "fastify";
import {createHmac} from "node:crypto";
import {afterEach,describe,expect,it,vi} from "vitest";
import {registerBillstackFundingRoutes,type BillstackFundingPorts} from "./billstack_funding_routes.js";
const apps:Array<ReturnType<typeof Fastify>>=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(x=>x.close()));});
const secret="server-side-test-webhook-9psb-abcdefgh";
function setup(overrides:Partial<BillstackFundingPorts>={}) {
 const account={state:"assigned" as const,reference:"merchant-ref",bankId:"9PSB" as const,
  accountNumber:"0000000100",accountName:"Masanawa Recipient",bankName:"9PSB Bank"};
 const create=vi.fn(async()=>({...account,reference:"provider-ref",accountNumber:"0000000100"}));
 const credit=vi.fn(async()=>({state:"credited" as const,eventId:"provider-transaction",creditedKobo:100000}));
 const p:BillstackFundingPorts={
  authorize:async h=>{if(h!=="Bearer session")throw Error("unauthorized");
    return {tenantId:"tenant-a",userId:"fan-a"};},
  applicant:async(_actor,reference)=>({reference,email:"fan@example.com",phone:"08012345678",firstName:"Fan",lastName:"Masanawa"}),
  read:async()=>null,
  start:async(_actor,reference)=>({created:true,account:{...account,reference,state:"pending",
    accountNumber:null,accountName:null,bankName:null}}),
  create,
  finalize:async()=>account,
  credit,
  verifySettlement:async payment=>payment,
  webhookSecret:secret,
  now:()=>1792886400*1000,
  ...overrides,
 };
 const app=Fastify({logger:false});apps.push(app);registerBillstackFundingRoutes(app,p);
 return {app,credit,create};
}
describe("Billstack GB wallet assigned 9PSB and signed payment admission",()=>{
 it("hides account details until authenticated and provider confirmed",async()=>{
  const {app,create}=setup();
  expect((await app.inject({method:"POST",url:"/v1/gb/wallet/virtual-account"})).statusCode).toBe(401);
  const response=await app.inject({method:"POST",url:"/v1/gb/wallet/virtual-account",headers:{authorization:"Bearer session"}});
  expect(response.statusCode).toBe(200);
  expect(response.json().account).toMatchObject({state:"assigned",bankId:"9PSB",accountNumber:"0000000100"});
  expect(create).toHaveBeenCalledOnce();
  const pending=setup({read:async()=>({state:"pending",reference:"ref",bankId:"9PSB",
    accountNumber:null,accountName:null,bankName:null})});
  const p=await pending.app.inject({method:"GET",url:"/v1/gb/wallet/virtual-account",headers:{authorization:"Bearer session"}});
  expect(p.json().account).toEqual({state:"pending"});
 });
 it("requires raw-body HMAC and passes exact bank reference to ledger once",async()=>{
  const {app,credit}=setup();
  const time="1792886400",payload=JSON.stringify({event:"PAYMENT_NOTIFICATION",data:{
    type:"RESERVED_ACCOUNT_TRANSACTION",reference:"provider-transaction",
    merchant_reference:"merchant-ref",amount:"1000.00",
    created_at:"2026-10-25T00:00:00Z",
    account:{account_number:"0000000100",bank_name:"9PSB Bank"}}});
  const signed=createHmac("sha256",secret).update(time+"."+payload).digest("hex");
  const headers={"content-type":"application/json",
    "x-wiaxy-timestamp":time,"x-wiaxy-signature-256":signed};
  const invalid=await app.inject({method:"POST",url:"/webhooks/billstack/gb",
    headers:{...headers,"x-wiaxy-signature-256":"0".repeat(64)},payload});
  expect(invalid.statusCode).toBe(503);
  expect(credit).not.toHaveBeenCalled();
  const valid=await app.inject({method:"POST",url:"/webhooks/billstack/gb",
    headers,payload});
  expect(valid.statusCode).toBe(200);
  expect(credit).toHaveBeenCalledTimes(1);
  expect(credit).toHaveBeenCalledWith(expect.objectContaining({eventId:"provider-transaction",merchantReference:"merchant-ref",amountKobo:100000}));
 });
 it("fails closed on unverified funding while retaining assigned-account readback",async()=>{
  const f=setup({ready:()=>false});
  const headers={authorization:"Bearer session"};
  const result=await f.app.inject({url:"/v1/gb/wallet/virtual-account",headers});
  expect(result.json().fundingEnabled).toBe(false);
  expect((await f.app.inject({method:"POST",url:"/v1/gb/wallet/virtual-account",headers})).statusCode).toBe(503);
  expect((await f.app.inject({method:"POST",url:"/webhooks/billstack/gb",headers:{"content-type":"application/json"},payload:"{}"})).statusCode).toBe(503);
  expect(f.create).not.toHaveBeenCalled();expect(f.credit).not.toHaveBeenCalled();
 });

 it("can allocate a verified applicant account before settlement credit is enabled",async()=>{
  const f=setup({ready:()=>false,canAssign:()=>true});
  const headers={authorization:"Bearer session"};
  const state=await f.app.inject({url:"/v1/gb/wallet/virtual-account",headers});
  expect(state.json()).toMatchObject({account:{state:"unassigned"},
    assignmentEnabled:true,fundingEnabled:false});
  const assigned=await f.app.inject({method:"POST",url:"/v1/gb/wallet/virtual-account",headers});
  expect(assigned.statusCode).toBe(200);
  expect(assigned.json().account).toMatchObject({state:"assigned",accountNumber:"0000000100"});
  expect(f.create).toHaveBeenCalledOnce();
  const unsigned=await f.app.inject({method:"POST",url:"/webhooks/billstack/gb",
    headers:{"content-type":"application/json"},payload:"{}"});
  expect(unsigned.statusCode).toBe(503);
  expect(f.credit).not.toHaveBeenCalled();
 });
 it("completes missing applicant details only for an authenticated account",async()=>{
  const save=vi.fn(async()=>{});
  const f=setup({ready:()=>false,canAssign:()=>true,
    applicantComplete:async()=>false,completeApplicant:save});
  const url="/v1/gb/wallet/virtual-account/applicant";
  expect((await f.app.inject({method:"POST",url,payload:{firstName:"Ada",lastName:"Obi",contactPhone:"08012345678"}})).statusCode).toBe(401);
  const headers={authorization:"Bearer session"};
  expect((await f.app.inject({method:"POST",url,headers,payload:{firstName:"Ada",lastName:"Obi",contactPhone:"07112345678"}})).statusCode).toBe(400);
  const accepted=await f.app.inject({method:"POST",url,headers,payload:{firstName:"Ada",lastName:"Obi",contactPhone:"08012345678"}});
  expect(accepted.statusCode).toBe(200);
  expect(save).toHaveBeenCalledWith({tenantId:"tenant-a",userId:"fan-a"},
    {firstName:"Ada",lastName:"Obi",contactPhone:"08012345678"});
 });

 it("rejects independent settlement mismatch even with a valid webhook signature",async()=>{
  const f=setup({verifySettlement:async payment=>({...payment,amountKobo:payment.amountKobo+1})});
  const timestamp="1792886400";
  const payload=JSON.stringify({event:"PAYMENT_NOTIFICATION",data:{type:"RESERVED_ACCOUNT_TRANSACTION",reference:"provider-transaction",merchant_reference:"merchant-ref",amount:"1000.00",created_at:"2026-10-25T00:00:00Z",account:{account_number:"0000000100",bank_name:"9PSB Bank"}}});
  const signature=createHmac("sha256",secret).update(timestamp+"."+payload).digest("hex");
  const result=await f.app.inject({method:"POST",url:"/webhooks/billstack/gb",headers:{"content-type":"application/json","x-wiaxy-timestamp":timestamp,"x-wiaxy-signature-256":signature},payload});
  expect(result.statusCode).toBe(503);expect(f.credit).not.toHaveBeenCalled();
 });

});
