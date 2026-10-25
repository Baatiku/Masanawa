import {describe,expect,it,vi} from "vitest";
import {createDataRedemptionService,type DataRedemptionPorts,type DataRedemptionRow} from "./data_purchase_service.js";
const approved=[{
 version:"v1",country:"NG" as const,network:"MTN" as const,billerCode:"BIL22",itemCode:"DT001",
 allowanceGb:1,validityDays:30,providerAmount:"500",evidenceRef:"review-2026",
 reviewedBy:"operator-1",reviewedAt:"2026-10-20T00:00:00Z",
 expiresAt:"2026-11-20T00:00:00Z",enabled:true,
}];
const live=[{billerCode:"BIL22",itemCode:"DT001",name:"untrusted-title",amount:"500",currency:"NGN" as const,labelName:"Phone"}];
describe("original-reference Flutterwave whole-GB redemption",()=>{
 it("reserves purchased MB first, dispatches once, captures only GET-confirmed matching status",async()=>{
  let journal:DataRedemptionRow|null=null;
  const events:string[]=[];
  const pay=vi.fn(async (v:{reference:string})=>({
    reference:v.reference,providerReference:"provider-pending",status:"pending" as const,
    amount:"500",currency:"NGN" as const,customerId:"+2348012345678",
    itemCode:"DT001",product:null,productName:null,extra:null,
  }));
  const ports={
    approved:async()=>approved,liveItems:async()=>live,
    reserve:async()=>{events.push("reserve");},
    capture:async()=>{events.push("capture");},
    release:async()=>{events.push("release");},
    claim:async(_user:unknown,row:DataRedemptionRow)=>{
      if(journal)return false;journal=row;events.push("claim");return true;
    },
    read:async()=>journal,
    resolve:async()=>{if(journal)journal={...journal,state:"delivered"};},
    pay,
    status:async(id:string)=>({reference:id,providerReference:"provider-ref",status:"successful" as const,
      amount:"500",currency:"NGN" as const,customerId:"+2348012345678",itemCode:"DT001",product:null,
      productName:null,extra:null}),
    now:()=>new Date("2026-10-25T00:00:00Z"),
  } as DataRedemptionPorts;
  const service=createDataRedemptionService(ports);
  const actor={tenantId:"tenant",userId:"fan"};
  const args={bundleId:"BIL22:DT001",version:"v1",recipientPhone:"08012345678",idempotencyKey:"same-request-id"};
  const result=await service.purchase(actor,args);
  expect(result.state).toBe("delivered");
  expect(events).toEqual(["reserve","claim","capture"]);
  expect(pay).toHaveBeenCalledTimes(1);
  await service.purchase(actor,args);
  expect(pay).toHaveBeenCalledTimes(1);
 });
 it("does not capture from untrusted amount or pending/unknown provider status",async()=>{
  const capture=vi.fn(),release=vi.fn();
  const port:DataRedemptionPorts={
   approved:async()=>approved,liveItems:async()=>live,
   reserve:async()=>{},capture,release,
   claim:async()=>false,
   read:async(a,id)=>({operationId:id,userId:a.userId,bundleId:"BIL22:DT001",
    version:"v1",phone:"+2348012345678",amountNgn:"500",costMb:1000,state:"pending"}),
   resolve:async()=>{},pay:async()=>{throw Error("unknown");},
   status:async id=>({reference:id,providerReference:"provider-ref",status:"successful",
    amount:"499.00",currency:"NGN",customerId:"+2348012345678",
    itemCode:"DT001",product:null,productName:null,extra:null}),
  };
  const v=await createDataRedemptionService(port).reconcile({tenantId:"tenant",userId:"fan"},"data_transaction");
  expect(v.state).toBe("pending");
  expect(capture).not.toHaveBeenCalled();
  expect(release).not.toHaveBeenCalled();
 });
});
