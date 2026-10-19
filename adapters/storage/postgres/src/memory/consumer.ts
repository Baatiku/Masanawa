import { createHash } from "node:crypto";
import { createCanonicalId, parseCanonicalId, toInstant, PlatformError, type MemoryRecordId, type RequestId } from "@masanawa/contracts";
import type { CharacterSessionScope } from "@masanawa/agents";
import { extractConsumerMemory, isConsumerMemorySafeText, rankConsumerMemories } from "@masanawa/memory";
import type { Pool, PoolClient } from "pg";
import { withTransaction } from "../transaction.js";
import { appendMemoryRevision, createMemoryRecord, getMemoryRecordInScope, listMemoryRecordsByScopes } from "./repository.js";
import { cleanupTombstonedMemoryProjections } from "./cleanup.js";

export interface ConsumerMasanaMemory {
  readonly memoryRecordId:string;
  readonly content:string;
  readonly type:string;
  readonly revision:number;
  readonly lifecycleRevision:number;
  readonly updatedAt:string;
}
export interface ConsumerMasanaMemoryStore {
  preferences(scope:CharacterSessionScope):Promise<{automaticLearning:boolean}>;
  setPreferences(scope:CharacterSessionScope,enabled:boolean):Promise<{automaticLearning:boolean}>;
  recall(scope:CharacterSessionScope,query:string):Promise<readonly string[]>;
  list(scope:CharacterSessionScope):Promise<readonly ConsumerMasanaMemory[]>;
  ingest(scope:CharacterSessionScope,source:{requestId:RequestId;text:string}):Promise<boolean>;
  correct(scope:CharacterSessionScope,recordId:string,content:string,expectedRevision:number):Promise<void>;
  forget(scope:CharacterSessionScope,recordId:string,expectedLifecycleRevision:number):Promise<void>;
}
const hash=(text:string)=>createHash("sha256").update(text,"utf8").digest("hex");
const unavailable=()=>new PlatformError({
  code:"memory.consumer_unavailable",category:"not-found",
  message:"The requested memory is unavailable in this relationship",retryable:false,
});
const conflict=()=>new PlatformError({
  code:"memory.consumer_stale_revision",category:"conflict",
  message:"Memory changed; refresh before editing",retryable:true,
});

