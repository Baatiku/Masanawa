import { readFileSync } from 'node:fs';
import { PGlite } from '@electric-sql/pglite';
import Fastify from 'fastify';
import { afterEach, describe, expect, it, vi } from 'vitest';
import {createP2pService, type P2pPool} from './service.js';
import {registerP2pRoutes} from './routes.js';
const orderId='aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa';
const otherOrder='bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb';
const buyer={tenantId:'tenant-a',userId:'buyer'};
const seller={tenantId:'tenant-a',userId:'seller'};
const stranger={tenantId:'tenant-a',userId:'outsider'};
const cross={tenantId:'tenant-b',userId:'buyer'};
const cleanups:Array<()=>Promise<unknown>>=[];
afterEach(async()=>{for(const cleanup of cleanups.splice(0).reverse())await cleanup();});
async function fixture(){
 const db=new PGlite();cleanups.push(()=>db.close());
 await db.exec(`CREATE SCHEMA commerce;
 CREATE TABLE commerce.msnw_p2p_orders(order_id uuid,tenant_id text,offer_id uuid,
 seller_id text,buyer_id text,amount_micro bigint DEFAULT 100,fee_micro bigint DEFAULT 1,
 fiat_kobo bigint DEFAULT 100,rate_kobo_per_msnw bigint DEFAULT 100,
 payment_deadline timestamptz DEFAULT now()+interval '30 minutes',state text DEFAULT 'awaiting_payment',
 version int DEFAULT 1,receipt_reference text,UNIQUE(tenant_id,order_id));
 CREATE TABLE commerce.msnw_p2p_events(event_id uuid,tenant_id text,order_id uuid,
 action text,to_state text,reason text,actor_id text,created_at timestamptz DEFAULT now());`);
 await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/0138_msnw_p2p_order_messages.sql',import.meta.url),'utf8'));
 await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/0139_msnw_p2p_message_moderation.sql',import.meta.url),'utf8'));
 await db.query(`INSERT INTO commerce.msnw_p2p_orders(order_id,tenant_id,seller_id,buyer_id)
 VALUES($1,'tenant-a','seller','buyer'),($2,'tenant-a','seller','someone-else')`,[orderId,otherOrder]);
 const query=async(sql:string,values?:unknown[])=>{const r=await db.query(sql,values);return {rows:r.rows as Record<string,unknown>[],rowCount:r.affectedRows??r.rows.length};};
 const pool={query,connect:async()=>({query,release(){}})} as P2pPool;
 const escrow={reserve:vi.fn(),release:vi.fn(),refund:vi.fn()};
 const service=createP2pService(pool,escrow);
 const app=Fastify();cleanups.push(()=>app.close());
 registerP2pRoutes(app,{service,authorizeOperator:async h=>{if(h!=='staff')throw Object.assign(new Error('denied'),{statusCode:403});return {tenantId:'tenant-a',userId:'staff'};},authorize:async header=>{
   const a=({buyer,seller,stranger,cross} as Record<string,typeof buyer>)[header??''];
   if(!a)throw Object.assign(new Error('revoked'),{statusCode:401});return a;
 }});
 const send=(body:unknown='Payment sent; please check your bank.',requestKey='request_0001',actor=buyer,id=orderId)=>service.sendMessage(actor,id,{body,requestKey});
 return {db,service,app,send,escrow};
}
// Cold PostgreSQL WASM startup shares CPU on hosted CI; retain all query/assertion gates.
describe('P7-T02 actual SQL and HTTP participant discussion', {timeout:30_000},()=>{
 it('persists and reads both participant roles without disclosing IDs or changing finances',async()=>{
  const t=await fixture();await t.send();await t.send('I will check the account.','request_0002',seller);
  const page=await t.service.messagesPage(buyer,orderId);
  expect(page.canSend).toBe(true);expect(page.items).toHaveLength(2);
  expect(page.items[0]).toMatchObject({body:'I will check the account.',sender_role:'seller',is_own:false});
  expect(JSON.stringify(page)).not.toMatch(/sender_id|request_key|tenant_id|seller_id|buyer_id/);
  expect((await t.db.query('SELECT state,version FROM commerce.msnw_p2p_orders WHERE order_id=$1',[orderId])).rows[0]).toMatchObject({state:'awaiting_payment',version:1});
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('recovers accepted message after lost response with the same original request',async()=>{
  const t=await fixture();const saved=await t.send();
  expect(await t.service.messageByRequest(buyer,orderId,'request_0001')).toMatchObject({message_id:saved.message_id});
  expect(await t.send()).toMatchObject({message_id:saved.message_id,replay:true});
  await expect(t.send('Different content')).rejects.toMatchObject({code:'p2p.idempotency_conflict'});
  expect((await t.service.messagesPage(buyer,orderId)).items).toHaveLength(1);
 });
 it('denies another participant, order, tenant and revoked session on reads, status and writes',async()=>{
  const t=await fixture();await t.send();
  for(const actor of [stranger,cross]){
   await expect(t.service.messagesPage(actor,orderId)).rejects.toMatchObject({status:404});
   await expect(t.service.messageByRequest(actor,orderId,'request_0001')).rejects.toMatchObject({status:404});
   await expect(t.send('Hello','request_0002',actor)).rejects.toMatchObject({status:404});
  }
  await expect(t.service.messagesPage(buyer,otherOrder)).rejects.toMatchObject({status:404});
  await expect(t.service.messageByRequest(seller,orderId,'request_0001')).rejects.toMatchObject({status:404});
  for(const authorization of [undefined,'revoked','stranger','cross']){
   const response=await t.app.inject({url:`/v1/wallet/msnw/p2p/orders/${orderId}/messages`,headers:authorization?{authorization}:{}});
   expect(response.statusCode).toBe(authorization==='stranger'||authorization==='cross'?404:401);
   expect(response.headers['cache-control']).toBe('no-store');
  }
 });
 it('retains terminal history and accepted replay but refuses new sends',async()=>{
  const t=await fixture();const first=await t.send();
  for(const state of ['completed','cancelled','expired','release_pending','refund_pending']){
   await t.db.query('UPDATE commerce.msnw_p2p_orders SET state=$1 WHERE order_id=$2',[state,orderId]);
   expect((await t.service.messagesPage(buyer,orderId)).canSend).toBe(false);
   expect(await t.send()).toMatchObject({message_id:first.message_id,replay:true});
   await expect(t.send('New message','request_0002')).rejects.toMatchObject({code:'p2p.discussion_read_only'});
  }
 });
 it('allows disputed conversation without treating payment claims as financial authority',async()=>{
  const t=await fixture();await t.db.query("UPDATE commerce.msnw_p2p_orders SET state='disputed'");
  await t.send('I paid. Release the asset.');expect((await t.service.messagesPage(seller,orderId)).canSend).toBe(true);
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('validates payload and rejects forged identity, missing key, controls and oversized bodies',async()=>{
  const t=await fixture();
  for(const body of [null,{},'', '   ','x'.repeat(2001),'bad\u0000text','bad\u202etext'])await expect(t.send(body)).rejects.toMatchObject({status:422});
  await expect(t.send('hello','')).rejects.toMatchObject({status:422});
  const response=await t.app.inject({method:'POST',url:`/v1/wallet/msnw/p2p/orders/${orderId}/messages`,headers:{authorization:'buyer','idempotency-key':'request_0001'},payload:{body:'hello',senderId:'seller'}});
  expect(response.statusCode).toBe(422);
 });
 it('rate limits new messages while allowing recovery of accepted requests',async()=>{
  const t=await fixture();for(let n=0;n<20;n++)await t.send(`Message ${n}`,`request_${n.toString().padStart(4,'0')}`);
  await expect(t.send('Too many','request_9999')).rejects.toMatchObject({status:429});
  expect(await t.send('Message 0','request_0000')).toMatchObject({replay:true});
  expect(await t.send('Other party can reply','seller_00001',seller)).toMatchObject({replay:false});
 });
 it('uses microsecond and UUID keyset pagination without duplicate or lost rows',async()=>{
  const t=await fixture();
  for(let n=0;n<85;n++)await t.db.query(`INSERT INTO commerce.msnw_p2p_order_messages(message_id,tenant_id,order_id,sender_id,request_key,body,created_at)
   VALUES($1,'tenant-a',$2,'buyer',$3,'older message','2026-10-01T00:00:00.123456Z')`,[`cccccccc-cccc-4ccc-8ccc-${n.toString(16).padStart(12,'0')}`,orderId,`request_${n.toString().padStart(4,'0')}`]);
  const a=await t.service.messagesPage(buyer,orderId);
  const b=await t.service.messagesPage(buyer,orderId,{cursor:a.nextCursor!});
  const c=await t.service.messagesPage(buyer,orderId,{cursor:b.nextCursor!});
  expect([a.items.length,b.items.length,c.items.length]).toEqual([40,40,5]);expect(c.nextCursor).toBeNull();
  expect(new Set([...a.items,...b.items,...c.items].map(m=>m.message_id)).size).toBe(85);
  await expect(t.service.messagesPage(buyer,orderId,{cursor:'forged'})).rejects.toMatchObject({status:422});
 });
 it('projects only safe order activity without private staff reasons or foreign events',async()=>{
  const t=await fixture();
  for(const [n,action,order,tenant] of [[1,'reserve',orderId,'tenant-a'],[2,'operator_reason',orderId,'tenant-a'],[3,'reserve',otherOrder,'tenant-a'],[4,'reserve',orderId,'tenant-b']] as const)
    await t.db.query(`INSERT INTO commerce.msnw_p2p_events(event_id,tenant_id,order_id,action,to_state,reason,actor_id)
      VALUES($1,$2,$3,$4,'awaiting_payment','PRIVATE STAFF NOTE','private-operator')`,
      [`dddddddd-dddd-4ddd-8ddd-${n.toString().padStart(12,'0')}`,tenant,order,action]);
  const page=await t.service.messagesPage(buyer,orderId);
  expect(page.events).toHaveLength(1);expect(page.events[0]).toMatchObject({action:'reserve'});
  expect(JSON.stringify(page.events)).not.toMatch(/PRIVATE|private-operator|actor_id|reason/);
 });
 it('HTTP send returns persisted identity, no-store and original replay',async()=>{
  const t=await fixture();const req={method:'POST' as const,url:`/v1/wallet/msnw/p2p/orders/${orderId}/messages`,headers:{authorization:'buyer','idempotency-key':'request_0001'},payload:{body:'Sannu, please check your bank.'}};
  const first=await t.app.inject(req);expect(first.statusCode).toBe(201);expect(first.headers['cache-control']).toBe('no-store');
  const second=await t.app.inject(req);expect(second.statusCode).toBe(200);expect(second.json().message_id).toBe(first.json().message_id);
 });
 it('deduplicates participant reports without redaction, private identity leaks or escrow changes',async()=>{
  const t=await fixture();const message=await t.send('Please send your account password.','request_0001',seller);
  const report=await t.service.reportMessage(buyer,orderId,message.message_id,{category:'scam',details:'Asking for my private credentials.'});
  expect(report).toMatchObject({state:'open',replay:false});
  expect(await t.service.reportMessage(buyer,orderId,message.message_id,{category:'other',details:'Duplicate retry after network loss.'})).toMatchObject({report_id:report.report_id,replay:true});
  expect((await t.service.messagesPage(buyer,orderId)).items[0]!.body).toContain('password');
  expect(JSON.stringify(await t.service.messagesPage(seller,orderId))).not.toMatch(/reporter_id|details|private credentials/);
  expect((await t.service.messageReports({tenantId:'tenant-a',userId:'staff'})).items).toHaveLength(1);
  expect((await t.service.messageReports({tenantId:'tenant-b',userId:'staff'})).items).toHaveLength(0);
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('hides removed bodies on pages, original-request recovery and duplicate send, preserving restricted evidence',async()=>{
  const t=await fixture();const m=await t.send('My private password is secret.');
  const r=await t.service.reportMessage(seller,orderId,m.message_id,{category:'personal_information',details:'Please hide personal credentials.'});
  const actor={tenantId:'tenant-a',userId:'staff'};
  const input={decision:'remove',reason:'Contains private account credentials.',version:1};
  expect(await t.service.reviewMessageReport(actor,String(r.report_id),input)).toMatchObject({state:'removed',version:2});
  expect(await t.service.reviewMessageReport(actor,String(r.report_id),input)).toMatchObject({replay:true});
  await expect(t.service.reviewMessageReport(actor,String(r.report_id),{...input,decision:'dismiss'})).rejects.toMatchObject({code:'p2p.stale_message_review'});
  const page=await t.service.messagesPage(buyer,orderId);
  expect(page.items[0]).toMatchObject({body:''});expect(page.removed).toHaveLength(1);
  expect(await t.service.messageByRequest(buyer,orderId,'request_0001')).toMatchObject({body:''});
  expect(await t.send('My private password is secret.')).toMatchObject({body:'',replay:true});
  await expect(t.send('Changed text')).rejects.toMatchObject({code:'p2p.idempotency_conflict'});
  expect(String((await t.db.query<{body:string}>('SELECT body FROM commerce.msnw_p2p_order_messages')).rows[0]!.body)).toContain('secret');
  expect((await t.db.query('SELECT reviewed_by,review_reason FROM commerce.msnw_p2p_message_reports')).rows[0]).toMatchObject({reviewed_by:'staff',review_reason:input.reason});
  expect(JSON.stringify(page)).not.toMatch(/secret|credentials|reviewed_by|review_reason/);
  await expect(t.db.query('DELETE FROM commerce.msnw_p2p_message_reports WHERE report_id=$1',[r.report_id])).rejects.toThrow('append-only');
  await expect(t.db.query("UPDATE commerce.msnw_p2p_message_reports SET review_reason='Altered private explanation' WHERE report_id=$1",[r.report_id])).rejects.toThrow('immutable review');
  expect((await t.db.query('SELECT state,version FROM commerce.msnw_p2p_orders WHERE order_id=$1',[orderId])).rows[0]).toMatchObject({state:'awaiting_payment',version:1});
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('denies foreign/self reports, invalid review versions and customer attempts to moderate',async()=>{
  const t=await fixture();const m=await t.send();
  const input={category:'scam',details:'Please investigate this message.'};
  for(const a of [stranger,cross])await expect(t.service.reportMessage(a,orderId,m.message_id,input)).rejects.toMatchObject({status:404});
  await expect(t.service.reportMessage(buyer,orderId,m.message_id,input)).rejects.toMatchObject({status:422});
  await expect(t.service.reportMessage(seller,orderId,m.message_id,{...input,category:'forged'})).rejects.toMatchObject({status:422});
  const r=await t.service.reportMessage(seller,orderId,m.message_id,input);
  const url=`/v1/admin/msnw/p2p/message-reports/${r.report_id}/review`;
  for(const authorization of ['buyer','seller','stranger']){
    expect((await t.app.inject({url:'/v1/admin/msnw/p2p/message-reports',headers:{authorization}})).statusCode).toBe(403);
    expect((await t.app.inject({method:'POST',url,headers:{authorization},payload:{decision:'remove',reason:'private moderation reason',version:1}})).statusCode).toBe(403);
  }
  await expect(t.service.reviewMessageReport({tenantId:'tenant-b',userId:'staff'},String(r.report_id),{decision:'remove',reason:'private moderation reason',version:1})).rejects.toMatchObject({status:404});
  await expect(t.service.reviewMessageReport({tenantId:'tenant-a',userId:'staff'},String(r.report_id),{decision:'remove',reason:'private moderation reason',version:2})).rejects.toMatchObject({code:'p2p.stale_message_review'});
  const done=await t.app.inject({method:'POST',url,headers:{authorization:'staff'},payload:{decision:'dismiss',reason:'No prohibited content is present.',version:1}});
  expect(done.statusCode).toBe(200);expect(done.headers['cache-control']).toBe('no-store');
  expect((await t.service.messagesPage(buyer,orderId)).items[0]!.body).not.toBe('');
 });
 it('reports terminal-order content and includes older-page tombstones in every refresh',async()=>{
  const t=await fixture();const m=await t.send('Older private message');
  await t.db.query("UPDATE commerce.msnw_p2p_order_messages SET created_at=now()-interval '1 day'");
  await t.db.query("UPDATE commerce.msnw_p2p_orders SET state='completed'");
  const r=await t.service.reportMessage(seller,orderId,m.message_id,{category:'harassment',details:'This older message needs review.'});
  await t.service.reviewMessageReport({tenantId:'tenant-a',userId:'staff'},String(r.report_id),{decision:'remove',reason:'Abusive message confirmed by staff.',version:1});
  for(let n=0;n<45;n++)await t.db.query(`INSERT INTO commerce.msnw_p2p_order_messages(message_id,tenant_id,order_id,sender_id,request_key,body)
    VALUES($1,'tenant-a',$2,'seller',$3,'Newer message')`,[`eeeeeeee-eeee-4eee-8eee-${n.toString().padStart(12,'0')}`,orderId,`newer_${n.toString().padStart(4,'0')}`]);
  const page=await t.service.messagesPage(buyer,orderId);
  expect(page.items).toHaveLength(40);expect(page.items.map(x=>x.message_id)).not.toContain(m.message_id);
  expect(page.removed[0]).toMatchObject({message_id:m.message_id});expect(page.canSend).toBe(false);
 });

});
