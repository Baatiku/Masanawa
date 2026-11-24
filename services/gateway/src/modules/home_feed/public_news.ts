import type {FastifyInstance} from "fastify";
import type {FeedRoutesOptions} from "./routes.js";

const object=(v:unknown):Record<string,unknown>=>v!==null&&typeof v==="object"&&!Array.isArray(v)?v as Record<string,unknown>:{};
const text=(v:unknown,max:number)=>typeof v==="string"&&v.trim()&&v.length<=max?v:null;
const locationList=(v:unknown)=>Array.isArray(v)?v.filter((s):s is string=>typeof s==="string"&&/^[a-z-]{3,20}$/.test(s)).slice(0,37):[];
const urlFor=(v:unknown)=>{
 if(typeof v!=="string"||v.length>2048)return null;
 try{const u=new URL(v);return u.protocol==="https:"&&!u.username&&!u.password&&!u.port&&u.hostname.includes(".")?u.href:null;}
 catch{return null;}
};

/** Only project already-approved, public publisher metadata. No customer IDs,
 * comments, reactions, viewer state, media storage keys or internal records. */
export function publicNewsProjection(payload:unknown,now=Date.now()){
 const page=object(payload);
 if(!Array.isArray(page.items)||!(page.nextCursor===null||
  typeof page.nextCursor==="string"&&/^[A-Za-z0-9_=-]{1,700}$/.test(page.nextCursor)))return null;
 const items=page.items.slice(0,20).flatMap(raw=>{
  const row=object(raw),news=object(row.news),author=object(row.author);
  if(author.type!=="publisher"||news.verified!==true)return [];
  const name=text(news.name,100),title=text(news.title,500),url=urlFor(news.url);
  const publishedAt=text(row.publishedAt,50),at=publishedAt?Date.parse(publishedAt):NaN;
  const states=locationList(news.states),nationwide=news.nationwide===true;
  if(!name||!title||!url||!Number.isFinite(at)||at<now-7*86400000||at>now+300000||(!states.length&&!nationwide))return [];
  return [{author:{type:"publisher"},publishedAt:new Date(at).toISOString(),news:{
   verified:true,name,title,url,summary:typeof news.summary==="string"?news.summary.slice(0,1000):"",
   states,nationwide,category:text(news.category,30)??"community"}}];
 });
 return {items,nextCursor:page.nextCursor};
}

/** Fixed server-side platform tenant. Separate from authenticated /v1/news;
 * anonymous callers cannot choose a tenant or receive personalized data. */
export function registerPublicNews(app:FastifyInstance,options:{
 tenant:string;service:FeedRoutesOptions["service"];enabled:()=>boolean;
}){
 app.get("/v1/public/news",async(request,reply)=>{
  reply.header("X-Content-Type-Options","nosniff").header("Cache-Control","no-store");
  if(!options.enabled()||!options.service.newsList)return reply.code(503).send({code:"news_unavailable"});
  const q=object(request.query),cursor=q.cursor;
  if(Object.keys(q).some(k=>k!=="cursor")||
    new URL(request.raw.url??"/v1/public/news","http://local").searchParams.getAll("cursor").length>1||
    cursor!==undefined&&(typeof cursor!=="string"||!/^[A-Za-z0-9_=-]{1,700}$/.test(cursor)))
   return reply.code(422).send({code:"invalid_news_query"});
  try{
   const result=publicNewsProjection(await options.service.newsList(options.tenant,null,cursor as string|undefined));
   if(!result)return reply.code(503).send({code:"news_unavailable"});
   reply.header("Cache-Control","public, max-age=60");
   return result;
  }catch(error){
   if((error as {status?:number})?.status===422)return reply.code(422).send({code:"invalid_news_query"});
   return reply.code(503).send({code:"news_unavailable"});
  }
 });
}
