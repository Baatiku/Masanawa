import { describe,expect,it } from "vitest";
import { platformProductMigrationRoots, readMigrationManifest } from "./index.js";

describe("Masanawa production migration composition",()=>{
  it("includes canonical consumer memory and its forward-only consent/summary schemas",async()=>{
    const roots=platformProductMigrationRoots();
    expect(roots.filter(x=>x.owner==="memory")).toHaveLength(1);
    const owners=roots.map(x=>x.owner);
    expect(owners.indexOf("memory")).toBeGreaterThan(owners.indexOf("identity"));
    expect(owners.indexOf("memory")).toBeLessThan(owners.indexOf("commerce"));
    const manifest=await readMigrationManifest(roots);
    const keys=manifest.map(x=>x.owner+"/"+x.name);
    expect(keys).toContain("memory/0008_consumer_masana_memory.sql");
    expect(keys).toContain("memory/0009_consumer_reflection_progress.sql");
  });
});
