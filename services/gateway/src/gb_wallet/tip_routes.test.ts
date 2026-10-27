import Fastify from "fastify";
import {afterEach,describe,expect,it,vi} from "vitest";
import {registerGbStatusTipRoutes} from "./tip_routes.js";
import {StatusTipError,type StatusTipPorts} from "./tip_review.js";

const apps:Array<ReturnType<typeof Fastify>>=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(app=>app.close()));});
const secret="test-status-tip-secret-1234567890123456789012345";
const actor={tenantId:"tenant-a",userId:"fan-a"};
const post="381026c2-9d56-47b1-b73d-1784e24e41e2";
const target={postId:post,characterId:"character_456",displayName:"Amina"};
const key="tip_12345678901234567890123456789012";
function setup(overrides:Partial<StatusTipPorts>={}){
  const receipts=new Map<string,{operationId:string;postId:string;characterId:string;
    amountMb:number;state:"completed"}>();
  const tip=vi.fn(async (input:Parameters<StatusTipPorts["tip"]>[0])=>{
    const receipt={operationId:input.operationId,postId:input.postId,
      characterId:input.characterId,amountMb:input.amountMb,state:"completed" as const};
    receipts.set(input.operationId,receipt);
    return receipt;
  });
  const readTip=vi.fn(async (_actor:unknown,operationId:string)=>receipts.get(operationId)??null);
  const ports:StatusTipPorts={
    authorize:async header=>{
      if(header!=="Bearer current")throw new StatusTipError(401,"unauthorized");
      return actor;
    },
    post:async()=>target,
    balance:async()=>({purchasedMb:1000,welcomeMb:500,
      reservedPurchasedMb:200,reservedWelcomeMb:0,frozen:false}),
    tip,readTip,
    reviewSecret:secret,
    now:()=>new Date("2026-10-27T00:00:00Z"),
    nonce:()=>"12345678901234567890123456789012",
    ...overrides,
  };
  const app=Fastify({logger:false});apps.push(app);
  registerGbStatusTipRoutes(app,ports);
  const headers={authorization:"Bearer current"};
  const review=(amountMb=100)=>app.inject({
    method:"POST",url:"/v1/gb/wallet/tips/review",headers,
    payload:{postId:post,amountMb},
  });
  const confirm=(reviewToken:string)=>app.inject({
    method:"POST",url:"/v1/gb/wallet/tips/confirm",headers,
    payload:{reviewToken,reviewAccepted:true},
  });
  return {app,tip,readTip,review,confirm,headers};
}
describe("Status reviewed MB tips",()=>{
  it("requires a signed-in fan, approved post and purchased available MB",async()=>{
    const {app,tip,review}=setup();
    const noAuth=await app.inject({method:"POST",url:"/v1/gb/wallet/tips/review",
      payload:{postId:post,amountMb:100}});
    expect(noAuth.statusCode).toBe(401);
    const q=await review(100);
    expect(q.statusCode).toBe(200);
    expect(q.headers["cache-control"]).toBe("no-store");
    expect(q.json().review).toMatchObject({postId:post,
      characterId:"character_456",amountMb:100,
      requiresConfirmation:true,operationId:key});
    expect(tip).not.toHaveBeenCalled();
    const welcomeOnly=setup({balance:async()=>({purchasedMb:0,
      welcomeMb:500,reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:false})});
    expect((await welcomeOnly.review()).statusCode).toBe(409);
    const takenDown=setup({post:async()=>null});
    expect((await takenDown.review()).statusCode).toBe(404);
    expect((await review(0)).statusCode).toBe(400);
  });
  it("confirms once under exact original operation, replays without duplicate payment",async()=>{
    const {app,tip,readTip,review,confirm,headers}=setup();
    const q=await review(100);
    const token=q.json().review.reviewToken as string;
    const accepted=await confirm(token);
    expect(accepted.statusCode).toBe(200);
    expect(accepted.json().receipt).toEqual({operationId:key,postId:post,
      characterId:"character_456",amountMb:100,state:"completed"});
    expect(tip).toHaveBeenCalledWith({tenantId:"tenant-a",userId:"fan-a",
      postId:post,characterId:"character_456",amountMb:100,
      operationId:key,idempotencyKey:key});
    const replay=await confirm(token);
    expect(replay.statusCode).toBe(200);
    expect(tip).toHaveBeenCalledTimes(1);
    const receipt=await app.inject({method:"GET",
      url:`/v1/gb/wallet/tips/receipt/${key}`,headers});
    expect(receipt.statusCode).toBe(200);
    expect(receipt.headers["cache-control"]).toBe("no-store");
    expect(readTip).toHaveBeenCalledWith(actor,key);
    expect((await app.inject({method:"GET",
      url:`/v1/gb/wallet/tips/receipt/${key}`})).statusCode).toBe(401);
    expect((await app.inject({method:"GET",
      url:"/v1/gb/wallet/tips/receipt/bad",headers})).statusCode).toBe(422);
  });
  it("denies altered, foreign, expired and author-changed review",async()=>{
    const current=setup();
    const token=(await current.review()).json().review.reviewToken as string;
    expect((await current.confirm(token.slice(0,-1)+"*")).statusCode).toBe(422);
    const foreign=setup({authorize:async()=>({tenantId:"tenant-a",userId:"fan-b"})});
    expect((await foreign.confirm(token)).statusCode).toBe(403);
    const expired=setup({now:()=>new Date("2026-10-27T00:06:00Z")});
    expect((await expired.confirm(token)).statusCode).toBe(410);
    const changed=setup({post:async()=>({...target,characterId:"character_other"})});
    expect((await changed.confirm(token)).statusCode).toBe(409);
    expect(changed.tip).not.toHaveBeenCalled();
  });
  it("reads original completed receipt even if post later becomes unavailable",async()=>{
    const current=setup();
    const token=(await current.review()).json().review.reviewToken as string;
    await current.confirm(token);
    const switched=setup({
      post:async()=>null,
      readTip:async(_actor,id)=>id===key?{operationId:key,postId:post,
        characterId:"character_456",amountMb:100,state:"completed"}:null,
    });
    expect((await switched.confirm(token)).statusCode).toBe(200);
    expect(switched.tip).not.toHaveBeenCalled();
  });
});
