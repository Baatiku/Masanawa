import {beforeEach,describe,expect,it,vi} from "vitest";
import {claimOutboxBatch,settleOutboxClaim} from "@masanawa/postgres";
import {createP2pNoticeRuntime} from "./p2p_notifications.js";
vi.mock("@masanawa/postgres",()=>({
  claimOutboxBatch:vi.fn(),
  settleOutboxClaim:vi.fn(async()=>undefined),
  withTransaction:vi.fn(async(_pool:unknown,fn:(c:unknown)=>Promise<unknown>)=>fn({})),
}));
const item={
 outboxEventId:"outbox-event_demo-p2p",
 eventId:"event_demo-p2p",tenantId:"tenant_demo",
 eventType:"p2p.order.transition",destination:"notifications.p2p",
 state:"claimed",attempt:1,fence:3,
 payload:{userId:"user_0199ea9d-60c5-7c69-8bbb-0f5d119fc203",
  orderId:"abda818c-74bb-48cb-9b50-d5cd2cc32940",
  state:"payment_claimed",sourceEventId:"f667d586-e270-4562-b1a3-4741903607c5"},
};
function setup(allowed=true,attempted=1,delivered=1){
 const query=vi.fn(async()=>({rows:[{allowed}]}));
 const send=vi.fn(async()=>({attempted,delivered}));
 const runtime=createP2pNoticeRuntime({
   pool:{query} as never,sender:{send},workerId:"p2p-notice-tests",
 });
 return {query,send,runtime};
}
describe("P2P order push delivery",()=>{
 beforeEach(()=>{
  vi.clearAllMocks();
  vi.mocked(claimOutboxBatch).mockResolvedValue([item] as never);
 });
 it("uses canonical leased outbox, checks member and sends nonfinancial push",async()=>{
  const {query,send,runtime}=setup();
  expect(await runtime.runOnce()).toEqual({
    claimed:1,acknowledged:1,delivered:1,retried:0,deadLetter:0,
  });
  expect(query).toHaveBeenCalledWith(expect.stringContaining("identity.users"),
    [item.tenantId,item.payload.orderId,item.payload.userId]);
  expect(send).toHaveBeenCalledWith(expect.objectContaining({
    data:{type:"p2p_order",orderId:item.payload.orderId,eventId:item.outboxEventId},
  }));
  expect(settleOutboxClaim).toHaveBeenCalledWith(expect.anything(),
    expect.objectContaining({fence:3,state:"acknowledged"}));
 });
 it("never pushes to an unauthorized, disabled or non-participant account",async()=>{
  const {runtime,send}=setup(false);
  expect(await runtime.runOnce()).toMatchObject({delivered:0,acknowledged:1});
  expect(send).not.toHaveBeenCalled();
 });
 it("retries partial FCM delivery with the same outbox identity",async()=>{
  const {runtime}=setup(true,2,1);
  expect(await runtime.runOnce()).toMatchObject({retried:1});
  expect(settleOutboxClaim).toHaveBeenCalledWith(expect.anything(),
    expect.objectContaining({state:"retry-scheduled"}));
 });
 it("dead-letters invalid payload without leaking a notification",async()=>{
  vi.mocked(claimOutboxBatch).mockResolvedValue([{...item,payload:{
    userId:"not_a_customer",orderId:item.payload.orderId,state:"completed",
    sourceEventId:item.payload.sourceEventId,
  }}] as never);
  const {runtime,send}=setup();
  expect(await runtime.runOnce()).toMatchObject({deadLetter:1});
  expect(send).not.toHaveBeenCalled();
 });
});
