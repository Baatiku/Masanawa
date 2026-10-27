import {Pool} from 'pg';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {runMigrations} from '../migrations.js';
import {platformProductMigrationRoots} from '../readiness.js';
import {createPostgresMobileShellRepository,recoverExpiredMbReplies} from './mobile-shell.js';
import {createPostgresGbWalletRepository} from '../gb_wallet/repository.js';

const connectionString=process.env.MASANAWA_TEST_DATABASE_URL;
(connectionString?describe:describe.skip)('durable reply delivery and MB settlement',()=>{
 let pool:Pool;
 beforeAll(async()=>{pool=new Pool({connectionString});await runMigrations(pool,platformProductMigrationRoots());},120000);
 afterAll(async()=>{await pool?.end()});
 const fixture=async(welcome=2,purchased=2)=>{
  const scope={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user'),
   characterId:createCanonicalId('character'),relationshipId:createCanonicalId('relationship')};
  await pool.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,welcome_mb,purchased_mb)
   VALUES($1,'human',$2,$3,$4)`,[scope.tenantId,scope.userId,welcome,purchased]);
  const request={scope,characterSessionId:createCanonicalId('character-session'),requestId:createCanonicalId('request'),
   kind:'text' as const,userText:'hello',payloadHash:'a'.repeat(64)};
  const repo=createPostgresMobileShellRepository(pool,{billReplies:true});
  const finish={scope,requestId:request.requestId,agentRunId:createCanonicalId('agent-run'),reply:'A durable answer',parts:[]};
  const balance=()=>createPostgresGbWalletRepository(pool).read(scope);
  return {scope,request,repo,finish,balance};
 };
 it.each(['text','media','media-set'] as const)('reserves before %s inference; duplicate delivery charges welcome exactly once',async(kind)=>{
  const f=await fixture();const request={...f.request,kind};
  const claims=await Promise.all([f.repo.claimTurn(request),f.repo.claimTurn(request)]);
  expect(claims.map(x=>x.state).sort()).toEqual(['created','existing']);
  expect(await f.balance()).toMatchObject({welcomeMb:2,purchasedMb:2,reservedWelcomeMb:1});
  await Promise.all([f.repo.completeTurn(f.finish),f.repo.completeTurn(f.finish)]);
  expect(await f.balance()).toMatchObject({welcomeMb:1,purchasedMb:2,reservedWelcomeMb:0});
  expect((await f.repo.readTurn(f.request))?.reply).toBe('A durable answer');
  const movements=await pool.query('SELECT count(*)::int AS n FROM gb_wallet.movements WHERE tenant_id=$1',[f.scope.tenantId]);
  expect(movements.rows[0].n).toBe(1);
 });
 it('rolls back admission with insufficient/frozen balance before any pending command persists',async()=>{
  for(const frozen of [false,true]){
   const f=await fixture(0,0);
   if(frozen)await pool.query('UPDATE gb_wallet.accounts SET frozen=true WHERE tenant_id=$1',[f.scope.tenantId]);
   await expect(f.repo.claimTurn(f.request)).rejects.toThrow(frozen?'gb.wallet.account_frozen':'gb.wallet.insufficient_mb');
   expect(await f.repo.readTurn(f.request)).toBeNull();
  }
 });
 it('releases a failed reply once and rejects late success without a charge',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  await f.repo.failTurn({...f.finish,failureCode:'agents.provider_failed'});
  await f.repo.failTurn({...f.finish,failureCode:'agents.provider_failed'});
  await expect(f.repo.completeTurn(f.finish)).rejects.toThrow('completion conflict');
  expect(await f.balance()).toMatchObject({welcomeMb:2,purchasedMb:2,reservedWelcomeMb:0});
 });
 it('rolls back reply completion when capture fails and retains the hold for recovery',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  // A persisted result that fails the command constraint must not charge MB.
  await expect(f.repo.completeTurn({...f.finish,reply:'x'.repeat(64001)})).rejects.toThrow();
  expect((await f.repo.readTurn(f.request))?.state).toBe('pending');
  expect(await f.balance()).toMatchObject({welcomeMb:2,reservedWelcomeMb:1});
  await f.repo.completeTurn(f.finish);
  expect(await f.balance()).toMatchObject({welcomeMb:1,reservedWelcomeMb:0});
 });
 it('rolls back durable reply storage if ledger capture rejects its original hold',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  await pool.query(`UPDATE gb_wallet.operations SET state='failed' WHERE tenant_id=$1`,[f.scope.tenantId]);
  await expect(f.repo.completeTurn(f.finish)).rejects.toThrow('reservation_not_open');
  expect((await f.repo.readTurn(f.request))?.state).toBe('pending');
  expect(await f.balance()).toMatchObject({welcomeMb:2,reservedWelcomeMb:1});
  await pool.query(`UPDATE gb_wallet.operations SET state='reserved' WHERE tenant_id=$1`,[f.scope.tenantId]);
  await f.repo.completeTurn(f.finish);
  expect(await f.balance()).toMatchObject({welcomeMb:1,reservedWelcomeMb:0});
 });
 it('expires abandoned work across restart and fences a late provider result',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  await pool.query(`UPDATE agents.mobile_turn_commands SET created_at=clock_timestamp()-interval '16 minutes' WHERE tenant_id=$1`,[f.scope.tenantId]);
  await recoverExpiredMbReplies(pool);
  expect((await f.repo.readTurn(f.request))?.failureCode).toBe('agents.turn_expired');
  expect(await f.balance()).toMatchObject({welcomeMb:2,reservedWelcomeMb:0});
  await expect(f.repo.completeTurn(f.finish)).rejects.toThrow();
 });
 it('rejects account/payload substitution without releasing another account hold',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  await expect(f.repo.claimTurn({...f.request,payloadHash:'b'.repeat(64)})).rejects.toMatchObject({statusCode:409});
  const otherScope={...f.scope,userId:createCanonicalId('user')};
  await expect(f.repo.completeTurn({...f.finish,scope:otherScope})).rejects.toThrow();
  expect(await f.repo.readTurn({...f.request,scope:otherScope})).toBeNull();
  expect(await f.balance()).toMatchObject({welcomeMb:2,reservedWelcomeMb:1});
  await f.repo.failTurn({...f.finish,failureCode:'agents.cancelled'});
 });
});
