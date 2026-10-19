import { createHash } from "node:crypto";
import type { Pool, PoolClient } from "@masanawa/postgres";
import { purgeConsumerMasanaMemoriesForAccount } from "@masanawa/postgres";

/** Remove public personal identity only after canonical account disablement. */
export async function redactDeletedPublicProfile(
  client: Pick<PoolClient, "query">, tenantId: string, userId: string,
  alias: string, timestamp: string,
): Promise<void> {
  await client.query(`UPDATE talks.public_profiles
    SET handle=$3,display_name='Deleted account',bio='',avatar_url=NULL,
        live_talk_id=NULL,twin_public_id=NULL,twin_display_name=NULL,
        talks_json='[]'::jsonb,updated_at=GREATEST(updated_at,$4::timestamptz)
    WHERE tenant_id=$1 AND user_id=$2
      AND EXISTS(SELECT 1 FROM identity.users
        WHERE tenant_id=$1 AND user_id=$2 AND state='disabled')`,
    [tenantId,userId,'deleted_'+alias.slice(0,22),timestamp]);
}

/**
 * Fail-closed financial preflight. All owner-associated commerce tables are
 * discovered from the schema, so a new payment rail is included automatically.
 * ANY financial history requires independent lawful-retention and settlement
 * review; balances or immutable receipts are never deleted by this worker.
 */
export async function hasFinancialFootprint(
  client: Pick<PoolClient,"query">, tenantId: string, userId: string,
): Promise<boolean> {
  const catalog=await client.query<{name:string;columns:string[]}>(`
    SELECT c.relname AS name, array_agg(a.attname ORDER BY a.attname) AS columns
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_namespace n ON n.oid=c.relnamespace
      JOIN pg_catalog.pg_attribute a ON a.attrelid=c.oid AND a.attnum>0
       AND NOT a.attisdropped
     WHERE n.nspname='commerce' AND c.relkind IN ('r','p')
     GROUP BY c.relname
     HAVING bool_or(a.attname='tenant_id')
     ORDER BY c.relname`);
  if (!catalog.rows.length) throw Error("account_deletion.finance_catalog_unavailable");
  const ownerNames=new Set(["user_id","owner_id","seller_id","buyer_id",
    "payer_id","payee_id","actor_user_id","recipient_user_id",
    "sender_user_id","customer_user_id","beneficiary_user_id"]);
  const quote=(value:string)=>`"${value.replaceAll('"','""')}"`;
  for (const table of catalog.rows) {
    const owners=table.columns.filter(column=>
      ownerNames.has(column)||column.endsWith("_user_id"));
    if (!owners.length) continue;
    const predicates=owners.map(column=>`${quote(column)}=$2`).join(" OR ");
    const rows=await client.query(
      `SELECT 1 FROM commerce.${quote(table.name)}
        WHERE tenant_id=$1 AND (${predicates}) LIMIT 1`,[tenantId,userId]);
    if (rows.rows.length) return true;
  }
  // Play Store entitlements are financial obligations outside commerce.
  // Even an expired purchase may require lawful chargeback/retention handling.
  const subscriptions=await client.query(
    "SELECT 1 FROM rooms.entitlements WHERE tenant_id=$1 AND user_id=$2 LIMIT 1",
    [tenantId,userId],
  );
  return subscriptions.rows.length>0;
}

/** Runs inside the canonical access revoker's locked PG transaction. */
export function createAccountDeletionFinancialClearance() {
  return {async check(input:{
    client:PoolClient;tenantId:string;userId:string;requestId:string;at:string;
  }) {
    const clear=!await hasFinancialFootprint(input.client,input.tenantId,input.userId);
    const reference=createHash("sha256")
      .update(["deletion-no-finance-v1",input.tenantId,input.userId,input.requestId].join(":"))
      .digest("hex");
    return {clear,checkedAt:input.at,reference};
  }};
}

type Row={request_id:string;tenant_id:string;user_id:string;
  phase:string;revision:string|number};

async function transaction<T>(pool:Pool,fn:(client:PoolClient)=>Promise<T>):Promise<T>{
  const client=await pool.connect();
  try{
    await client.query("BEGIN");
    try{const value=await fn(client);await client.query("COMMIT");return value;}
    catch(error){await client.query("ROLLBACK").catch(()=>undefined);throw error;}
  }finally{client.release();}
}

