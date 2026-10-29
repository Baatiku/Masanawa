import {fileURLToPath} from 'node:url';
import {Pool} from 'pg';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {runMigrations} from '../migrations.js';
import {characterSessionMigrationRoots} from '../readiness.js';
import {createGbCallAdmissions} from './call_admissions.js';
import {createGbUsageReservations} from './reservations.js';

const connection=process.env.MASANAWA_TEST_DATABASE_URL;
(connection?describe:describe.skip)('durable provider-proof MB call admissions',()=>{
  let pool:Pool;
  beforeAll(async()=>{
    pool=new Pool({connectionString:connection});
    await runMigrations(pool,characterSessionMigrationRoots());
    await runMigrations(pool,[{owner:'commerce',directory:fileURLToPath(
      new URL('../../../../../packages/commerce/migrations',import.meta.url))}]);
  });
  afterAll(async()=>{await pool?.end()});
  async function fixture(purchased=100,welcome=500){
    const actor={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user')};
    const characterId=createCanonicalId('character');
    await pool.query(`INSERT INTO gb_wallet.accounts
      (tenant_id,account_kind,account_id,purchased_mb,welcome_mb)
      VALUES($1,'human',$2,$3,$4)`,[actor.tenantId,actor.userId,purchased,welcome]);
    let time=Date.parse('2026-10-25T12:00:00Z');
    const repo=createGbCallAdmissions(pool,()=>new Date(time));
    const args={characterId,budgetMb:30,idempotencyKey:'original-call-01'};
    const balance=async()=>{
      const r=await pool.query(`SELECT purchased_mb::int AS purchased,welcome_mb::int AS welcome,
        reserved_purchased_mb::int AS held_purchased,reserved_welcome_mb::int AS held_welcome
        FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2`,[actor.tenantId,actor.userId]);
      return r.rows[0];
    };
    return {actor,characterId,repo,args,balance,advance:(ms:number)=>{time+=ms;}};
  }
  it('reserves once under concurrent admission and binds the original target/budget',async()=>{
    const f=await fixture();
    const results=await Promise.all(Array.from({length:5},()=>f.repo.admit(f.actor,f.args)));
    expect(new Set(results.map(r=>r.admissionId)).size).toBe(1);
    expect(results.every(r=>r.state==='reserved')).toBe(true);
    expect(await f.balance()).toEqual({purchased:100,welcome:500,held_purchased:0,held_welcome:30});
    await expect(f.repo.admit(f.actor,{...f.args,characterId:createCanonicalId('character')}))
      .rejects.toThrow('gb.call.idempotency_conflict');
    await expect(f.repo.admit(f.actor,{...f.args,budgetMb:31}))
      .rejects.toThrow('gb.call.idempotency_conflict');
    const id=results[0]!.admissionId;
    expect(await f.repo.read({...f.actor,userId:createCanonicalId('user')},id)).toBeNull();
    expect(await f.repo.read({...f.actor,tenantId:createCanonicalId('tenant')},id)).toBeNull();
    await expect(f.repo.claimConnection(f.actor,id,createCanonicalId('character'),'lease-one'))
      .rejects.toThrow('gb.call.character_mismatch');
    await f.repo.finish(f.actor,id);
  });
  it('ringing/setup/failure releases every MB and cannot be replayed into a new call',async()=>{
    const f=await fixture(),row=await f.repo.admit(f.actor,f.args),id=row.admissionId;
    await f.repo.claimConnection(f.actor,id,f.characterId,'lease-one');
    f.advance(8000);
    await f.repo.disconnect(f.actor,id,'lease-one');
    expect(await f.repo.finish(f.actor,id)).toMatchObject({state:'failed',chargedMb:0});
    expect(await f.repo.finish(f.actor,id)).toMatchObject({chargedMb:0});
    expect(await f.balance()).toEqual({purchased:100,welcome:500,held_purchased:0,held_welcome:0});
    await expect(f.repo.claimConnection(f.actor,id,f.characterId,'lease-new'))
      .rejects.toThrow('gb.call.not_connectable');
  });
  it('charges server-observed started seconds once; duplicate setup does not reset time',async()=>{
    const f=await fixture(),{admissionId:id}=await f.repo.admit(f.actor,f.args);
    await f.repo.claimConnection(f.actor,id,f.characterId,'lease-one');
    await f.repo.connected(f.actor,id,'lease-one');
    f.advance(1250);
    await f.repo.connected(f.actor,id,'lease-one');
    f.advance(751);
    await expect(f.repo.finish(f.actor,id)).rejects.toThrow('gb.call.connection_still_active');
    await f.repo.disconnect(f.actor,id,'lease-one');
    expect(await f.repo.finish(f.actor,id)).toMatchObject({verifiedConnectedMs:2001,chargedMb:3,state:'completed'});
    expect(await f.repo.finish(f.actor,id)).toMatchObject({chargedMb:3});
    expect(await f.balance()).toEqual({purchased:100,welcome:497,held_purchased:0,held_welcome:0});
    const count=await pool.query(`SELECT count(*)::int AS count FROM gb_wallet.movements
      WHERE tenant_id=$1 AND operation_id=$2`,[f.actor.tenantId,id]);
    expect(count.rows[0].count).toBe(1);
  });
  it('reconnect preserves accumulated proof but never charges disconnected time',async()=>{
    const f=await fixture(),{admissionId:id}=await f.repo.admit(f.actor,f.args);
    await f.repo.claimConnection(f.actor,id,f.characterId,'lease-one');
    await f.repo.connected(f.actor,id,'lease-one');f.advance(1500);
    await f.repo.disconnect(f.actor,id,'lease-one');f.advance(10000);
    await f.repo.claimConnection(f.actor,id,f.characterId,'lease-two');
    await expect(f.repo.checkpoint(f.actor,id,'lease-one')).rejects.toThrow('gb.call.stale_connection');
    await f.repo.connected(f.actor,id,'lease-two');f.advance(1501);
    await f.repo.disconnect(f.actor,id,'lease-two');
    expect(await f.repo.finish(f.actor,id)).toMatchObject({verifiedConnectedMs:3001,chargedMb:4});
  });
  it('rejects overlapping connections and caps settled usage at reserved MB',async()=>{
    const f=await fixture(),{admissionId:id}=await f.repo.admit(f.actor,{...f.args,budgetMb:2});
    await f.repo.claimConnection(f.actor,id,f.characterId,'lease-one');
    await expect(f.repo.claimConnection(f.actor,id,f.characterId,'lease-two'))
      .rejects.toThrow('gb.call.not_connectable');
    await f.repo.connected(f.actor,id,'lease-one');f.advance(5000);
    await f.repo.disconnect(f.actor,id,'lease-one');
    await expect(f.repo.claimConnection(f.actor,id,f.characterId,'lease-two'))
      .rejects.toThrow('gb.call.not_connectable');
    expect(await f.repo.finish(f.actor,id)).toMatchObject({verifiedConnectedMs:2000,chargedMb:2});
  });
  it('recovery uses only persisted provider proof and releases unused budget',async()=>{
    const f=await fixture(),{admissionId:id}=await f.repo.admit(f.actor,f.args);
    await f.repo.claimConnection(f.actor,id,f.characterId,'lease-one');
    await f.repo.connected(f.actor,id,'lease-one');f.advance(1001);
    await f.repo.checkpoint(f.actor,id,'lease-one');f.advance(600000);
    await expect(f.repo.checkpoint(f.actor,id,'lease-one')).rejects.toThrow('gb.call.stale_connection');
    expect(await f.repo.recover()).toContainEqual(expect.objectContaining({admissionId:id,chargedMb:2,verifiedConnectedMs:1001}));
    expect(await f.repo.recover()).toEqual([]);
    expect(await f.balance()).toMatchObject({welcome:498,held_welcome:0});
  });
  it('expires pending admissions with no hold and repairs late reserve commits',async()=>{
    const f=await fixture(0,0);
    await expect(f.repo.admit(f.actor,f.args)).rejects.toThrow('gb.wallet.insufficient_mb');
    f.advance(61000);
    expect(await f.repo.recover()).toContainEqual(expect.objectContaining({state:'failed',chargedMb:0}));
    const expired=await f.repo.admit(f.actor,f.args);
    expect(expired).toMatchObject({state:'failed'});
    // Simulate a reservation committing after another worker froze expiry.
    await pool.query(`UPDATE gb_wallet.accounts SET purchased_mb=50
      WHERE tenant_id=$1 AND account_id=$2`,[f.actor.tenantId,f.actor.userId]);
    await createGbUsageReservations(pool).reserve({...f.actor,
      operationId:expired.admissionId,idempotencyKey:expired.admissionId,
      use:'connected_call',amountMb:30});
    expect(await f.balance()).toMatchObject({held_purchased:30});
    await f.repo.recover();
    expect(await f.balance()).toMatchObject({purchased:50,held_purchased:0});
  });
  it('concurrent calls cannot over-reserve welcome or purchased balance',async()=>{
    const f=await fixture(0,50);
    const results=await Promise.allSettled(['first-key','second-key'].map(idempotencyKey=>
      f.repo.admit(f.actor,{...f.args,budgetMb:30,idempotencyKey})));
    expect(results.filter(r=>r.status==='fulfilled')).toHaveLength(1);
    expect(await f.balance()).toMatchObject({held_welcome:30,welcome:50});
    f.advance(61000);await f.repo.recover();
    expect(await f.balance()).toMatchObject({held_welcome:0,welcome:50});
  });
  it('one damaged journal does not starve another expired reservation',async()=>{
    const broken=await fixture(0,0),healthy=await fixture();
    await expect(broken.repo.admit(broken.actor,broken.args)).rejects.toThrow('gb.wallet.insufficient_mb');
    const {admissionId:id}=await healthy.repo.admit(healthy.actor,healthy.args);
    // A synthetic damaged fixture claims proof without any original wallet hold.
    // Recovery must report it, never invent funds, and still process later rows.
    await pool.query(`UPDATE gb_wallet.call_admissions SET state='settling',
      verified_connected_ms=1000,connection_base_ms=1000,expires_at='2026-10-25T11:00:00Z'
      WHERE tenant_id=$1 AND user_id=$2`,[broken.actor.tenantId,broken.actor.userId]);
    try{
      healthy.advance(61000);
      await expect(healthy.repo.recover()).rejects.toThrow('gb.call.recovery_partial');
      expect(await healthy.repo.read(healthy.actor,id)).toMatchObject({state:'failed',chargedMb:0});
      expect(await healthy.balance()).toMatchObject({held_welcome:0});
    }finally{
      await pool.query(`UPDATE gb_wallet.call_admissions SET state='failed',charged_mb=0,
        verified_connected_ms=0,connection_base_ms=0 WHERE tenant_id=$1 AND user_id=$2`,
        [broken.actor.tenantId,broken.actor.userId]);
    }
  });

});
