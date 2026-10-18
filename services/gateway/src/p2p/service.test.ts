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
  it("returns exact read-only server quote with canonical fee and bank",async()=>{
    const {pool,statements}=mock(sql=>sql.includes("FROM commerce.msnw_p2p_offers o")
      ?[{
        offer_id:offerId,seller_id:"seller-b",rate_kobo_per_msnw:"150000",
        min_micro:"1000000",max_micro:"5000000",remaining_micro:"5000000",
        funded_micro:"2000000",fee_bps:50,state:"active",bank_name:"Verified Bank",
        verified_at:new Date(),disabled_at:null,
      }]:[]);
    const service=createP2pService(pool,deniedWallet);
    const quote=await service.quote(actor,{offerId,amountMicro:"1000001"});
    expect(quote).toMatchObject({
      offerId,amountMicro:"1000001",fiatKobo:"150001",feeMicro:"5001",
      rateKoboPerMsnw:"150000",feeBps:50,bankName:"Verified Bank",
      paymentWindowSeconds:1800,availableMicro:"2000000",
    });
    expect(statements.every(sql=>!sql.includes("INSERT")&&!sql.includes("UPDATE"))).toBe(true);
    await expect(service.quote(actor,{offerId,amountMicro:"3000000"}))
      .rejects.toMatchObject({code:"p2p.offer_limit"});
    await expect(service.quote({tenantId:"tenant-a",userId:"seller-b"},
      {offerId,amountMicro:"1000000"})).rejects.toMatchObject({code:"p2p.self_trade_forbidden"});
  });
  it("resolves an interrupted request only for the original buyer and tenant",async()=>{
    const {pool}=mock(sql=>sql.includes("FROM commerce.msnw_p2p_orders")
      ?[{order_id:offerId,state:"awaiting_payment"}]:[]);
    const p2p=createP2pService(pool,deniedWallet);
    expect(await p2p.orderByRequest(actor,key)).toEqual({
      orderId:offerId,state:"awaiting_payment",
    });
    await expect(p2p.orderByRequest(actor,"bad")).rejects
      .toMatchObject({code:"p2p.idempotency_required"});
  });
  it("rejects a changed reviewed rate or fee before reserving escrow",async()=>{
    const {pool,statements}=mock(sql=>
      sql.includes("SELECT order_id,offer_id,amount_micro::text")?[]:
      sql.includes("FROM commerce.msnw_p2p_offers o JOIN")?[{
        offer_id:offerId,seller_id:"seller-b",payment_method_id:offerId,
        rate_kobo_per_msnw:"150000",min_micro:"1000000",max_micro:"5000000",
        remaining_micro:"5000000",fee_bps:75,state:"active",
        verified_at:new Date(),disabled_at:null,
      }]:[]);
    const reserve=vi.fn();
    await expect(createP2pService(pool,{...deniedWallet,reserve}).createOrder(actor,{
      offerId,amountMicro:"1000000",idempotencyKey:key,
      expectedRateKoboPerMsnw:"140000",expectedFeeBps:50,
    })).rejects.toMatchObject({code:"p2p.quote_changed"});
    expect(reserve).not.toHaveBeenCalled();
    expect(statements.some(s=>s.includes("INSERT INTO commerce.msnw_p2p_orders"))).toBe(false);
  });

  it("paginates participant orders with a stable seek cursor and server-side status scope",async()=>{
    const idA="aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa";
    const idB="bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb";
    const rows=[
      {order_id:idA,state:"completed",created_at:"2026-10-18T05:00:00Z"},
      {order_id:idB,state:"expired",created_at:"2026-10-17T05:00:00Z"},
    ];
    const {pool,statements}=mock(sql=>sql.includes("ORDER BY created_at DESC,order_id DESC")
      ?rows:[]);
    const service=createP2pService(pool,deniedWallet);
    const page=await service.ordersPage(actor,{filter:"finished",limit:1});
    expect(page.items).toHaveLength(1);
    expect(page.nextCursor).toBeTruthy();
    expect(statements.some(sql=>sql.includes("tenant_id=$1")&&
      sql.includes("(seller_id=$2 OR buyer_id=$2)")&&
      sql.includes("state IN ('completed','cancelled','expired')"))).toBe(true);
    expect((await service.ordersPage(actor,{
      filter:"finished",cursor:page.nextCursor!,limit:1,
    })).items).toHaveLength(1);
    await expect(service.ordersPage(actor,{filter:"unknown"})).rejects
      .toMatchObject({code:"p2p.invalid_filter"});
    await expect(service.ordersPage(actor,{cursor:"not-a-cursor"})).rejects
      .toMatchObject({code:"p2p.invalid_cursor"});
  });

  it("seller balance read uses canonical own tenant-scoped custody",async()=>{
    const {pool,statements}=mock(sql=>
      sql.includes("FROM commerce.msnw_custody_accounts")
        ?[{available_micro:"12345678"}]:[]);
    const result=await createP2pService(pool,deniedWallet)
      .sellerCapacity({tenantId:"tenant-a",userId:"seller-b"});
    expect(result).toEqual({availableMicro:"12345678"});
    expect(statements.some(s=>s.includes("tenant_id=$1 AND user_id=$2"))).toBe(true);
    expect(statements.every(s=>!s.includes("UPDATE")&&!s.includes("INSERT"))).toBe(true);
  });

  it("pages funded public offers without exposing own or unbacked sellers",async()=>{
    const {pool,statements}=mock(sql=>sql.includes("CROSS JOIN LATERAL")&&
      sql.includes("ORDER BY o.created_at DESC,o.offer_id DESC")
      ?[{offer_id:offerId,seller_id:"seller-b",created_at:"2026-10-18T04:00:00Z",
        min_micro:"1000000",max_micro:"2000000",remaining_micro:"2000000"}]:[]);
    const pages=await createP2pService(pool,deniedWallet).offersPage(actor);
    expect(pages.items).toHaveLength(1);
    expect(pages.nextCursor).toBeNull();
    expect(statements.some(sql=>sql.includes("o.tenant_id=$1")&&
      sql.includes("o.seller_id<>$2")&&
      sql.includes("capacity.amount>=o.min_micro")&&
      sql.includes("p.verified_at IS NOT NULL"))).toBe(true);
  });
  it("seller offer and notification pages are scoped to the current account",async()=>{
    const {pool,statements}=mock(()=>[]);
    const service=createP2pService(pool,deniedWallet);
    await service.myOffersPage(actor);
    await service.notificationsPage(actor);
    expect(statements.some(sql=>sql.includes("o.seller_id=$2")&&
      sql.includes("o.tenant_id=$1"))).toBe(true);
    expect(statements.some(sql=>sql.includes("user_id=$2")&&
      sql.includes("tenant_id=$1")&&
      sql.includes("ORDER BY created_at DESC,event_id DESC"))).toBe(true);
    await expect(service.offersPage(actor,{cursor:"invalid"}))
      .rejects.toMatchObject({code:"p2p.invalid_cursor"});
  });

  it("publishes a seller offer only once for the same durable request",async()=>{
    const methodId="cccccccc-cccc-4ccc-8ccc-cccccccccccc";
    const input={
      paymentMethodId:methodId,rateKoboPerMsnw:"10000",
      minMicro:"1000000",maxMicro:"5000000",inventoryMicro:"10000000",
      idempotencyKey:"request-recover-123",
    };
    const first=mock(sql=>sql.includes("SELECT method_id")?[{method_id:methodId}]:[]);
    const service=createP2pService(first.pool,deniedWallet);
    const created=await service.createOffer(
      {tenantId:"tenant-a",userId:"seller-b"},input);
    expect(created).toMatchObject({replay:false,state:"active"});
    expect(first.statements.filter(sql=>sql.includes("INSERT INTO commerce.msnw_p2p_offers")))
      .toHaveLength(1);
    const replay=mock(sql=>sql.includes("SELECT offer_id,payment_method_id,")?[{
      offer_id:created.offerId,payment_method_id:methodId,
      rate_kobo_per_msnw:"10000",min_micro:"1000000",
      max_micro:"5000000",state:"active",
    }]:[]);
    const recovered=await createP2pService(replay.pool,deniedWallet)
      .createOffer({tenantId:"tenant-a",userId:"seller-b"},input);
    expect(recovered).toEqual({
      offerId:created.offerId,replay:true,state:"active",
    });
    expect(replay.statements.some(sql=>sql.includes("INSERT INTO commerce.msnw_p2p_offers")))
      .toBe(false);
    await expect(createP2pService(replay.pool,deniedWallet)
      .createOffer({tenantId:"tenant-a",userId:"seller-b"},{
        ...input,rateKoboPerMsnw:"20000",
      })).rejects.toMatchObject({code:"p2p.idempotency_conflict"});
  });
  it("recovers seller offer only with original tenant and seller identity",async()=>{
    const {pool,statements}=mock(sql=>sql.includes("SELECT offer_id,state")
      ?[{offer_id:offerId,state:"active"}]:[]);
    const service=createP2pService(pool,deniedWallet);
    expect(await service.offerByRequest({
      tenantId:"tenant-a",userId:"seller-b"},"seller-request-123"))
      .toEqual({offerId,state:"active"});
    expect(statements.some(sql=>sql.includes("tenant_id=$1 AND seller_id=$2 AND offer_id=$3")))
      .toBe(true);
    await expect(service.offerByRequest({
      tenantId:"tenant-a",userId:"seller-b"},"x"))
      .rejects.toMatchObject({code:"p2p.idempotency_required"});
  });

});
