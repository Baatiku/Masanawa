import { randomUUID } from "node:crypto";
import type { FastifyInstance } from "fastify";
import type { PlatformCustomerSessionAuthorizer } from "./customer_auth.js";

const errors = new Set(["StateError","ApiException","FormatException","AssertionError","TypeError","FlutterError","RangeError","ArgumentError","SocketException","TimeoutException","PlatformException","OtherError"]);
const exits = new Set(["anr","java_crash","native_crash","low_memory"]);
type DiagnosticEvent = Readonly<{day:string;type:string;frame:string}>;
export type MobileDiagnosticReport = Readonly<{
  reportId:string;consent:true;version:string;build:string;source:string;
  events:readonly DiagnosticEvent[];exits:readonly string[];
}>;
export interface MobileDiagnosticsPorts {
  readonly sessions: PlatformCustomerSessionAuthorizer;
  /** Only this validated projection may reach the production log collector. */
  readonly observe: (report: Omit<MobileDiagnosticReport,"reportId"|"consent"> &
    Readonly<{event:"mobile.diagnostics.accepted";reference:string}>) => void | Promise<void>;
  readonly now?: () => number;
}
function object(value:unknown, keys:readonly string[]): value is Record<string,unknown> {
  return value!==null && typeof value==="object" && !Array.isArray(value) &&
    Object.keys(value).length===keys.length && keys.every(key=>Object.hasOwn(value,key));
}
export function parseMobileDiagnostics(value:unknown):MobileDiagnosticReport|null {
  if(!object(value,["reportId","consent","version","build","source","events","exits"]) ||
    value.consent!==true || typeof value.reportId!=="string" ||
    !/^request_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/u.test(value.reportId) ||
    ![value.version,value.build].every(v=>typeof v==="string"&&/^(?:unknown|[0-9][0-9A-Za-z.+_-]{0,47})$/u.test(v)) ||
    typeof value.source!=="string" || !/^(?:unknown|[0-9a-f]{40})$/u.test(value.source) ||
    !Array.isArray(value.events)||value.events.length>20||
    !Array.isArray(value.exits)||value.exits.length>10||
    !value.exits.every(v=>typeof v==="string"&&exits.has(v))) return null;
  const events:DiagnosticEvent[]=[];
  for(const event of value.events) {
    if(!object(event,["day","type","frame"]) ||
      typeof event.day!=="string"||!/^\d{4}-\d{2}-\d{2}$/u.test(event.day)||
      !Number.isFinite(Date.parse(event.day))||new Date(event.day).toISOString().slice(0,10)!==event.day ||
      typeof event.type!=="string"||!errors.has(event.type)||
      typeof event.frame!=="string"||event.frame.length>180||
      !/^(?:unknown|src\/[a-zA-Z0-9_/-]+\.dart:[0-9]{1,6})$/u.test(event.frame))return null;
    events.push(Object.freeze({day:event.day,type:event.type,frame:event.frame}));
  }
  return Object.freeze({reportId:value.reportId,consent:true,
    version:value.version as string,build:value.build as string,source:value.source,
    events:Object.freeze(events),exits:Object.freeze([...value.exits] as string[])});
}
export function registerMobileDiagnosticsRoutes(app:FastifyInstance, ports:MobileDiagnosticsPorts):void {
  const recent=new Map<string,{reportId:string;at:number;pending:Promise<string>}>();
  app.post("/v1/support/diagnostics",{bodyLimit:16_384},async(request,reply)=>{
    reply.header("Cache-Control","no-store");
    let owner;
    try {owner=await ports.sessions.authorize({authorizationHeader:request.headers.authorization});}
    catch {return reply.code(401).send({code:"DIAGNOSTICS_SIGN_IN_REQUIRED"});}
    const report=parseMobileDiagnostics(request.body);
    if(!report)return reply.code(422).send({code:"DIAGNOSTICS_INVALID"});
    const key=JSON.stringify([owner.tenantId,owner.userId]);
    const now=(ports.now??Date.now)();
    const previous=recent.get(key);
    if(previous&&now-previous.at<60_000) {
      if(previous.reportId!==report.reportId)return reply.code(429).header("Retry-After","60").send({code:"DIAGNOSTICS_RATE_LIMITED"});
      try{return reply.code(202).send({reference:await previous.pending});}
      catch{return reply.code(503).send({code:"DIAGNOSTICS_UNAVAILABLE"});}
    }
    const reference=randomUUID();
    const {reportId:_id,consent:_consent,...safe}=report;
    const pending=Promise.resolve().then(()=>ports.observe({...safe,event:"mobile.diagnostics.accepted",reference})).then(()=>reference);
    recent.delete(key);
    if(recent.size>=5000)recent.delete(recent.keys().next().value!);
    recent.set(key,{reportId:report.reportId,at:now,pending});
    try {return reply.code(202).send({reference:await pending});}
    catch {
      if(recent.get(key)?.pending===pending)recent.delete(key);
      return reply.code(503).send({code:"DIAGNOSTICS_UNAVAILABLE"});
    }
  });
  app.addHook("onClose",async()=>{recent.clear();});
}
