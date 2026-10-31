import {createHash} from 'node:crypto';

export type PostKind = "text"|"image"|"audio";
export type FeedMode = "for_you"|"following"|"mine";
export type ReactionKind = "like"|"love"|"care"|"haha"|"wow"|"sad"|"angry";
export const reactionKinds:readonly ReactionKind[] = ["like","love","care","haha","wow","sad","angry"];
export type FeedFilters = {source?:'x'|'facebook';from?:string;to?:string};

export type Actor = {kind:"fan"|"masana"|"staff"; tenantId:string; id:string; permissions?:readonly string[]; approved?:boolean};
export interface Post {source?:{platform:'x'|'facebook';url:string;originalPublishedAt:string;revision:number};id:string; tenantId:string; authorMasanaId:string;authorName?:string;kind:PostKind;body:string;media:readonly string[];transcript:string|null;publishedAt:string;likeCount:number;commentCount:number;viewerLiked:boolean;viewerSaved:boolean;
 verifiedViewCount?:number;promotionDeliveredViews?:number;promotionActive?:boolean;destinationUrl?:string|null;shareEarnEligible?:boolean;boostEligible?:boolean;
 viewerReaction?:ReactionKind|null;reactionCounts?:Partial<Record<ReactionKind,number>>;
 news?:{id:string;name:string;title:string;summary:string;url:string;verified:boolean;logoUrl?:string|null};
 author?:{type:"masana";id:string;displayName:string}|{type:"human";id:string;handle:string;displayName:string;avatarUrl?:string|null}|{type:"publisher";id:string;displayName:string}}
export interface Comment {id:string;postId:string;body:string;state:"pending"|"visible"|"removed";createdAt:string;parentId?:string|null;
 author?:{type:"human";id:string;handle:string;displayName:string}|null;
 revision?:number;editedAt?:string|null;replyCount?:number;viewerReaction?:ReactionKind|null;
 reactionCounts?:Partial<Record<ReactionKind,number>>}
export interface Publish {authorMasanaId:string;kind:PostKind;body:string;media?:readonly string[];transcript?:string|null;idempotencyKey:string}
export class FeedError extends Error {constructor(readonly status:number,readonly code:string){super(code)}}

export interface Repository {
 list(tenant:string,viewer:string|null,mode:FeedMode,cursor:{at:string;id:string}|null,limit:number,authorMasanaId?:string,search?:string,masanaOnly?:boolean,filters?:FeedFilters):Promise<readonly Post[]>;
 listNews?(tenant:string,viewer:string|null,before:{at:string;id:string}|null,limit:number,publisher?:string,search?:string):Promise<readonly Post[]>;
 newsPublishers?(tenant:string):Promise<readonly {id:string;name:string}[]>;
 find(tenant:string,viewer:string|null,id:string,masanaOnly?:boolean):Promise<Post|null>;
 publish(tenant:string,publisher:string,value:Required<Publish>):Promise<Post>;
 setLike(tenant:string,fan:string,post:string,enabled:boolean):Promise<boolean>;
 setReaction?(tenant:string,fan:string,post:string,kind:ReactionKind|null):Promise<ReactionKind|null>;
 setSave(tenant:string,fan:string,post:string,enabled:boolean):Promise<boolean>;
 comment(tenant:string,fan:string,post:string,text:string,key:string,pending:boolean,parentId?:string|null):Promise<Comment>;
 comments(tenant:string,post:string,viewer:string|null,before:string|null,limit:number,sort?:"newest"|"oldest",scope?:'roots'|'replies',parentId?:string):Promise<readonly Comment[]>;
 setCommentReaction?(tenant:string,fan:string,commentId:string,kind:ReactionKind|null):Promise<ReactionKind|null>;
 editComment?(tenant:string,fan:string,commentId:string,body:string,revision:number):Promise<unknown>;
 removeComment?(tenant:string,fan:string,commentId:string):Promise<unknown>;
 reportComment?(tenant:string,fan:string,commentId:string,reason:string):Promise<unknown>;
 listCommentReports?(tenant:string):Promise<unknown>;
 resolveCommentReport?(tenant:string,reviewer:string,id:string,state:'reviewed'|'dismissed'):Promise<unknown>;
 moderateComment?(tenant:string,reviewer:string,id:string,state:'hidden'|'visible',reason:string,revision:number):Promise<unknown>;
}
const ident=/^[A-Za-z0-9][A-Za-z0-9_-]{0,127}$/;
const uid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const key=/^[A-Za-z0-9][A-Za-z0-9:_-]{7,127}$/;
function requireId(id:string){if(!ident.test(id))throw new FeedError(422,"invalid_id")}
function requirePostId(id:string){if(!uid.test(id))throw new FeedError(422,"invalid_post_id")}
export function decodeCursor(value?:string):{at:string;id:string}|null{
 if(!value)return null;
 if(value.length>240||!/^[\w-]+$/.test(value))throw new FeedError(422,"invalid_cursor");
 try{const decoded:unknown=JSON.parse(Buffer.from(value,"base64url").toString("utf8"));
 if(!Array.isArray(decoded)||decoded.length!==2||typeof decoded[0]!=="string"||typeof decoded[1]!=="string"||!Number.isFinite(Date.parse(decoded[0]))||!uid.test(decoded[1]))throw Error("invalid");
 return {at:decoded[0],id:decoded[1]};}catch{throw new FeedError(422,"invalid_cursor")}
}
/** Search cursors are bound to the literal text and collection mode. Never
 * accept an ordinary feed cursor to silently continue a different query. */
