import {describe,expect,it} from "vitest";
import {allocateCreatorRevenue,creationFeeForPrecision,quoteCreatorEdit,quoteCreatorPublication,validateCreatorPolicy} from "./creator-policy.js";
const policy=validateCreatorPolicy({revision:4,creationFeeAtomic:"500000000",firstFreeAgentCount:1,freeSubstantiveEdits:3,paidEditFeeAtomic:"10000000",creatorRevenueShareBps:3000,maxPostsPerWeek:2});
describe("creator MSNW policy",()=>{
 it("consumes the one-time first publication entitlement for life",()=>{
  expect(quoteCreatorPublication(policy,0).amountAtomic).toBe("0");
  expect(quoteCreatorPublication(policy,1).amountAtomic).toBe("500000000");
  expect(quoteCreatorPublication(policy,100).entitlement).toBe("paid");
 });
 it("allows only three free published substantive edits",()=>{
  expect([0,1,2].map(n=>quoteCreatorEdit(policy,n).amountAtomic)).toEqual(["0","0","0"]);
  expect(quoteCreatorEdit(policy,3).amountAtomic).toBe("10000000");
 });
 it("never uses float arithmetic for commission",()=>{
  expect(allocateCreatorRevenue({eligibleRevenueAtomic:"1001",directCostAtomic:"200",refundedAtomic:"1",creatorRevenueShareBps:3000})).toEqual({
   contributionAtomic:"800",creatorShareAtomic:"240",platformShareAtomic:"560",
  });
 });
 it("never pays on loss-making revenue or on refunded revenue",()=>{
  expect(allocateCreatorRevenue({eligibleRevenueAtomic:"10",directCostAtomic:"100",refundedAtomic:"0",creatorRevenueShareBps:3000}).creatorShareAtomic).toBe("0");
 });
 it("rejects malformed/negative policy values and unsafe amounts",()=>{
  expect(()=>validateCreatorPolicy({...policy,creatorRevenueShareBps:11000})).toThrow();
  expect(()=>validateCreatorPolicy({...policy,paidEditFeeAtomic:"-100"})).toThrow();
  expect(()=>quoteCreatorPublication(policy,-1)).toThrow();
 });
 it("uses verified precision to display 5000 MSNW",()=>{
  expect(creationFeeForPrecision(8)).toBe("500000000000");
  expect(()=>creationFeeForPrecision(-1)).toThrow();
 });
});