async function advance(client:PoolClient,row:Row,
  target:"awaiting-settlement"|"processing"|"completed",now:string) {
  const revision=Number(row.revision);
  if(!Number.isSafeInteger(revision)||revision<1)
    throw Error("account_deletion.invalid_revision");
  const obligations=target==="awaiting-settlement"
    ?["financial_records_require_clearance"]:[];
  const updated=await client.query(`
    UPDATE identity.account_deletion_requests
       SET phase=$4,revision=revision+1,outstanding_obligations=$5::jsonb,
           last_error_code=NULL,updated_at=GREATEST(updated_at,$6::timestamptz)
     WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3::uuid
       AND revision=$7 AND phase=$8 RETURNING revision`,
    [row.tenant_id,row.user_id,row.request_id,target,JSON.stringify(obligations),
      now,revision,row.phase]);
  if(updated.rowCount!==1)throw Error("account_deletion.concurrent_transition");
  await client.query(`INSERT INTO identity.account_deletion_events
      (request_id,revision,phase,occurred_at) VALUES ($1::uuid,$2,$3,$4)`,
    [row.request_id,revision+1,target,now]);
  return revision+1;
}

/**
 * Only the existing canonical access revoker may disable accounts and sessions.
 * This worker then removes scoped private content in a separate atomic commit.
 * Verified requests with financial history remain on a durable settlement hold.
 */
