import {describe,it,expect} from "vitest";
import {createPostgresCreatorAgentService,CreatorAgentError} from "./store.js";

const seed={name:"Amina",profession:"Teacher",languages:["en"],gender:"female",ageRange:"40-59",portraitMediaId:null};
const record={character_id:"character_123456789",owner_user_id:"owner_12345678",
 state:"published",revision:2,handle:"amina-1243",seed,generated:null,status_enabled:false,
 published_at:new Date("2026-10-01T00:00:00Z")};
const owner={tenantId:"tenant_12345678",userId:"owner_12345678"};
function fixture(){
 const calls:{sql:string;params:readonly unknown[]}[]=[];
 const pool={
  async query(sql:string,params:readonly unknown[]=[]){
   calls.push({sql,params});
   if(sql.includes("FROM creator.agents"))return {rows:[record],rowCount:1};
   if(sql.includes("sum(CASE"))return {rows:[{settled_atomic:"1200000",pending_atomic:"150000",
     reversed_atomic:"10000"}],rowCount:1};
   if(sql.includes("FROM creator.earning_allocations"))
    return {rows:[{allocation_id:"allocation_123456",usage_receipt_id:"usage_123456",
     creator_share_atomic:"1200000",contribution_atomic:"5000000",
     policy_revision:1,state:"settled",creator_wallet_ledger_ref:"ledger_123456",
     created_at:new Date("2026-10-19T01:00:00.000Z")}],rowCount:1};
   throw Error("unexpected query");
  },
  async connect(){throw Error("unexpected write");}
 };
 return {calls,service:createPostgresCreatorAgentService({pool,generator:{async generate(){throw Error("unused");}}})};
}
describe("creator earnings statement",()=>{
 it("reads posted and pending allocations without ever creating Wallet credits",async()=>{
  const {service,calls}=fixture();
  const statement=await service.earnings(owner,"character_123456789");
  expect(statement).toMatchObject({asset:"MSNW",atomicDecimals:6,
   settledAtomic:"1200000",pendingAtomic:"150000",reversedAtomic:"10000",nextCursor:null});
  expect(statement.items[0]).toMatchObject({state:"settled",amountAtomic:"1200000",
   walletLedgerRef:"ledger_123456"});
  expect(calls).toHaveLength(3);
  expect(calls.every(c=>c.sql.trimStart().startsWith("SELECT"))).toBe(true);
  expect(calls.every(c=>c.params[0]===owner.tenantId&&c.params[1]===owner.userId)).toBe(true);
 });
 it("blocks forged cursors before reading allocations",async()=>{
  const {service,calls}=fixture();
  await expect(service.earnings(owner,"character_123456789","%%%"))
   .rejects.toMatchObject({code:"creator.earnings_cursor_invalid"});
  expect(calls).toHaveLength(1);
 });
 it("enforces tenant, owner and character predicates on both statements and summary",async()=>{
  const {service,calls}=fixture();
  await service.earnings(owner,"character_123456789");
  for(const call of calls)expect(call.sql).toMatch(/tenant_id=\$1 AND owner_user_id=\$2 AND character_id=\$3/);
 });
});
