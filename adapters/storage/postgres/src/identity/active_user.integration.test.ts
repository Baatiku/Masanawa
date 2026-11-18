import {PGlite} from '@electric-sql/pglite';
import {expect,it} from 'vitest';
import {lockActiveUser} from './active_user.js';
it('admits private writes only for the exact active canonical account',async()=>{
 const db=new PGlite();
 try{
  await db.exec(`CREATE SCHEMA identity;CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   INSERT INTO identity.users VALUES('a','owner','active'),('b','owner','disabled');`);
  const client={query:(sql:string,params:unknown[])=>db.query(sql,params)};
  await db.exec('BEGIN');
  await expect(lockActiveUser(client as never,'a','owner')).resolves.toBeUndefined();
  await db.exec('COMMIT');
  await expect(lockActiveUser(client as never,'b','owner')).rejects.toMatchObject({status:401,code:'account_inactive'});
  await expect(lockActiveUser(client as never,'missing','owner')).rejects.toMatchObject({status:401});
  await db.exec(`UPDATE identity.users SET state='disabled' WHERE tenant_id='a'`);
  await expect(lockActiveUser(client as never,'a','owner')).rejects.toMatchObject({status:401});
 }finally{await db.close();}
},30000);