export function createAccountDeletionPrivacyWorker(input:{
  pool:Pool;
  revoke(input:{tenantId:string;userId:string;requestId:string;
    expectedRevision:number;now:string;}):Promise<unknown>;
  now?:()=>string;
}) {
  const now=input.now??(()=>new Date().toISOString());
  async function finish(row:Row):Promise<boolean>{
    return transaction(input.pool,async client=>{
      const record=await client.query<Row>(`SELECT request_id::text,tenant_id,
           user_id,phase,revision::text FROM identity.account_deletion_requests
         WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3::uuid FOR UPDATE`,
        [row.tenant_id,row.user_id,row.request_id]);
      const current=record.rows[0];
      if(!current||current.phase!=="processing")return false;
      const receipt=await client.query(`SELECT 1 FROM
          identity.account_deletion_access_revocations
          WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3::uuid`,
        [row.tenant_id,row.user_id,row.request_id]);
      if(receipt.rows.length!==1)throw Error("account_deletion.access_not_revoked");
      if(await hasFinancialFootprint(client,row.tenant_id,row.user_id))
        throw Error("account_deletion.financial_change_after_revocation");
      const scope=[row.tenant_id,row.user_id];
      const consumerSchema=await client.query<{present:boolean}>(
        "SELECT to_regclass('memory.consumer_relationship_preferences') IS NOT NULL AS present");
      if(consumerSchema.rows[0]?.present) {
        await purgeConsumerMasanaMemoriesForAccount(client,row.tenant_id,row.user_id);
      }
      for(const sql of [
        "DELETE FROM agents.private_chat_media WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM masana.fan_hidden_turns WHERE tenant_id=$1 AND fan_user_id=$2",
        "DELETE FROM masana.fan_chat_preferences WHERE tenant_id=$1 AND fan_user_id=$2",
        // Deleting a follow also cascades to its per-fan mute preferences.
        "DELETE FROM masana.follows WHERE tenant_id=$1 AND fan_user_id=$2",
        "DELETE FROM feed.likes WHERE tenant_id=$1 AND fan_id=$2",
        "DELETE FROM feed.saves WHERE tenant_id=$1 AND fan_id=$2",
        "DELETE FROM feed.saved_videos WHERE tenant_id=$1 AND fan_id=$2",
        "DELETE FROM rooms.lesson_bookmarks WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM agents.mobile_turn_commands WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM agents.mobile_shell_events WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM agents.mobile_shell_actions WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM security.platform_auth_devices WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM security.platform_device_passwords WHERE tenant_id=$1 AND user_id=$2",
        "DELETE FROM identity.external_user_identities WHERE tenant_id=$1 AND user_id=$2",
      ])await client.query(sql,scope);
      // Preserve public thread integrity without retaining deleted users'
      // comment or question text. Do not erase other participants' replies.
      await client.query(`UPDATE feed.comments SET body='[deleted]',
          state='removed' WHERE tenant_id=$1 AND fan_id=$2`,scope);
      await client.query(`UPDATE rooms.discussion_replies SET body='[deleted]',
          moderation_state='removed' WHERE tenant_id=$1 AND user_id=$2`,scope);
      await client.query(`UPDATE rooms.questions SET body='[deleted]',
          state='rejected' WHERE tenant_id=$1 AND user_id=$2
          AND state IN ('queued','answering','needs_staff')`,scope);
      await client.query(`UPDATE rooms.questions SET body='[deleted]'
          WHERE tenant_id=$1 AND user_id=$2`,scope);
      await client.query(`UPDATE rooms.memberships SET state='left',
          updated_at=GREATEST(updated_at,$3::timestamptz)
          WHERE tenant_id=$1 AND user_id=$2 AND state='active'`,[...scope,now()]);
      await client.query(`UPDATE identity.relationships SET
          preferences='{}'::jsonb,disclosures='{}'::jsonb,
          permissions='{}'::jsonb,revision=revision+1,
          updated_at=GREATEST(updated_at,$3::timestamptz)
          WHERE tenant_id=$1 AND user_id=$2`,[...scope,now()]);
      const alias=createHash("sha256")
        .update(["redacted",...scope].join(":")).digest("hex");
      await redactDeletedPublicProfile(client,row.tenant_id,row.user_id,alias,now());
      const erased=await client.query(`UPDATE security.platform_user_profiles
           SET display_name='Deleted account',phone=NULL,email=$3,
             updated_at=GREATEST(updated_at,$4::timestamptz)
           WHERE tenant_id=$1 AND user_id=$2
             AND EXISTS(SELECT 1 FROM identity.users
               WHERE tenant_id=$1 AND user_id=$2 AND state='disabled')`,
        [...scope,`removed-${alias}@deleted.masanawa.invalid`,now()]);
      if(erased.rowCount!==1)throw Error("account_deletion.identity_not_disabled");
      await advance(client,current,"completed",now());
      return true;
    });
  }

  async function process(row:Row):Promise<"held"|"completed"|"skipped">{
    if(row.phase==="identity-verified"||row.phase==="awaiting-settlement"){
      const stage=await transaction(input.pool,async client=>{
        const selected=await client.query<Row>(`SELECT request_id::text,tenant_id,
          user_id,phase,revision::text FROM identity.account_deletion_requests
          WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3::uuid FOR UPDATE`,
          [row.tenant_id,row.user_id,row.request_id]);
        const current=selected.rows[0];
        if(!current||!["identity-verified","awaiting-settlement"].includes(current.phase))
          return {kind:"skipped" as const,revision:0};
        if(await hasFinancialFootprint(client,current.tenant_id,current.user_id)){
          if(current.phase!=="awaiting-settlement")
            await advance(client,current,"awaiting-settlement",now());
          await client.query(`UPDATE identity.account_deletion_requests
            SET last_checked_at=$4::timestamptz
            WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3::uuid`,
            [current.tenant_id,current.user_id,current.request_id,now()]);
          return {kind:"held" as const,revision:0};
        }
        const revision=await advance(client,current,"processing",now());
        return {kind:"ready" as const,revision};
      });
      if(stage.kind==="held")return "held";
      if(stage.kind==="skipped")return "skipped";
      row={...row,phase:"processing",revision:stage.revision};
    }
    if(row.phase!=="processing")return "skipped";
    await input.revoke({tenantId:row.tenant_id,userId:row.user_id,
      requestId:row.request_id,expectedRevision:Number(row.revision),now:now()});
    return await finish(row)?"completed":"skipped";
  }

  return Object.freeze({async runOnce(limit=10){
    if(!Number.isSafeInteger(limit)||limit<1||limit>50)
      throw RangeError("account_deletion.batch_limit_invalid");
    const pending=await input.pool.query<Row>(`SELECT request_id::text,
      tenant_id,user_id,phase,revision::text
      FROM identity.account_deletion_requests
      WHERE phase IN ('identity-verified','awaiting-settlement','processing')
      ORDER BY COALESCE(last_checked_at,updated_at),request_id LIMIT $1`,[limit]);
    let completed=0,held=0,failed=0;
    for(const row of pending.rows){
      try{const result=await process(row);
        if(result==="completed")completed++;
        if(result==="held")held++;
      }catch{
        // Every failure remains retryable. Never log IDs, tokens or account data.
        failed++;
        await input.pool.query(`UPDATE identity.account_deletion_requests
          SET last_checked_at=clock_timestamp()
          WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3::uuid`,
          [row.tenant_id,row.user_id,row.request_id]).catch(()=>undefined);
      }
    }
    return Object.freeze({completed,held,failed});
  }});
}
