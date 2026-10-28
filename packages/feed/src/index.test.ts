import {describe,it,expect,vi} from "vitest";
import {FeedService,type Repository,type Post,type ReactionKind} from "./index.js";
const post:Post={id:"381026c2-9d56-47b1-b73d-1784e24e41e2",tenantId:"tenant",authorMasanaId:"masana",kind:"text",body:"Hello",media:[],transcript:null,publishedAt:"2026-10-10T09:00:00Z",likeCount:0,commentCount:0,viewerLiked:false,viewerSaved:false};
function mock(){
 return {list:vi.fn(async()=>[post]),find:vi.fn(async(t:string)=>t==="tenant"?post:null),publish:vi.fn(async()=>post),setLike:vi.fn(async()=>true),setSave:vi.fn(async()=>true),comment:vi.fn(async()=>({id:"comment",postId:post.id,body:"ok",state:"pending" as const,createdAt:"now"})),comments:vi.fn(async()=>[])} satisfies Repository;
}
const fan={kind:"fan" as const,tenantId:"tenant",id:"fan"};
describe("SPE-C15 viewer-specific Status hide and abuse reporting",()=>{
 it("only the authenticated fan can hide a visible post or unhide their own choice",async()=>{
  const db={...mock(),setHidden:vi.fn(async()=>true)};
  const service=new FeedService(db,async()=>true);
  expect(await service.hide(fan,post.id,true)).toBe(true);
  await service.hide(fan,post.id,false);
  expect(db.setHidden).toHaveBeenNthCalledWith(1,"tenant","fan",post.id,true);
  expect(db.setHidden).toHaveBeenNthCalledWith(2,"tenant","fan",post.id,false);
  await expect(service.hide({...fan,kind:"staff"} as never,post.id,true))
   .rejects.toMatchObject({code:"fan_only_action"});
 });
 it("validates reason and detail, and never trusts a reported author or tenant",async()=>{
  const db={...mock(),reportPost:vi.fn(async()=>({reportId:"report",status:"submitted" as const}))};
  const service=new FeedService(db,async()=>true);
  expect(await service.report(fan,post.id,"fraud"," misleading promotion "))
   .toEqual({reportId:"report",status:"submitted"});
  expect(db.reportPost).toHaveBeenCalledWith("tenant","fan",post.id,"fraud","misleading promotion");
  await expect(service.report(fan,post.id,"unknown" as never))
   .rejects.toMatchObject({code:"invalid_report_reason"});
  await expect(service.report(fan,post.id,"other","x".repeat(501)))
   .rejects.toMatchObject({code:"invalid_report_detail"});
  await expect(service.report({...fan,tenantId:"foreign"},post.id,"spam"))
   .rejects.toMatchObject({status:404});
  expect(db.reportPost).toHaveBeenCalledTimes(1);
 });
 it("does not advertise phantom actions when no qualified persistence port exists",async()=>{
  const service=new FeedService(mock(),async()=>true);
  await expect(service.hide(fan,post.id,true)).rejects.toMatchObject({status:503});
  await expect(service.report(fan,post.id,"spam")).rejects.toMatchObject({status:503});
 });
 it("review queue is editor-only and separately records a bounded resolution",async()=>{
  const db={...mock(),pendingPostReports:vi.fn(async()=>({reports:[]})),
   resolvePostReport:vi.fn(async()=>({state:"reviewed"}))};
  const service=new FeedService(db,async()=>true);
  const editor={kind:"staff" as const,tenantId:"tenant",id:"editor",
   permissions:["content_editor"]};
  await expect(service.pendingPostReports(fan)).rejects.toMatchObject({status:403});
  await expect(service.pendingPostReports({...editor,permissions:[]}))
   .rejects.toMatchObject({status:403});
  expect(await service.pendingPostReports(editor)).toEqual({reports:[]});
  const reportId="9b8c8884-7a31-49d9-aee5-521364b54aef";
  await service.resolvePostReport(editor,reportId,"reviewed");
  expect(db.resolvePostReport).toHaveBeenCalledWith("tenant","editor",reportId,"reviewed");
  await expect(service.resolvePostReport(editor,reportId,"suspicious" as never))
   .rejects.toMatchObject({status:422});
 });
});
describe("ST2 server reaction contract",()=>{
 it("sets one typed reaction from trusted fan identity, including remove",async()=>{
  const db={...mock(),setReaction:vi.fn(async(_t:string,_a:string,_p:string,k:ReactionKind|null)=>k)};
  const service=new FeedService(db,async()=>true);
  expect(await service.react(fan,post.id,"love")).toBe("love");
  expect(await service.react(fan,post.id,null)).toBeNull();
  expect(db.setReaction).toHaveBeenNthCalledWith(1,"tenant","fan",post.id,"love");
  expect(db.setReaction).toHaveBeenNthCalledWith(2,"tenant","fan",post.id,null);
 });
 it("rejects invalid reactions, spoofed tenants and unauthorized principals",async()=>{
  const db={...mock(),setReaction:vi.fn(async()=>null)};
  const service=new FeedService(db,async()=>true);
  await expect(service.react(fan,post.id,"exploit" as never)).rejects.toMatchObject({status:422,code:"invalid_reaction"});
  await expect(service.react({...fan,tenantId:"other"},post.id,"care")).rejects.toMatchObject({status:404});
  await expect(service.react({...fan,kind:"staff"} as never,post.id,"wow")).rejects.toMatchObject({status:403});
  expect(db.setReaction).not.toHaveBeenCalled();
 });
 it("fails closed until the transactional reaction repository is qualified",async()=>{
  const service=new FeedService(mock(),async()=>true);
  await expect(service.react(fan,post.id,"haha")).rejects.toMatchObject({status:503,code:"reactions_unavailable"});
 });
});
describe("J06 Masana-only Feed",()=>{
 it("does not relabel approved image references as audio",async()=>{
  const db=mock(),media=vi.fn(async(_t:string,_a:string,_m:string,kind:string)=>kind==="image");
  const service=new FeedService(db,async()=>true,media);
  await expect(service.publish({kind:"masana",tenantId:"tenant",id:"masana",approved:true},
   {authorMasanaId:"masana",kind:"audio",body:"",media:["media_abcdefgh"],transcript:"speech",idempotencyKey:"request-kind-001"})).rejects.toMatchObject({code:"media_not_approved"});
  expect(media).toHaveBeenCalledWith("tenant","masana","media_abcdefgh","audio");
  expect(db.publish).not.toHaveBeenCalled();
 });
 it("rejects direct staff publishing even with editorial permission",async()=>{
  const db=mock(),s=new FeedService(db,async()=>true);
  await expect(s.publish({kind:"staff",tenantId:"tenant",id:"editor",permissions:["content_editor"]},
   {authorMasanaId:"masana",kind:"text",body:"Bypass",idempotencyKey:"request-staff-001"})).rejects.toMatchObject({status:403,code:"masana_only_publish"});
  expect(db.publish).not.toHaveBeenCalled();
 });
 it("rejects member post and never writes",async()=>{
  const db=mock(),service=new FeedService(db,async()=>true);
  await expect(service.publish(fan,{authorMasanaId:"masana",kind:"text",body:"No",idempotencyKey:"request-001"})).rejects.toMatchObject({status:403});
  expect(db.publish).not.toHaveBeenCalled();
 });
 it("guards staff roles, agent identity and approval",async()=>{
  const db=mock(),s=new FeedService(db,async()=>false);
  await expect(s.publish({kind:"staff",tenantId:"tenant",id:"staff",permissions:[]},{authorMasanaId:"masana",kind:"text",body:"no",idempotencyKey:"request-002"})).rejects.toMatchObject({status:403});
  await expect(s.publish({kind:"masana",tenantId:"tenant",id:"wrong",approved:true},{authorMasanaId:"masana",kind:"text",body:"no",idempotencyKey:"request-003"})).rejects.toMatchObject({status:403});
  await expect(s.publish({kind:"masana",tenantId:"tenant",id:"masana",approved:true},{authorMasanaId:"masana",kind:"text",body:"no",idempotencyKey:"request-004"})).rejects.toMatchObject({code:"masana_not_approved"});
 });
 it("rejects remote media injection and missing audio transcript",async()=>{
  const db=mock(),s=new FeedService(db,async()=>true),staff={kind:"masana" as const,tenantId:"tenant",id:"masana",approved:true};
  await expect(s.publish(staff,{authorMasanaId:"masana",kind:"image",body:"photo",media:["https://evil.example/image"],idempotencyKey:"request-005"})).rejects.toMatchObject({code:"invalid_media_reference"});
  await expect(s.publish(staff,{authorMasanaId:"masana",kind:"audio",body:"clip",media:["media_abcdefgh"],idempotencyKey:"request-006"})).rejects.toMatchObject({code:"audio_transcript_required"});
 });
 it("denies media ownership unless canonical library confirms the Masana and tenant",async()=>{
  const db=mock(),staff={kind:"masana" as const,tenantId:"tenant",id:"masana",approved:true};
  const input={authorMasanaId:"masana",kind:"image" as const,body:"Cover",media:["media_abcdefgh"],idempotencyKey:"request-media-001"};
  const denied=new FeedService(db,async()=>true);
  await expect(denied.publish(staff,input)).rejects.toMatchObject({code:"media_not_approved"});
  expect(db.publish).not.toHaveBeenCalled();
  const admitted=new FeedService(db,async()=>true,async(tenant,id,media)=>tenant==="tenant"&&id==="masana"&&media==="media_abcdefgh");
  await admitted.publish(staff,input);
  expect(db.publish).toHaveBeenCalledTimes(1);
 });
 it("requires auth on following and rejects malformed cursors",async()=>{
  const s=new FeedService(mock(),async()=>true);
  await expect(s.list("tenant",null,"following")).rejects.toMatchObject({status:401});
  await expect(s.list("tenant",null,"for_you","%%%")).rejects.toMatchObject({code:"invalid_cursor"});
 });
 it("tenant fences reaction and saves; premoderates new fan comments",async()=>{
  const db=mock(),s=new FeedService(db,async()=>true);
  expect(await s.like(fan,post.id,true)).toBe(true);expect(await s.save(fan,post.id,false)).toBe(true);
  await expect(s.save({...fan,tenantId:"other"},post.id,true)).rejects.toMatchObject({status:404});
  await s.comment(fan,post.id," question ","client-key-001",true);
  expect(db.comment).toHaveBeenCalledWith("tenant","fan",post.id,"question","client-key-001",true,null);
 });
 it("allows approved Masana with stable idempotency",async()=>{
  const db=mock(),s=new FeedService(db,async()=>true);
  await s.publish({kind:"masana",tenantId:"tenant",id:"masana",approved:true},{authorMasanaId:"masana",kind:"text",body:"Welcome",idempotencyKey:"request-007"});
  expect(db.publish).toHaveBeenCalledTimes(1);
 });
 it("C22 rejects forged parent IDs before any comment write",async()=>{
  const db=mock(),service=new FeedService(db,async()=>true);
  await expect(service.comment(fan,post.id,"reply","key-reply-001",false,"another-tenant")).rejects.toMatchObject({status:422,code:"invalid_parent_comment"});
  expect(db.comment).not.toHaveBeenCalled();
 });
 it("C22 retains canonical idempotency and forwards one-level parent to the same repository",async()=>{
  const db=mock(),service=new FeedService(db,async()=>true);
  const parent="9b8c8884-7a31-49d9-aee5-521364b54aef";
  await service.comment(fan,post.id,"Follow-up","key-reply-002",true,parent);
  expect(db.comment).toHaveBeenCalledWith("tenant","fan",post.id,"Follow-up","key-reply-002",true,parent);
  await service.comments("tenant",post.id,fan.id,undefined,"oldest");
  expect(db.comments).toHaveBeenLastCalledWith("tenant",post.id,fan.id,null,30,"oldest");
 });
 it("C22 rejects invented comment sort modes",async()=>{
  const db=mock(),service=new FeedService(db,async()=>true);
  await expect(service.comments("tenant",post.id,fan.id,undefined,"random" as never)).rejects.toMatchObject({code:"invalid_sort"});
  expect(db.comments).not.toHaveBeenCalled();
 });

 it("filters a professional feed by exact canonical ID and preserves cursor semantics",async()=>{
   const db=mock(),service=new FeedService(db,async()=>true);
   const result=await service.list("tenant","fan","for_you",undefined,"character_masana_Amina");
   expect(result.items).toHaveLength(1);
   expect(db.list).toHaveBeenCalledWith("tenant","fan","for_you",null,21,"character_masana_Amina",undefined,true);
 });
 it("rejects invalid author IDs before repository access",async()=>{
   const db=mock(),service=new FeedService(db,async()=>true);
   await expect(service.list("tenant","fan","for_you",undefined,"../someone"))
     .rejects.toMatchObject({status:422,code:"invalid_id"});
   expect(db.list).not.toHaveBeenCalled();
 });

});



