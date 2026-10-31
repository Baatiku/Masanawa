import { describe, expect, it, vi } from "vitest";
import type { Pool } from "pg";
import { PgHomeFeedRepository } from "./repository.js";

describe("SQL-level Masana feed filtering without erasing historic posts",()=>{
 it("filters authors BEFORE ordered LIMIT and preserves cursor bindings",async()=>{
  const query=vi.fn(async()=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  const before={at:"2026-10-25T10:00:00Z",id:"381026c2-9d56-47b1-b73d-1784e24e41e2"};
  await repo.list("tenant","fan","for_you",before,21,undefined,undefined,true);
  const [sql,parameters]=query.mock.calls[0] as unknown as [string,unknown[]];
  expect(sql).toContain("(NOT $9::boolean OR p.author_type='masana')");
  expect(sql.indexOf("p.author_type='masana'")).toBeLessThan(sql.indexOf("LIMIT $6"));
  expect(parameters).toEqual(["tenant","fan","for_you",before.at,before.id,21,null,null,true]);
 });

 it("denies historic human post details under a server-controlled predicate",async()=>{
  const query=vi.fn(async()=>({rows:[]}));
  const repo=new PgHomeFeedRepository({query} as unknown as Pool);
  await repo.find("tenant","fan","381026c2-9d56-47b1-b73d-1784e24e41e2",true);
  const [sql,parameters]=query.mock.calls[0] as unknown as [string,unknown[]];
  expect(sql).toContain("(NOT $4::boolean OR p.author_type IN ('masana','publisher'))");
  expect(parameters[3]).toBe(true);
 });
});