function searchCursor(raw:string,term:string,mode:FeedMode){
 if(raw.length>512||!/^[-_A-Za-z0-9]+$/.test(raw))throw new FeedError(422,"invalid_cursor");
 try {
  const decoded:unknown=JSON.parse(Buffer.from(raw,"base64url").toString("utf8"));
  if(!Array.isArray(decoded)||decoded.length!==4||typeof decoded[0]!=="string"||
    !Number.isFinite(Date.parse(decoded[0]))||typeof decoded[1]!=="string"||!uid.test(decoded[1])||
    decoded[2]!==term||decoded[3]!==mode)throw Error("scope mismatch");
  return {at:decoded[0] as string,id:decoded[1] as string};
 }catch {throw new FeedError(422,"invalid_cursor")}
}
function filteredCursor(raw:string,scope:string){
 if(raw.length>700||!/^[-_A-Za-z0-9]+$/.test(raw))throw new FeedError(422,'invalid_cursor');
 try {
  const value:unknown=JSON.parse(Buffer.from(raw,'base64url').toString('utf8'));
  if(!Array.isArray(value)||value.length!==3||typeof value[0]!=='string'||
    !Number.isFinite(Date.parse(value[0]))||typeof value[1]!=='string'||!uid.test(value[1])||
    value[2]!==scope)throw Error('mismatch');
  return {at:value[0] as string,id:value[1] as string};
 }catch {throw new FeedError(422,'invalid_cursor')}
}
const datePattern=/^\d{4}-\d{2}-\d{2}$/;
function validateFilters(filters:FeedFilters|undefined){
 if(!filters)return;
 if(filters.source!==undefined&&!['x','facebook'].includes(filters.source))throw new FeedError(422,'invalid_feed_source');
 for(const d of [filters.from,filters.to])if(d!==undefined&&
   (!datePattern.test(d)||!Number.isFinite(Date.parse(d))||new Date(d).toISOString().slice(0,10)!==d))
   throw new FeedError(422,'invalid_feed_date');
 if(filters.from&&filters.to&&filters.from>filters.to)throw new FeedError(422,'invalid_feed_date');
}
export class FeedService {
 constructor(private readonly repo:Repository,private readonly approvedMasana:(tenant:string,id:string)=>Promise<boolean>,
  private readonly approvedMedia:(tenant:string,masana:string,mediaId:string,kind:PostKind)=>Promise<boolean> = async () => false,
  private readonly masanaOnly = true){}
  async list(tenant:string,viewer:string|null,mode:FeedMode,cursor?:string,authorMasanaId?:string,search?:string,filters?:FeedFilters){
  requireId(tenant);if(viewer)requireId(viewer);
  if(mode!=="for_you"&&mode!=="following"&&mode!=="mine")throw new FeedError(422,"invalid_mode");
  if((mode==="following"||mode==="mine")&&!viewer)throw new FeedError(401,"authentication_required");
  if(mode==="mine"&&authorMasanaId!==undefined)throw new FeedError(422,"unsupported_author_filter");
  if(authorMasanaId!==undefined)requireId(authorMasanaId);
  if(search!==undefined&&(typeof search!=="string"||search!==search.trim()||
    search.length<2||Buffer.byteLength(search,"utf8")>80))throw new FeedError(422,"invalid_search");
   validateFilters(filters);
   const scoped=filters!==undefined&&Object.values(filters).some(x=>x!==undefined);
   // A cursor must not be usable on another account/tenant or query scope;
   // hash the context so IDs and private search text are not encoded in it.
   const scope=scoped?createHash('sha256').update(JSON.stringify({tenant,viewer,mode,
     authorMasanaId:authorMasanaId??null,search:search??null,
     source:filters?.source??null,from:filters?.from??null,to:filters?.to??null}))
     .digest('hex'):'';
   const after=cursor?(scoped?filteredCursor(cursor,scope):
     search===undefined?decodeCursor(cursor):searchCursor(cursor,search,mode)):null;
  // Filter at the underlying SQL cursor query, not after pagination.
  // Filtering a 20-row page after SQL would silently lose Masana posts
  // buried behind legacy human posts and fabricate end-of-feed cursors.
   const rows = this.masanaOnly
    ? scoped?await this.repo.list(tenant,viewer,mode,after,21,authorMasanaId,search,true,filters):
      await this.repo.list(tenant,viewer,mode,after,21,authorMasanaId,search,true)
   : search===undefined
      ? scoped?await this.repo.list(tenant,viewer,mode,after,21,authorMasanaId,undefined,false,filters):
        await this.repo.list(tenant,viewer,mode,after,21,authorMasanaId,undefined,false)
      : scoped?await this.repo.list(tenant,viewer,mode,after,21,authorMasanaId,search,false,filters):
        await this.repo.list(tenant,viewer,mode,after,21,authorMasanaId,search,false);
  const items=rows.slice(0,20);
  const last=items[items.length-1];
   return {items,nextCursor:rows.length>20&&last?Buffer.from(JSON.stringify(
     scoped?[last.publishedAt,last.id,scope]:
     search===undefined?[last.publishedAt,last.id]:[last.publishedAt,last.id,search,mode])).toString("base64url"):null};
 }
 async newsList(tenant:string,viewer:string|null,cursor?:string,publisher?:string,search?:string){
  requireId(tenant);if(viewer)requireId(viewer);
  if(publisher!==undefined&&!/^[a-z][a-z0-9-]{1,39}$/.test(publisher))throw new FeedError(422,'invalid_publisher');
  if(search!==undefined&&(search!==search.trim()||search.length<2||Buffer.byteLength(search,'utf8')>80))
   throw new FeedError(422,'invalid_search');
  const scope=createHash('sha256').update(JSON.stringify({kind:'news',tenant,viewer,publisher:publisher??null,search:search??null})).digest('hex');
  const after=cursor?filteredCursor(cursor,scope):null;
  const rows=this.repo.listNews?await this.repo.listNews(tenant,viewer,after,21,publisher,search):[];
  const items=rows.slice(0,20),last=items.at(-1);
  return {items,nextCursor:rows.length>20&&last?Buffer.from(JSON.stringify([last.publishedAt,last.id,scope])).toString('base64url'):null};
 }
 async newsPublishers(tenant:string){requireId(tenant);
  return this.repo.newsPublishers?this.repo.newsPublishers(tenant):[];
 }
 async detail(tenant:string,viewer:string|null,id:string){requireId(tenant);requirePostId(id);
  const post=this.masanaOnly
    ? await this.repo.find(tenant,viewer,id,true)
    : await this.repo.find(tenant,viewer,id,false);
  if(!post)throw new FeedError(404,"post_not_found");return post}
 async publish(actor:Actor,value:Publish){
  // Staff must use the independently reviewed editorial workflow. Only a
  // server-authenticated approved Masana may publish as its own identity.
  if(actor.kind!=="masana"||actor.approved!==true||actor.id!==value.authorMasanaId)throw new FeedError(403,"masana_only_publish");
  requireId(actor.tenantId);requireId(value.authorMasanaId);
  if(!await this.approvedMasana(actor.tenantId,value.authorMasanaId))throw new FeedError(403,"masana_not_approved");
  if(!key.test(value.idempotencyKey))throw new FeedError(422,"invalid_idempotency_key");
  if(!["text","image","audio"].includes(value.kind))throw new FeedError(422,"invalid_post_kind");
  const media=value.media??[];
  if(!Array.isArray(media)||media.length>(value.kind==="image"?10:value.kind==="audio"?1:0)||(value.kind!=="text"&&media.length===0)||
    media.some(x=>typeof x!=="string"||!/^media_[A-Za-z0-9_-]{8,128}$/.test(x)))throw new FeedError(422,"invalid_media_reference");
  if(typeof value.body!=="string"||(value.transcript!=null&&typeof value.transcript!=="string")||
    (value.kind==="text"&&!value.body.trim())||value.body.length>5000||(value.transcript?.length??0)>15000)throw new FeedError(422,"invalid_post_text");
  if(value.kind==="audio"&&!value.transcript?.trim())throw new FeedError(422,"audio_transcript_required");
  for(const mediaId of media){if(!await this.approvedMedia(actor.tenantId,value.authorMasanaId,mediaId,value.kind))throw new FeedError(403,"media_not_approved");}
  return this.repo.publish(actor.tenantId,actor.id,{...value,body:value.body.trim(),media,transcript:value.transcript??null});
 }
 private fan(actor:Actor){if(actor.kind!=="fan")throw new FeedError(403,"fan_only_action");requireId(actor.tenantId);requireId(actor.id);return actor.id}
 async like(actor:Actor,post:string,enabled:boolean){const fan=this.fan(actor);requirePostId(post);
  await this.detail(actor.tenantId,fan,post);return this.repo.setLike(actor.tenantId,fan,post,enabled)}
 async react(actor:Actor,post:string,kind:ReactionKind|null){
  const fan=this.fan(actor);requirePostId(post);
  if(kind!==null&&!reactionKinds.includes(kind))throw new FeedError(422,"invalid_reaction");
  await this.detail(actor.tenantId,fan,post);
  if(!this.repo.setReaction)throw new FeedError(503,"reactions_unavailable");
  return this.repo.setReaction(actor.tenantId,fan,post,kind);
 }
 async save(actor:Actor,post:string,enabled:boolean){const fan=this.fan(actor);requirePostId(post);
  await this.detail(actor.tenantId,fan,post);return this.repo.setSave(actor.tenantId,fan,post,enabled)}
 async comment(actor:Actor,post:string,body:string,idempotencyKey:string,isNewAccount:boolean,parentId?:string|null){
  const fan=this.fan(actor);requirePostId(post);if(!key.test(idempotencyKey))throw new FeedError(422,"invalid_idempotency_key");
  const text=body.trim();if(!text||text.length>1000)throw new FeedError(422,"invalid_comment");
  if(parentId!=null&&!uid.test(parentId))throw new FeedError(422,"invalid_parent_comment");
  await this.detail(actor.tenantId,fan,post);return this.repo.comment(actor.tenantId,fan,post,text,idempotencyKey,isNewAccount,parentId??null)}
  async comments(tenant:string,post:string,viewer:string|null,before?:string,sort:"newest"|"oldest"="newest",scope?:'roots'|'replies',parentId?:string){
  await this.detail(tenant,viewer,post);if(before&&!uid.test(before))throw new FeedError(422,"invalid_cursor");
  if(sort!=="newest"&&sort!=="oldest")throw new FeedError(422,"invalid_sort");
   if(scope!==undefined&&scope!=='roots'&&scope!=='replies'||scope==='replies'&&(!parentId||!uid.test(parentId))||
     scope!=='replies'&&parentId!==undefined)throw new FeedError(422,'invalid_comment_scope');
   return scope?this.repo.comments(tenant,post,viewer,before??null,30,sort,scope,parentId):
     this.repo.comments(tenant,post,viewer,before??null,30,sort)}
  async reactComment(actor:Actor,id:string,kind:ReactionKind|null){
   const fan=this.fan(actor);requirePostId(id);
   if(kind!==null&&!reactionKinds.includes(kind))throw new FeedError(422,'invalid_reaction');
   if(!this.repo.setCommentReaction)throw new FeedError(503,'comment_reactions_unavailable');
   return this.repo.setCommentReaction(actor.tenantId,fan,id,kind);
  }
  async editComment(actor:Actor,id:string,body:string,revision:number){
   const fan=this.fan(actor);requirePostId(id);
   if(!Number.isSafeInteger(revision)||revision<1||typeof body!=='string'||!body.trim()||body.trim().length>1000)
    throw new FeedError(422,'invalid_comment_edit');
   if(!this.repo.editComment)throw new FeedError(503,'comment_edit_unavailable');
   return this.repo.editComment(actor.tenantId,fan,id,body.trim(),revision);
  }
  async removeComment(actor:Actor,id:string){
   const fan=this.fan(actor);requirePostId(id);
   if(!this.repo.removeComment)throw new FeedError(503,'comment_delete_unavailable');
   return this.repo.removeComment(actor.tenantId,fan,id);
  }
  async reportComment(actor:Actor,id:string,reason:string){
   const fan=this.fan(actor);requirePostId(id);
   if(!['spam','harassment','hate','violence','fraud','impersonation','privacy','inaccurate','other'].includes(reason))
    throw new FeedError(422,'invalid_comment_report');
   if(!this.repo.reportComment)throw new FeedError(503,'comment_reports_unavailable');
   return this.repo.reportComment(actor.tenantId,fan,id,reason);
  }
  async commentReports(actor:Actor){
   if(actor.kind!=='staff'||!actor.permissions?.includes('content_editor'))throw new FeedError(403,'editorial_permission_denied');
   if(!this.repo.listCommentReports)throw new FeedError(503,'comment_reports_unavailable');
   return this.repo.listCommentReports(actor.tenantId);
  }
  async resolveCommentReport(actor:Actor,id:string,state:'reviewed'|'dismissed'){
   if(actor.kind!=='staff'||!actor.permissions?.includes('content_editor'))throw new FeedError(403,'editorial_permission_denied');
   requirePostId(id);
   if(!['reviewed','dismissed'].includes(state))throw new FeedError(422,'invalid_report_resolution');
   if(!this.repo.resolveCommentReport)throw new FeedError(503,'comment_reports_unavailable');
   return this.repo.resolveCommentReport(actor.tenantId,actor.id,id,state);
  }
  async moderateComment(actor:Actor,id:string,state:'hidden'|'visible',reason:string,revision:number){
   if(actor.kind!=='staff'||!actor.permissions?.includes('content_editor'))throw new FeedError(403,'editorial_permission_denied');
   requirePostId(id);
   if(!['hidden','visible'].includes(state)||typeof reason!=='string'||reason.trim().length<5||
      reason.trim().length>500||!Number.isSafeInteger(revision)||revision<1)
     throw new FeedError(422,'invalid_moderation');
   if(!this.repo.moderateComment)throw new FeedError(503,'comment_moderation_unavailable');
   return this.repo.moderateComment(actor.tenantId,actor.id,id,state,reason.trim(),revision);
  }
}

// A05/A06 canonical editorial lifecycle (reuses feed.posts and reviewer audit).
export {EditorialReviewService} from './review.js';
export type {EditorialPost,EditorialRepository,EditorialAction,EditorialState,DraftInput} from './review.js';


export {SavedLibraryService, SavedError} from './saved.js';
export type {SavedKind, SavedCursor, SavedItem, SavedRepository} from './saved.js';

export {reviewedPromotionDestination} from './promotion_destination.js';
