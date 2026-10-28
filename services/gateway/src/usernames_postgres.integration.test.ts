import {Pool} from 'pg';
import {runMigrations,platformProductMigrationRoots,createPostgresPlatformSessionRepository} from '@masanawa/postgres';
import {createCanonicalId} from '@masanawa/contracts';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createUsernameStore} from './usernames.js';
const connectionString=process.env.MASANAWA_TEST_DATABASE_URL;
(connectionString?describe:describe.skip)('concurrent username ownership on PostgreSQL',()=>{
 let pool:Pool;
 beforeAll(async()=>{pool=new Pool({connectionString});await runMigrations(pool,platformProductMigrationRoots());});
 afterAll(async()=>pool?.end());
 it('allocates distinct readable names under concurrent signup and serializes expected-version renames',async()=>{
  const tenantId=createCanonicalId('tenant'),repo=createPostgresPlatformSessionRepository(pool);
  const signup=(email:string)=>repo.createProfile({tenantId,channel:'email',identifier:email,
   name:'Zainab Bala',firstName:'Zainab',lastName:'Bala',contactPhone:'+2348031236428',locale:'en',createdAt:new Date().toISOString()});
  const users=await Promise.all([signup('one@example.com'),signup('two@example.com'),signup('three@example.com')]);
  expect(users.map(u=>u.username).sort()).toEqual(['zainab','zainab.bala','zainab.bala28']);
  const store=createUsernameStore(pool),owner={tenantId,userId:users[0]!.userId};
  const results=await Promise.allSettled([store.update(owner,'zainab.chosen',users[0]!.username!),store.update(owner,'zainab.other',users[0]!.username!)]);
  expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
  expect(results.filter(r=>r.status==='rejected')).toHaveLength(1);
  expect(await store.available({tenantId,userId:users[1]!.userId},users[0]!.username!)).toBe(false);
 });
});
