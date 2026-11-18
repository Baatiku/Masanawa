import {beforeAll,afterAll,describe,it,expect} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {mintPlatformSessionToken,hashPlatformSessionToken} from '@masanawa/security';
import {createPostgresPool,createPostgresPlatformSessionRepository,createPostgresAccountDeletionAccessRevoker,platformProductMigrationRoots,runMigrations,type Pool} from '@masanawa/postgres';
import {createOpsAdminDashboardService,parseOpsAdminGrants} from './admin_dashboard.js';
import {createWalletAdmin} from './wallet_admin.js';
import {createPersonaAdmin} from './persona_admin.js';
import {createDataAdmin} from './data_admin.js';
import {createRoleAdmin} from './role_admin.js';
import {createUserAdmin} from './user_admin.js';
import {createVoiceAdmin} from './voice_admin.js';
const url=process.env.MASANAWA_TEST_DATABASE_URL;
(url?describe:describe.skip)('real PostgreSQL administrator workflows',()=>{
 let pool:Pool;const tenant=createCanonicalId('tenant'),admin=createCanonicalId('user'),target=createCanonicalId('user'),character=createCanonicalId('character');
 const token=mintPlatformSessionToken('access'),header='Bearer '+token;
 let authority:ReturnType<typeof createOpsAdminDashboardService>;
 beforeAll(async()=>{
  pool=createPostgresPool({connectionString:url!,applicationName:'admin-acceptance',max:3});await runMigrations(pool,platformProductMigrationRoots());
  await pool.query(`INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,clock_timestamp(),clock_timestamp())`,[tenant]);
  for(const user of [admin,target]){await pool.query(`INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,clock_timestamp(),clock_timestamp())`,[tenant,user]);await pool.query(`INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,created_at,updated_at) VALUES($1,$2,'Isolated admin QA',$3,clock_timestamp(),clock_timestamp())`,[tenant,user,user+'@example.invalid']);}
  await pool.query(`INSERT INTO security.platform_sessions(access_hash,refresh_hash,tenant_id,user_id,access_expires_at,refresh_expires_at,created_at,updated_at) VALUES($1,$2,$3,$4,clock_timestamp()+interval '1 hour',clock_timestamp()+interval '1 day',clock_timestamp(),clock_timestamp())`,[hashPlatformSessionToken(token),hashPlatformSessionToken(mintPlatformSessionToken('refresh')),tenant,admin]);
  authority=createOpsAdminDashboardService({pool,sessions:createPostgresPlatformSessionRepository(pool),grants:parseOpsAdminGrants(JSON.stringify([{tenantId:tenant,userId:admin,capabilities:['*']}]))});
 },120000);
 afterAll(async()=>{await pool?.end();});
 it('credits the real ledger once, corrects balances and protects existing holds',async()=>{
  const service=createWalletAdmin({pool,authorize:authority.authorize});const base={userId:target,operationId:'admin_'+createCanonicalId('operation'),mode:'credit' as const,amountKobo:500000,expectedVersion:0,reason:'Isolated owner-funded acceptance credit',fundingReference:'acceptance-only-no-bank-payment'};
  expect(await service.adjust(header,base)).toMatchObject({afterKobo:'500000'});expect(await service.adjust(header,base)).toMatchObject({afterKobo:'500000'});
  let account=await service.read(header,target);expect(account).toMatchObject({balanceKobo:'500000',version:'1'});expect((account.adjustments as unknown[]).length).toBe(1);
  expect(await service.read(header,(target+'@example.invalid').toUpperCase())).toMatchObject({userId:target,balanceKobo:'500000',adjustments:expect.arrayContaining([expect.objectContaining({operationId:base.operationId})])});
  await pool.query(`UPDATE gb_wallet.ngn_accounts SET held_kobo=100000 WHERE tenant_id=$1 AND account_id=$2`,[tenant,target]);
  await expect(service.adjust(header,{...base,operationId:'admin_'+createCanonicalId('operation'),mode:'set_balance',amountKobo:50000,expectedVersion:1})).rejects.toMatchObject({code:'admin_balance_below_holds_or_overflow'});
  await service.adjust(header,{...base,operationId:'admin_'+createCanonicalId('operation'),mode:'set_balance',amountKobo:200000,expectedVersion:1});
  account=await service.read(header,target);expect(account).toMatchObject({balanceKobo:'200000',heldKobo:'100000',version:'2'});
  const notices=(await pool.query(`SELECT title FROM agents.mobile_notification_history WHERE tenant_id=$1 AND user_id=$2 AND category='wallet'`,[tenant,target])).rows;
  expect(notices).toHaveLength(2);expect(notices.every(row=>row.title==='NGN balance adjusted')).toBe(true);
  await expect(pool.query(`UPDATE gb_wallet.ngn_admin_adjustments SET reason='edited' WHERE tenant_id=$1`,[tenant])).rejects.toThrow();
 });
 it('publishes audited persona revisions and rejects stale updates',async()=>{
  await pool.query(`INSERT INTO agents.agent_presentations(tenant_id,character_id,character_version_id,display_name,role_label) VALUES($1,$2,$3,'Acceptance persona','AI simulation')`,[tenant,character,createCanonicalId('character-version')]);
  const service=createPersonaAdmin({pool,authorize:authority.authorize});const draft={characterId:character,state:'paused' as const,mainPrompt:'Explain thoughtfully',tone:'Calm and direct',biography:'Authorized acceptance context',context:'No fabricated history',expectedRevision:0};
  expect(await service.publish(header,draft)).toMatchObject({state:'paused',revision:'1'});expect((await pool.query(`SELECT visible_in_user_app FROM agents.agent_presentations WHERE tenant_id=$1 AND character_id=$2`,[tenant,character])).rows[0]).toEqual({visible_in_user_app:false});await expect(service.publish(header,draft)).rejects.toMatchObject({statusCode:409});
  await service.publish(header,{...draft,state:'active',expectedRevision:1});expect((await service.read(header,character)).versions).toHaveLength(2);
 });
 it('renews an exact live data match with real catalogue CAS and immutable audit',async()=>{
  const bundle={version:'qa_1',country:'NG',network:'MTN',billerCode:'BIL001',itemCode:'MD001',allowanceGb:1,allowanceMb:1000,validityDays:30,providerAmount:'500',evidenceRef:'evidence_qa',reviewedBy:'qa_reviewer',reviewedAt:'2026-01-01T00:00:00Z',expiresAt:'2026-01-08T00:00:00Z',enabled:true};
  const service=createDataAdmin({pool,authorize:authority.authorize,listItems:async()=>[{billerCode:'BIL001',itemCode:'MD001',name:'Provider fixture only',amount:'500.00',currency:'NGN',labelName:null}]});
  await service.publish(header,{bundles:[bundle],expectedRevision:0,reason:'Explicit isolated provider fixture review'});
  expect(await service.preview(header)).toMatchObject({revision:'1',items:[{expired:true,renewable:true}]});
  expect(await service.renew(header,{ids:['BIL001:MD001'],expectedRevision:1,reason:'Reviewed exact fixture identity and amount'})).toMatchObject({revision:'2'});
  await expect(service.renew(header,{ids:['BIL001:MD001'],expectedRevision:1,reason:'Stale fixture revision must be rejected'})).rejects.toMatchObject({code:'catalogue_revision_changed'});
  const events=await pool.query(`SELECT revision::text,actor_id FROM gb_wallet.admin_data_catalogue_events WHERE tenant_id=$1 ORDER BY revision`,[tenant]);expect(events.rows).toEqual([{revision:'1',actor_id:admin},{revision:'2',actor_id:admin}]);
  await expect(pool.query(`UPDATE gb_wallet.admin_data_catalogue_events SET reason='edited' WHERE tenant_id=$1`,[tenant])).rejects.toThrow();
 });
 it('creates a scoped role and records real account suspension without deleting money',async()=>{
  const roles=createRoleAdmin({pool,authorize:authority.authorize});expect(await roles.put(header,{userId:target,capabilities:['dashboard.read','wallet.read'],expectedRevision:0})).toMatchObject({revision:'1'});
  const users=createUserAdmin({pool,authorize:authority.authorize});const operationId='disable_'+createCanonicalId('operation');expect(await users.transition(header,{userId:target,state:'disabled',expectedRevision:1,reason:'Explicit isolated account access acceptance',operationId})).toMatchObject({state:'disabled'});expect((await pool.query(`SELECT balance_kobo::text FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2`,[tenant,target])).rows[0]?.balance_kobo).toBe('200000');
 });
 it('assigns, restores, recovers and revokes provider profiles with immutable voice history',async()=>{
  const requestId='voice_'+createCanonicalId('operation');
  await pool.query(`INSERT INTO agents.admin_voice_enrollments(tenant_id,character_id,request_id,actor_id,display_name,state,input_hash,voice_id) VALUES($1,$2,$3,$4,'Authorized QA voice','ready','acceptance-only','voice_qa')`,[tenant,character,requestId,admin]);
  const provider:typeof fetch=async(_url,init)=>new Response(init?.method==='DELETE'?null:JSON.stringify({voices:[{id:'voice_recovered',type:'replicated',display_name:'Masanawa-acceptance-recovery'}]}),{status:200});
  const service=createVoiceAdmin({pool,authorize:authority.authorize,apiKey:'isolated-fixture',fetch:provider});
  expect(await service.assign(header,{characterId:character,requestId,expectedRevision:0})).toMatchObject({revision:1});
  await service.unassign(header,{characterId:character,expectedRevision:1});
  expect((await service.list(header,character)).assignment).toMatchObject({active:false});
  await service.assign(header,{characterId:character,requestId,expectedRevision:2});
  expect(await service.revoke(header,{characterId:character,requestId,confirmed:true})).toEqual({state:'revoked'});
  expect((await service.list(header,character)).assignment).toMatchObject({active:false});
  const pending='voice_'+createCanonicalId('operation');
  await pool.query(`INSERT INTO agents.admin_voice_enrollments(tenant_id,character_id,request_id,actor_id,display_name,state,input_hash,provider_display_name) VALUES($1,$2,$3,$4,'Lost response QA','unknown','acceptance-only','Masanawa-acceptance-recovery')`,[tenant,character,pending,admin]);
  expect((await service.list(header,character)).items).toEqual(expect.arrayContaining([expect.objectContaining({requestId:pending,state:'ready',voiceId:'voice_recovered'})]));
  await expect(pool.query(`DELETE FROM agents.admin_voice_assignment_events WHERE tenant_id=$1`,[tenant])).rejects.toThrow();
  const history=await authority.audit({authorizationHeader:header,limit:100,offset:0});
  expect(history).toEqual(expect.arrayContaining([expect.objectContaining({eventType:'admin.ngn.adjustment'}),expect.objectContaining({eventType:'admin.voice.provider_voice_deleted'}),expect.objectContaining({eventType:'admin.permissions'})]));
  expect(history.every(row=>typeof row==='object'&&row!==null&&!Object.hasOwn(row,'payload'))).toBe(true);
 });
 it('serializes administrator reactivation against deletion revocation and preserves the deletion barrier',async()=>{
  const user=createCanonicalId('user'),requestId=crypto.randomUUID(),now=new Date().toISOString();
  await pool.query(`INSERT INTO identity.users(tenant_id,user_id,state,created_at,updated_at) VALUES($1,$2,'disabled',$3,$3)`,[tenant,user,now]);
  await pool.query(`INSERT INTO identity.account_deletion_requests(request_id,tenant_id,user_id,phase,created_at,updated_at) VALUES($1,$2,$3,'processing',$4,$4)`,[requestId,tenant,user,now]);
  let entered!:()=>void,release!:()=>void;const locked=new Promise<void>(r=>entered=r),permission=new Promise<void>(r=>release=r);
  // This isolated identity has no wallets, payouts, provider operations or data.
  const revoker=createPostgresAccountDeletionAccessRevoker(pool,{check:async()=>{entered();await permission;return {clear:true,checkedAt:now,reference:'isolated-zero-obligation-acceptance'};}});
  const deleting=revoker.revoke({tenantId:tenant,userId:user,requestId,expectedRevision:1,now});await locked;
  let settled=false;const attempted=createUserAdmin({pool,authorize:authority.authorize}).transition(header,{userId:user,operationId:'reactivate_'+createCanonicalId('operation'),state:'active',expectedRevision:1,reason:'Explicit isolated reactivation concurrency probe'}).then(value=>{settled=true;return {value,error:null};},error=>{settled=true;return {value:null,error};});
  try{await new Promise(r=>setTimeout(r,40));expect(settled).toBe(false);}finally{release();}
  await deleting;expect((await attempted).error).toMatchObject({code:'user_deletion_blocks_reactivation'});
  expect((await pool.query(`SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2`,[tenant,user])).rows[0]).toEqual({state:'disabled'});
  expect(await revoker.revoke({tenantId:tenant,userId:user,requestId,expectedRevision:1,now})).toMatchObject({alreadyRevoked:true});
 });
});