const scopeKey=(scope:CharacterSessionScope)=>({kind:"relationship" as const,relationshipId:scope.relationshipId});
const owner=(scope:CharacterSessionScope)=>[scope.tenantId,scope.userId,scope.characterId,scope.relationshipId];
/** Fences worker replays against account revocation within the same SQL transaction. */
async function assertActiveConsumerAccount(c:PoolClient,scope:CharacterSessionScope){
  const table=await c.query<{present:boolean}>("SELECT to_regclass('identity.users') IS NOT NULL AS present");
  if(!table.rows[0]?.present)return; // memory package tests can run without Identity fixtures
  const active=await c.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state <> 'disabled' FOR SHARE",
    [scope.tenantId,scope.userId]);
  if(active.rowCount!==1)throw new PlatformError({
    code:"memory.consumer_account_disabled",category:"authorization",
    message:"The account is unavailable for memory operations",retryable:false,
  });
}
async function ensurePrefs(c:PoolClient,scope:CharacterSessionScope) {
  await assertActiveConsumerAccount(c,scope);
  await c.query("INSERT INTO memory.consumer_relationship_preferences(tenant_id,user_id,character_id,relationship_id) VALUES($1,$2,$3,$4) ON CONFLICT DO NOTHING",owner(scope));
}
async function lockedPrefs(c:PoolClient,scope:CharacterSessionScope):Promise<boolean>{
  await ensurePrefs(c,scope);
  const row=await c.query<{automatic_learning:boolean}>("SELECT automatic_learning FROM memory.consumer_relationship_preferences WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4 FOR UPDATE",owner(scope));
  return row.rows[0]?.automatic_learning===true;
}
async function active(c:PoolClient,scope:CharacterSessionScope){
  const rows=await listMemoryRecordsByScopes(c,{tenantId:scope.tenantId,scopes:[scopeKey(scope)],limit:500});
  const now=Date.now();
  return rows.filter(row=>{
    const v=row.currentRevision;
    return typeof v.payload["consumerKey"] === "string" &&
      (v.expiresAt===null||Date.parse(v.expiresAt)>now)
      &&(v.validFrom===null||Date.parse(v.validFrom)<=now)
      &&(v.validTo===null||Date.parse(v.validTo)>now);
  });
}
async function invalidate(c:PoolClient,scope:CharacterSessionScope,id:MemoryRecordId){
  for(const table of ["lexical","vector","entity","temporal"] as const){
    await c.query("DELETE FROM memory."+table+"_projections WHERE tenant_id=$1 AND memory_record_id=$2",[scope.tenantId,id]);
  }
}
export function createPostgresConsumerMasanaMemoryStore(pool:Pool):ConsumerMasanaMemoryStore{
  const store:ConsumerMasanaMemoryStore = {
    async preferences(scope){
      return withTransaction(pool,async c=>({automaticLearning:await lockedPrefs(c,scope)}));
    },
    async setPreferences(scope,enabled){
      if(typeof enabled!=="boolean")throw new TypeError("Learning preference must be boolean");
      return withTransaction(pool,async c=>{
        await lockedPrefs(c,scope);
        await c.query("UPDATE memory.consumer_relationship_preferences SET automatic_learning=$5,updated_at=now() WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4",
          [...owner(scope),enabled]);
        return {automaticLearning:enabled};
      });
    },
    async recall(scope,query){
      if(typeof query!=="string"||query.length>2000)throw new RangeError("Memory query is too long");
      return withTransaction(pool,async c=>{
        const rows=await active(c,scope);
        const entries=rows.map(r=>({content:r.currentRevision.content,updatedAt:r.record.updatedAt}));
        return Object.freeze(rankConsumerMemories(entries,query,6).map(x=>x.content));
      },{isolation:"repeatable read",readOnly:true});
    },
    async list(scope){
      return withTransaction(pool,async c=>Object.freeze((await active(c,scope)).map(r=>({
        memoryRecordId:r.record.memoryRecordId,content:r.currentRevision.content,type:r.record.memoryType,
        revision:r.record.revision,lifecycleRevision:r.record.lifecycleRevision,updatedAt:r.record.updatedAt,
      }))),{readOnly:true});
    },
    async ingest(scope,source){
      const requestId=parseCanonicalId("request",source.requestId);
      if(typeof source.text!=="string"||source.text.length>4000)return false;
      return withTransaction(pool,async c=>{
        const enabled=await lockedPrefs(c,scope);
        const candidate=extractConsumerMemory(source.text,enabled);
        if(!candidate){
          await c.query("INSERT INTO memory.consumer_turn_scans(tenant_id,user_id,character_id,relationship_id,request_id) VALUES($1,$2,$3,$4,$5) ON CONFLICT DO NOTHING",
            [...owner(scope),requestId]);
          return false;
        }
        const seen=await c.query("SELECT 1 FROM memory.consumer_ingests WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4 AND request_id=$5",
          [...owner(scope),requestId]);
        if(seen.rowCount)return false;
        const skipped=await c.query("SELECT 1 FROM memory.consumer_turn_scans WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4 AND request_id=$5",
          [...owner(scope),requestId]);
        if(skipped.rowCount)return false;
        const found=(await active(c,scope)).find(r=>r.currentRevision.payload["consumerKey"]===candidate.key);
        const at=toInstant(new Date().toISOString());
        const details={
          content:candidate.content,payload:{consumerKey:candidate.key,consumerVersion:1},
          confidence:candidate.explicit?1:0.9,
          extractionMethod:candidate.explicit?"consumer-explicit-v1":"consumer-opt-in-pattern-v1",
          observedAt:at,
          evidence:[{sourceKind:"message" as const,sourceReference:requestId,sourceContentHash:hash(source.text),observedAt:at}],
        };
        const recordId=found?.record.memoryRecordId??createCanonicalId("memory-record");
        if(found){
          if(found.currentRevision.content!==candidate.content){
            await appendMemoryRevision(c,{...details,tenantId:scope.tenantId,memoryRecordId:recordId,
              memoryRevisionId:createCanonicalId("memory-revision"),expectedRevision:found.record.revision,updatedAt:at});
            await invalidate(c,scope,recordId);
          }
        }else{
          await createMemoryRecord(c,{...details,tenantId:scope.tenantId,memoryRecordId:recordId,
            memoryRevisionId:createCanonicalId("memory-revision"),memoryType:candidate.type,scope:scopeKey(scope),createdAt:at});
        }
        await c.query("INSERT INTO memory.consumer_ingests(tenant_id,user_id,character_id,relationship_id,request_id,memory_record_id) VALUES($1,$2,$3,$4,$5,$6)",
          [...owner(scope),requestId,recordId]);
        return true;
      });
    },
    async correct(scope,recordId,content,expectedRevision){
      const id=parseCanonicalId("memory-record",recordId);
      if(!isConsumerMemorySafeText(content))throw new RangeError("Invalid or unsafe correction");
      if(!Number.isSafeInteger(expectedRevision)||expectedRevision<1)throw new RangeError("Invalid revision");
      await withTransaction(pool,async c=>{
        await lockedPrefs(c,scope);
        const existing=await getMemoryRecordInScope(c,{tenantId:scope.tenantId,memoryRecordId:id,scope:scopeKey(scope)});
        if(!existing||existing.record.lifecycleState!=="active"||!("consumerKey" in existing.currentRevision.payload))throw unavailable();
        const at=toInstant(new Date().toISOString());
        await appendMemoryRevision(c,{tenantId:scope.tenantId,memoryRecordId:id,
          memoryRevisionId:createCanonicalId("memory-revision"),expectedRevision,updatedAt:at,
          content:content.trim(),payload:existing.currentRevision.payload,confidence:1,
          extractionMethod:"consumer-correction-v1",observedAt:at,
          evidence:[{sourceKind:"operator" as const,sourceReference:"user:"+scope.userId,sourceContentHash:hash(content.trim()),observedAt:at}]});
        await invalidate(c,scope,id);
        await c.query("INSERT INTO memory.consumer_changes(tenant_id,change_id,user_id,character_id,relationship_id,memory_record_id,action) VALUES($1,$2,$3,$4,$5,$6,'correct')",
          [scope.tenantId,createCanonicalId("event"),scope.userId,scope.characterId,scope.relationshipId,id]);
      });
    },
    async forget(scope,recordId,expectedLifecycleRevision){
      const id=parseCanonicalId("memory-record",recordId);
      if(!Number.isSafeInteger(expectedLifecycleRevision)||expectedLifecycleRevision<1)throw new RangeError("Invalid lifecycle revision");
      await withTransaction(pool,async c=>{
        await lockedPrefs(c,scope);
        const existing=await getMemoryRecordInScope(c,{tenantId:scope.tenantId,memoryRecordId:id,scope:scopeKey(scope)});
        if(!existing||existing.record.lifecycleState!=="active"||!("consumerKey" in existing.currentRevision.payload))throw unavailable();
        const updated=await c.query("UPDATE memory.records SET lifecycle_state='tombstoned',lifecycle_revision=lifecycle_revision+1,updated_at=now() WHERE tenant_id=$1 AND memory_record_id=$2 AND scope_kind='relationship' AND scope_ref_id=$3 AND lifecycle_state='active' AND lifecycle_revision=$4",
          [scope.tenantId,id,scope.relationshipId,expectedLifecycleRevision]);
        if(updated.rowCount!==1)throw conflict();
        await cleanupTombstonedMemoryProjections(c,scope.tenantId,id);
        await c.query("INSERT INTO memory.consumer_changes(tenant_id,change_id,user_id,character_id,relationship_id,memory_record_id,action) VALUES($1,$2,$3,$4,$5,$6,'forget')",
          [scope.tenantId,createCanonicalId("event"),scope.userId,scope.characterId,scope.relationshipId,id]);
      });
    },
  };
  return Object.freeze(store);
}

