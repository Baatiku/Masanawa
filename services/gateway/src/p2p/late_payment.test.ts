import {describe,expect,it,vi} from "vitest";
import {createP2pService,type P2pPool,type MsnwEscrowAuthority} from "./service.js";

const id="3c7f16be-ab7d-4b5e-9238-d736b2288a68";
const actor={tenantId:"tenant_demo",userId:"user_buyer"};
const order={order_id:id,tenant_id:actor.tenantId,
  seller_id:"user_seller",buyer_id:actor.userId,
  state:"expired",amount_micro:"1000000",fee_micro:"5000"};
const escrow={
  reserve:vi.fn(),release:vi.fn(),refund:vi.fn(),
} as unknown as MsnwEscrowAuthority;
function store(overrides:Record<string,unknown>={}){
  const calls:string[]=[];
  let saved:{case_id:string;state:string}|null=null;
  const tx={
    async query(sql:string,args:unknown[]=[]){
      calls.push(sql);
      if(sql.includes("FROM commerce.msnw_p2p_orders")&&sql.includes("FOR UPDATE"))
        return {rows:[{...order,...overrides}],rowCount:1};
      if(sql.includes("SELECT case_id,state")&&sql.includes("late_payment_cases"))
        return {rows:saved?[saved]:[],rowCount:saved?1:0};
      if(sql.includes("INSERT INTO commerce.msnw_p2p_late_payment_cases"))
        saved={case_id:String(args[0]),state:"open"};
      return {rows:[],rowCount:1};
    },
    release:vi.fn(),
  };
  const pool={query:tx.query,connect:async()=>tx} as P2pPool;
  return {service:createP2pService(pool,escrow),calls};
}
describe("post-expiry bank payment claims",()=>{
  it("accepts an authenticated expired-order buyer once without moving MSNW",async()=>{
    vi.clearAllMocks();
    const s=store();
    const a=await s.service.reportLatePayment(actor,id,
      "Paid through a bank transfer before the order expired.");
    const replay=await s.service.reportLatePayment(actor,id,
      "Again reporting the same transfer.");
    expect(a).toMatchObject({replay:false,state:"open"});
    expect(replay).toMatchObject({caseId:a.caseId,replay:true,state:"open"});
    expect(s.calls.filter(x=>x.includes("INSERT INTO commerce.msnw_p2p_late_payment_cases")))
      .toHaveLength(1);
    expect(escrow.reserve).not.toHaveBeenCalled();
    expect(escrow.release).not.toHaveBeenCalled();
    expect(escrow.refund).not.toHaveBeenCalled();
  });
  it("denies seller impersonation and reports on active orders",async()=>{
    await expect(store().service.reportLatePayment(
      {...actor,userId:"user_seller"},id,"Paid despite the deadline"))
      .rejects.toMatchObject({code:"p2p.late_payment_denied"});
    await expect(store({state:"payment_claimed"}).service.reportLatePayment(
      actor,id,"Paid before the deadline"))
      .rejects.toMatchObject({code:"p2p.late_payment_denied"});
  });
});
