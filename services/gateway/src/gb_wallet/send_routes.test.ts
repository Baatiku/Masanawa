import Fastify from "fastify";
import { afterEach,describe,expect,it,vi } from "vitest";
import { registerGbSendReviewRoutes } from "./send_routes.js";
import { GbSendError, type GbSendPorts } from "./send_review.js";

const apps:Array<ReturnType<typeof Fastify>>=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(app=>app.close()));});
const secret="test-only-secret-1234567890123456789012345";
const actor={tenantId:"tenant-a",userId:"sender-a"};
const target={userId:"recipient-b",username:"bello.user",displayName:"Bello",active:true};
function setup(overrides:Partial<GbSendPorts>={}) {
  const transfer=vi.fn(async({operationId,amountMb}:{operationId:string;amountMb:number})=>
    ({operationId,amountMb,state:"completed" as const}));
  const readTransfer=vi.fn(async(_actor:unknown,operationId:string)=>
    ({operationId,amountMb:200,state:"completed" as const}));
  const ports:GbSendPorts={
    authorize:async header=>{
      if(header!=="Bearer current")throw new GbSendError(401,"unauthorized");
      return actor;
    },
    resolveRecipient:async()=>target,
    balance:async()=>({purchasedMb:1000,welcomeMb:500,reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:false}),
    transfer:transfer as GbSendPorts["transfer"],
    readTransfer,
    reviewSecret:secret,
    now:()=>new Date("2026-10-25T00:00:00Z"),
    nonce:()=>"12345678901234567890123456789012",
    ...overrides,
  };
  const app=Fastify({logger:false});apps.push(app);
  registerGbSendReviewRoutes(app,ports);
  return {app,transfer,readTransfer};
}
describe("exact whole-MB internal Send review",()=>{
  it("reads the original operation as the debit actor only without POST replay",async()=>{
    const {app,transfer,readTransfer}=setup();
    const id="send_12345678901234567890123456789012";
    expect((await app.inject({method:"GET",url:`/v1/gb/wallet/send/receipt/${id}`})).statusCode).toBe(401);
    const headers={authorization:"Bearer current"};
    const read=await app.inject({method:"GET",url:`/v1/gb/wallet/send/receipt/${id}`,headers});
    expect(read.statusCode).toBe(200);
    expect(read.headers["cache-control"]).toBe("no-store");
    expect(read.json().receipt).toEqual({operationId:id,amountMb:200,state:"completed"});
    expect(readTransfer).toHaveBeenCalledWith(actor,id);
    expect(transfer).not.toHaveBeenCalled();
    expect((await app.inject({method:"GET",url:"/v1/gb/wallet/send/receipt/bad",headers})).statusCode).toBe(422);
    readTransfer.mockResolvedValueOnce(null as never);
    expect((await app.inject({method:"GET",url:`/v1/gb/wallet/send/receipt/${id}`,headers})).statusCode).toBe(404);
  });
  it("exposes only an authenticated, active exact-handle identity preview",async()=>{
    const resolution=vi.fn(async()=>target);
    const {app,transfer}=setup({resolveRecipient:resolution});
    const path="/v1/gb/wallet/recipients/%40BELLO.User";
    expect((await app.inject({method:"GET",url:path})).statusCode).toBe(401);
    const headers={authorization:"Bearer current"};
    const read=await app.inject({method:"GET",url:path,headers});
    expect(read.statusCode).toBe(200);
    expect(read.headers["cache-control"]).toBe("no-store");
    expect(read.json()).toEqual({recipient:{id:"recipient-b",username:"bello.user",displayName:"Bello"}});
    expect(resolution).toHaveBeenCalledWith(actor,"bello.user");
    expect((await app.inject({method:"GET",url:"/v1/gb/wallet/recipients/bo",headers})).statusCode).toBe(422);
    expect(transfer).not.toHaveBeenCalled();
    const self=setup({resolveRecipient:async()=>({...target,userId:actor.userId})});
    expect((await self.app.inject({method:"GET",url:path,headers})).statusCode).toBe(404);
    const blocked=setup({resolveRecipient:async()=>null});
    expect((await blocked.app.inject({method:"GET",url:path,headers})).statusCode).toBe(404);
  });
  it("quotes server-verified recipient and atomically transfers only after accepted review",async()=>{
    const {app,transfer}=setup();
    const unauthorized=await app.inject({method:"POST",url:"/v1/gb/wallet/send/quote",
      payload:{username:"bello.user",amountMb:200}});
    expect(unauthorized.statusCode).toBe(401);
    const quote=await app.inject({method:"POST",url:"/v1/gb/wallet/send/quote",
      headers:{authorization:"Bearer current"},
      payload:{username:"@BELLO.User",amountMb:200}});
    expect(quote.statusCode).toBe(200);
    expect(quote.headers["cache-control"]).toBe("no-store");
    expect(quote.json()).toMatchObject({recipient:{id:"recipient-b",username:"bello.user"},
      amountMb:200,feeMb:0,requiresConfirmation:true});
    const confirmed=await app.inject({method:"POST",url:"/v1/gb/wallet/send/confirm",
      headers:{authorization:"Bearer current"},
      payload:{reviewToken:quote.json().reviewToken,reviewAccepted:true}});
    expect(confirmed.statusCode).toBe(200);
    expect(confirmed.json().receipt).toMatchObject({
      amountMb:200,operationId:"send_12345678901234567890123456789012",state:"completed"});
    expect(transfer).toHaveBeenCalledWith({
      tenantId:"tenant-a",userId:"sender-a",recipientId:"recipient-b",
      amountMb:200,operationId:"send_12345678901234567890123456789012",
      idempotencyKey:"send_12345678901234567890123456789012",
    });
    const replay=await app.inject({method:"POST",url:"/v1/gb/wallet/send/confirm",
      headers:{authorization:"Bearer current"},
      payload:{reviewToken:quote.json().reviewToken,reviewAccepted:true}});
    expect(replay.statusCode).toBe(200);
    expect(transfer.mock.calls[1]).toEqual(transfer.mock.calls[0]);
    // Immutable PG operation key is identical on every acceptance replay.
  });

  it("does not allow Welcome-only MB to fund Send or permit self-send",async()=>{
    const noPurchased=setup({balance:async()=>({
      purchasedMb:0,welcomeMb:500,reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:false,
    })});
    const quote=(app:ReturnType<typeof Fastify>)=>app.inject({
      method:"POST",url:"/v1/gb/wallet/send/quote",
      headers:{authorization:"Bearer current"},
      payload:{username:"bello.user",amountMb:100},
    });
    expect((await quote(noPurchased.app)).statusCode).toBe(409);
    const self=setup({resolveRecipient:async()=>({...target,userId:"sender-a"})});
    expect((await quote(self.app)).statusCode).toBe(422);
  });

  it("rejects unsigned, tampered, expired and reassigned review tokens",async()=>{
    const {app,transfer}=setup();
    const headers={authorization:"Bearer current"};
    const q=await app.inject({method:"POST",url:"/v1/gb/wallet/send/quote",
      headers,payload:{username:"bello.user",amountMb:250}});
    const token=q.json().reviewToken as string;
    const confirm=(t:string)=>app.inject({method:"POST",url:"/v1/gb/wallet/send/confirm",
      headers,payload:{reviewToken:t,reviewAccepted:true}});
    expect((await confirm(token.slice(0,-1)+"X")).statusCode).toBe(403);
    expect((await confirm("bad token")).statusCode).toBe(400);
    expect(transfer).not.toHaveBeenCalled();
    const expired=setup({now:()=>new Date("2026-10-25T00:05:00Z")});
    const ex=await expired.app.inject({method:"POST",url:"/v1/gb/wallet/send/confirm",
      headers,payload:{reviewToken:token,reviewAccepted:true}});
    expect(ex.statusCode).toBe(410);
    const reassigned=setup({resolveRecipient:async()=>({...target,userId:"another-user"})});
    const changed=await reassigned.app.inject({method:"POST",url:"/v1/gb/wallet/send/confirm",
      headers,payload:{reviewToken:token,reviewAccepted:true}});
    expect(changed.statusCode).toBe(409);
  });
});
