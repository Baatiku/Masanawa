import {writeFile} from 'node:fs/promises';
import {afterAll,beforeAll,expect,it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import Fastify from 'fastify';
import {createWalletActivity,activityCsv,type WalletActivityRecord} from './wallet_activity.js';
import {registerMsnwCustodyRoutes} from './custody_routes.js';
const db=new PGlite(),owner={tenantId:'t',userId:'u'},now=()=>new Date('2026-10-17T12:00:00.000Z');
const pool={query:(s:string,a:unknown[])=>db.query(s,a),async connect(){return{query:(s:string,a:unknown[])=>db.query(s,a),release(){}};}} as any;
const service=createWalletActivity(pool,now);
beforeAll(async()=>db.exec(`CREATE SCHEMA security;
CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text);
INSERT INTO security.platform_user_profiles VALUES('t','u','Owner'),('t','v','Amina Yusuf'),('other','v','Wrong tenant');
CREATE SCHEMA commerce;
CREATE TABLE commerce.msnw_custody_operations(operation_id uuid,tenant_id text,actor_user_id text,recipient_user_id text,amount_micro numeric(78,0),created_at timestamptz);
CREATE TABLE commerce.msnw_paystack_fiat_evidence(reference text,tenant_id text,user_id text,amount_kobo bigint,created_at timestamptz);
CREATE TABLE commerce.msnw_custody_issuances(reference text,tenant_id text,user_id text,amount_micro numeric(78,0));
CREATE TABLE commerce.msnw_billing_reservations(fulfillment_reference text,tenant_id text,user_id text,reserved_micro numeric(78,0),state text,created_at timestamptz,biller_code text,item_code text,provider_reference text,customer_id text,provider_ngn_kobo bigint,total_ngn_kobo bigint);
CREATE TABLE commerce.msnw_usdt_payouts(conversion_id uuid,tenant_id text,user_id text,provider_code text,source_micro numeric(78,0),target_micro numeric(78,0),state text,created_at timestamptz,destination_address text);
CREATE TABLE commerce.msnw_p2p_orders(order_id uuid,tenant_id text,buyer_id text,seller_id text,amount_micro bigint,state text,created_at timestamptz,receipt_reference text,fee_micro bigint);
CREATE TABLE commerce.crypto_intents(request_id text,tenant_id text,user_id text,operation text,amount numeric(38,18),asset text,status text,created_at timestamptz,network text,target_asset text);
CREATE TABLE commerce.ngn_wallet_entries(entry_id text,reference text,tenant_id text,user_id text,amount_kobo bigint,direction text,reason text,created_at timestamptz);
CREATE TABLE commerce.ledger_entries(ledger_entry_id text,tenant_id text,debit_user_id text,credit_user_id text,debit_kind text,credit_kind text,reason text,amount_credits bigint,created_at timestamptz,fulfillment_id text,quote_id text);
INSERT INTO commerce.msnw_custody_operations VALUES
('00000000-0000-0000-0000-000000000001','t','u','v',1000001,'2026-10-17 10:00:00.000002Z'),
('00000000-0000-0000-0000-000000000002','t','v','u',2000001,'2026-10-17 10:00:00.000001Z'),
('00000000-0000-0000-0000-000000000003','t','u','v',3000001,'2026-10-17 10:00:00.000001Z'),
('00000000-0000-0000-0000-000000000004','other','u','v',9000000,'2026-10-17 11:00:00Z'),
('00000000-0000-0000-0000-000000000005','t','other','v',9000000,'2026-10-17 11:00:00Z');
INSERT INTO commerce.ngn_wallet_entries VALUES('ngn-old','ngn-reference','t','u',5000,'debit','bill-reserve','2026-10-09Z');
INSERT INTO commerce.msnw_paystack_fiat_evidence VALUES('bank','t','u',12345,'2026-10-16Z');
INSERT INTO commerce.msnw_custody_issuances VALUES('bank','t','u',45000000);
INSERT INTO commerce.msnw_billing_reservations VALUES('bill','t','u',5000000,'fulfilled','2026-10-15Z','mobile','data',NULL,'customer',10000,10500);
INSERT INTO commerce.msnw_usdt_payouts VALUES('10000000-0000-0000-0000-000000000001','t','u','USDTTRC20',1000000,900000,'processing','2026-10-14Z','destination');
INSERT INTO commerce.msnw_p2p_orders VALUES('20000000-0000-0000-0000-000000000001','t','u','v',8000000,'completed','2026-10-13Z','receipt',50000);
INSERT INTO commerce.crypto_intents VALUES('crypto','t','u','deposit',0.000000000000000001,'USDT','succeeded','2026-10-12Z','tron',NULL);
INSERT INTO commerce.ledger_entries VALUES('old-call','t','u','platform','customer-credit','platform-revenue','voice-completed',20,'2026-10-11Z',NULL,NULL),
('old-room','t','u','u','customer-credit','available-earnings','room-membership',30,'2026-10-10Z',NULL,NULL);`));
afterAll(async()=>db.close());
it('runs eight-source SQL with exact amounts, original denomination and owner isolation',async()=>{
 const p=await service.list(owner,{});expect(p.items).toHaveLength(11);expect(p.items.some(r=>r.amountAtomic==='9000000')).toBe(false);
 expect(p.items.find(r=>r.category==='Funding')).toMatchObject({asset:'NGN',amountAtomic:'12345',decimals:2,status:'completed',details:{'MSNW credited':'45 MSNW'}});
 expect(p.items.find(r=>r.category==='Crypto')).toMatchObject({decimals:18,asset:'USDT'});
 expect(p.items.find(r=>r.category==='Rooms')).toMatchObject({incoming:false,asset:'Cr (historical)'});
});
it('paginates microseconds and ties without skipping or duplication',async()=>{
 const full=await service.list(owner,{category:'Transfers'}),seen:string[]=[];let cursor:string|null=null;
 do{const p=await service.list(owner,{category:'Transfers',limit:1,...(cursor?{cursor}:{})});seen.push(...p.items.map(r=>r.id));cursor=p.nextCursor;}while(cursor);
 expect(seen).toEqual(full.items.map(r=>r.id));expect(new Set(seen).size).toBe(3);
});
it('binds cursor to account/filter and validates date, limit and allowed query keys',async()=>{
 const p=await service.list(owner,{limit:1});
 await expect(service.list({...owner,userId:'v'},{cursor:p.nextCursor})).rejects.toThrow('wallet.cursor_invalid');
 await expect(service.list(owner,{cursor:p.nextCursor,category:'Bills'})).rejects.toThrow('wallet.cursor_invalid');
 for(const q of [{from:'2026-02-31'},{from:'2026-10-18',to:'2026-10-17'},{limit:101},{tenantId:'other'}])await expect(service.list(owner,q)).rejects.toThrow();
 expect((await service.list(owner,{status:'Pending'})).items.map(r=>r.category)).toEqual(['Conversions']);
 expect((await service.list(owner,{search:'bank',from:'2026-10-16',to:'2026-10-16'})).items).toHaveLength(1);
});
it('exports all filtered records rather than only a loaded page',async()=>{
 const p=await service.list(owner,{limit:1});expect(p.items).toHaveLength(1);
 const result=await service.exportCsv(owner,{});expect(result.count).toBe(11);expect(result.csv).toContain('0.000000000000000001');expect(result.csv).toContain('Cr (historical)');expect(result.csv).toContain('123.45');expect(result.csv).toContain('NGN (historical)');
 await expect(service.exportCsv(owner,{cursor:p.nextCursor})).rejects.toThrow();
});
it('escapes CSV formulas and quotes without losing precision',()=>{
 const row={id:'a',reference:'=SUM(A1)',category:'Bills',title:'a,"b"',amountAtomic:'1000001',decimals:6,asset:'MSNW',incoming:false,status:'completed',createdAt:now().toISOString(),details:{}} satisfies WalletActivityRecord;
 const csv=activityCsv([row]);expect(csv).toContain('"\'=SUM(A1)"');expect(csv).toContain('"a,""b"""');expect(csv).toContain('1.000001');
});
it('authenticates both read endpoints and prevents private-response caching',async()=>{
 const app=Fastify();registerMsnwCustodyRoutes(app,{authorizer:{async authorize({authorizationHeader}){if(authorizationHeader!=='Bearer session')throw new Error('no');return owner;}},ledger:{activity:service} as any});
 expect((await app.inject('/v1/wallet/msnw/activity')).statusCode).toBe(401);
 const r=await app.inject({url:'/v1/wallet/msnw/activity?category=Bills',headers:{authorization:'Bearer session'}});expect(r.statusCode).toBe(200);expect(r.headers['cache-control']).toBe('private, no-store');expect(r.json().items).toHaveLength(1);
 const csv=await app.inject({url:'/v1/wallet/msnw/activity/export?category=Bills',headers:{authorization:'Bearer session'}});expect(csv.statusCode).toBe(200);expect(csv.headers['content-type']).toContain('text/csv');expect(csv.headers['x-statement-rows']).toBe('1');
 await app.close();
});
it('keeps the original pagination snapshot when newer records arrive',async()=>{
 const first=await service.list(owner,{limit:1});
 await db.exec("INSERT INTO commerce.msnw_custody_operations VALUES('00000000-0000-0000-0000-000000000009','t','u','v',1,'2026-10-17 12:02:00Z')");
 const later=createWalletActivity(pool,()=>new Date('2026-10-17T12:05:00.000Z'));
 expect((await later.list(owner,{})).items[0]?.id).toContain('000000000009');
 expect((await later.list(owner,{cursor:first.nextCursor})).items.some(r=>r.id.endsWith('000000000009'))).toBe(false);
});
it('rejects oversized exports instead of silently truncating, then releases the read transaction',async()=>{
 await db.exec("INSERT INTO commerce.msnw_custody_operations SELECT md5(g::text)::uuid,'t','large','v',1,'2026-10-01Z'::timestamptz FROM generate_series(1,10001) g");
 await expect(service.exportCsv({tenantId:'t',userId:'large'},{})).rejects.toMatchObject({code:'wallet.export_range_too_large',statusCode:413});
 expect((await db.query('SELECT 1 AS ok')).rows).toEqual([{ok:1}]);
});

it('generates a paginated PDF with complete references and correct xref offsets',async()=>{
 const result=await service.exportPdf(owner,{}),text=result.pdf.toString('ascii');
 expect(text.startsWith('%PDF-1.4')).toBe(true);expect(text).toContain('Bank funding');expect(text).toContain('Reference: bank');expect(text).toContain('%%EOF');
 const xref=Number(text.match(/startxref\n(\d+)/)?.[1]);expect(text.slice(xref,xref+4)).toBe('xref');
 if(process.env.MASANAWA_PDF_TEST_OUTPUT)await writeFile(process.env.MASANAWA_PDF_TEST_OUTPUT,result.pdf);
 const app=Fastify();registerMsnwCustodyRoutes(app,{authorizer:{async authorize(){return owner;}},ledger:{activity:service} as any});
 const answer=await app.inject('/v1/wallet/msnw/activity/export?format=pdf');expect(answer.statusCode).toBe(200);expect(answer.headers['content-type']).toBe('application/pdf');expect(answer.rawPayload.subarray(0,8).toString()).toBe('%PDF-1.4');await app.close();
});

it('filters exact asset amounts/direction before pagination and binds every filter to its cursor',async()=>{
 const p=await service.list(owner,{asset:'MSNW',direction:'out',minAmount:'1',maxAmount:'5',limit:1});
 expect(p.items).toHaveLength(1);expect(p.items[0]?.incoming).toBe(false);expect(p.assets).toContain('USDT');expect(p.assets).toContain('Cr (historical)');
 const all=await service.list(owner,{asset:'MSNW',direction:'out',minAmount:'1',maxAmount:'5'});
 for(const row of all.items){expect(row.asset).toBe('MSNW');expect(row.incoming).toBe(false);expect(BigInt(row.amountAtomic)).toBeGreaterThanOrEqual(1000000n);expect(BigInt(row.amountAtomic)).toBeLessThanOrEqual(5000000n);}
 if(p.nextCursor)await expect(service.list(owner,{asset:'MSNW',direction:'in',minAmount:'1',maxAmount:'5',cursor:p.nextCursor})).rejects.toThrow('wallet.cursor_invalid');
 for(const query of [{minAmount:'1'},{asset:'MSNW',minAmount:'5',maxAmount:'1'},{asset:'MSNW',minAmount:'1e4'},{asset:'MSNW',minAmount:'-1'},{direction:'invalid'}])await expect(service.list(owner,query)).rejects.toThrow();
 const tiny=await service.list(owner,{asset:'USDT',minAmount:'0.000000000000000001',maxAmount:'0.000000000000000001'});expect(tiny.items).toHaveLength(1);
 const exported=await service.exportCsv(owner,{asset:'USDT',minAmount:'0.000000000000000001'});expect(exported.count).toBe(1);
});
it('searches owner-scoped recipient names and receipt details without leaking another tenant',async()=>{
 const result=await service.list(owner,{category:'Transfers',search:'Amina Yusuf'});expect(result.items).toHaveLength(3);
 expect(result.items[0]?.details).toMatchObject({'Recipient':'Amina Yusuf','Fee':'0 MSNW','Gross amount':'1.000001 MSNW','Net amount':'1.000001 MSNW'});
 expect((await service.list(owner,{search:'Wrong tenant'})).items).toHaveLength(0);
 expect((await service.list({...owner,userId:'nobody'},{search:'Amina Yusuf'})).items).toHaveLength(0);
 expect((await service.list(owner,{search:'customer'})).items.some(row=>row.category==='Bills')).toBe(true);
});
