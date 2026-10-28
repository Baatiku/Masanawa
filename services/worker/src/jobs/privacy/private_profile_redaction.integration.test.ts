import { PGlite } from '@electric-sql/pglite';
import { expect, it } from 'vitest';
import { redactDeletedPrivateProfile, hasFinancialFootprint } from './account_deletion.js';

it('erases private contact and geography only for disabled scoped users, preserving financial identifiers',async()=>{
  const db=new PGlite();
  try {
    await db.exec(`CREATE SCHEMA identity; CREATE SCHEMA security;
      CREATE TABLE identity.users(tenant_id text,user_id text,state text);
      CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text,
      phone text,email text,first_name text,last_name text,contact_phone text,country_iso text,
      subdivision_iso text,country_source text,masanawa_account_number text,updated_at timestamptz);
      INSERT INTO identity.users VALUES('a','u','disabled'),('b','u','active');
      INSERT INTO security.platform_user_profiles SELECT tenant_id,user_id,'Name','phone','email',
      'First','Last','contact','NG','NG-LA','user_selected','12345',now() FROM identity.users;`);
    const client={query:async(sql:string,params:unknown[])=>{const result=await db.query(sql,params);return {...result,rowCount:result.affectedRows};}};
    await expect(redactDeletedPrivateProfile(client as never,'b','u','alias','2026-10-28T00:00:00Z')).rejects.toThrow('identity_not_disabled');
    await redactDeletedPrivateProfile(client as never,'a','u','alias','2026-10-28T00:00:00Z');
    const {rows}=await db.query<any>('SELECT * FROM security.platform_user_profiles ORDER BY tenant_id');
    expect(rows[0]).toMatchObject({display_name:'Deleted account',phone:null,email:'removed-alias@deleted.masanawa.invalid',first_name:null,last_name:null,contact_phone:null,country_iso:null,subdivision_iso:null,country_source:null,masanawa_account_number:'12345'});
    expect(rows[1]).toMatchObject({display_name:'Name',contact_phone:'contact',country_iso:'NG',first_name:'First'});
  } finally {await db.close();}
},30000);

it('holds MB, cash debt, recipient history and uncredited referral liabilities without holding empty wallets',async()=>{
  const db=new PGlite();
  try {
    await db.exec(`CREATE SCHEMA commerce; CREATE SCHEMA gb_wallet; CREATE SCHEMA feed; CREATE SCHEMA rooms;
      CREATE TABLE commerce.history(tenant_id text,user_id text);
      CREATE TABLE gb_wallet.accounts(tenant_id text,account_kind text,account_id text,purchased_mb bigint,welcome_mb bigint,reserved_purchased_mb bigint,reserved_welcome_mb bigint);
      CREATE TABLE gb_wallet.ngn_accounts(tenant_id text,account_id text,balance_kobo bigint,debt_kobo bigint);
      CREATE TABLE gb_wallet.movements(tenant_id text,from_kind text,from_id text,to_kind text,to_id text);
      CREATE TABLE feed.promotion_view_charges(tenant_id text,sharer_id text,sharer_half_mb int);
      CREATE TABLE rooms.entitlements(tenant_id text,user_id text);
      INSERT INTO gb_wallet.accounts VALUES ('a','human','empty',0,0,0,0),('a','human','funded',1,0,0,0),('a','masana','empty',5,0,0,0);
      INSERT INTO gb_wallet.ngn_accounts VALUES('a','debtor',0,100);
      INSERT INTO gb_wallet.movements VALUES('a','human','sender','human','recipient');
      INSERT INTO feed.promotion_view_charges VALUES('a','referrer',1);`);
    const client={query:async(sql:string,params:unknown[])=>db.query(sql,params)};
    for(const user of ['funded','debtor','sender','recipient','referrer'])
      expect(await hasFinancialFootprint(client as never,'a',user)).toBe(true);
    expect(await hasFinancialFootprint(client as never,'a','empty')).toBe(false);
    expect(await hasFinancialFootprint(client as never,'b','funded')).toBe(false);
  } finally {await db.close();}
},30000);
