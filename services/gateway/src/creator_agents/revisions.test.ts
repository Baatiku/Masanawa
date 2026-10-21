import {describe,it,expect} from 'vitest';
import {createCreatorRevisionService} from './revisions.js';
const owner={tenantId:'tenant_12345678',userId:'owner_12345678'};
const seed={name:'Amina',profession:'Teacher',languages:['en'],gender:'female',ageRange:'40-59',portraitMediaId:null};
const generated={name:'Amina',profession:'Teacher',biography:'Amina helps learners understand physics using practical examples and careful explanations.',manner:'Patient and clear.',greeting:'Hello, what would you like to learn?',languages:['en'],specializations:['Physics'],statusTopics:['Physics learning'],skills:[]};
function fixture(){
 const calls:string[]=[];let state='published',rev=2;
 const db={async query(sql:string){calls.push(sql);
  if(sql.includes('FROM identity.users'))return {rows:[{state:'active'}],rowCount:1};
  if(sql.includes('FROM creator.agents'))return {rows:[{state,revision:rev,seed}],rowCount:1};
  if(sql.includes('FROM creator.operations'))return {rows:[],rowCount:0};
  if(sql.includes('FROM creator.fee_policies'))return {rows:[{revision:7,free_substantive_edits:3,fee:'100'}],rowCount:1};
  if(sql.includes('count(*)'))return {rows:[{count:0}],rowCount:1};
  if(sql.startsWith('INSERT INTO creator.operations'))return {rows:[{msnw_atomic:'0',state:'quoted'}],rowCount:1};
  return {rows:[],rowCount:0};},release(){}};
 const pool={...db,async connect(){return db;}};
 return {calls,service:createCreatorRevisionService(pool),restrict(){state='restricted';},stale(){rev=3;}};
}
describe('published revision financial admission',()=>{
 it('rejects invented actor and extra fee fields before opening a transaction',async()=>{
  const f=fixture();await expect(f.service.quote(owner,'character_12345678',{expectedRevision:2,generated,idempotencyKey:'edit_123456789012345',fee:'0'})).rejects.toMatchObject({code:'creator.invalid_payload'});expect(f.calls).toEqual([]);
 });
 it('rejects stale and restricted edits before quoting or touching custody',async()=>{
  const f=fixture();f.stale();await expect(f.service.quote(owner,'character_12345678',{expectedRevision:2,generated,idempotencyKey:'edit_123456789012345'})).rejects.toMatchObject({code:'creator.stale_revision'});
  expect(f.calls.at(-1)).toBe('ROLLBACK');expect(f.calls.some(x=>x.includes('commerce.'))).toBe(false);
  f.restrict();await expect(f.service.quote(owner,'character_12345678',{expectedRevision:3,generated,idempotencyKey:'edit_123456789012345'})).rejects.toMatchObject({code:'creator.edit_ineligible'});
 });
 it('cannot confirm an absent or cross-owner quote and rolls back without a debit',async()=>{
  const f=fixture();await expect(f.service.confirm(owner,'character_12345678',{operationId:'operation_1234567890',authorizationRef:'authorization_123456789',idempotencyKey:'edit_123456789012345'})).rejects.toMatchObject({code:'creator.quote_invalid'});
  expect(f.calls.at(-1)).toBe('ROLLBACK');expect(f.calls.some(x=>x.includes('commerce.'))).toBe(false);
 });
});

