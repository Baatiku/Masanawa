import {afterEach,describe,expect,it,vi} from "vitest";
import Fastify from "fastify";
import {parseMobileDiagnostics,registerMobileDiagnosticsRoutes} from "./mobile_diagnostics.js";
import type {PlatformCustomerSessionAuthorizer} from "./customer_auth.js";
const report={reportId:"request_019a0000-0000-7000-8000-000000000001",consent:true,version:"1.0.4",build:"42",source:"a".repeat(40),events:[{type:"StateError",frame:"src/core/client.dart:42",day:"2026-10-19"}],exits:["anr"]};
const apps:ReturnType<typeof Fastify>[]=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(app=>app.close()));});
function setup(observe=vi.fn(async()=>{})) {
  const app=Fastify();apps.push(app);
  const sessions={async authorize({authorizationHeader}:{authorizationHeader:string|undefined}){
    if(!authorizationHeader)throw Error("private auth details");
    return {tenantId:"private-tenant",userId:authorizationHeader,profile:{}};
  }} as unknown as PlatformCustomerSessionAuthorizer;
  registerMobileDiagnosticsRoutes(app,{sessions,observe});
  const send=(payload:unknown=report,authorization="private-owner")=>app.inject({method:"POST",url:"/v1/support/diagnostics",payload:JSON.stringify(payload),headers:{...(authorization?{authorization}:{}),"content-type":"application/json"}});
  return {app,send,observe};
}
describe("redacted opt-in mobile support capture",()=>{
  it("logs only validated anonymous projection and returns a reference",async()=>{
    const {send,observe}=setup();const response=await send();
    expect(response.statusCode).toBe(202);expect(response.json().reference).toMatch(/^[0-9a-f-]{36}$/);
    expect(observe).toHaveBeenCalledOnce();const logged=JSON.stringify(observe.mock.calls);
    expect(logged).not.toContain("private-");expect(logged).not.toContain("reportId");expect(logged).not.toContain("consent");
    expect(response.headers["cache-control"]).toBe("no-store");
  });
  it("rejects missing auth, consent, free-form messages, unknown fields and malformed calendar dates",async()=>{
    const {send,observe}=setup();expect((await send(report,"")).statusCode).toBe(401);
    for(const bad of [{...report,consent:false},{...report,token:"secret"},{...report,events:[{...report.events[0],message:"private chat"}]},{...report,events:[{...report.events[0],frame:"https://private/token"}]},{...report,events:[{...report.events[0],day:"2026-02-30"}]}])expect((await send(bad)).statusCode).toBe(422);
    expect(observe).not.toHaveBeenCalled();
  });
  it("deduplicates concurrent retry, rate limits new reports and isolates owners",async()=>{
    const {send,observe}=setup();const [a,b]=await Promise.all([send(),send()]);
    expect(a.json()).toEqual(b.json());expect(observe).toHaveBeenCalledOnce();
    expect((await send({...report,reportId:report.reportId.replace(/1$/,"2")})).statusCode).toBe(429);
    expect((await send(report,"other-owner")).statusCode).toBe(202);expect(observe).toHaveBeenCalledTimes(2);
  });
  it("does not acknowledge a failed collector, and permits retry",async()=>{
    const observe=vi.fn<()=>Promise<void>>(async()=>{throw Error("private collector failure");});const {send}=setup(observe);
    const failed=await send();expect(failed.statusCode).toBe(503);expect(failed.body).not.toContain("private");
    observe.mockImplementation(async()=>{});expect((await send()).statusCode).toBe(202);
  });
  it("bounds body, event count, exit vocabulary and error categories",async()=>{
    const {send}=setup();expect((await send({...report,events:Array(21).fill(report.events[0])})).statusCode).toBe(422);
    expect(parseMobileDiagnostics({...report,events:[{...report.events[0],type:"BearerSecret"}]})).toBeNull();
    expect(parseMobileDiagnostics({...report,exits:["private native stack"]})).toBeNull();
    expect((await send({...report,extra:"x".repeat(20_000)})).statusCode).toBe(413);
  });
});
