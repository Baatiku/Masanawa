import {describe,expect,it} from "vitest";
import {createP2pService,type P2pPool} from "./service.js";

const actor={tenantId:"tenant_receipt",userId:"user_buyer"};
const orderId="ca6274ce-0d46-47c0-8272-fd74eb294a18";
const base={
  order_id:orderId,seller_id:"user_seller",buyer_id:actor.userId,
  state:"completed",amount_micro:"1000000",fee_micro:"5000",
  fiat_kobo:"150000",receipt_reference:"msnw-p2p:"+orderId+":release",
  operation_id:"78f8dc15-5d4b-45a8-ac9e-7d264266f3d8",
  receipt_ref:"msnw-p2p:"+orderId+":release",
  stage:"release",created_at:"2026-10-16T10:00:00Z",
};
function service(rows:Record<string,unknown>[],postings:Record<string,unknown>[]){
  const all:string[]=[];
  const query=async(sql:string,_params?:unknown[])=>{
    all.push(sql);
    const r=sql.includes("FROM commerce.msnw_p2p_orders o")?rows:
      sql.includes("FROM commerce.msnw_p2p_custody_postings p")?postings:[];
    return {rows:r,rowCount:r.length};
  };
  const connection={query,release:()=>undefined};
  return {svc:createP2pService({query,connect:async()=>connection} as P2pPool,{
    reserve:async()=>{throw Error("money movement must not occur on receipt read");},
    release:async()=>{throw Error("money movement must not occur on receipt read");},
    refund:async()=>{throw Error("money movement must not occur on receipt read");},
  }),all};
}
const entries=[
  {owner_kind:"customer",user_id:"user_seller",bucket:"reserved",delta_micro:"-1005000"},
  {owner_kind:"customer",user_id:"user_buyer",bucket:"available",delta_micro:"1000000"},
  {owner_kind:"platform",user_id:null,bucket:"platform_fee",delta_micro:"5000"},
];
describe("MSNW P2P custody-backed receipts",()=>{
  it("returns a participant-visible immutable reference and conserved postings",async()=>{
    const {svc,all}=service([base],entries);
    const r=await svc.receipt(actor,orderId);
    expect(r).toMatchObject({
      receiptReference:"msnw-p2p:"+orderId+":release",stage:"release",
      amountMicro:"1000000",feeMicro:"5000",direction:"buy",
    });
    expect(r.postings).toHaveLength(3);
    expect(all).toHaveLength(2);
    expect(all[0]).toContain("(o.seller_id=$3 OR o.buyer_id=$3)");
    expect(all.every(sql=>!sql.includes("UPDATE ")&&!sql.includes("INSERT INTO"))).toBe(true);
  });
  it("does not fabricate pending receipts or reveal unknown orders",async()=>{
    const {svc}=service([],[]);
    await expect(svc.receipt(actor,orderId)).rejects.toMatchObject({
      code:"p2p.not_found",status:404,
    });
  });
  it("refuses incomplete or unbalanced postings",async()=>{
    const broken=service([base],entries.slice(0,2));
    await expect(broken.svc.receipt(actor,orderId)).rejects.toMatchObject({
      code:"p2p.receipt_postings_inconsistent",status:503,
    });
  });
  it("supports refund receipts without implying a buyer credit",async()=>{
    const refund={...base,state:"cancelled",stage:"refund",
      receipt_ref:"msnw-p2p:"+orderId+":refund"};
    refund.receipt_reference=refund.receipt_ref;
    const pair=[
      {owner_kind:"customer",user_id:"user_seller",bucket:"reserved",delta_micro:"-1005000"},
      {owner_kind:"customer",user_id:"user_seller",bucket:"available",delta_micro:"1005000"},
    ];
    const {svc}=service([refund],pair);
    expect(await svc.receipt(actor,orderId)).toMatchObject({
      stage:"refund",status:"cancelled",direction:"buy",
    });
  });
});
