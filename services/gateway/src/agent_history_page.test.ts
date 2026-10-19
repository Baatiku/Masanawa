import {afterEach,describe,expect,it,vi} from "vitest";
import {createCanonicalId,toInstant} from "@masanawa/contracts";
import {decodeMobileHistoryCursor} from "@masanawa/postgres";
import type {AgentShellService} from "./agent_shell_contract.js";
import {createGatewayApp} from "./app.js";
const apps:Array<ReturnType<typeof createGatewayApp>>=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(app=>app.close()));});

describe("authenticated Masana history pagination API",()=>{
  it("returns whole user/assistant pairs with exact next cursor, and forwards owner bearer",async()=>{
    const id=createCanonicalId("character");
    const requests=Array.from({length:3},()=>createCanonicalId("request")).sort();
    const at=toInstant("2026-10-19T12:00:00.000Z");
    const history=vi.fn(async (request:Parameters<AgentShellService["history"]>[0])=>{
      const before=request.before?decodeMobileHistoryCursor(request.before):null;
      const selected=requests.filter(x=>!before || x<before.requestId!).reverse().slice(0,request.limit).reverse();
      return selected.flatMap((req,i)=>[
        {key:"user:"+req,direction:"user" as const,requestId:req,text:"Question "+i,parts:[],agentRunId:null,createdAt:at},
        {key:"assistant:"+req,direction:"assistant" as const,requestId:req,text:"Answer "+i,parts:[],agentRunId:null,createdAt:at},
      ]);
    });
    const shell={history} as unknown as AgentShellService;
    const app=createGatewayApp({agentShell:shell});apps.push(app);
    const root="/agent/history/page?characterId="+encodeURIComponent(id)+"&limit=1";
    const header={authorization:"Bearer owner-a"};
    const first=await app.inject({method:"GET",url:root,headers:header});
    expect(first.statusCode).toBe(200);
    expect(first.json().hasMore).toBe(true);
    expect(first.json().messages).toHaveLength(2);
    expect(first.json().nextCursor).toMatch(/^v1\./u);
    const second=await app.inject({method:"GET",url:root+"&before="+encodeURIComponent(first.json().nextCursor),headers:header});
    expect(second.statusCode).toBe(200);
    expect(second.json().messages).toHaveLength(2);
    expect(second.json().messages[0].requestId).not.toBe(first.json().messages[0].requestId);
    expect(history.mock.calls[0]?.[0]).toMatchObject({characterId:id,limit:2,authorizationHeader:"Bearer owner-a"});
  });
});
