import {createHash} from 'node:crypto';
import type {Pool} from '@masanawa/postgres';
import type {FastifyInstance} from 'fastify';
import Type from 'typebox';

export type WhatsAppLinkPorts={
  pool:Pick<Pool,'query'>;
  authorize:(header:string|undefined)=>Promise<{tenantId:string;userId:string}>;
  beforeWrite:(header:string|undefined)=>Promise<void>;
};
const hash=(code:string)=>createHash('sha256').update(code).digest('hex');
const id=/^[0-9a-f-]{36}$/i;

export function registerWhatsAppLinkRoutes(app:FastifyInstance,ports:WhatsAppLinkPorts){
  const actor=async(header:string|undefined,sensitive=false)=>{
    const a=await ports.authorize(header);
    if(sensitive)await ports.beforeWrite(header);
    if(!a.tenantId||!a.userId)throw Error('invalid_account');
    return a;
  };
  const fail=(reply:{code:(code:number)=>unknown},error:unknown)=>{
    const code=(error as {statusCode?:number}).statusCode;
    reply.code(code===401||code===403?code:503);
    return {error:code===401||code===403?'login_required':'account_link_unavailable'};
  };
  app.get('/v1/whatsapp/link',async(q,r)=>{
    r.header('Cache-Control','private, no-store');
    try{const a=await actor(q.headers.authorization);
      const links=await ports.pool.query(`SELECT l.thread_id AS "threadId",c.display_phone AS "businessNumber",
        right(t.customer_wa_id,4) AS "customerLast4",l.linked_at AS "linkedAt",
        g.expires_at AS "readAccessExpiresAt" FROM security.whatsapp_account_links l
        JOIN security.whatsapp_threads t USING(tenant_id,thread_id)
        JOIN security.whatsapp_channels c ON c.channel_id=t.channel_id
        LEFT JOIN security.whatsapp_access_grants g ON g.tenant_id=l.tenant_id AND g.thread_id=l.thread_id
          AND g.user_id=l.user_id AND g.scope='account.read' AND g.expires_at>clock_timestamp()
        WHERE l.tenant_id=$1 AND l.user_id=$2 AND l.revoked_at IS NULL ORDER BY l.linked_at DESC`,[a.tenantId,a.userId]);
      return {links:links.rows};
    }catch(e){return fail(r,e);}
  });
  app.post('/v1/whatsapp/link',{schema:{body:Type.Object({code:Type.String({minLength:14,maxLength:32})},{additionalProperties:false})}},async(q,r)=>{
    r.header('Cache-Control','private, no-store');
    try{const a=await actor(q.headers.authorization,true);
      const code=(q.body as {code:string}).code;if(!/^[A-Za-z0-9_-]{14,32}$/.test(code))return r.code(422).send({error:'invalid_link_code'});
      const linked=await ports.pool.query(`WITH intent AS (
        SELECT tenant_id,thread_id FROM security.whatsapp_link_intents
        WHERE code_hash=$1 AND tenant_id=$2 AND consumed_at IS NULL AND expires_at>clock_timestamp() FOR UPDATE
      ), new_link AS (
        INSERT INTO security.whatsapp_account_links(tenant_id,thread_id,user_id)
        SELECT tenant_id,thread_id,$3 FROM intent
        ON CONFLICT(tenant_id,thread_id) DO UPDATE SET user_id=EXCLUDED.user_id,revoked_at=NULL,linked_at=clock_timestamp()
        WHERE security.whatsapp_account_links.revoked_at IS NOT NULL RETURNING thread_id
      ), claimed AS (
        UPDATE security.whatsapp_link_intents SET consumed_at=clock_timestamp()
        WHERE code_hash=$1 AND EXISTS(SELECT 1 FROM new_link) RETURNING code_hash
      ) SELECT thread_id AS "threadId" FROM new_link WHERE EXISTS(SELECT 1 FROM claimed)`,[hash(code),a.tenantId,a.userId]);
      if(!linked.rows.length)return r.code(409).send({error:'link_code_expired_or_already_linked'});
      await ports.pool.query(`INSERT INTO security.whatsapp_audit(tenant_id,actor_id,action,metadata)
        VALUES($1,$2,'customer.linked',$3::jsonb)`,[a.tenantId,a.userId,JSON.stringify({threadId:linked.rows[0]!.threadId})]);
      return {linked:true,threadId:linked.rows[0]!.threadId,readAccessGranted:false};
    }catch(e){return fail(r,e);}
  });
  app.post('/v1/whatsapp/link/access',{schema:{body:Type.Object({threadId:Type.String({maxLength:50})},{additionalProperties:false})}},async(q,r)=>{
    r.header('Cache-Control','private, no-store');
    try{const a=await actor(q.headers.authorization,true);const {threadId}=q.body as {threadId:string};if(!id.test(threadId))return r.code(422).send({error:'invalid_thread'});
      const grant=await ports.pool.query(`INSERT INTO security.whatsapp_access_grants(tenant_id,thread_id,user_id,scope,expires_at)
        SELECT tenant_id,thread_id,user_id,'account.read',clock_timestamp()+interval '10 minutes'
        FROM security.whatsapp_account_links WHERE tenant_id=$1 AND thread_id=$2 AND user_id=$3 AND revoked_at IS NULL
        ON CONFLICT(tenant_id,thread_id,scope) DO UPDATE SET user_id=EXCLUDED.user_id,expires_at=EXCLUDED.expires_at,granted_at=clock_timestamp()
        RETURNING expires_at AS "expiresAt"`,[a.tenantId,threadId,a.userId]);
      if(!grant.rows.length)return r.code(404).send({error:'link_not_found'});
      await ports.pool.query(`INSERT INTO security.whatsapp_audit(tenant_id,actor_id,action,metadata)
        VALUES($1,$2,'customer.read_granted',$3::jsonb)`,[a.tenantId,a.userId,JSON.stringify({threadId})]);
      return {scope:'account.read',expiresAt:grant.rows[0]!.expiresAt};
    }catch(e){return fail(r,e);}
  });
  app.post('/v1/whatsapp/link/revoke',{schema:{body:Type.Object({threadId:Type.String({maxLength:50})},{additionalProperties:false})}},async(q,r)=>{
    r.header('Cache-Control','private, no-store');
    try{const a=await actor(q.headers.authorization,true);const {threadId}=q.body as {threadId:string};if(!id.test(threadId))return r.code(422).send({error:'invalid_thread'});
      const changed=await ports.pool.query(`WITH revoked AS (
        UPDATE security.whatsapp_account_links SET revoked_at=clock_timestamp()
        WHERE tenant_id=$1 AND thread_id=$2 AND user_id=$3 AND revoked_at IS NULL RETURNING thread_id
      ), removed AS (
        DELETE FROM security.whatsapp_access_grants WHERE tenant_id=$1 AND thread_id=$2
        AND EXISTS(SELECT 1 FROM revoked) RETURNING thread_id
      ) SELECT thread_id AS "threadId" FROM revoked`,[a.tenantId,threadId,a.userId]);
      if(!changed.rows.length)return r.code(404).send({error:'link_not_found'});
      await ports.pool.query(`INSERT INTO security.whatsapp_audit(tenant_id,actor_id,action,metadata)
        VALUES($1,$2,'customer.link_revoked',$3::jsonb)`,[a.tenantId,a.userId,JSON.stringify({threadId})]);
      return {revoked:true};
    }catch(e){return fail(r,e);}
  });
}
