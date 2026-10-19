import {createHash} from "node:crypto";
import {parseCanonicalId} from "@masanawa/contracts";
import {memoryProjectionSourceContentHash} from "@masanawa/memory";
import type {Pool} from "pg";
import {withTransaction} from "../transaction.js";
import {createPostgresConsumerMasanaMemoryStore} from "./consumer.js";
import {getMemoryRecordInScope} from "./repository.js";

/**
 * The immutable canonical reflection audit is reserved for governed sources.
 * Personal conversation consolidation is an erasable, revision-bound materialized
 * view with explicit source lineage, never a second source of user facts.
 */
const progressSql=[
  "INSERT INTO memory.consumer_reflection_progress",
  "(tenant_id,user_id,character_id,relationship_id,checked_at)",
  "VALUES($1,$2,$3,$4,clock_timestamp())",
  "ON CONFLICT (tenant_id,user_id,character_id,relationship_id)",
  "DO UPDATE SET checked_at=EXCLUDED.checked_at",
].join(" ");
export function createPostgresConsumerReflectionRuntime(pool:Pool){
  const store=createPostgresConsumerMasanaMemoryStore(pool);
  return Object.freeze({
    async runOnce(limit=12):Promise<{scanned:number;reflected:number}>{
      if(!Number.isSafeInteger(limit)||limit<1||limit>50)throw new RangeError("Invalid summary batch");
      const due=await pool.query<{
        tenant_id:string;user_id:string;character_id:string;relationship_id:string;
      }>([
        "SELECT p.tenant_id,p.user_id,p.character_id,p.relationship_id",
        "FROM memory.consumer_relationship_preferences p",
        "LEFT JOIN memory.consumer_reflection_progress progress",
        "ON progress.tenant_id=p.tenant_id AND progress.user_id=p.user_id",
        "AND progress.character_id=p.character_id AND progress.relationship_id=p.relationship_id",
        "JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id",
        "AND u.state <> 'disabled'",
        "WHERE EXISTS (SELECT 1 FROM memory.records r",
        "WHERE r.tenant_id=p.tenant_id AND r.scope_kind='relationship'",
        "AND r.scope_ref_id=p.relationship_id",
        "AND r.updated_at>COALESCE(progress.checked_at,'epoch'::timestamptz))",
        "ORDER BY progress.checked_at NULLS FIRST,p.relationship_id LIMIT $1",
      ].join(" "),[limit]);
      let reflected=0;
      for(const row of due.rows){
        const scope={
          tenantId:parseCanonicalId("tenant",row.tenant_id),
          userId:parseCanonicalId("user",row.user_id),
          characterId:parseCanonicalId("character",row.character_id),
          relationshipId:parseCanonicalId("relationship",row.relationship_id),
        };
        const entries=(await store.list(scope)).slice(0,4);
        if(entries.length>=2){
          await withTransaction(pool,async client=>{
            const snapshots=[];
            for(const entry of entries){
              const snapshot=await getMemoryRecordInScope(client,{
                tenantId:scope.tenantId,memoryRecordId:parseCanonicalId("memory-record",entry.memoryRecordId),
                scope:{kind:"relationship",relationshipId:scope.relationshipId},
              });
              if(!snapshot || snapshot.record.lifecycleState!=="active")
                throw new Error("Memory source changed during summary");
              snapshots.push(snapshot);
            }
            // Lock current revisions until summary commit, then independent
            // correction/forget also removes this projection transactionally.
            const locked=await client.query([
              "SELECT memory_record_id FROM memory.records WHERE tenant_id=$1",
              "AND memory_record_id=ANY($2::text[]) ORDER BY memory_record_id FOR SHARE",
            ].join(" "),[scope.tenantId,snapshots.map(s=>s.record.memoryRecordId)]);
            if(locked.rowCount!==snapshots.length)throw new Error("Summary sources unavailable");
            const active=await client.query(
              "SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state <> 'disabled' FOR SHARE",
              [scope.tenantId,scope.userId]);
            if(active.rowCount!==1)throw new Error("Summary account disabled");
            const sources=snapshots.map(s=>({
              memory_record_id:s.record.memoryRecordId,
              memory_revision_id:s.currentRevision.memoryRevisionId,
              content_hash:memoryProjectionSourceContentHash(s),
            }));
            const digest=createHash("sha256").update(JSON.stringify(sources)).digest("hex");
            const content=("Current user-stated continuity: "+
              snapshots.map(s=>s.currentRevision.content.slice(0,350)).join("; ")).slice(0,1900);
            await client.query([
              "INSERT INTO memory.consumer_summaries",
              "(tenant_id,user_id,character_id,relationship_id,summary_text,sources,source_digest)",
              "VALUES($1,$2,$3,$4,$5,$6::jsonb,$7)",
              "ON CONFLICT (tenant_id,user_id,character_id,relationship_id)",
              "DO UPDATE SET summary_text=EXCLUDED.summary_text,sources=EXCLUDED.sources,",
              "source_digest=EXCLUDED.source_digest,updated_at=clock_timestamp()",
            ].join(" "),[scope.tenantId,scope.userId,scope.characterId,scope.relationshipId,
              content,JSON.stringify(sources),digest]);
            await client.query(progressSql,
              [scope.tenantId,scope.userId,scope.characterId,scope.relationshipId]);
          },{isolation:"serializable"});
          reflected++;
        }else{
          await withTransaction(pool,async client=>{
            await client.query("DELETE FROM memory.consumer_summaries WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4",
              [scope.tenantId,scope.userId,scope.characterId,scope.relationshipId]);
            await client.query(progressSql,
              [scope.tenantId,scope.userId,scope.characterId,scope.relationshipId]);
          });
        }
      }
      return {scanned:due.rows.length,reflected};
    },
  });
}
