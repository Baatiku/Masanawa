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
    userId:"user_0199ea9d-60c5-7c69-8bbb-0f5d119fc203",
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
      ["tenant_demo","room_study-circle","room-question_demo12345678","user_0199ea9d-60c5-7c69-8bbb-0f5d119fc203"]);
    expect(send).toHaveBeenCalledWith(expect.objectContaining({
      scope:{tenantId:"tenant_demo",userId:"user_0199ea9d-60c5-7c69-8bbb-0f5d119fc203"},
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
  it("delivers a community post only after current membership, mute and post checks",async()=>{
    vi.mocked(claimOutboxBatch).mockResolvedValue([{...event,eventType:"rooms.post.created",payload:{userId:event.payload.userId,roomId:event.payload.roomId,postId:"room-post_demo12345678"}}] as never);
    const {worker,send,query}=setup(true);
    expect(await worker.runOnce()).toMatchObject({acknowledged:1,delivered:1});
    expect(query.mock.calls[0]?.[0]).toContain("muted");
    expect(send).toHaveBeenCalledWith(expect.objectContaining({data:expect.objectContaining({type:"room_post",postId:"room-post_demo12345678"})}));
  });
  it("delivers a targeted invitation without requiring an existing membership",async()=>{
    vi.mocked(claimOutboxBatch).mockResolvedValue([{...event,eventType:"rooms.member.invited",payload:{userId:event.payload.userId,roomId:event.payload.roomId}}] as never);
    const {worker,send,query}=setup(true);
    expect(await worker.runOnce()).toMatchObject({acknowledged:1,delivered:1});
    expect(query.mock.calls[0]?.[0]).toContain("rooms.membership_invites");
    expect(send).toHaveBeenCalledWith(expect.objectContaining({data:expect.objectContaining({type:"room_invite"})}));
  });

});