it('settles one paid revision in real PostgreSQL semantics and retries without another debit',async()=>{
 const {PGlite}=await import('@electric-sql/pglite');const db=new PGlite();
 try{
  await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA creator;CREATE SCHEMA commerce;CREATE SCHEMA agents;CREATE SCHEMA masana;
  CREATE TABLE identity.users(tenant_id text,user_id text,state text);
  CREATE TABLE identity.characters(tenant_id text,character_id text,active_character_version_id text,revision int,updated_at timestamptz);
  CREATE TABLE identity.character_versions(tenant_id text,character_version_id text,character_id text,version_number int,state text,constitution jsonb,created_at timestamptz NOT NULL,published_at timestamptz);
  CREATE TABLE creator.agents(tenant_id text,owner_user_id text,character_id text,state text,revision int,seed jsonb,generated jsonb,updated_at timestamptz);
  CREATE TABLE creator.fee_policies(tenant_id text,revision int,free_substantive_edits int,paid_edit_msnw numeric,effective_at timestamptz);
  CREATE TABLE creator.substantive_edits(tenant_id text,character_id text,editor_user_id text,revision int,operation_id text UNIQUE);
  CREATE TABLE creator.operations(tenant_id text,operation_id text,owner_user_id text,character_id text,kind text,policy_revision int,msnw_atomic text,state text,authorization_ref text,expires_at timestamptz,idempotency_key text,request_hash text,proposal jsonb,expected_revision int,wallet_ledger_ref text,updated_at timestamptz);
  CREATE TABLE commerce.msnw_custody_accounts(tenant_id text,user_id text,available_micro numeric,updated_at timestamptz);
  CREATE TABLE commerce.msnw_creator_fee_liabilities(tenant_id text PRIMARY KEY,accrued_micro numeric,updated_at timestamptz);
  CREATE TABLE commerce.msnw_creator_fee_journal(operation_id uuid,tenant_id text,owner_user_id text,character_id text,kind text,idempotency_key text,amount_micro numeric,receipt_ref text UNIQUE);
  CREATE TABLE commerce.msnw_creator_fee_postings(operation_id uuid,entry_number int,tenant_id text,owner_user_id text,bucket text,delta_micro numeric);
  CREATE TABLE masana.character_revisions(tenant_id text,character_id text,revision int,state text,profile jsonb,approved_by text,approved_at timestamptz);
  CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,character_version_id text,about text,greeting text,revision int);
  INSERT INTO identity.users VALUES('tenant_12345678','owner_12345678','active');
  INSERT INTO identity.characters VALUES('tenant_12345678','character_12345678','version_initial',1,now());
  INSERT INTO identity.character_versions VALUES('tenant_12345678','version_initial','character_12345678',1,'published','{}',now(),now());
  INSERT INTO creator.fee_policies VALUES('tenant_12345678',3,0,100,now()-interval '1 day');
  INSERT INTO commerce.msnw_custody_accounts VALUES('tenant_12345678','owner_12345678',200000000,now());
  INSERT INTO masana.character_revisions VALUES('tenant_12345678','character_12345678',1,'approved','{}','owner_12345678',now());
  INSERT INTO agents.agent_presentations VALUES('tenant_12345678','character_12345678','version_initial','','',1);`);
  await db.query("INSERT INTO creator.agents VALUES($1,$2,$3,'published',2,$4::jsonb,NULL,now())",[owner.tenantId,owner.userId,'character_12345678',JSON.stringify(seed)]);
  const pool={async query(sql:string,params:readonly unknown[]=[]){const r=await db.query<Record<string,unknown>>(sql,[...params]);return {rows:r.rows,rowCount:r.affectedRows??0};},async connect(){return {...this,release(){}};}};
  const service=createCreatorRevisionService(pool),edited={...generated,starters:['How can I learn?']};
  const quote=await service.quote(owner,'character_12345678',{expectedRevision:2,generated:edited,idempotencyKey:'edit_123456789012345'});
  expect(quote?.msnw_atomic).toBe('100000000');
  const approval={operationId:quote?.operation_id,authorizationRef:quote?.authorization_ref,idempotencyKey:'edit_123456789012345'};
  await service.confirm(owner,'character_12345678',approval);await service.confirm(owner,'character_12345678',approval);
  expect((await db.query('SELECT available_micro::text AS balance FROM commerce.msnw_custody_accounts')).rows[0]).toEqual({balance:'100000000'});
  expect((await db.query('SELECT count(*)::int AS n FROM commerce.msnw_creator_fee_journal')).rows[0]).toEqual({n:1});
  expect((await db.query('SELECT sum(delta_micro)::text AS net FROM commerce.msnw_creator_fee_postings')).rows[0]).toEqual({net:'0'});
  expect((await db.query('SELECT revision FROM creator.agents')).rows[0]).toEqual({revision:3});
 }finally{await db.close();}
},60000);
