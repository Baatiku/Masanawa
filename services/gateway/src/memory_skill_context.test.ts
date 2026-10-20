import {describe,it,expect} from "vitest";
import {memoryAwareDiscoveryText} from "./memory_skill_context.js";
describe("memory-aware certified Skill discovery hints",()=>{
  it("uses remembered context only for explicit resumption",()=>{
    expect(memoryAwareDiscoveryText("continue our lesson",["I am learning Flutter"])).toContain("Flutter");
    expect(memoryAwareDiscoveryText("what time is it?",["I am learning Flutter"]))
      .toBe("what time is it?");
  });
  it("keeps bounded untrusted evidence and no context when omitted",()=>{
    expect(memoryAwareDiscoveryText("resume",["X".repeat(3000)])).toBe("resume");
    expect(memoryAwareDiscoveryText("resume",[])).toBe("resume");
  });
});
