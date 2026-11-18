import type {FastifyInstance} from "fastify";
export interface GbActivityHold {
  readonly operationId:string;readonly kind:string;readonly operationState:string;
  readonly state:"reserved"|"captured"|"released";
  readonly reservedMb:number;readonly heldMb:number;readonly chargedMb:number;readonly releasedMb:number;
  readonly purchasedReservedMb:number;readonly welcomeReservedMb:number;
  readonly createdAt:string;readonly resolvedAt:string|null;readonly entryIds:readonly string[];
}
type Actor={readonly tenantId:string;readonly userId:string};
type HoldFilter="all"|"reserved"|"captured"|"released";
type HoldCursor={readonly createdAt:string;readonly operationId:string};
export interface GbActivityHoldPorts {
  readonly authorize:(header:string|undefined)=>Promise<Actor>;
  readonly listHolds?:(actor:Actor,limit:number,cursor:HoldCursor|null,state:HoldFilter,snapshotAt:string)=>Promise<readonly GbActivityHold[]>;
  readonly findHold?:(actor:Actor,operationId:string)=>Promise<GbActivityHold|null>;
}
const id=(v:unknown):v is string=>typeof v==="string"&&/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(v);
const date=(v:unknown):v is string=>typeof v==="string"&&/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}(?:\d{3})?Z$/.test(v)&&
  Number.isFinite(Date.parse(v))&&new Date(v).toISOString()===v.slice(0,23)+"Z";
type Cursor={v:1;tenant:string;user:string;state:HoldFilter;snapshotAt:string;createdAt:string;operationId:string};
function unpack(raw:unknown,actor:Actor,state:HoldFilter):Cursor|null{
  if(typeof raw!=="string"||raw.length>2048)return null;
  try{
    const c=JSON.parse(Buffer.from(raw,"base64url").toString("utf8")) as Partial<Cursor>;
    if(!c||c.v!==1||c.tenant!==actor.tenantId||c.user!==actor.userId||c.state!==state||
      !date(c.snapshotAt)||!date(c.createdAt)||!id(c.operationId)||
      Date.parse(c.createdAt)>Date.parse(c.snapshotAt)||Date.parse(c.snapshotAt)>Date.now()+1000)return null;
    return c as Cursor;
  }catch{return null;}
}
export function registerGbActivityHoldRoutes(app:FastifyInstance,ports:GbActivityHoldPorts){
  const authorize=async(header:string|undefined)=>{
    const actor=await ports.authorize(header);
    if(!id(actor?.tenantId)||!id(actor?.userId))throw Error("unauthorized");
    return actor;
  };
  app.get("/v1/gb/wallet/activity/holds",async(request,reply)=>{
    reply.header("cache-control","no-store");
    let actor:Actor;try{actor=await authorize(request.headers.authorization);}catch{return reply.code(401).send({error:{code:"activity_unauthorized"}});}
    const query=request.query as Record<string,unknown>;
    const state=query.state??"all",rawLimit=query.limit??"10";
    if(typeof state!=="string"||!["all","reserved","captured","released"].includes(state)||
      typeof rawLimit!=="string"||!/^\d{1,2}$/.test(rawLimit)||Number(rawLimit)<1||Number(rawLimit)>30)
      return reply.code(400).send({error:{code:"invalid_hold_query"}});
    const filter=state as HoldFilter,limit=Number(rawLimit);
    const cursor=query.cursor===undefined?null:unpack(query.cursor,actor,filter);
    if(query.cursor!==undefined&&!cursor)return reply.code(400).send({error:{code:"invalid_hold_cursor"}});
    const snapshotAt=cursor?.snapshotAt??new Date().toISOString();
    if(!ports.listHolds)return reply.code(503).send({error:{code:"hold_history_unavailable"}});
    try{
      const rows=await ports.listHolds(actor,limit+1,cursor?{createdAt:cursor.createdAt,operationId:cursor.operationId}:null,filter,snapshotAt);
      const items=rows.slice(0,limit),last=items.at(-1);
      const nextCursor=rows.length>limit&&last?Buffer.from(JSON.stringify({v:1,tenant:actor.tenantId,user:actor.userId,
        state:filter,snapshotAt,createdAt:last.createdAt,operationId:last.operationId} satisfies Cursor)).toString("base64url"):null;
      return {items,nextCursor,snapshotAt};
    }catch{return reply.code(503).send({error:{code:"hold_history_unavailable"}});}
  });
  app.get<{Params:{operationId:string}}>("/v1/gb/wallet/activity/holds/:operationId",async(request,reply)=>{
    reply.header("cache-control","no-store");
    let actor:Actor;try{actor=await authorize(request.headers.authorization);}catch{return reply.code(401).send({error:{code:"activity_unauthorized"}});}
    if(!id(request.params.operationId))return reply.code(400).send({error:{code:"invalid_hold_id"}});
    if(!ports.findHold)return reply.code(503).send({error:{code:"hold_history_unavailable"}});
    try{
      const hold=await ports.findHold(actor,request.params.operationId);
      return hold?{hold}:reply.code(404).send({error:{code:"hold_not_found"}});
    }catch{return reply.code(503).send({error:{code:"hold_history_unavailable"}});}
  });
}
