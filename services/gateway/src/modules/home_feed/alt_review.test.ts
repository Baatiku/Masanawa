import {afterEach,describe,expect,it,vi} from "vitest";
import {FeedService,EditorialReviewService} from "@masanawa/feed";
import type {Repository,EditorialRepository} from "@masanawa/feed";
import {createGatewayApp} from "../../app.js";

const apps:ReturnType<typeof createGatewayApp>[]=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(a=>a.close()));});
describe("reviewer-owned descriptive Status image copy",()=>{
 it("requires canonical editor session, validates descriptions and fences tenant",async()=>{
  const edit=vi.fn(async(tenant:string,actor:string,media:string,alt:string|null)=>
    tenant==="tenant_a"&&media==="media_abcdefgh"
      ?{mediaId:media,altText:alt}:null);
  const app=createGatewayApp({status:{
    sessions:{authorize:async ({authorizationHeader})=>{
      if(authorizationHeader==="Bearer editor")return {tenantId:"tenant_a",userId:"editor_a"};
      if(authorizationHeader==="Bearer fan")return {tenantId:"tenant_a",userId:"fan_a"};
      if(authorizationHeader==="Bearer foreign")return {tenantId:"tenant_b",userId:"editor_a"};
      throw Object.assign(Error("unauthorized"),{status:401,code:"authentication_required"});
    }},
    isEditor:async principal=>principal.tenantId==="tenant_a"&&principal.userId==="editor_a",
    feed:new FeedService({} as Repository,async()=>true),
    editorial:new EditorialReviewService({} as EditorialRepository,async()=>true,async()=>false),
    updateMediaAlt:edit,
  }});apps.push(app);
  const url="/v1/admin/feed/media/media_abcdefgh/alt";
  const payload={altText:"An approved image of the Masana teaching."};
  const put=(auth:string,body:unknown=payload)=>app.inject({
    method:"PUT",url,headers:{authorization:auth},payload:body,
  });
  expect((await put("Bearer fan")).statusCode).toBe(403);
  expect((await put("Bearer foreign")).statusCode).toBe(403);
  expect((await put("Bearer unknown")).statusCode).toBe(401);
  expect(edit).not.toHaveBeenCalled();
  expect((await put("Bearer editor",{altText:"bad"})).statusCode).toBe(422);
  expect((await put("Bearer editor",{altText:"valid copy",role:"editor"})).statusCode).toBe(422);
  expect(edit).not.toHaveBeenCalled();
  const approved=await put("Bearer editor");
  expect(approved.statusCode).toBe(200);
  expect(approved.json()).toEqual({media:{mediaId:"media_abcdefgh",
    altText:payload.altText}});
  expect(edit).toHaveBeenCalledWith("tenant_a","editor_a",
    "media_abcdefgh",payload.altText);
  const cleared=await put("Bearer editor",{altText:null});
  expect(cleared.statusCode).toBe(200);
  expect(cleared.json().media.altText).toBeNull();
  const hidden=await app.inject({method:"PUT",
    url:"/v1/admin/feed/media/media_unknown123/alt",
    headers:{authorization:"Bearer editor"},payload});
  expect(hidden.statusCode).toBe(404);
 });
});
