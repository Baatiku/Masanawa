import {PGlite} from '@electric-sql/pglite';
import {expect,it} from 'vitest';
import {redactDeletedNotifications} from './account_deletion.js';

it('erases only disabled-owner notification copies, preserving financial receipts and other owners',async()=>{
 const db=new PGlite();
 try{
  await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA agents;CREATE SCHEMA gb_wallet;
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   INSERT INTO identity.users VALUES('a','deleted','disabled'),('a','active','active'),('b','deleted','active');
   CREATE TABLE agents.mobile_notification_outbox(tenant_id text,user_id text,event_id text,lease_id text);
   CREATE TABLE agents.mobile_notification_history(tenant_id text,user_id text,event_id text);
   CREATE TABLE agents.mobile_notification_preferences(tenant_id text,user_id text,quiet_start int);
   CREATE TABLE gb_wallet.movements(tenant_id text,from_id text,to_id text,amount_mb bigint);
   INSERT INTO gb_wallet.movements VALUES('a','deleted','active',100);
   INSERT INTO agents.mobile_notification_outbox SELECT tenant_id,user_id,'pending','already-leased' FROM identity.users;
   INSERT INTO agents.mobile_notification_history SELECT tenant_id,user_id,'old-alert' FROM identity.users;
   INSERT INTO agents.mobile_notification_preferences SELECT tenant_id,user_id,120 FROM identity.users;`);
  const client={query:(sql:string,params:unknown[])=>db.query(sql,params)};
  await expect(redactDeletedNotifications(client as never,'a','active')).rejects.toThrow('identity_not_disabled');
  await expect(redactDeletedNotifications(client as never,'missing','deleted')).rejects.toThrow('identity_not_disabled');
  await db.exec('BEGIN');
  await redactDeletedNotifications(client as never,'a','deleted');
  // A later erasure failure must roll back this cleanup with the parent job.
  await db.exec('ROLLBACK');
  expect((await db.query('SELECT * FROM agents.mobile_notification_outbox')).rows).toHaveLength(3);
  await db.exec('BEGIN');
  await redactDeletedNotifications(client as never,'a','deleted');
  await db.exec('COMMIT');
  await redactDeletedNotifications(client as never,'a','deleted');
  for(const table of ['mobile_notification_outbox','mobile_notification_history','mobile_notification_preferences']){
   expect((await db.query(`SELECT tenant_id,user_id FROM agents.${table} ORDER BY tenant_id,user_id`)).rows)
    .toEqual([{tenant_id:'a',user_id:'active'},{tenant_id:'b',user_id:'deleted'}]);
  }
  expect((await db.query('SELECT * FROM gb_wallet.movements')).rows).toHaveLength(1);
 }finally{await db.close();}
},30000);
