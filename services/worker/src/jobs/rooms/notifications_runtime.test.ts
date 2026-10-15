import {beforeEach,describe,expect,it,vi} from "vitest";
import {claimOutboxBatch,settleOutboxClaim} from "@masanawa/postgres";
import {createRoomReplyNoticeRuntime} from "./notifications_runtime.js";

vi.mock("@masanawa/postgres",()=>({
  claimOutboxBatch:vi.fn(),settleOutboxClaim:vi.fn(async()=>undefined),
  withTransaction:vi.fn(async(_pool:unknown,fn:(c:unknown)=>Promise<unknown>)=>fn({})),
}));

const event={
  outboxEventId:"outbox-event_test-notice1",
  eventId:"event_test-notice1",
  tenantId:"tenant_demo",
  eventType:"rooms.answer.approved",
  destination:"notifications.rooms",
  state:"claimed",
  attempt:1,
  fence:3,
  payload:{
    userId:"user_demo12345678",
    roomId:"room_study-circle",
    questionId:"room-question_demo12345678",
  },
};
function setup(allowed:boolean,attempted=1,delivered=1){
  const query=vi.fn(async()=>({rows:[{allowed}]}));
  const send=vi.fn(async()=>({attempted,delivered}));
  return {query,send,worker:createRoomReplyNoticeRuntime({
    pool:{query} as never,
    sender:{send},workerId:"rooms-notice-tests",
  })};
}
describe("Room reply outbox Firebase delivery",()=>{
  beforeEach(()=>{
    vi.clearAllMocks();
    vi.mocked(claimOutboxBatch).mockResolvedValue([event] as never);
  });
  it("uses original leased outbox and sends only to authorized current members",async()=>{
    const {worker,send,query}=setup(true);
    const result=await worker.runOnce();
    expect(result).toEqual({claimed:1,acknowledged:1,delivered:1,retried:0,deadLetter:0});
    expect(query).toHaveBeenCalledWith(expect.stringContaining("rooms.entitlements"),
      ["tenant_demo","room_study-circle","room-question_demo12345678","user_demo12345678"]);
    expect(send).toHaveBeenCalledWith(expect.objectContaining({
      scope:{tenantId:"tenant_demo",userId:"user_demo12345678"},
      data:expect.objectContaining({type:"room_reply",eventId:event.outboxEventId}),
    }));
    expect(settleOutboxClaim).toHaveBeenCalledWith(expect.anything(),
      expect.objectContaining({outboxEventId:event.outboxEventId,fence:3,state:"acknowledged"}));
  });
  it("acknowledges a revoked membership without leaking a reply to the phone",async()=>{
    const {worker,send}=setup(false);
    expect(await worker.runOnce()).toMatchObject({acknowledged:1,delivered:0});
    expect(send).not.toHaveBeenCalled();
  });
  it("retries a partial FCM delivery rather than falsely acknowledging",async()=>{
    const {worker}=setup(true,2,1);
    expect(await worker.runOnce()).toMatchObject({acknowledged:0,retried:1});
    expect(settleOutboxClaim).toHaveBeenCalledWith(expect.anything(),
      expect.objectContaining({state:"retry-scheduled",safeErrorCode:"room_notification_failed"}));
  });
  it("dead-letters malformed outbox payloads without sending",async()=>{
    vi.mocked(claimOutboxBatch).mockResolvedValue([{
      ...event,payload:{userId:"another-user",roomId:"invalid",questionId:"bad"},
    }] as never);
    const {worker,send}=setup(true);
    expect(await worker.runOnce()).toMatchObject({deadLetter:1});
    expect(send).not.toHaveBeenCalled();
  });
});
