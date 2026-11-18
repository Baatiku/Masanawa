import { describe, expect, it } from "vitest";
import { PGlite } from "@electric-sql/pglite";
import { createStaleConversationTurnRecovery } from "./stale_turns.js";

describe("stale Masana turns: actual PostgreSQL recovery semantics", () => {
  it("moves only abandoned owner-scoped pending turns to terminal failure exactly once", async () => {
    const db = new PGlite();
    try {
      await db.exec(`
        CREATE SCHEMA agents;
        CREATE TABLE agents.mobile_turn_commands (
          tenant_id text, user_id text, character_id text,
          relationship_id text, character_session_id text,
          request_id text, state text, updated_at timestamptz,
          failure_code text, PRIMARY KEY(tenant_id,request_id)
        );
        CREATE TABLE agents.mobile_shell_events (
          tenant_id text, user_id text, character_id text,
          relationship_id text, character_session_id text,
          event_type text, payload jsonb
        );
        INSERT INTO agents.mobile_turn_commands VALUES
          ('tenant_a','user_a','character_a','rel_a','session_a','request_old','pending',now()-interval '45 minutes',NULL),
          ('tenant_b','user_b','character_b','rel_b','session_b','request_old','pending',now()-interval '41 minutes',NULL),
          ('tenant_a','user_a','character_a','rel_a','session_a','request_recent','pending',now()-interval '3 minutes',NULL),
          ('tenant_a','user_a','character_a','rel_a','session_a','request_done','completed',now()-interval '50 minutes',NULL);
      `);
      const recovery = createStaleConversationTurnRecovery(db as never);
      expect(await recovery.runOnce()).toEqual({ recovered: 2 });
      expect(await recovery.runOnce()).toEqual({ recovered: 0 });
      const rows = await db.query<{tenant_id:string;request_id:string;state:string;failure_code:string|null}>(
        "SELECT tenant_id,request_id,state,failure_code FROM agents.mobile_turn_commands ORDER BY tenant_id, request_id");
      expect(rows.rows).toEqual([
        {tenant_id:'tenant_a',request_id:'request_done',state:'completed',failure_code:null},
        {tenant_id:'tenant_a',request_id:'request_old',state:'failed',failure_code:'agents.turn_interrupted'},
        {tenant_id:'tenant_a',request_id:'request_recent',state:'pending',failure_code:null},
        {tenant_id:'tenant_b',request_id:'request_old',state:'failed',failure_code:'agents.turn_interrupted'},
      ]);
      const events = await db.query<{tenant_id:string;user_id:string;request_id:string;event_type:string}>(
        "SELECT tenant_id,user_id,payload->>'requestId' AS request_id,event_type FROM agents.mobile_shell_events ORDER BY tenant_id");
      expect(events.rows).toEqual([
        {tenant_id:'tenant_a',user_id:'user_a',request_id:'request_old',event_type:'turn.failed'},
        {tenant_id:'tenant_b',user_id:'user_b',request_id:'request_old',event_type:'turn.failed'},
      ]);
    } finally {
      await db.close();
    }
  });
});
