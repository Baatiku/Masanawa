import {randomUUID} from "node:crypto";
import {Pool} from "pg";
import {afterAll,beforeAll,describe,expect,it} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {runMigrations} from "../migrations.js";
import {platformProductMigrationRoots} from "../readiness.js";
import {createPostgresGbRequestRepository,GbRequestStoreError} from "./request_repository.js";

const url=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!url)("whole-MB Request reconciliation on disposable PostgreSQL18",()=>{
  const tenant=createCanonicalId("tenant");
  const requester=createCanonicalId("user");
  const payer=createCanonicalId("user");
  const unpaid=createCanonicalId("user");
  const dbName="gb_requests_"+randomUUID().replaceAll("-","").slice(0,12);
  let admin:Pool,pool:Pool;
  beforeAll(async()=>{
    const parsed=new URL(url!);
    if (!["127.0.0.1","localhost"].includes(parsed.hostname)) {
      throw Error("requests_tests_require_disposable_local_postgresql");
    }
    admin=new Pool({connectionString:url!});
    await admin.query('CREATE DATABASE "'+dbName+'"');
    parsed.pathname="/"+dbName;
    pool=new Pool({connectionString:parsed.toString(),max:8});
    await runMigrations(pool,platformProductMigrationRoots());
    await pool.query(
      "INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,now(),now())",
      [tenant],
    );
    for(const id of [requester,payer,unpaid]){
      await pool.query(
        "INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now(),now())",
        [tenant,id],
      );
    }
    for(const [id,handle] of [
      [requester,"alice.req"],[payer,"bob.pay"],[unpaid,"carol.pay"],
    ]){
      await pool.query(`INSERT INTO talks.public_profiles
        (tenant_id,user_id,handle,display_name)
        VALUES($1,$2,$3,$4)`,[tenant,id,handle,handle]);
    }
    await pool.query(`INSERT INTO gb_wallet.accounts
      (tenant_id,account_kind,account_id,purchased_mb,welcome_mb)
      VALUES ($1,'human',$2,1000,500),($1,'human',$3,0,500)`,[
      tenant,payer,unpaid,
    ]);
  },90_000);
  afterAll(async()=>{
    if(pool)await pool.end();
    if(admin){
      await admin.query('DROP DATABASE IF EXISTS "'+dbName+'"');
      await admin.end();
    }
  },30_000);

  const repo=()=>createPostgresGbRequestRepository(pool);
  const actor=(id:string)=>({tenantId:tenant,userId:id});

  it("creates exactly one scoped seven-day Request for repeated original key",async()=>{
    const input={payerId:payer,amountMb:450,idempotencyKey:"request_0123456789abcdef"};
    const first=await repo().create(actor(requester),input);
    expect(first).toMatchObject({
      requesterId:requester,payerId:payer,amountMb:450,
      requesterUsername:"alice.req",payerUsername:"bob.pay",state:"open",
    });
    expect(await repo().create(actor(requester),input)).toEqual(first);
    const days=new Date(first.expiresAt).getTime()-new Date(first.createdAt).getTime();
    expect(days).toBeGreaterThan(6*24*60*60*1000);
    expect(days).toBeLessThanOrEqual(7*24*60*60*1000);
    await expect(repo().create(actor(requester),{...input,amountMb:451}))
      .rejects.toMatchObject({code:"request_idempotency_conflict"});
    const items=await repo().list(actor(payer));
    expect(items.filter(x=>x.requestId===first.requestId)).toHaveLength(1);
  });

  it("deduplicates concurrent Pay into one immutable purchased-MB movement",async()=>{
    const created=await repo().create(actor(requester),{
      payerId:payer,amountMb:400,idempotencyKey:"request_pay_abcdefghijk",
    });
    const [first,repeated]=await Promise.all([
      repo().pay(actor(payer),created.requestId),
      repo().pay(actor(payer),created.requestId),
    ]);
    expect(first).toEqual(repeated);
    expect(first).toMatchObject({amountMb:400,state:"completed"});
    expect((await repo().list(actor(payer))).find(x=>x.requestId===created.requestId)?.state)
      .toBe("paid");
    const ledger=await pool.query<{amount_mb:string}>(`
      SELECT amount_mb::text FROM gb_wallet.movements
      WHERE tenant_id=$1 AND operation_id=$2`,[
        tenant,first.operationId,
      ]);
    expect(ledger.rows).toHaveLength(1);
    expect(ledger.rows[0]?.amount_mb).toBe("400");
    expect((await repo().pay(actor(payer),created.requestId)).operationId)
      .toBe(first.operationId);
    const balance=await pool.query<{purchased_mb:string}>(`
      SELECT purchased_mb::text FROM gb_wallet.accounts
      WHERE tenant_id=$1 AND account_id=$2`,[tenant,payer]);
    expect(balance.rows[0]?.purchased_mb).toBe("600");
  });

  it("rejects Welcome-only payments, non-payer actors and expired requests",async()=>{
    const created=await repo().create(actor(requester),{
      payerId:unpaid,amountMb:10,idempotencyKey:"request_unpaid_123456789",
    });
    await expect(repo().pay(actor(unpaid),created.requestId))
      .rejects.toMatchObject({code:"insufficient_purchased_mb"});
    await expect(repo().pay(actor(requester),created.requestId))
      .rejects.toMatchObject({code:"request_not_found"});
    await pool.query(`UPDATE gb_wallet.payment_requests
      SET created_at=now()-INTERVAL '8 days',
          expires_at=now()-INTERVAL '1 day'
      WHERE tenant_id=$1 AND request_id=$2`,[tenant,created.requestId]);
    await expect(repo().pay(actor(unpaid),created.requestId))
      .rejects.toMatchObject({code:"request_expired"});
  });

  it("cancellation removes pending liability, keeps receipt-free audit and cannot pay",async()=>{
    const created=await repo().create(actor(requester),{
      payerId:payer,amountMb:100,idempotencyKey:"request_cancel_123456789",
    });
    const closed=await repo().cancel(actor(requester),created.requestId);
    expect(closed).toMatchObject({state:"cancelled",operationId:null});
    expect((await repo().cancel(actor(requester),created.requestId)).state)
      .toBe("cancelled");
    await expect(repo().pay(actor(payer),created.requestId))
      .rejects.toMatchObject({code:"request_cancelled"});
  });

  it("payer Decline is idempotent, actor-bound, and never posts an MB movement",async()=>{
    const created=await repo().create(actor(requester),{
      payerId:payer,amountMb:75,idempotencyKey:"request_decline_123456789",
    });
    await expect(repo().decline(actor(requester),created.requestId))
      .rejects.toMatchObject({code:"request_not_found"});
    await expect(repo().decline(actor(unpaid),created.requestId))
      .rejects.toMatchObject({code:"request_not_found"});
    const declined=await repo().decline(actor(payer),created.requestId);
    expect(declined).toMatchObject({state:"declined",operationId:null});
    expect(await repo().decline(actor(payer),created.requestId)).toEqual(declined);
    expect((await repo().list(actor(requester)))
      .find(x=>x.requestId===created.requestId)?.state).toBe("declined");
    await expect(repo().pay(actor(payer),created.requestId))
      .rejects.toMatchObject({code:"request_cancelled"});
    const movements=await pool.query(`SELECT 1 FROM gb_wallet.movements
      WHERE tenant_id=$1 AND operation_id=$2`,[
        tenant,"request_pay_"+created.requestId,
      ]);
    expect(movements.rows).toHaveLength(0);
  });

  it("concurrent Pay versus Decline has exactly one terminal result",async()=>{
    const created=await repo().create(actor(requester),{
      payerId:payer,amountMb:80,idempotencyKey:"request_race_1234567890",
    });
    const results=await Promise.allSettled([
      repo().decline(actor(payer),created.requestId),
      repo().pay(actor(payer),created.requestId),
    ]);
    expect(results.filter(r=>r.status==="fulfilled")).toHaveLength(1);
    const current=(await repo().list(actor(payer)))
      .find(x=>x.requestId===created.requestId);
    expect(["paid","declined"]).toContain(current?.state);
    const journal=await pool.query(`SELECT count(*)::int AS count
      FROM gb_wallet.movements WHERE tenant_id=$1 AND operation_id=$2`,[
        tenant,"request_pay_"+created.requestId,
      ]);
    expect(journal.rows[0]?.count).toBe(current?.state==="paid"?1:0);
  });

  it("expired request cannot be rewritten as Declined",async()=>{
    const created=await repo().create(actor(requester),{
      payerId:payer,amountMb:90,idempotencyKey:"request_expire_decline_123",
    });
    await pool.query(`UPDATE gb_wallet.payment_requests
      SET created_at=now()-INTERVAL '8 days',
          expires_at=now()-INTERVAL '1 day'
      WHERE tenant_id=$1 AND request_id=$2`,[tenant,created.requestId]);
    await expect(repo().decline(actor(payer),created.requestId))
      .rejects.toMatchObject({code:"request_expired"});
    expect((await repo().list(actor(payer)))
      .find(x=>x.requestId===created.requestId)?.state).toBe("expired");
  });
});
