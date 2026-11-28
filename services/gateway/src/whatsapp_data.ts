import {createHash} from 'node:crypto';
import type {FastifyInstance} from 'fastify';
import Type from 'typebox';
import {withTransaction,type Pool} from '@masanawa/postgres';
import {projectVerifiedWholeGbBundles,quoteVerifiedWholeGb,NgnDataCatalogueError} from './ngn_data/data_catalogue.js';
import {createNgnDataPurchaseService} from './ngn_data/data_purchase_service.js';
import type {NgnDataCataloguePorts} from './ngn_data/data_catalogue_routes.js';
import type {NgnDataPurchaseRoutes} from './ngn_data/data_purchase_routes.js';
import type {WhatsAppLinkPorts} from './whatsapp_link.js';

type Input=WhatsAppLinkPorts & {pool:Pool;catalogue:NgnDataCataloguePorts;purchases:NgnDataPurchaseRoutes};
type Customer={tenantId:string;userId:string};
const uuid=Type.String({pattern:'^[0-9a-fA-F-]{36}$',minLength:36,maxLength:36});
const purchaseBody=Type.Object({threadId:uuid,bundleId:Type.String({minLength:3,maxLength:260}),
  version:Type.String({minLength:1,maxLength:128}),recipientPhone:Type.String({minLength:7,maxLength:24}),
  idempotencyKey:Type.String({minLength:16,maxLength:100}),reviewedCostKobo:Type.Integer({minimum:1,maximum:2_000_000})},
  {additionalProperties:false});
const messageKey=(a:Customer,key:string)=>'wa_data_'+createHash('sha256').update(`${a.tenantId}:${a.userId}:${key}`).digest('hex');

