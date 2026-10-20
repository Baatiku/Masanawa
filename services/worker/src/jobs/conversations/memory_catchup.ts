import {parseCanonicalId} from "@masanawa/contracts";
import {createPostgresConsumerMasanaMemoryStore, type Pool, type ConsumerMasanaMemoryStore} from "@masanawa/postgres";

/**
 * Durable completion reconciliation. Gateway tries to extract only AFTER a
 * completed reply; Worker recovers from interruption between those commits.
 * Never reruns inference, never spends, never reads pre-rollout private turns.
 */
export function createConsumerMemoryCatchup(pool:Pool){
  const store=createPostgresConsumerMasanaMemoryStore(pool);
  return Object.freeze({
    async runOnce():Promise<{scanned:number;remembered:number}>{
      const batch=await pool.query<{
        tenant_id:string;user_id:string;character_id:string;
        relationship_id:string;request_id:string;user_text:string;
      }>([
        "SELECT t.tenant_id,t.user_id,t.character_id,t.relationship_id,t.request_id,t.user_text",
        "FROM agents.mobile_turn_commands t CROSS JOIN memory.consumer_rollout r",
        "WHERE r.singleton=true AND t.state='completed' AND t.created_at>=r.started_at",
        "AND char_length(t.user_text) BETWEEN 3 AND 4000",
        "AND NOT EXISTS(SELECT 1 FROM memory.consumer_ingests i",
        "  WHERE i.tenant_id=t.tenant_id AND i.user_id=t.user_id",
        "  AND i.character_id=t.character_id AND i.relationship_id=t.relationship_id",
        "  AND i.request_id=t.request_id)",
        "AND NOT EXISTS(SELECT 1 FROM memory.consumer_turn_scans s",
        "  WHERE s.tenant_id=t.tenant_id AND s.user_id=t.user_id",
        "  AND s.character_id=t.character_id AND s.relationship_id=t.relationship_id",
        "  AND s.request_id=t.request_id)",
        "ORDER BY t.created_at,t.request_id LIMIT 40",
      ].join(" "));
      let remembered=0;
      for(const row of batch.rows){
        const scope:Parameters<ConsumerMasanaMemoryStore["ingest"]>[0]={
          tenantId:parseCanonicalId("tenant",row.tenant_id),
          userId:parseCanonicalId("user",row.user_id),
          characterId:parseCanonicalId("character",row.character_id),
          relationshipId:parseCanonicalId("relationship",row.relationship_id),
        };
        if(await store.ingest(scope,{requestId:parseCanonicalId("request",row.request_id),text:row.user_text}))remembered++;
      }
      return {scanned:batch.rows.length,remembered};
    },
  });
}
