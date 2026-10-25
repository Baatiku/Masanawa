import { afterEach, describe, expect, it, vi } from "vitest";
import { createGatewayApp } from "../../app.js";

const apps: Array<ReturnType<typeof createGatewayApp>> = [];
afterEach(async()=>{ await Promise.all(apps.splice(0).map(a=>a.close())); });

function setup(productScope: "legacy"|"masana-lite") {
  const feed = {
    list: vi.fn(async()=>({items:[],nextCursor:null})),
    detail: vi.fn(async()=>({id:"approved"})),
    publishHumanText: vi.fn(async()=>({id:"user-post"})),
    editHumanText: vi.fn(async()=>({id:"edited"})),
    removeHumanPost: vi.fn(async()=>({state:"removed"})),
    react: vi.fn(async()=>({kind:"love"})),
    comment: vi.fn(async()=>({id:"new-comment"})),
  };
  const app = createGatewayApp({
    productScope,
    status: {
      sessions: { authorize: async () => ({tenantId:"tenant",userId:"fan"}) },
      feed: feed as never,
      editorial: {} as never,
    },
  });
  apps.push(app);
  return {app,feed};
}

describe("reduced product Status route boundary", () => {
  it("removes all human creation/mutation routes but retains fan interaction", async()=>{
    const {app,feed}=setup("masana-lite");
    const path="/v1/posts/post-id/human";
    for(const [method,url] of [
      ["POST","/v1/posts/human"],
      ["PATCH",path],
      ["DELETE",path],
    ] as const) {
      const response=await app.inject({method,url,
        ...(method==="DELETE" ? {} : { payload:{
          body:"Hello",audience:"public",expectedBody:"Old",
        }}),
      });
      expect(response.statusCode).toBe(404);
    }
    expect(feed.publishHumanText).not.toHaveBeenCalled();
    expect(feed.editHumanText).not.toHaveBeenCalled();
    expect(feed.removeHumanPost).not.toHaveBeenCalled();
    const read=await app.inject({method:"GET",url:"/v1/feed"});
    expect(read.statusCode).toBe(200);
    expect(feed.list).toHaveBeenCalledTimes(1);
    const react=await app.inject({method:"PUT",url:"/v1/posts/post-id/reaction",
      payload:{kind:"love"}});
    expect(react.statusCode).toBe(200);
    expect(feed.react).toHaveBeenCalledTimes(1);
    const comment=await app.inject({method:"POST",url:"/v1/posts/post-id/comments",
      payload:{body:"I agree"},headers:{"idempotency-key":"test-comment-1"}});
    expect(comment.statusCode).toBe(200);
    expect(feed.comment).toHaveBeenCalledTimes(1);
  });

  it("legacy publishing compatibility is restricted to legacy scope", async()=>{
    const {app,feed}=setup("legacy");
    const result=await app.inject({method:"POST",url:"/v1/posts/human",
      payload:{body:"Old product",audience:"public"},
      headers:{"idempotency-key":"old-idempotency"},
    });
    expect(result.statusCode).toBe(200);
    expect(feed.publishHumanText).toHaveBeenCalledTimes(1);
  });
});