describe("ST4 scoped full-feed text search",()=>{
 it("binds cursor to mode and exact literal text, keeps legacy list cursor compatible",async()=>{
  const rows=Array.from({length:22},(_,i)=>({...post,
    id:`381026c2-9d56-47b1-b73d-${String(1784+i).padStart(12,"0")}`,
    publishedAt:new Date(Date.parse(post.publishedAt)-i*1000).toISOString()}));
  const repo={...mock(),list:vi.fn(async()=>rows)};
  const service=new FeedService(repo,async()=>true);
  const one=await service.list("tenant","fan","for_you",undefined,undefined,"river");
  expect(one.items).toHaveLength(20);
  expect(one.nextCursor).toBeTruthy();
  await service.list("tenant","fan","for_you",one.nextCursor!,undefined,"river");
  expect(repo.list).toHaveBeenLastCalledWith("tenant","fan","for_you",{at:rows[19]!.publishedAt,id:rows[19]!.id},21,undefined,"river",true);
  for(const [term,mode] of [["rivers","for_you"],["river","following"]] as const) {
   await expect(service.list("tenant","fan",mode,one.nextCursor!,undefined,term))
     .rejects.toMatchObject({status:422,code:"invalid_cursor"});
  }
  await expect(service.list("tenant","fan","for_you",one.nextCursor!))
   .rejects.toMatchObject({status:422,code:"invalid_cursor"});
  await expect(service.list("tenant","fan","for_you",undefined,undefined," "))
   .rejects.toMatchObject({status:422,code:"invalid_search"});
  await expect(service.list("tenant","fan","for_you",undefined,undefined,"x"))
   .rejects.toMatchObject({status:422,code:"invalid_search"});
  await expect(service.list("tenant","fan","for_you",undefined,undefined,"x".repeat(81)))
   .rejects.toMatchObject({status:422,code:"invalid_search"});
 });
});


// The refactor filters at the SQL query BEFORE limiting/paginating. A
// post-pagination filter could return an empty page even when later Masana
// posts exist, and a direct URL must not retrieve retired human authored posts.
describe("lite Masana-only persisted Status visibility",()=>{
 it("passes an explicit Masana author predicate for list and detail",async()=>{
  const repo=mock();
  const service=new FeedService(repo,async()=>true,async()=>false,true);
  await service.list("tenant","fan","for_you");
  expect(repo.list).toHaveBeenCalledWith(
    "tenant","fan","for_you",null,21,undefined,undefined,true,
  );
  await service.detail("tenant","fan",post.id);
  expect(repo.find).toHaveBeenCalledWith("tenant","fan",post.id,true);
 });

 it("uses platform Masana filters by default",async()=>{
  const repo=mock();
  const service=new FeedService(repo,async()=>true);
  await service.list("tenant","fan","for_you");
  await service.detail("tenant","fan",post.id);
  expect(repo.list).toHaveBeenCalledWith("tenant","fan","for_you",null,21,undefined,undefined,true);
  expect(repo.find).toHaveBeenCalledWith("tenant","fan",post.id,true);
 });
});
