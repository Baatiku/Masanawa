import {describe,expect,it,vi} from "vitest";
import {PgSavedLibraryRepository} from "./saved_repository.js";
describe("saved Home SQL fences",()=>{
 it("binds tenant, fan and stable cursor while excluding unfunded humans/media",async()=>{
  const query=vi.fn(async(..._args:unknown[])=>({rows:[]}));
  const repo=new PgSavedLibraryRepository({query} as never);
  await repo.list("tenant-one","fan-one",null,21);
  const [sql,values]=query.mock.calls[0] as unknown as [string,unknown[]];
  for(const expected of ["s.tenant_id=$1 AND s.fan_id=$2","p.state='published'",
    "p.author_type='masana'","o.kind='platform'","a.state='active'","'reactionCounts'","'viewerReaction'",
    "p.author_type='human'","hu.state='active'","paid.remaining_views>0","feed.qualified_views"])
    expect(sql).toContain(expected);
  expect(sql).not.toContain('external_videos');
  expect(values).toEqual(["tenant-one","fan-one",null,null,null,21]);
 });
});