/** A real, signed-in customer authorizes each purchase. The bot cannot debit a wallet. */
export function registerWhatsAppDataRoutes(app:FastifyInstance,input:Input){
  const service=createNgnDataPurchaseService(input.purchases.service);
  const actor=async(header:string|undefined,write=false)=>{
    const a=await input.authorize(header);
    if(write)await input.beforeWrite(header);
    if(!a.tenantId||!a.userId)throw Error('login_required');
    return a;
  };
  const linked=async(a:Customer,threadId:string,permission:'data_catalog'|'data_purchase'|'transaction_status'|'receipts')=>{
    const r=await input.pool.query(`SELECT t.thread_id FROM security.whatsapp_account_links l
      JOIN security.whatsapp_threads t USING(tenant_id,thread_id)
      JOIN security.whatsapp_channels c USING(tenant_id,channel_id)
      JOIN security.whatsapp_assistants s USING(tenant_id,channel_id)
      WHERE l.tenant_id=$1 AND l.thread_id=$2 AND l.user_id=$3 AND l.revoked_at IS NULL
        AND c.enabled AND c.state='connected' AND s.role_level>=4 AND s.permissions ? $4`,
      [a.tenantId,threadId,a.userId,permission]);
    if(!r.rows.length)throw Error('whatsapp_permission_denied');
  };
  const deny=(e:unknown,r:{code:(c:number)=>unknown})=>{
    const status=(e as {statusCode?:number}).statusCode;
    if(status===401||status===403){r.code(status);return {error:'login_required'};}
    const message=e instanceof Error?e.message:'unavailable';
    if(message==='whatsapp_permission_denied'){r.code(403);return {error:message};}
    if(message==='daily_whatsapp_spend_limit'||message==='purchase_conflict'||message==='price_changed'){r.code(409);return {error:message};}
    if(message==='invalid_reviewed_price'||message==='invalid_phone'||message==='invalid_idempotency'){r.code(422);return {error:message};}
    if(e instanceof NgnDataCatalogueError){r.code(e.code==='bundle_unavailable'?404:409);return {error:e.code};}
    if(message.includes('insufficient')){r.code(409);return {error:'insufficient_balance'};}
    r.code(503);return {error:'whatsapp_data_unavailable'};
  };
  const queueReceipt=async(a:Customer,b:{threadId:string;bundleId:string;recipientPhone:string;
    reviewedCostKobo:number;idempotencyKey:string},operationId:string)=>{
    await input.pool.query(`WITH verified AS (
      SELECT t.tenant_id,t.thread_id,t.channel_id FROM security.whatsapp_account_links l
      JOIN security.whatsapp_threads t USING(tenant_id,thread_id)
      JOIN security.whatsapp_channels c USING(tenant_id,channel_id)
      JOIN security.whatsapp_assistants s USING(tenant_id,channel_id)
      WHERE l.tenant_id=$1 AND l.user_id=$2 AND l.thread_id=$3 AND l.revoked_at IS NULL
        AND c.enabled AND c.state='connected' AND s.role_level>=4 AND s.permissions ? 'receipts'
    ), outbound AS (
      INSERT INTO security.whatsapp_messages(tenant_id,thread_id,channel_id,direction,kind,body,delivery_state,operator_request_id)
      SELECT tenant_id,thread_id,channel_id,'outbound','text',$4,'queued',$5 FROM verified
      ON CONFLICT(operator_request_id) DO NOTHING RETURNING message_id,tenant_id,channel_id
    ) INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
      SELECT tenant_id,channel_id,message_id,'send' FROM outbound ON CONFLICT DO NOTHING`,
      [a.tenantId,a.userId,b.threadId,
        `Citizenvoice Buy Data receipt: ${b.bundleId} for ••••${b.recipientPhone.slice(-4)}. Amount: ₦${(b.reviewedCostKobo/100).toFixed(2)}. Status: delivered. Reference: ${operationId}.`,
        messageKey(a,b.idempotencyKey)]);
  };
  app.get('/v1/whatsapp/link/data/bundles',{schema:{querystring:Type.Object({threadId:uuid},{additionalProperties:false})}},async(q,r)=>{
    r.header('cache-control','private, no-store');
    try{
      const a=await actor(q.headers.authorization);const {threadId}=q.query as {threadId:string};
      await linked(a,threadId,'data_catalog');
      const approved=await input.catalogue.approved();const live=await input.catalogue.liveItems(approved);
      return {bundles:projectVerifiedWholeGbBundles(approved,live)};
    }catch(e){return deny(e,r);}
  });
  app.post('/v1/whatsapp/link/data/quote',{schema:{body:Type.Object({threadId:uuid,
    bundleId:Type.String({minLength:3,maxLength:260}),version:Type.String({minLength:1,maxLength:128}),
    recipientPhone:Type.String({minLength:7,maxLength:24})},{additionalProperties:false})}},async(q,r)=>{
    r.header('cache-control','private, no-store');
    try{
      const a=await actor(q.headers.authorization);const b=q.body as {threadId:string;bundleId:string;version:string;recipientPhone:string};
      await linked(a,b.threadId,'data_catalog');
      const approved=await input.catalogue.approved();const live=await input.catalogue.liveItems(approved);
      const quote=quoteVerifiedWholeGb({approved,liveItems:live,itemId:b.bundleId,version:b.version,recipientPhone:b.recipientPhone});
      if(quote.costKobo>2_000_000){r.code(422);return {error:'whatsapp_purchase_per_order_limit'};}
      return {previewOnly:true,quote};
    }catch(e){return deny(e,r);}
  });
  app.post('/v1/whatsapp/link/data/buy',{schema:{body:purchaseBody}},async(q,r)=>{
    r.header('cache-control','private, no-store');
    try{
      const a=await actor(q.headers.authorization,true);
      const b=q.body as {threadId:string;bundleId:string;version:string;recipientPhone:string;idempotencyKey:string;reviewedCostKobo:number};
      await linked(a,b.threadId,'data_purchase');
      // Atomically serialize budget admissions per real account. A retry with the
      // same key is not counted twice; changed intent with the same key is rejected.
      await withTransaction(input.pool,async client=>{
        await client.query(`SELECT pg_advisory_xact_lock(hashtextextended($1,0))`,[`${a.tenantId}:${a.userId}:whatsapp_data`]);
        const previous=await client.query(`SELECT bundle_id,version,recipient_phone,reviewed_cost_kobo::int AS cost,thread_id
          FROM security.whatsapp_purchase_approvals WHERE tenant_id=$1 AND user_id=$2 AND idempotency_key=$3`,
          [a.tenantId,a.userId,b.idempotencyKey]);
        if(previous.rows.length){
          const p=previous.rows[0]!;
          if(p.bundle_id!==b.bundleId||p.version!==b.version||p.recipient_phone!==b.recipientPhone||
            p.cost!==b.reviewedCostKobo||p.thread_id!==b.threadId)throw Error('purchase_conflict');
          return;
        }
        const recent=await client.query(`SELECT coalesce(sum(reviewed_cost_kobo),0)::bigint AS total
          FROM security.whatsapp_purchase_approvals WHERE tenant_id=$1 AND user_id=$2
            AND created_at>=clock_timestamp()-interval '24 hours'`,[a.tenantId,a.userId]);
        if(BigInt(recent.rows[0]?.total??0)+BigInt(b.reviewedCostKobo)>5_000_000n)throw Error('daily_whatsapp_spend_limit');
        await client.query(`INSERT INTO security.whatsapp_purchase_approvals
          (tenant_id,user_id,thread_id,idempotency_key,bundle_id,version,recipient_phone,reviewed_cost_kobo)
          VALUES($1,$2,$3,$4,$5,$6,$7,$8)`,[a.tenantId,a.userId,b.threadId,b.idempotencyKey,b.bundleId,b.version,b.recipientPhone,b.reviewedCostKobo]);
      });
      const result=await service.purchase(a,b);
      await input.pool.query(`UPDATE security.whatsapp_purchase_approvals SET state=$4,operation_id=$5
        WHERE tenant_id=$1 AND user_id=$2 AND idempotency_key=$3`,[a.tenantId,a.userId,b.idempotencyKey,result.state,result.operationId]);
      await input.pool.query(`INSERT INTO security.whatsapp_audit(tenant_id,actor_id,action,metadata)
        VALUES($1,$2,'customer.data_purchase',$3::jsonb)`,[a.tenantId,a.userId,
        JSON.stringify({threadId:b.threadId,operationId:result.operationId,state:result.state,costKobo:b.reviewedCostKobo})]);
      if(result.state==='delivered')await queueReceipt(a,b,result.operationId);
      return {currency:'NGN',unit:'kobo',...result};
    }catch(e){return deny(e,r);}
  });
  // Recovery is account-scoped and survives a browser reload. Never expose full
  // recipient details or provider credentials in this list.
  app.get('/v1/whatsapp/link/data/recent',{schema:{querystring:Type.Object({threadId:uuid},{additionalProperties:false})}},async(q,r)=>{
    r.header('cache-control','private, no-store');
    try{
      const a=await actor(q.headers.authorization);const {threadId}=q.query as {threadId:string};
      await linked(a,threadId,'transaction_status');
      const recent=await input.pool.query(`SELECT idempotency_key AS "idempotencyKey",bundle_id AS "bundleId",
        right(recipient_phone,4) AS "recipientLast4",reviewed_cost_kobo::int AS "costKobo",
        operation_id AS "operationId",state,created_at AS "createdAt"
        FROM security.whatsapp_purchase_approvals
        WHERE tenant_id=$1 AND user_id=$2 AND thread_id=$3
        ORDER BY (state IN ('requested','pending')) DESC,created_at DESC LIMIT 30`,[a.tenantId,a.userId,threadId]);
      return {purchases:recent.rows};
    }catch(e){return deny(e,r);}
  });
  app.get('/v1/whatsapp/link/data/status',{schema:{querystring:Type.Object({threadId:uuid,
    idempotencyKey:Type.String({minLength:16,maxLength:100})},{additionalProperties:false})}},async(q,r)=>{
    r.header('cache-control','private, no-store');
    try{
      const a=await actor(q.headers.authorization);const {threadId,idempotencyKey}=q.query as {threadId:string;idempotencyKey:string};
      await linked(a,threadId,'transaction_status');
      const approval=await input.pool.query(`SELECT operation_id,reviewed_cost_kobo,bundle_id,recipient_phone FROM security.whatsapp_purchase_approvals
        WHERE tenant_id=$1 AND user_id=$2 AND thread_id=$3 AND idempotency_key=$4`,[a.tenantId,a.userId,threadId,idempotencyKey]);
      const record=approval.rows[0];
      if(!record){r.code(404);return {error:'purchase_not_found'};}
      let operationId=record.operation_id as string|undefined;
      if(!operationId){
        // Gateway may have stopped after canonical admission but before updating
        // the WhatsApp approval. Recover by the original account-scoped key,
        // never dispatch a new provider purchase from a status request.
        try{operationId=(await service.readOriginal(a,idempotencyKey)).operationId;}
        catch(e){
          if(e instanceof Error&&e.message==='data_redemption_not_found')
            return {operationId:null,state:'requested',costKobo:Number(record.reviewed_cost_kobo)};
          throw e;
        }
      }
      const result=await service.reconcile(a,operationId);
      await input.pool.query(`UPDATE security.whatsapp_purchase_approvals SET state=$5,operation_id=$6
        WHERE tenant_id=$1 AND user_id=$2 AND thread_id=$3 AND idempotency_key=$4`,[a.tenantId,a.userId,threadId,idempotencyKey,result.state,operationId]);
      if(result.state==='delivered')await queueReceipt(a,{threadId,idempotencyKey,
        bundleId:String(approval.rows[0]!.bundle_id),recipientPhone:String(approval.rows[0]!.recipient_phone),
        reviewedCostKobo:Number(approval.rows[0]!.reviewed_cost_kobo)},operationId);
      return {operationId,state:result.state,costKobo:Number(approval.rows[0]?.reviewed_cost_kobo)};
    }catch(e){return deny(e,r);}
  });
}
