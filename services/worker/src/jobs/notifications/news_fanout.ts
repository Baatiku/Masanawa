import type {Pool} from '@masanawa/postgres';

type PendingNewsEvent={tenant_id:string;event_id:string;last_user_id:string};
const MAX_RECIPIENTS_PER_BATCH=200;

/** Fenced, resumable per-recipient fanout of approved canonical publisher
 * publication events. Does not send directly: the existing notice outbox
 * owns retries, Firebase dispatch, category opt-outs and quiet hours.
 *
 * An event's cursor advances only in the same transaction that enqueues
 * notices, so restarts, rollbacks and multiple worker replicas are safe.
 * No device token or article content is ever persisted in this job.
 */
export function createNewsNotificationFanout(pool:Pool){
 return Object.freeze({
  async runOnce():Promise<{events:number;queued:number;remaining:boolean}>{
   const client=await pool.connect();
   let committed=false;
   try{
    await client.query('BEGIN');
    const claimed=await client.query<PendingNewsEvent>(`
      SELECT tenant_id,event_id,last_user_id
      FROM feed.news_notification_events
      WHERE finished_at IS NULL
      ORDER BY created_at,event_id
      LIMIT 1 FOR UPDATE SKIP LOCKED`);
    const event=claimed.rows[0];
    if(!event){
     await client.query('COMMIT');committed=true;
     return {events:0,queued:0,remaining:false};
    }
    // DISTINCT account IDs ensure multiple registered devices never receive
    // duplicate outbox notices. The same owner may have many installations.
    // Respect opt-outs even before the sender checks them a second time.
    const recipients=await client.query<{user_id:string}>(`
      SELECT DISTINCT r.user_id
      FROM agents.mobile_push_registrations r
      JOIN identity.users u ON u.tenant_id=r.tenant_id
       AND u.user_id=r.user_id AND u.state='active'
      LEFT JOIN agents.mobile_notification_preferences p
       ON p.tenant_id=r.tenant_id AND p.user_id=r.user_id
      WHERE r.tenant_id=$1 AND r.user_id>$2
        AND COALESCE(p.status,TRUE)
      ORDER BY r.user_id
      LIMIT $3`,[event.tenant_id,event.last_user_id,MAX_RECIPIENTS_PER_BATCH]);
    for(const recipient of recipients.rows){
     await client.query(`
       SELECT agents.queue_mobile_notice(
         $1,$2,$3,'status','New Masanawa news article',
         'news_update','masanawa://home')`,
       [event.tenant_id,recipient.user_id,event.event_id]);
    }
    const last=recipients.rows.at(-1)?.user_id??event.last_user_id;
    const done=recipients.rows.length<MAX_RECIPIENTS_PER_BATCH;
    await client.query(`
      UPDATE feed.news_notification_events
      SET last_user_id=$3,finished_at=CASE WHEN $4::boolean
        THEN clock_timestamp() ELSE finished_at END
      WHERE tenant_id=$1 AND event_id=$2 AND finished_at IS NULL`,
      [event.tenant_id,event.event_id,last,done]);
    await client.query('COMMIT');committed=true;
    return {events:1,queued:recipients.rows.length,remaining:!done};
   }catch(error){
    if(!committed)await client.query('ROLLBACK').catch(()=>undefined);
    throw error;
   }finally{client.release();}
  },
 });
}
