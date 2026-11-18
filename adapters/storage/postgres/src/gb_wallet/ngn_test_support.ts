import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {Pool,type PoolClient} from 'pg';
import {runMigrations} from '../migrations.js';
import {platformProductMigrationRoots} from '../readiness.js';

/** Embedded mode executes real SQL but serializes connections; only external
 * disposable PostgreSQL mode proves independent-connection row-lock races. */
export async function ngnSqlFixture(){
 const url=process.env.MASANAWA_TEST_DATABASE_URL;
 if(url){const pool=new Pool({connectionString:url});await runMigrations(pool,platformProductMigrationRoots());return {pool,close:()=>pool.end()};}
 const db=new PGlite();
 const sql=(name:string)=>readFile(new URL('../../../../../'+name,import.meta.url),'utf8');
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA talks;CREATE SCHEMA agents;
  CREATE TABLE identity.users(tenant_id text,user_id text,state text NOT NULL DEFAULT 'active',created_at timestamptz DEFAULT now(),updated_at timestamptz DEFAULT now(),PRIMARY KEY(tenant_id,user_id));
  CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text,PRIMARY KEY(tenant_id,user_id));
  CREATE TABLE talks.safety_preferences(tenant_id text,viewer_user_id text,subject_user_id text,blocked boolean);
  CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);`);
 for(const name of ['0200_gb_wallet_foundation.sql','0205_ngn_funding_wallet.sql','0212_direct_ngn_spending.sql'])await db.exec(await sql('packages/commerce/migrations/'+name));
 await db.exec((await sql('packages/agents/migrations/0014_mobile_notification_policy.sql')).split('CREATE OR REPLACE FUNCTION agents.queue_missed_call_notice')[0]!);
 await db.exec((await sql('packages/commerce/migrations/0209_current_wallet_notices.sql')).split('CREATE FUNCTION gb_wallet.queue_movement_notice')[0]!);
 await db.exec(await sql('packages/commerce/migrations/0214_ngn_requests.sql'));
 for(const name of ['0006_mobile_shell.sql','0017_mobile_reply_mb_operation.sql','0018_mobile_reply_ngn_operation.sql'])await db.exec(await sql('packages/agents/migrations/'+name));
 const query=async(text:string,values:unknown[]=[])=>{const r=await db.query(text,values);return {...r,rowCount:r.rows.length||r.affectedRows||0};};
 let tail=Promise.resolve();
 const pool={query,connect:async()=>{const previous=tail;let release!:()=>void;tail=new Promise<void>(resolve=>{release=resolve;});await previous;return {query,release} as unknown as PoolClient;}} as unknown as Pool;
 return {pool,close:()=>db.close()};
}
