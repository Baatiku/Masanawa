import {createHash,randomBytes,randomUUID} from "node:crypto";
import {createCanonicalId} from "@masanawa/contracts";
import {atomic} from "@masanawa/masana";
import {
 validateCreatorSeed, validateCreatorGeneration,
 type CreatorSeed, type CreatorAgentState, type GeneratedCreatorAgent
} from "@masanawa/masana";
import type {CreatorAgentGenerator} from "./generator.js";
import {suggestedCreatorVoice} from "./voice.js";

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
 readonly voiceName:string;
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
  voiceName:suggestedCreatorVoice(seed),
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
  async function commitCharacterPublication(db:CreatorQuery,owner:Owner,item:CreatorAgentView,expectedRevision:number):Promise<CreatorAgentView>{
    if(!item.generated)throw new CreatorAgentError("creator.profile_not_generated",409);
    if(item.seed.portraitMediaId!==null){
      const matched=await db.query(
        "SELECT media_id FROM masana.character_media WHERE tenant_id=$1 AND character_id=$2 "+
        "AND media_id=$3 AND kind='portrait' AND length(btrim(rights_note))>4 "+
        "AND length(btrim(approved_by))>0 AND length(btrim(object_key))>0 LIMIT 1",
        [owner.tenantId,item.characterId,item.seed.portraitMediaId]);
      if(!matched.rows.length)throw new CreatorAgentError("creator.portrait_unverified",409);
    }
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
     "UPDATE creator.agents SET state='published',voice_profile_id=$6,revision=revision+1,published_at=$4,updated_at=$4 "+
     "WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 AND state='draft' AND revision=$5 "+
     "RETURNING character_id,state,revision,handle,seed,generated,status_enabled,published_at",
     [owner.tenantId,owner.userId,item.characterId,at,expectedRevision,suggestedCreatorVoice(item.seed)]);
    if(!advanced.rows[0])throw new CreatorAgentError("creator.stale_draft");
    const profile={
     handle:item.handle,displayName:g.name,profession:g.profession,biography:g.biography,
     lifeStory:"This fictional Masana persona was generated for professional educational assistance.",
     languages:g.languages,talents:g.specializations,goals:g.statusTopics,
     roomId:null,portraitMediaId:item.seed.portraitMediaId,bannerMediaId:null,socialChannels:[],
    };
    await db.query(
     "INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at) "+
     "VALUES($1,$2,1,'approved',$3::jsonb,$4,$5)",
     [owner.tenantId,item.characterId,JSON.stringify(profile),owner.userId,at]);
    await db.query(
     "INSERT INTO agents.agent_presentations(tenant_id,character_id,character_version_id,display_name,role_label,about,greeting,visible_in_user_app,sort_order) "+
     "VALUES($1,$2,$3,$4,$5,$6,$7,true,100)",
     [owner.tenantId,item.characterId,charVersionId,g.name,g.profession,g.biography.slice(0,500),g.greeting]);
    return view(advanced.rows[0]!);
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
    const count=await db.query(
      "SELECT count(*)::int AS draft_count FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2 AND state='draft'",
      [owner.tenantId,owner.userId]);
    if(Number(count.rows[0]?.draft_count??0)>=20)
      throw new CreatorAgentError("creator.draft_limit",429);
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
   // Serialize per user so concurrent devices cannot bypass the daily budget.
   const budget=await pool.connect();let budgetBegun=false;
   try {
    await budget.query("BEGIN");budgetBegun=true;
    const identity=await budget.query(
      "SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",
      [owner.tenantId,owner.userId]);
    if(identity.rows[0]?.state!=="active")throw new CreatorAgentError("creator.owner_not_active",403);
    const spent=await budget.query(
      "SELECT count(*)::int AS attempts FROM creator.generation_attempts "+
      "WHERE tenant_id=$1 AND owner_user_id=$2 AND attempted_at>=date_trunc('day',now() AT TIME ZONE 'UTC') AT TIME ZONE 'UTC'",
      [owner.tenantId,owner.userId]);
    if(Number(spent.rows[0]?.attempts??0)>=3)throw new CreatorAgentError("creator.daily_generation_limit",429);
    await budget.query(
      "INSERT INTO creator.generation_attempts(tenant_id,attempt_id,owner_user_id,character_id,draft_revision) "+
      "VALUES($1,$2,$3,$4,$5)",
      [owner.tenantId,randomUUID(),owner.userId,id(characterId),expectedRevision]);
    await budget.query("COMMIT");budgetBegun=false;
   }catch(error){if(budgetBegun)await budget.query("ROLLBACK").catch(()=>{});throw error;}
   finally{budget.release();}
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
    const published=await commitCharacterPublication(db,owner,item,expectedRevision);
    await db.query(
     "INSERT INTO creator.first_free_publications(tenant_id,owner_user_id,character_id,operation_id) VALUES($1,$2,$3,$4)",
     [owner.tenantId,owner.userId,item.characterId,"free:"+item.characterId]);
    await db.query("COMMIT");begun=false;return published;
   }catch(error){if(begun)await db.query("ROLLBACK").catch(()=>{});throw error;}
   finally{db.release();}
  },
  /** Issue a short-lived, exact MSNW amount bound to one draft and policy. */
  async quoteAdditionalPublication(owner:Owner,characterId:string,expectedRevision:number,key:unknown){
   const idempotencyKey=draftKey(key);
   if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new CreatorAgentError("creator.revision_invalid",400);
   const db=await pool.connect();let begun=false;
   try{
    await db.query("BEGIN");begun=true;
    const user=await db.query("SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",[owner.tenantId,owner.userId]);
    if(user.rows[0]?.state!=="active")throw new CreatorAgentError("creator.owner_not_active",403);
    const rows=await db.query(ownSelect+" AND character_id=$3",[owner.tenantId,owner.userId,id(characterId)]);
    if(!rows.rows[0])throw new CreatorAgentError("creator.agent_not_found",404);
    const item=view(rows.rows[0]);
    if(item.state!=="draft"||item.revision!==expectedRevision||!item.generated)
      throw new CreatorAgentError("creator.publish_invalid");
    const free=await db.query("SELECT 1 FROM creator.first_free_publications WHERE tenant_id=$1 AND owner_user_id=$2",[owner.tenantId,owner.userId]);
    if(free.rows.length===0)throw new CreatorAgentError("creator.free_entitlement_available");
    const p=await db.query("SELECT revision,creation_msnw::text AS fee FROM creator.fee_policies WHERE tenant_id=$1 AND effective_at<=now() ORDER BY effective_at DESC,revision DESC LIMIT 1",[owner.tenantId]);
    const fee=p.rows[0]?.fee??"5000",policyRevision=Number(p.rows[0]?.revision??1);
    if(typeof fee!=="string"||!/^(0|[1-9][0-9]{0,35})$/u.test(fee)||!Number.isSafeInteger(policyRevision)||policyRevision<1)
      throw new CreatorAgentError("creator.price_unavailable",503);
    const amountAtomic=(BigInt(fee)*1_000_000n).toString();
    const fingerprint=sha([owner.tenantId,owner.userId,item.characterId,expectedRevision,amountAtomic,policyRevision]);
    const prior=await db.query(
      "SELECT operation_id,character_id,request_hash,msnw_atomic,authorization_ref,expires_at,state FROM creator.operations "+
      "WHERE tenant_id=$1 AND owner_user_id=$2 AND kind='create' AND idempotency_key=$3",
      [owner.tenantId,owner.userId,idempotencyKey]);
    if(prior.rows[0]){
      const q=prior.rows[0];
      if(q.character_id!==item.characterId||q.request_hash!==fingerprint)
        throw new CreatorAgentError("creator.quote_idempotency_conflict");
      await db.query("COMMIT");begun=false;
      return {operationId:q.operation_id,asset:"MSNW" as const,characterId:item.characterId,
        amountAtomic:q.msnw_atomic,authorizationRef:q.authorization_ref,expiresAt:String(q.expires_at),state:q.state};
    }
    const operationId=randomUUID(),nonce=randomUUID();
    const created=await db.query(
      "INSERT INTO creator.operations(tenant_id,operation_id,owner_user_id,character_id,kind,policy_revision,msnw_atomic,state,authorization_ref,expires_at,idempotency_key,request_hash) "+
      "VALUES($1,$2,$3,$4,'create',$5,$6,'quoted',$7,now()+interval '10 minutes',$8,$9) RETURNING expires_at",
      [owner.tenantId,operationId,owner.userId,item.characterId,policyRevision,amountAtomic,nonce,idempotencyKey,fingerprint]);
    await db.query("COMMIT");begun=false;
    return {operationId,asset:"MSNW" as const,characterId:item.characterId,
      amountAtomic,authorizationRef:nonce,expiresAt:String(created.rows[0]?.expires_at),state:"quoted" as const};
   }catch(e){if(begun)await db.query("ROLLBACK").catch(()=>{});throw e;}
   finally{db.release();}
  },
  /** One canonical custody debit+fee liability+journal+Masana publication transaction. */
  async confirmAdditionalPublication(owner:Owner,characterId:string,expectedRevision:number,
    operationRaw:unknown,nonceRaw:unknown,keyRaw:unknown):Promise<CreatorAgentView>{
   if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new CreatorAgentError("creator.revision_invalid",400);
   const character=id(characterId),operationId=id(operationRaw),nonce=id(nonceRaw),key=draftKey(keyRaw);
   const db=await pool.connect();let begun=false;
   try{
    await db.query("BEGIN");begun=true;
    const user=await db.query("SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",[owner.tenantId,owner.userId]);
    if(user.rows[0]?.state!=="active")throw new CreatorAgentError("creator.owner_not_active",403);
    const opResult=await db.query(
      "SELECT operation_id,character_id,policy_revision,msnw_atomic,authorization_ref,expires_at,request_hash,state,idempotency_key "+
      "FROM creator.operations WHERE tenant_id=$1 AND owner_user_id=$2 AND operation_id=$3 AND kind='create' FOR UPDATE",
      [owner.tenantId,owner.userId,operationId]);
    const op=opResult.rows[0];
    if(!op||op.character_id!==character||op.authorization_ref!==nonce||op.idempotency_key!==key)
      throw new CreatorAgentError("creator.quote_invalid");
    const rows=await db.query(ownSelect+" AND character_id=$3 FOR UPDATE",[owner.tenantId,owner.userId,character]);
    if(!rows.rows[0])throw new CreatorAgentError("creator.agent_not_found",404);
    const item=view(rows.rows[0]);
    if((op.state==="captured"||op.state==="free_granted")&&item.state==="published"){
      await db.query("COMMIT");begun=false;return item;
    }
    if(op.state!=="quoted"||!op.expires_at||Date.parse(String(op.expires_at))<=Date.now())
      throw new CreatorAgentError("creator.quote_expired");
    if(item.state!=="draft"||item.revision!==expectedRevision||!item.generated)
      throw new CreatorAgentError("creator.stale_draft");
    const amount=String(op.msnw_atomic);
    if(op.request_hash!==sha([owner.tenantId,owner.userId,item.characterId,expectedRevision,amount,Number(op.policy_revision)]))
      throw new CreatorAgentError("creator.quote_payload_changed");
    const free=await db.query("SELECT 1 FROM creator.first_free_publications WHERE tenant_id=$1 AND owner_user_id=$2",[owner.tenantId,owner.userId]);
    if(free.rows.length===0)throw new CreatorAgentError("creator.free_entitlement_available");
    const fee=atomic(amount);let walletRef:string|null=null;
    if(fee>0n){
      const balance=await db.query("SELECT available_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",[owner.tenantId,owner.userId]);
      const raw=balance.rows[0]?.available_micro;
      if(typeof raw!=="string"||!/^(0|[1-9][0-9]*)$/u.test(raw)||BigInt(raw)<fee)
        throw new CreatorAgentError("creator.insufficient_msnw");
      const debit=await db.query(
        "UPDATE commerce.msnw_custody_accounts SET available_micro=available_micro-$3::numeric,updated_at=statement_timestamp() "+
        "WHERE tenant_id=$1 AND user_id=$2 AND available_micro >= $3::numeric",
        [owner.tenantId,owner.userId,amount]);
      if(debit.rowCount!==1)throw new CreatorAgentError("creator.insufficient_msnw");
      await db.query("INSERT INTO commerce.msnw_creator_fee_liabilities(tenant_id,accrued_micro) VALUES($1,$2::numeric) "+
        "ON CONFLICT(tenant_id) DO UPDATE SET accrued_micro=commerce.msnw_creator_fee_liabilities.accrued_micro+$2::numeric,updated_at=statement_timestamp()",
        [owner.tenantId,amount]);
      walletRef=randomUUID();
      await db.query(
        "INSERT INTO commerce.msnw_creator_fee_journal(operation_id,tenant_id,owner_user_id,character_id,kind,idempotency_key,amount_micro,receipt_ref) "+
        "VALUES($1,$2,$3,$4,'create',$5,$6::numeric,$7)",
        [walletRef,owner.tenantId,owner.userId,character,key,amount,"creator:"+operationId]);
      await db.query(
        "INSERT INTO commerce.msnw_creator_fee_postings(operation_id,entry_number,tenant_id,owner_user_id,bucket,delta_micro) "+
        "VALUES($1,1,$2,$3,'available',-$4::numeric),($1,2,$2,NULL,'platform_fee',$4::numeric)",
        [walletRef,owner.tenantId,owner.userId,amount]);
    }
    const published=await commitCharacterPublication(db,owner,item,expectedRevision);
    await db.query("UPDATE creator.operations SET state=$4,wallet_ledger_ref=$5,updated_at=statement_timestamp() "+
      "WHERE tenant_id=$1 AND owner_user_id=$2 AND operation_id=$3",
      [owner.tenantId,owner.userId,operationId,fee>0n?"captured":"free_granted",walletRef]);
    await db.query("COMMIT");begun=false;return published;
   }catch(e){if(begun)await db.query("ROLLBACK").catch(()=>{});throw e;}
   finally{db.release();}
  },

  /** Read-only, owner-scoped allocation statement. A settled allocation has
   * already been credited by the canonical Wallet posting; never credit it here. */
  async earnings(owner:Owner,characterId:string,cursorRaw?:unknown){
   const character=id(characterId);
   await own(owner,character); // A stranger must never receive even an empty statement.
   let cursorDate:string|null=null,cursorId:string|null=null;
   if(cursorRaw!==undefined){
    if(typeof cursorRaw!=="string"||!(/^[A-Za-z0-9_-]{10,512}$/u).test(cursorRaw))
     throw new CreatorAgentError("creator.earnings_cursor_invalid",400);
    try{
     const parsed:unknown=JSON.parse(Buffer.from(cursorRaw,"base64url").toString("utf8"));
     if(!Array.isArray(parsed)||parsed.length!==2||typeof parsed[0]!=="string"||
        typeof parsed[1]!=="string"||!/^[-_a-zA-Z0-9]{8,160}$/u.test(parsed[1])||
        !Number.isFinite(Date.parse(parsed[0]))||new Date(parsed[0]).toISOString()!==parsed[0])
       throw new TypeError("invalid cursor");
     cursorDate=parsed[0];cursorId=parsed[1];
    }catch{throw new CreatorAgentError("creator.earnings_cursor_invalid",400);}
   }
   const clause=cursorDate===null?"":" AND (created_at,allocation_id)<($4::timestamptz,$5::text)";
   const params:unknown[]=[owner.tenantId,owner.userId,character];
   if(cursorDate!==null)params.push(cursorDate,cursorId);
   const rows=await pool.query(
    "SELECT allocation_id,usage_receipt_id,policy_revision,contribution_atomic,creator_share_atomic,state,"+
    "creator_wallet_ledger_ref,created_at FROM creator.earning_allocations "+
    "WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3"+clause+
    " ORDER BY created_at DESC,allocation_id DESC LIMIT 26",params);
   const summary=await pool.query(
    "SELECT coalesce(sum(CASE WHEN state='settled' THEN creator_share_atomic::numeric ELSE 0 END),0)::text AS settled_atomic,"+
    " coalesce(sum(CASE WHEN state='pending' THEN creator_share_atomic::numeric ELSE 0 END),0)::text AS pending_atomic,"+
    " coalesce(sum(CASE WHEN state='reversed' THEN creator_share_atomic::numeric ELSE 0 END),0)::text AS reversed_atomic"+
    " FROM creator.earning_allocations WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3",
    [owner.tenantId,owner.userId,character]);
   const total=summary.rows[0]??{};
   for(const key of ["settled_atomic","pending_atomic","reversed_atomic"]){
    if(typeof total[key]!=="string"||!/^(0|[1-9][0-9]*)$/u.test(total[key]))
     throw new CreatorAgentError("creator.earnings_unavailable",503);
   }
   const items=rows.rows.slice(0,25).map(row=>{
    const state=row.state;
    if(state!=="settled"&&state!=="pending"&&state!=="reversed"||
      typeof row.allocation_id!=="string"||typeof row.usage_receipt_id!=="string"||
      typeof row.creator_share_atomic!=="string"||!/^(0|[1-9][0-9]*)$/u.test(row.creator_share_atomic))
     throw new CreatorAgentError("creator.earnings_unavailable",503);
    if(state==="settled" && typeof row.creator_wallet_ledger_ref!=="string")
     throw new CreatorAgentError("creator.earnings_unavailable",503);
    const timestamp=row.created_at instanceof Date?row.created_at.toISOString():new Date(String(row.created_at)).toISOString();
    return {allocationId:row.allocation_id,receiptId:row.usage_receipt_id,
      amountAtomic:row.creator_share_atomic,state,createdAt:timestamp,
      walletLedgerRef:state==="settled"?row.creator_wallet_ledger_ref:null};
   });
   const last=items[items.length-1];
   return {asset:"MSNW" as const,atomicDecimals:6,settledAtomic:total.settled_atomic,
     pendingAtomic:total.pending_atomic,reversedAtomic:total.reversed_atomic,
     items,nextCursor:rows.rows.length>25&&last?
       Buffer.from(JSON.stringify([last.createdAt,last.allocationId]),"utf8").toString("base64url"):null};
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
