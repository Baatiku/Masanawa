import type {Pool} from 'pg';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {ngnSqlFixture} from '../gb_wallet/ngn_test_support.js';
import {createNgnSpending} from '../gb_wallet/ngn_spending.js';
import {createGbUsageReservations} from '../gb_wallet/reservations.js';
import {createPostgresMobileShellRepository,recoverExpiredMbReplies} from './mobile-shell.js';

describe('durable direct NGN reply settlement and historical MB recovery',()=>{
 let pool:Pool,close:()=>Promise<unknown>;
 beforeAll(async()=>{({pool,close}=await ngnSqlFixture());},120000);
 afterAll(async()=>{await close?.();});
 const fixture=async(cash=1000)=>{
  const scope={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user'),characterId:createCanonicalId('character'),relationshipId:createCanonicalId('relationship')};
  await pool.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo) VALUES($1,$2,$3)',[scope.tenantId,scope.userId,cash]);
  const request={scope,characterSessionId:createCanonicalId('character-session'),requestId:createCanonicalId('request'),kind:'text' as const,userText:'hello',payloadHash:'a'.repeat(64)};
  const repo=createPostgresMobileShellRepository(pool,{billReplies:true});
  const finish={scope,requestId:request.requestId,agentRunId:createCanonicalId('agent-run'),reply:'A durable answer',parts:[]};
  const balance=()=>createNgnSpending(pool).balance(scope);
  return {scope,request,repo,finish,balance};
 };
 it.each(['text','media','media-set'] as const)('reserves 200 kobo before %s inference and charges duplicate delivery once',async(kind)=>{
  const f=await fixture(),request={...f.request,kind};
  const claims=await Promise.all([f.repo.claimTurn(request),f.repo.claimTurn(request)]);expect(claims.map(x=>x.state).sort()).toEqual(['created','existing']);
  expect(await f.balance()).toMatchObject({balanceKobo:1000,availableKobo:800,heldKobo:200});
  await Promise.all([f.repo.completeTurn(f.finish),f.repo.completeTurn(f.finish)]);expect(await f.balance()).toMatchObject({balanceKobo:800,availableKobo:800,heldKobo:0});
  expect((await pool.query('SELECT count(*)::int AS n FROM gb_wallet.ngn_spend_entries WHERE tenant_id=$1',[f.scope.tenantId])).rows[0].n).toBe(1);
 });
 it('counts a voice reply and its text transcription as one logical 200-kobo response',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  const finish={...f.finish,parts:[{type:'text',text:'A durable answer'},{type:'audio',mimeType:'audio/wav',url:'https://media.example/voice.wav'}]};
  await f.repo.completeTurn(finish);await f.repo.completeTurn(finish);expect(await f.balance()).toMatchObject({balanceKobo:800,heldKobo:0});
 });
 it('rolls back insufficient or frozen admission before a command becomes pending',async()=>{
  for(const frozen of [false,true]){
   const f=await fixture(199);if(frozen)await pool.query('UPDATE gb_wallet.ngn_accounts SET frozen=true WHERE tenant_id=$1',[f.scope.tenantId]);
   await expect(f.repo.claimTurn(f.request)).rejects.toThrow(frozen?'ngn.account_frozen':'ngn.insufficient_balance');expect(await f.repo.readTurn(f.request)).toBeNull();
  }
 });
 it('releases failure without charging and refuses late completion',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);await f.repo.failTurn({...f.finish,failureCode:'agents.provider_failed'});await f.repo.failTurn({...f.finish,failureCode:'agents.provider_failed'});
  await expect(f.repo.completeTurn(f.finish)).rejects.toThrow('completion conflict');expect(await f.balance()).toMatchObject({balanceKobo:1000,heldKobo:0});
 });
 it('rolls back the cash capture if durable reply storage violates its constraints',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);await expect(f.repo.completeTurn({...f.finish,reply:'x'.repeat(64001)})).rejects.toThrow();
  expect((await f.repo.readTurn(f.request))?.state).toBe('pending');expect(await f.balance()).toMatchObject({balanceKobo:1000,heldKobo:200});
  await f.repo.completeTurn(f.finish);expect(await f.balance()).toMatchObject({balanceKobo:800,heldKobo:0});
 });
 it('rolls back stored reply when original hold settlement conflicts',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);
  await pool.query("UPDATE gb_wallet.ngn_spends SET state='failed' WHERE tenant_id=$1",[f.scope.tenantId]);
  await expect(f.repo.completeTurn(f.finish)).rejects.toThrow('ngn.settlement_conflict');expect((await f.repo.readTurn(f.request))?.state).toBe('pending');
  await pool.query("UPDATE gb_wallet.ngn_spends SET state='reserved' WHERE tenant_id=$1",[f.scope.tenantId]);await f.repo.completeTurn(f.finish);expect(await f.balance()).toMatchObject({balanceKobo:800,heldKobo:0});
 });
 it('recovers expired NGN work across restart and fences late provider results',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);await pool.query("UPDATE agents.mobile_turn_commands SET created_at=clock_timestamp()-interval '16 minutes' WHERE tenant_id=$1",[f.scope.tenantId]);
  await recoverExpiredMbReplies(pool);expect((await f.repo.readTurn(f.request))?.failureCode).toBe('agents.turn_expired');expect(await f.balance()).toMatchObject({balanceKobo:1000,heldKobo:0});await expect(f.repo.completeTurn(f.finish)).rejects.toThrow();
 });
 it('rejects payload and account substitution without releasing another owner hold',async()=>{
  const f=await fixture();await f.repo.claimTurn(f.request);await expect(f.repo.claimTurn({...f.request,payloadHash:'b'.repeat(64)})).rejects.toMatchObject({statusCode:409});
  const other={...f.scope,userId:createCanonicalId('user')};await expect(f.repo.completeTurn({...f.finish,scope:other})).rejects.toThrow();expect(await f.repo.readTurn({...f.request,scope:other})).toBeNull();expect(await f.balance()).toMatchObject({balanceKobo:1000,heldKobo:200});
  await f.repo.failTurn({...f.finish,failureCode:'agents.cancelled'});
 });
 it('settles a pre-cutover MB command only in its historical ledger',async()=>{
  const f=await fixture(),repo=createPostgresMobileShellRepository(pool,{billReplies:false});await repo.claimTurn(f.request);
  await pool.query("INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb,welcome_mb) VALUES($1,'human',$2,123,500)",[f.scope.tenantId,f.scope.userId]);
  const operationId='legacy_reply_'+createCanonicalId('request');await createGbUsageReservations(pool).reserve({...f.scope,operationId,idempotencyKey:operationId,use:'reply',amountMb:1});
  await pool.query('UPDATE agents.mobile_turn_commands SET mb_reply_operation_id=$3 WHERE tenant_id=$1 AND request_id=$2',[f.scope.tenantId,f.request.requestId,operationId]);await repo.completeTurn(f.finish);
  expect(await f.balance()).toMatchObject({balanceKobo:1000,heldKobo:0});expect((await pool.query('SELECT welcome_mb::text,purchased_mb::text FROM gb_wallet.accounts WHERE tenant_id=$1',[f.scope.tenantId])).rows[0]).toEqual({welcome_mb:'499',purchased_mb:'123'});
 });
});
