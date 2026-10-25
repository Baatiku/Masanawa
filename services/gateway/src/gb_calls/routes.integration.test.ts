import {fileURLToPath} from 'node:url';
import {createPostgresPool,type Pool} from '@masanawa/postgres';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createGatewayApp} from '../app.js';
import {CustomerAuthError,type CustomerAuthService} from '../customer_auth.js';
import {createGbCallAdmissions} from '../../../../adapters/storage/postgres/src/gb_wallet/call_admissions.js';
import {createPostgresGbWalletRepository} from '../../../../adapters/storage/postgres/src/gb_wallet/repository.js';
import {foundationMigrationRoots} from '../../../../adapters/storage/postgres/src/readiness.js';
import {runMigrations} from '../../../../adapters/storage/postgres/src/migrations.js';
import type {GbCallPorts} from './review.js';

const connection=process.env.MASANAWA_TEST_DATABASE_URL;
(connection?describe:describe.skip)('reduced Gateway MB call review with real PostgreSQL',()=>{
  let pool:Pool;
  beforeAll(async()=>{
    pool=createPostgresPool({connectionString:connection!,applicationName:'gb-call-http-tests'});
    await runMigrations(pool,foundationMigrationRoots());
    await runMigrations(pool,[{owner:'commerce',directory:fileURLToPath(
      new URL('../../../../packages/commerce/migrations',import.meta.url))}]);
  });
  afterAll(async()=>{await pool?.end()});
  async function fixture(){
    const actor={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user')};
    const characterId=createCanonicalId('character');
    const other={...actor,userId:createCanonicalId('user')};
    await pool.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,welcome_mb)
      VALUES($1,'human',$2,500)`,[actor.tenantId,actor.userId]);
    const journal=createGbCallAdmissions(pool);
    const ports:GbCallPorts={
      authorize:async header=>{if(header==='Bearer other')return other;if(header!=='Bearer owner')throw new CustomerAuthError('UNAUTHORIZED',401);return actor;},
      approved:async(_actor,id)=>id===characterId?{version:'approved-v1'}:null,
      balance:createPostgresGbWalletRepository(pool).read,journal,
      ready:()=>true,reviewSecret:'fixture-private-domain-separated-review-key',
    };
    let hold=false;
    const app=createGatewayApp({gbCalls:ports,customerAuth:{
      authorizeSensitiveMutation:async()=>{if(hold)throw new CustomerAuthError('ACCOUNT_RECOVERY_HOLD',403)},
    } as unknown as CustomerAuthService});
    const headers={authorization:'Bearer owner'};
    const cleanup=async()=>{
      const rows=await pool.query<{admission_id:string}>(`SELECT admission_id FROM gb_wallet.call_admissions
        WHERE tenant_id=$1 AND user_id=$2`,[actor.tenantId,actor.userId]);
      for(const row of rows.rows)await journal.finish(actor,row.admission_id);
    };
    return {actor,characterId,journal,ports,app,headers,cleanup,hold:()=>{hold=true}};
  }
  it('reviews and concurrently confirms exactly one hold, then reads without leaking owner scope',async()=>{
    const f=await fixture();
    try{
      const quote=await f.app.inject({method:'POST',url:'/v1/gb/calls/review',headers:f.headers,
        payload:{characterId:f.characterId,expectedSeconds:300,idempotencyKey:'original-http-call'}});
      expect(quote.statusCode).toBe(200);expect(quote.headers['cache-control']).toBe('private, no-store');
      const review=quote.json().review;
      const replies=await Promise.all(Array.from({length:4},()=>f.app.inject({method:'POST',
        url:'/v1/gb/calls/admissions',headers:f.headers,payload:{reviewToken:review.reviewToken,accepted:true}})));
      expect(replies.map(r=>r.statusCode)).toEqual([200,200,200,200]);
      const ids=new Set(replies.map(r=>r.json().admission.admissionId));expect(ids.size).toBe(1);
      const id=replies[0]!.json().admission.admissionId;
      const wallet=await f.ports.balance(f.actor);expect(wallet?.reservedWelcomeMb).toBe(300);
      expect((await f.app.inject({method:'GET',url:'/v1/gb/calls/admissions/'+id,headers:f.headers})).statusCode).toBe(200);
      expect((await f.app.inject({method:'GET',url:'/v1/gb/calls/admissions/'+id})).statusCode).toBe(401);
      expect((await f.app.inject({method:'GET',url:'/v1/gb/calls/admissions/'+id,headers:{authorization:'Bearer other'}})).statusCode).toBe(404);
      expect((await f.app.inject({method:'GET',url:'/v1/gb/calls/admissions/'+id,headers:f.headers,
        query:{userId:'other'}})).statusCode).toBe(400); // Principal cannot be selected by a query.
      await f.journal.finish(f.actor,id);
      expect((await f.ports.balance(f.actor))?.reservedWelcomeMb).toBe(0);
    }finally{await f.cleanup();await f.app.close()}
  });
  it('blocks recovery/suspension writes while preserving original receipt readback',async()=>{
    const f=await fixture();
    try{
      const original=await f.journal.admit(f.actor,{characterId:f.characterId,budgetMb:10,idempotencyKey:'original-held-call'});
      f.hold();
      expect((await f.app.inject({method:'POST',url:'/v1/gb/calls/review',headers:f.headers,
        payload:{characterId:f.characterId,expectedSeconds:10,idempotencyKey:'new-review-call'}})).statusCode).toBe(403);
      expect((await f.app.inject({method:'POST',url:'/v1/gb/calls/admissions',headers:f.headers,
        payload:{reviewToken:'not-accepted',accepted:true}})).statusCode).toBe(403);
      expect((await f.app.inject({method:'GET',url:'/v1/gb/calls/admissions/'+original.admissionId,headers:f.headers})).statusCode).toBe(200);
      await f.journal.finish(f.actor,original.admissionId);
    }finally{await f.cleanup();await f.app.close()}
  });
  it('rejects caller-selected owner and client duration fields without new holds',async()=>{
    const f=await fixture();
    try{
      expect((await f.app.inject({method:'POST',url:'/v1/gb/calls/review',headers:f.headers,
        payload:{characterId:f.characterId,expectedSeconds:10,idempotencyKey:'malicious-review',userId:'other'}})).statusCode).toBe(400);
      expect((await f.app.inject({method:'POST',url:'/v1/gb/calls/admissions',headers:f.headers,
        payload:{reviewToken:'forged',accepted:true,connectedSeconds:100}})).statusCode).toBe(400);
      expect((await f.ports.balance(f.actor))?.reservedWelcomeMb).toBe(0);
      expect((await f.app.inject({method:'POST',url:'/agent/twin/voice/quote',headers:f.headers,payload:{}})).statusCode).toBe(404);
    }finally{await f.cleanup();await f.app.close()}
  });
});