/**
 * Called only after canonical account disablement and lawful financial-clearance
 * checks. Removes derived consumer memory, evidence, and ingestion receipts in
 * the same privacy-worker transaction. Shared/public Memory is not touched.
 */
export async function purgeConsumerMasanaMemoriesForAccount(
  client:PoolClient,tenantId:string,userId:string,
):Promise<number>{
  const owned=await client.query<{memory_record_id:string}>(
    "SELECT DISTINCT r.memory_record_id FROM memory.records r "+
    "JOIN memory.revisions v ON v.tenant_id=r.tenant_id AND v.memory_record_id=r.memory_record_id AND v.revision_number=r.revision "+
    "JOIN memory.consumer_relationship_preferences c ON c.tenant_id=r.tenant_id AND c.relationship_id=r.scope_ref_id "+
    "WHERE r.tenant_id=$1 AND c.user_id=$2 AND r.scope_kind='relationship' AND v.payload ? 'consumerKey'",
    [tenantId,userId]);
  for(const row of owned.rows){
    const id=row.memory_record_id;
    for(const table of ["lexical","vector","entity","temporal"] as const) {
      await client.query("DELETE FROM memory."+table+"_projections WHERE tenant_id=$1 AND memory_record_id=$2",[tenantId,id]);
    }
    await client.query("DELETE FROM memory.consumer_ingests WHERE tenant_id=$1 AND memory_record_id=$2",[tenantId,id]);
    await client.query("DELETE FROM memory.evidence WHERE tenant_id=$1 AND memory_revision_id IN (SELECT memory_revision_id FROM memory.revisions WHERE tenant_id=$1 AND memory_record_id=$2)",[tenantId,id]);
    await client.query("DELETE FROM memory.revisions WHERE tenant_id=$1 AND memory_record_id=$2",[tenantId,id]);
    await client.query("DELETE FROM memory.records WHERE tenant_id=$1 AND memory_record_id=$2 AND scope_kind='relationship'",[tenantId,id]);
  }
  await client.query("DELETE FROM memory.consumer_turn_scans WHERE tenant_id=$1 AND user_id=$2",[tenantId,userId]);
  await client.query("DELETE FROM memory.consumer_changes WHERE tenant_id=$1 AND user_id=$2",[tenantId,userId]);
  await client.query("DELETE FROM memory.consumer_relationship_preferences WHERE tenant_id=$1 AND user_id=$2",[tenantId,userId]);
  return owned.rows.length;
}
