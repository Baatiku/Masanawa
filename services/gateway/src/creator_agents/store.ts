import {createHash,randomBytes} from "node:crypto";
import {createCanonicalId} from "@masanawa/contracts";
import {
 validateCreatorSeed, validateCreatorGeneration,
 type CreatorSeed, type CreatorAgentState, type GeneratedCreatorAgent
} from "@masanawa/masana";
import type {CreatorAgentGenerator} from "./generator.js";

type Owner = Readonly<{tenantId:string;userId:string}>;
export class CreatorAgentError extends Error {
 constructor(readonly code:string,readonly statusCode=409){super(code);}
}
export interface CreatorQuery {
 query(sql:string, params?:readonly unknown[]):Promise<{rows:Record<string,unknown>[];rowCount:number|null}>;
}
export interface CreatorPool extends CreatorQuery {
 connect():Promise<CreatorQuery & {release():void}>;
}
export interface CreatorAgentView {
 readonly characterId:string;
 readonly state:CreatorAgentState;
 readonly revision:number;
 readonly handle:string;
 readonly seed:CreatorSeed;
 readonly generated:GeneratedCreatorAgent|null;
 readonly statusEnabled:boolean;
 readonly publishedAt:string|null;
}
function text(row:Record<string,unknown>,field:string):string{
 const value=row[field];
 if(typeof value!=="string"||!value)throw new CreatorAgentError("creator.storage_corrupt",503);
 return value;
}
function view(row:Record<string,unknown>):CreatorAgentView{
 const state=row.state;
 if(state!=="draft"&&state!=="published"&&state!=="paused"&&state!=="restricted"&&state!=="retired")throw new CreatorAgentError("creator.storage_corrupt",503);
 const seed=validateCreatorSeed(row.seed);
 const generated=row.generated==null?null:validateCreatorGeneration(seed,row.generated,[]);
 const revision=Number(row.revision);
 if(!Number.isSafeInteger(revision)||revision<1)throw new CreatorAgentError("creator.storage_corrupt",503);
 const publishedAt=row.published_at;
 return Object.freeze({
  characterId:text(row,"character_id"),state,revision,handle:text(row,"handle"),
  seed,generated,statusEnabled:row.status_enabled===true,
  publishedAt:publishedAt===null?null:publishedAt instanceof Date?publishedAt.toISOString():String(publishedAt),
 });
}
const ownSelect="SELECT character_id,owner_user_id,state,revision,handle,seed,generated,status_enabled,published_at FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2";
function draftKey(value:unknown):string {
 if(typeof value!=="string"||!/^[a-zA-Z0-9:_-]{16,128}$/u.test(value))throw new CreatorAgentError("creator.idempotency_key_invalid",400);
 return value;
}
function id(value:unknown):string {
 if(typeof value!=="string"||!/^[-_a-zA-Z0-9]{8,160}$/u.test(value))throw new CreatorAgentError("creator.character_id_invalid",400);
 return value;
}
function sha(value:unknown):string {
 return createHash("sha256").update(JSON.stringify(value)).digest("hex");
}
function handleFor(name:string):string{
 const base=name.normalize("NFKD").toLowerCase().replace(/[^a-z0-9]+/gu,"-").replace(/^-|-$/gu,"").slice(0,28);
 return ((base.length>=2?base:"masana")+"-"+randomBytes(4).toString("hex")).slice(0,40);
}
export function createPostgresCreatorAgentService(input:{pool:CreatorPool;generator:CreatorAgentGenerator}) {
 const pool=input.pool;
 async function own(owner:Owner,characterId:string):Promise<CreatorAgentView>{
  const response=await pool.query(ownSelect+" AND character_id=$3",[owner.tenantId,owner.userId,id(characterId)]);
  if(!response.rows[0])throw new CreatorAgentError("creator.agent_not_found",404);
  return view(response.rows[0]);
 }
 return Object.freeze({
  async list(owner:Owner):Promise<readonly CreatorAgentView[]> {
   const r=await pool.query(ownSelect+" ORDER BY created_at DESC LIMIT 100",[owner.tenantId,owner.userId]);
   return Object.freeze(r.rows.map(view));
  },
  read:own,
  async createDraft(owner:Owner,raw:unknown,key:unknown):Promise<CreatorAgentView>{
   const seed=validateCreatorSeed(raw),idempotencyKey=draftKey(key),fingerprint=sha(seed);
   const db=await pool.connect();
   let begun=false;
   try{
    await db.query("BEGIN");begun=true;
    const active=await db.query(
     "SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",
     [owner.tenantId,owner.userId]);
    if(active.rows[0]?.state!=="active")throw new CreatorAgentError("creator.owner_not_active",403);
    const existing=await db.query(ownSelect+" AND draft_create_key=$3",
      [owner.tenantId,owner.userId,idempotencyKey]);
    if(existing.rows[0]){
     const original=await db.query("SELECT draft_request_hash FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2 AND draft_create_key=$3",
       [owner.tenantId,owner.userId,idempotencyKey]);
     if(original.rows[0]?.draft_request_hash!==fingerprint)throw new CreatorAgentError("creator.idempotency_conflict",409);
     await db.query("COMMIT");begun=false;
     return view(existing.rows[0]);
    }
    const characterId=createCanonicalId("character");
    const now=new Date().toISOString();
    await db.query("INSERT INTO identity.characters(tenant_id,character_id,created_at,updated_at) VALUES($1,$2,$3,$3)",
      [owner.tenantId,characterId,now]);
    await db.query("INSERT INTO identity.character_ownership(tenant_id,character_id,kind,owner_user_id,created_at) VALUES($1,$2,'creator-agent',$3,$4)",
      [owner.tenantId,characterId,owner.userId,now]);
    const inserted=await db.query(
     "INSERT INTO creator.agents(tenant_id,character_id,owner_user_id,handle,seed,draft_create_key,draft_request_hash) "+
     "VALUES($1,$2,$3,$4,$5::jsonb,$6,$7) RETURNING character_id,state,revision,handle,seed,generated,status_enabled,published_at",
     [owner.tenantId,characterId,owner.userId,handleFor(seed.name),JSON.stringify(seed),idempotencyKey,fingerprint]);
    if(!inserted.rows[0])throw new CreatorAgentError("creator.write_unavailable",503);
    await db.query("COMMIT");begun=false;
    return view(inserted.rows[0]);
   }catch(error){if(begun)await db.query("ROLLBACK").catch(()=>{});throw error;}
   finally{db.release();}
  },
  async generate(owner:Owner,characterId:string,expectedRevision:number):Promise<CreatorAgentView>{
   if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new CreatorAgentError("creator.revision_invalid",400);
   const source=await own(owner,characterId);
   if(source.state!=="draft"||source.revision!==expectedRevision)throw new CreatorAgentError("creator.stale_draft");
   const generated=await input.generator.generate(source.seed);
   const r=await pool.query(
    "UPDATE creator.agents SET generated=$4::jsonb,revision=revision+1,updated_at=statement_timestamp() "+
    "WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 AND revision=$5 AND state='draft' "+
    "RETURNING character_id,state,revision,handle,seed,generated,status_enabled,published_at",
    [owner.tenantId,owner.userId,id(characterId),JSON.stringify(generated),expectedRevision]
   );
   if(!r.rows[0])throw new CreatorAgentError("creator.stale_draft");
   return view(r.rows[0]);
  },
  async updateDraft(owner:Owner,characterId:string,raw:unknown,expectedRevision:number):Promise<CreatorAgentView>{
   const seed=validateCreatorSeed(raw);
   if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new CreatorAgentError("creator.revision_invalid",400);
   const r=await pool.query(
    "UPDATE creator.agents SET seed=$4::jsonb,generated=NULL,revision=revision+1,updated_at=statement_timestamp() "+
    "WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 AND state='draft' AND revision=$5 "+
    "RETURNING character_id,state,revision,handle,seed,generated,status_enabled,published_at",
    [owner.tenantId,owner.userId,id(characterId),JSON.stringify(seed),expectedRevision]);
   if(!r.rows[0])throw new CreatorAgentError("creator.stale_draft");
   return view(r.rows[0]);
  },
  /** One free publication per owner, forever. Paid publication requires a separate
   * trusted Wallet transaction; NEVER grant it on an unverified transfer. */
  async publishFirstFree(owner:Owner,characterId:string,expectedRevision:number):Promise<CreatorAgentView>{
   if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new CreatorAgentError("creator.revision_invalid",400);
   const db=await pool.connect();let begun=false;
   try{
    await db.query("BEGIN");begun=true;
    const user=await db.query("SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",
      [owner.tenantId,owner.userId]);
    if(user.rows[0]?.state!=="active")throw new CreatorAgentError("creator.owner_not_active",403);
    const rows=await db.query(ownSelect+" AND character_id=$3 FOR UPDATE",
      [owner.tenantId,owner.userId,id(characterId)]);
    if(!rows.rows[0])throw new CreatorAgentError("creator.agent_not_found",404);
    const item=view(rows.rows[0]);
    if(item.state==="published"){
     await db.query("COMMIT");begun=false;return item;
    }
    if(item.state!=="draft"||item.revision!==expectedRevision||!item.generated)
     throw new CreatorAgentError("creator.publish_invalid",409);
    const consumed=await db.query("SELECT character_id FROM creator.first_free_publications WHERE tenant_id=$1 AND owner_user_id=$2",
      [owner.tenantId,owner.userId]);
    if(consumed.rows.length)throw new CreatorAgentError("creator.payment_required",402);
    const charVersionId=createCanonicalId("character-version");
    const at=new Date().toISOString();
    const g=item.generated;
    const constitution={
     schemaVersion:1,displayName:g.name,biography:g.biography,personality:[g.manner],
     boundaries:["This is an AI professional, not a licensed human.",
      "Never fabricate professional credentials or completed actions.",
      "Users must authorize consequential spending in the Wallet."],
     disclosurePolicy:{ai:true,creatorOwned:true},languages:g.languages,
     voiceReferences:[],appearanceReferences:[],expertise:g.specializations,
    };
    await db.query(
     "INSERT INTO identity.character_versions(tenant_id,character_version_id,character_id,version_number,state,constitution,created_at,published_at) "+
     "VALUES($1,$2,$3,1,'published',$4::jsonb,$5,$5)",
     [owner.tenantId,charVersionId,item.characterId,JSON.stringify(constitution),at]);
    await db.query(
     "UPDATE identity.characters SET active_character_version_id=$3,revision=revision+1,updated_at=$4 "+
     "WHERE tenant_id=$1 AND character_id=$2 AND state='active'",
     [owner.tenantId,item.characterId,charVersionId,at]);
    const advanced=await db.query(
     "UPDATE creator.agents SET state='published',revision=revision+1,published_at=$4,updated_at=$4 "+
     "WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 AND state='draft' AND revision=$5 "+
     "RETURNING character_id,state,revision,handle,seed,generated,status_enabled,published_at",
     [owner.tenantId,owner.userId,item.characterId,at,expectedRevision]);
    if(!advanced.rows[0])throw new CreatorAgentError("creator.stale_draft");
    const profile={
     handle:item.handle,displayName:g.name,profession:g.profession,biography:g.biography,
     lifeStory:"This fictional Masana persona was generated for professional educational assistance.",
     languages:g.languages,talents:g.specializations,goals:g.statusTopics,
     roomId:null,portraitMediaId:null,bannerMediaId:null,socialChannels:[],
    };
    await db.query(
     "INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at) "+
     "VALUES($1,$2,1,'approved',$3::jsonb,$4,$5)",
     [owner.tenantId,item.characterId,JSON.stringify(profile),owner.userId,at]);
    await db.query(
     "INSERT INTO agents.agent_presentations(tenant_id,character_id,character_version_id,display_name,role_label,about,greeting,visible_in_user_app,sort_order) "+
     "VALUES($1,$2,$3,$4,$5,$6,$7,true,100)",
     [owner.tenantId,item.characterId,charVersionId,g.name,g.profession,g.biography.slice(0,500),g.greeting]);
    await db.query(
     "INSERT INTO creator.first_free_publications(tenant_id,owner_user_id,character_id,operation_id) VALUES($1,$2,$3,$4)",
     [owner.tenantId,owner.userId,item.characterId,"free:"+item.characterId]);
    await db.query("COMMIT");begun=false;return view(advanced.rows[0]);
   }catch(error){if(begun)await db.query("ROLLBACK").catch(()=>{});throw error;}
   finally{db.release();}
  },
  async setActive(owner:Owner,characterId:string,active:boolean,expectedRevision:number):Promise<CreatorAgentView>{
   if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new CreatorAgentError("creator.revision_invalid",400);
   const from=active?"paused":"published",to=active?"published":"paused";
   const db=await pool.connect();let begun=false;
   try{
    await db.query("BEGIN");begun=true;
    const r=await db.query(
     "UPDATE creator.agents SET state=$4,revision=revision+1,updated_at=statement_timestamp() "+
     "WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 AND state=$5 AND revision=$6 "+
     "RETURNING character_id,state,revision,handle,seed,generated,status_enabled,published_at",
     [owner.tenantId,owner.userId,id(characterId),to,from,expectedRevision]);
    if(!r.rows[0])throw new CreatorAgentError("creator.stale_or_ineligible");
    const changed=await db.query("UPDATE identity.characters SET state=$3,revision=revision+1,updated_at=statement_timestamp() "+
     "WHERE tenant_id=$1 AND character_id=$2 RETURNING character_id",
     [owner.tenantId,id(characterId),active?"active":"disabled"]);
    if(changed.rowCount!==1)throw new CreatorAgentError("creator.character_unavailable",503);
    await db.query("UPDATE agents.agent_presentations SET visible_in_user_app=$3,revision=revision+1 "+
     "WHERE tenant_id=$1 AND character_id=$2",[owner.tenantId,id(characterId),active]);
    await db.query("COMMIT");begun=false;return view(r.rows[0]);
   }catch(error){if(begun)await db.query("ROLLBACK").catch(()=>{});throw error;}
   finally{db.release();}
  },
 });
}
