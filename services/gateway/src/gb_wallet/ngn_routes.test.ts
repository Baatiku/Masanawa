import {CustomerAuthError,type CustomerAuthService} from "../customer_auth.js";
import Fastify from "fastify";
import {registerNgnWalletRoutes} from "./ngn_routes.js";
import {afterEach,describe,it,expect,vi} from "vitest";
import {createGatewayApp} from "../app.js";
import {quoteNgnQuantity,type NgnWalletPorts} from "./ngn_exchange.js";
import {requiresFinancialCustomerState} from "../financial_mutation_guard.js";
const apps:ReturnType<typeof createGatewayApp>[]=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(a=>a.close()));});
function fixture(){
 let clock=Date.parse("2026-10-25T12:00:00Z"),enabled=true;
 const actor={tenantId:"tenant_fixture",userId:"user_fixture"};
 const receipts=new Map();
 const p:NgnWalletPorts={authorize:async header=>{if(header!=="Bearer fixture")throw new Error("no");return actor;},read:vi.fn(async()=>({balanceKobo:1_000_000,debtKobo:0,frozen:false})),exchange:vi.fn(async r=>{
  const receipt={operationId:r.operationId,kind:"exchange" as const,amountKobo:r.amountKobo,amountMb:r.sizeGb*1000,rateVersion:r.rateVersion,createdAt:new Date(clock).toISOString()};receipts.set(r.operationId,receipt);return receipt;
 }),receipt:async(a,id)=>a.userId===actor.userId?receipts.get(id)??null:null,reviewSecret:"test-only-private-ngn-review-key-32bytes",ready:()=>enabled,now:()=>clock};
 const app=Fastify();registerNgnWalletRoutes(app,p);apps.push(app);
 const request=(url:string,payload?:Record<string,unknown>,auth=true)=>app.inject({url,method:payload===undefined?"GET":"POST",headers:auth?{authorization:"Bearer fixture"}:{},...(payload===undefined?{}:{payload})});
 return {p,app,request,actor,expire:()=>clock+=300_001,disable:()=>enabled=false};
}
describe("NGN wallet authenticated reviewed exchange",()=>{
 it("Gateway rejects financial exchange without fresh customer state",async()=>{
  const f=fixture();const app=createGatewayApp({ngnWallet:f.p});apps.push(app);
  const response=await app.inject({method:"POST",url:"/v1/gb/wallet/exchange/quote",headers:{authorization:"Bearer fixture"},payload:{sizeGb:10}});
  expect(response.statusCode).toBe(503);expect(response.json().error.code).toBe("AUTH_UNAVAILABLE");
 });
 it("uses quantity price and preserves custom exact quantity across old deposit tier crossings",()=>{
  expect(quoteNgnQuantity(10)).toMatchObject({amountKobo:500000,amountMb:10000});
  expect(quoteNgnQuantity(190)).toMatchObject({amountKobo:8075000,amountMb:190000});
  expect(quoteNgnQuantity(2000)).toMatchObject({amountKobo:60000000,amountMb:2000000});
  for(const n of [0,-1,0.5,2001,NaN])expect(()=>quoteNgnQuantity(n)).toThrow("invalid_quantity");
 });
 it("reads exact cash, requires auth, has no deposit or client amount endpoint",async()=>{
  const f=fixture();expect((await f.request("/v1/gb/wallet/ngn/summary",undefined,false)).statusCode).toBe(401);
  const result=await f.request("/v1/gb/wallet/ngn/summary");expect(result.json()).toMatchObject({balance:{currency:"NGN",unit:"kobo",balanceKobo:1000000}});expect(result.headers["cache-control"]).toBe("no-store");
  expect((await f.request("/v1/gb/wallet/ngn/deposit",{amountKobo:9999999})).statusCode).toBe(404);
  expect((await f.request("/v1/gb/wallet/exchange/packages")).json().packages).toHaveLength(9);
  expect(requiresFinancialCustomerState("POST","/v1/gb/wallet/exchange/confirm")).toBe(true);
 });
 it("requires explicit confirmation, rejects tampered and other-account reviews",async()=>{
  const f=fixture();const q=(await f.request("/v1/gb/wallet/exchange/quote",{sizeGb:10})).json();
  expect(q).toMatchObject({amountMb:10000,amountKobo:500000,canAfford:true});expect(f.p.exchange).not.toHaveBeenCalled();
  expect((await f.request("/v1/gb/wallet/exchange/confirm",{reviewToken:q.reviewToken})).statusCode).toBe(400);
  expect((await f.request("/v1/gb/wallet/exchange/confirm",{reviewToken:q.reviewToken+"x",reviewAccepted:true})).statusCode).toBe(422);
  f.actor.userId="user_other";
  expect((await f.request("/v1/gb/wallet/exchange/confirm",{reviewToken:q.reviewToken,reviewAccepted:true})).statusCode).toBe(403);
  expect(f.p.exchange).not.toHaveBeenCalled();
 });
 it("expired unspent quote fails, completed original receipt survives expiry and disabled exchange",async()=>{
  const f=fixture();const q=(await f.request("/v1/gb/wallet/exchange/quote",{sizeGb:10})).json();
  const done=await f.request("/v1/gb/wallet/exchange/confirm",{reviewToken:q.reviewToken,reviewAccepted:true});expect(done.statusCode).toBe(200);
  f.expire();f.disable();expect((await f.request("/v1/gb/wallet/exchange/confirm",{reviewToken:q.reviewToken,reviewAccepted:true})).json()).toEqual(done.json());expect(f.p.exchange).toHaveBeenCalledTimes(1);
  expect((await f.request('/v1/gb/wallet/exchange/'+q.operationId)).json()).toEqual(done.json());
  const fresh=fixture();const old=(await fresh.request("/v1/gb/wallet/exchange/quote",{sizeGb:10})).json();fresh.expire();expect((await fresh.request("/v1/gb/wallet/exchange/confirm",{reviewToken:old.reviewToken,reviewAccepted:true})).statusCode).toBe(410);
 });
 it("fails closed before activation and on frozen/debt, but offers insufficient-balance funding review",async()=>{
  const f=fixture();f.disable();expect((await f.request("/v1/gb/wallet/exchange/quote",{sizeGb:10})).statusCode).toBe(503);
  const next=fixture();vi.mocked(next.p.read).mockResolvedValue({balanceKobo:0,debtKobo:0,frozen:false});expect((await next.request("/v1/gb/wallet/exchange/quote",{sizeGb:10})).json()).toMatchObject({canAfford:false});
  vi.mocked(next.p.read).mockResolvedValue({balanceKobo:0,debtKobo:1,frozen:true});expect((await next.request("/v1/gb/wallet/exchange/quote",{sizeGb:10})).statusCode).toBe(403);
 });
 it("recovery holds block new exchange while private balance readback remains available",async()=>{
  const f=fixture();const auth={authorizeSensitiveMutation:async()=>{throw new CustomerAuthError("ACCOUNT_RECOVERY_HOLD",403);}} as unknown as CustomerAuthService;
  const app=createGatewayApp({ngnWallet:f.p,customerAuth:auth});apps.push(app);
  for(const [path,payload] of [["quote",{sizeGb:10}],["confirm",{reviewToken:"x".repeat(100),reviewAccepted:true}]] as const){
   const response=await app.inject({method:"POST",url:"/v1/gb/wallet/exchange/"+path,headers:{authorization:"Bearer fixture"},payload});
   expect(response.statusCode).toBe(403);expect(response.json().error.code).toBe("ACCOUNT_RECOVERY_HOLD");
  }
  expect((await app.inject({url:"/v1/gb/wallet/ngn/summary",headers:{authorization:"Bearer fixture"}})).statusCode).toBe(200);
  expect(f.p.exchange).not.toHaveBeenCalled();
 });

});
