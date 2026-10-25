import Fastify from "fastify";
import {afterEach,describe,expect,it,vi} from "vitest";
import {
  registerGbRequestRoutes,
  type GbRequestPorts,
} from "./request_routes.js";
import {GbRequestStoreError} from "@masanawa/postgres";

const apps:Array<ReturnType<typeof Fastify>>=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(app=>app.close()));});
const actor={tenantId:"tenant-a",userId:"alice"};
const entry={
  requestId:"mbreq_abcdefghijklmno0123456789",
  requesterId:"alice",payerId:"bob",amountMb:250,
  requesterUsername:"alice.req",payerUsername:"bob.pay",
  state:"open" as const,createdAt:"2026-10-25T00:00:00Z",
  expiresAt:"2026-11-01T00:00:00Z",operationId:null,
};
function setup(overrides:Partial<GbRequestPorts>={}) {
  const store={
    create:vi.fn(async()=>entry),
    list:vi.fn(async()=>[entry]),
    pay:vi.fn(async()=>({
      operationId:"request_pay_"+entry.requestId,
      amountMb:250,state:"completed" as const,
    })),
    cancel:vi.fn(async()=>({...entry,state:"cancelled" as const})),
  };
  const ports:GbRequestPorts={
    authorize:async(header)=>{
      if(header!=="Bearer current")throw new GbRequestStoreError(403,"unauthorized");
      return actor;
    },
    resolveRecipient:async()=>({
      userId:"bob",username:"bob.pay",displayName:"Bob",active:true,
    }),
    store,
    ...overrides,
  };
  const app=Fastify({logger:false});apps.push(app);
  registerGbRequestRoutes(app,ports);
  return {app,store};
}
describe("durable whole-MB Request transport",()=>{
  it("requires authentication on reads, creates, Pay and Cancel",async()=>{
    const {app}=setup();
    const calls=[
      {method:"GET",url:"/v1/gb/wallet/requests"},
      {method:"POST",url:"/v1/gb/wallet/requests",
        payload:{username:"bob.pay",amountMb:100,idempotencyKey:"request_abcdefghijkl"}},
      {method:"POST",url:"/v1/gb/wallet/requests/"+entry.requestId+"/pay",
        payload:{reviewAccepted:true}},
      {method:"POST",url:"/v1/gb/wallet/requests/"+entry.requestId+"/cancel",
        payload:{}},
    ] as const;
    for(const req of calls){
      const response=await app.inject(req);
      expect(response.statusCode).toBe(403);
      expect(response.headers["cache-control"]).toBe("no-store");
    }
  });
  it("resolves only live verified recipient and returns original request key",async()=>{
    const {app,store}=setup();
    const headers={authorization:"Bearer current"};
    const created=await app.inject({method:"POST",url:"/v1/gb/wallet/requests",
      headers,payload:{
        username:"@BOB.PAY",amountMb:250,idempotencyKey:"request_abcdefghijkl",
      }});
    expect(created.statusCode).toBe(201);
    expect(created.json().request.requestId).toBe(entry.requestId);
    expect(store.create).toHaveBeenCalledWith(actor,{
      payerId:"bob",amountMb:250,idempotencyKey:"request_abcdefghijkl",
    });
    const listed=await app.inject({method:"GET",url:"/v1/gb/wallet/requests",headers});
    expect(listed.json().requests).toHaveLength(1);
    expect(listed.json().requests[0].amountMb).toBe(250);
  });
  it("requires explicit payment acceptance and keeps original operation",async()=>{
    const {app,store}=setup();
    const url="/v1/gb/wallet/requests/"+entry.requestId+"/pay";
    const headers={authorization:"Bearer current"};
    const notAccepted=await app.inject({method:"POST",url,headers,
      payload:{reviewAccepted:false}});
    expect(notAccepted.statusCode).toBe(400);
    expect(store.pay).not.toHaveBeenCalled();
    const approved=await app.inject({method:"POST",url,headers,
      payload:{reviewAccepted:true}});
    expect(approved.statusCode).toBe(200);
    expect(approved.json().receipt).toMatchObject({
      operationId:"request_pay_"+entry.requestId,state:"completed",amountMb:250,
    });
    expect(store.pay).toHaveBeenCalledWith(actor,entry.requestId);
    const cancellation=await app.inject({method:"POST",headers,
      url:"/v1/gb/wallet/requests/"+entry.requestId+"/cancel",payload:{}});
    expect(cancellation.statusCode).toBe(200);
    expect(cancellation.json().request.state).toBe("cancelled");
  });
  it("rejects self-request and hidden or unverified target",async()=>{
    const {app}=setup({
      resolveRecipient:async()=>({
        userId:"alice",username:"bob.pay",displayName:"Alice",active:true,
      }),
    });
    const response=await app.inject({
      method:"POST",url:"/v1/gb/wallet/requests",
      headers:{authorization:"Bearer current"},
      payload:{username:"bob.pay",amountMb:250,idempotencyKey:"request_abcdefghijkl"},
    });
    expect(response.statusCode).toBe(404);
  });
});
