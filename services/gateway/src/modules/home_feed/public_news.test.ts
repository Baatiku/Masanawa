import Fastify from "fastify";
import {describe,it,expect,vi} from "vitest";
import {registerPublicNews,publicNewsProjection} from "./public_news.js";
import type {FeedRoutesOptions} from "./routes.js";

const fixture=()=>({id:"private-row",viewerLiked:true,viewerId:"private-account",author:{type:"publisher",id:"private-author"},
 publishedAt:new Date().toISOString(),news:{verified:true,name:"Daily Trust",title:"Kaduna government announces road repairs",
 url:"https://dailytrust.com/road-repairs/",summary:"Official statement on repair work.",states:["kaduna"],nationwide:false,
 category:"infrastructure",internalKey:"private-source-key"}});
describe("public approved news export",()=>{
 it("projects only public publisher metadata and rejects unapproved and stale records",()=>{
  const good=fixture(),unapproved=fixture(),stale=fixture(),fan=fixture();
  unapproved.news.verified=false;stale.publishedAt="2000-01-01T00:00:00Z";fan.author.type="fan";
  const result=publicNewsProjection({items:[good,unapproved,stale,fan],nextCursor:null});
  expect(result?.items).toHaveLength(1);
  expect(result?.items[0]?.news.name).toBe("Daily Trust");
  expect(JSON.stringify(result)).not.toContain("private-");
 });
 it("uses fixed tenant and anonymous viewer, rejects tenant override and invalid cursor",async()=>{
  const app=Fastify();
  const newsList=vi.fn(async()=>({items:[fixture()],nextCursor:null}));
  registerPublicNews(app,{tenant:"tenant_platform",service:{newsList} as unknown as FeedRoutesOptions["service"],enabled:()=>true});
  try{
   const response=await app.inject({method:"GET",url:"/v1/public/news"});
   expect(response.statusCode).toBe(200);
   expect(newsList).toHaveBeenCalledWith("tenant_platform",null,undefined);
   expect(response.json().items).toHaveLength(1);
   expect(response.headers["cache-control"]).toBe("public, max-age=60");
   for(const url of ["/v1/public/news?tenant=other","/v1/public/news?cursor=x&cursor=y","/v1/public/news?cursor=%21"]){
    expect((await app.inject({method:"GET",url})).statusCode).toBe(422);
   }
   expect(newsList).toHaveBeenCalledTimes(1);
   expect((await app.inject({method:"POST",url:"/v1/public/news"})).statusCode).toBe(404);
  }finally{await app.close();}
 });
 it("fails closed when disabled",async()=>{
  const app=Fastify();
  const newsList=vi.fn();
  registerPublicNews(app,{tenant:"tenant_platform",service:{newsList} as unknown as FeedRoutesOptions["service"],enabled:()=>false});
  try{expect((await app.inject({method:"GET",url:"/v1/public/news"})).statusCode).toBe(503);expect(newsList).not.toHaveBeenCalled();}
  finally{await app.close();}
 });
});
