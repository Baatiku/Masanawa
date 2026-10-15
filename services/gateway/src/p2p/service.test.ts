import { describe, expect, it, vi } from "vitest";
import { createP2pService, orderAmounts, P2pError, type P2pPool, type MsnwEscrowAuthority } from "./service.js";

const actor = {tenantId:"tenant-a",userId:"buyer-a"};
const offerId = "32e733b0-5aad-4d6a-89af-1b28cc109834";
const key = "order-request-001";

function mock(queries: (sql:string)=>Record<string,unknown>[]) {
  const statements:string[]=[];
  const tx={
    async query(sql:string){
      statements.push(sql);
      const rows=queries(sql);
      return {rows,rowCount:rows.length};
    },
    release:vi.fn(),
  };
  return {statements,pool:{query:tx.query,connect:async()=>tx} as P2pPool};
}
const deniedWallet: MsnwEscrowAuthority = {
  reserve: async()=>{throw new P2pError("p2p.wallet_unavailable",503);},
  release:async()=>{throw new Error("unexpected release");},
  refund:async()=>{throw new Error("unexpected refund");},
};
describe("MSNW P2P exact money and escrow",()=>{
  it("uses integer arithmetic, rounding fiat and fee upwards",()=>{
    expect(orderAmounts("1000001","12345",50)).toEqual({
      amountMicro:"1000001",fiatKobo:"12346",feeMicro:"5001",reservedMicro:"1005002",
    });
    expect(()=>orderAmounts("1e6","12345",50)).toThrow();
    expect(()=>orderAmounts("1000000","12345",1001)).toThrow();
  });
  it("does not create an order when canonical MSNW reservation is unavailable",async()=>{
    const {pool,statements}=mock(sql=>
      sql.includes("FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND buyer_id=$2")?[]:
      sql.includes("FROM commerce.msnw_p2p_offers o JOIN")?[{
        offer_id:offerId,seller_id:"seller-b",payment_method_id:offerId,
        rate_kobo_per_msnw:"10000",min_micro:"1000000",max_micro:"5000000",
        remaining_micro:"5000000",fee_bps:50,state:"active",verified_at:new Date(),disabled_at:null,
      }]:[]);
    const p2p=createP2pService(pool,deniedWallet);
    await expect(p2p.createOrder(actor,{offerId,amountMicro:"1000000",idempotencyKey:key}))
      .rejects.toMatchObject({code:"p2p.wallet_unavailable"});
    expect(statements).toContain("ROLLBACK");
    expect(statements.some(s=>s.includes("INSERT INTO commerce.msnw_p2p_orders"))).toBe(false);
  });
  it("idempotent replay never reserves twice",async()=>{
    const {pool,statements}=mock(sql=>sql.includes("SELECT order_id,offer_id,amount_micro::text")
      ?[{order_id:"same-order",offer_id:offerId,amount_micro:"1000000"}]:[]);
    const reserve=vi.fn();
    const p2p=createP2pService(pool,{...deniedWallet,reserve});
    await expect(p2p.createOrder(actor,{offerId,amountMicro:"1000000",idempotencyKey:key}))
      .resolves.toEqual({orderId:"same-order",replay:true});
    expect(reserve).not.toHaveBeenCalled();
    expect(statements).toContain("COMMIT");
  });
  it("same idempotency key cannot alter order amount",async()=>{
    const {pool}=mock(sql=>sql.includes("SELECT order_id,offer_id,amount_micro::text")
      ?[{order_id:"same-order",offer_id:offerId,amount_micro:"1000000"}]:[]);
    await expect(createP2pService(pool,deniedWallet).createOrder(actor,{
      offerId,amountMicro:"2000000",idempotencyKey:key,
    })).rejects.toMatchObject({code:"p2p.idempotency_conflict"});
  });
  it("payment claim records a state change but never calls token release",async()=>{
    const {pool,statements}=mock(sql=>sql.includes("FROM commerce.msnw_p2p_orders")?[{
      order_id:offerId,tenant_id:"tenant-a",offer_id:offerId,
      seller_id:"seller-b",buyer_id:"buyer-a",amount_micro:"1000000",fee_micro:"5000",
      fiat_kobo:"10000",rate_kobo_per_msnw:"10000",state:"awaiting_payment",
      version:1,payment_deadline:new Date(Date.now()+600000).toISOString(),
    }]:[]);
    const release=vi.fn();
    const result=await createP2pService(pool,{...deniedWallet,release}).action(actor,offerId,"claim");
    expect(result.state).toBe("payment_claimed");
    expect(release).not.toHaveBeenCalled();
    expect(statements.some(s=>s.includes("UPDATE commerce.msnw_p2p_orders SET state="))).toBe(true);
  });
  it("buyer cannot impersonate seller confirmation, and unprivileged operator resolution is rejected",async()=>{
    const {pool}=mock(sql=>sql.includes("FROM commerce.msnw_p2p_orders")?[{
      order_id:offerId,tenant_id:"tenant-a",seller_id:"seller-b",buyer_id:"buyer-a",
      amount_micro:"1000000",fee_micro:"5000",state:"payment_claimed",
    }]:[]);
    const service=createP2pService(pool,deniedWallet);
    await expect(service.action(actor,offerId,"confirm",{releaseAuthorized:true}))
      .rejects.toMatchObject({code:"p2p.seller_confirmation_required"});
    await expect(service.action(actor,offerId,"release"))
      .rejects.toMatchObject({code:"p2p.operator_resolution_required"});
  });
});
