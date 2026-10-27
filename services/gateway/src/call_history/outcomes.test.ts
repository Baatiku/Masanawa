import { readFile } from 'node:fs/promises';
import { PGlite } from '@electric-sql/pglite';
import Fastify from 'fastify';
import { beforeAll,afterAll,describe,it,expect } from 'vitest';
import { createPostgresCallHistoryRepository,type CallHistorySqlPool } from './postgres_repository.js';
import { createCallHistoryService,CallHistoryError } from './service.js';
import { registerCallHistoryRoutes } from './routes.js';

describe('owner-scoped call detail and outcomes',()=>{
 let db:PGlite;let repository:ReturnType<typeof createPostgresCallHistoryRepository>;
 const scope={tenantId:'tenant-a',userId:'user-a',characterIds:null};
 const expiresAt=()=>new Date(Date.now()+60000).toISOString();
 beforeAll(async()=>{
  db=new PGlite();await db.exec('CREATE SCHEMA agents');
  for(const name of ['0002_agent_configurations.sql','0004_platform_agent_preferences.sql','0007_masana_call_history.sql','0008_masana_group_calls.sql','0009_masana_incoming_calls.sql','0013_masana_call_outcomes.sql','0016_masana_mb_call_history.sql'])
   await db.exec(await readFile(new URL('../../../../packages/agents/migrations/'+name,import.meta.url),'utf8'));
  await db.exec(`CREATE SCHEMA gb_wallet;
   CREATE TABLE gb_wallet.call_admissions(tenant_id text,user_id text,character_id text,
    admission_id text,state text,verified_connected_ms bigint,charged_mb integer,updated_at timestamptz)`);
  const query=async(sql:string,values?:unknown[])=>{const r=await db.query(sql,values);return {rows:r.rows,rowCount:r.affectedRows??r.rows.length};};
  repository=createPostgresCallHistoryRepository({query} as CallHistorySqlPool);
  await db.exec(`INSERT INTO agents.agent_presentations(tenant_id,character_id,character_version_id,display_name,role_label)
    VALUES('tenant-a','agent-a','version-a','Amina','Masana'),('tenant-b','agent-a','version-a','Other tenant','Masana');
    INSERT INTO agents.platform_agent_profiles(tenant_id,character_id,voice_provider,voice_name)
    VALUES('tenant-a','agent-a','gemini','Bodi'),('tenant-b','agent-a','gemini','Bodi')`);
 });
 afterAll(async()=>{await db.close();});
 async function issued(){return repository.recordIssued({...scope,characterId:'agent-a',expiresAt:expiresAt()});}
 it('keeps connected calls active after the connection grant expires and records one final duration/outcome',async()=>{
  const callId=await issued();await repository.report({...scope,callId,event:'connected'});
  await db.query(`UPDATE agents.masana_call_history SET created_at=clock_timestamp()-interval '2 minutes',expires_at=clock_timestamp()-interval '1 minute',connected_at=clock_timestamp()-interval '65 seconds' WHERE call_id=$1`,[callId]);
  expect((await repository.get({...scope,callId}))?.state).toBe('active');
  const list=await repository.list({...scope,limit:50,cursor:null,query:'active'});expect(list.calls.some(c=>c.callId===callId)).toBe(true);
  const first=await repository.report({...scope,callId,event:'ended',endReason:'connection_failed'});
  expect(first?.endReason).toBe('connection_failed');expect(Date.parse(first!.endedAt!)-Date.parse(first!.connectedAt!)).toBeGreaterThanOrEqual(65000);
  const duplicate=await repository.report({...scope,callId,event:'ended',endReason:'user_ended'});
  expect(duplicate?.endedAt).toBe(first?.endedAt);expect(duplicate?.endReason).toBe('connection_failed');
 });
 it('never exposes or updates another owner or tenant call and never resurrects a finished call',async()=>{
  const callId=await issued();await repository.report({...scope,callId,event:'ended',endReason:'permission_denied'});
  expect(await repository.get({...scope,userId:'user-b',callId})).toBeNull();
  expect(await repository.get({...scope,tenantId:'tenant-b',callId})).toBeNull();
  expect(await repository.report({...scope,userId:'user-b',callId,event:'ended',endReason:'user_ended'})).toBeNull();
  const late=await repository.report({...scope,callId,event:'connected'});expect(late?.connectedAt).toBeNull();expect(late?.endReason).toBe('permission_denied');
 });
 it('HTTP only accepts bounded end codes, ignores no account authority and supports old empty reports',async()=>{
  const callId=await issued();const app=Fastify();
  const service=createCallHistoryService({repository,authorizer:{async authorize({authorizationHeader}){if(authorizationHeader!=='Bearer owner')throw new CallHistoryError('unauthorized',401);return {tenantId:scope.tenantId as never,userId:scope.userId as never};}}});
  registerCallHistoryRoutes(app,service);
  try{
   const headers={authorization:'Bearer owner'};
   expect((await app.inject({url:'/v1/calls/'+callId})).statusCode).toBe(401);
   expect((await app.inject({method:'POST',url:'/v1/calls/'+callId+'/connected',headers,payload:{endReason:'user_ended'}})).statusCode).toBe(400);
   expect((await app.inject({method:'POST',url:'/v1/calls/'+callId+'/end',headers,payload:{endReason:'secret provider payload'}})).statusCode).toBe(400);
   expect((await app.inject({method:'POST',url:'/v1/calls/'+callId+'/end',headers,payload:{endReason:'user_ended',userId:'other'}})).statusCode).toBe(400);
   const result=await app.inject({method:'POST',url:'/v1/calls/'+callId+'/end',headers,payload:{endReason:'user_ended'}});expect(result.statusCode).toBe(200);expect(result.json().endReason).toBe('user_ended');
   expect((await app.inject({method:'POST',url:'/v1/calls/'+callId+'/end',headers,payload:{}})).statusCode).toBe(200);
  }finally{await app.close();}
 });
 it('resolves a group only through the same call owner and tenant',async()=>{
  const callId=await issued();const group='aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa';
  await db.query(`INSERT INTO agents.masana_call_groups(tenant_id,user_id,group_id,request_id,selected_ids) VALUES('tenant-a','user-a',$1,'request-group',ARRAY['agent-a','agent-b'])`,[group]);
  await db.query(`INSERT INTO agents.masana_call_group_participants(tenant_id,user_id,group_id,character_id,display_name,call_id) VALUES('tenant-a','user-a',$1,'agent-a','Amina',$2)`,[group,callId]);
  expect((await repository.get({...scope,callId}))?.groupId).toBe(group);
  expect(await repository.get({...scope,userId:'foreign',callId})).toBeNull();
 });
 it('database rejects free-form diagnostic text and additive migration reruns safely',async()=>{
  const callId=await issued();await expect(db.query('UPDATE agents.masana_call_history SET end_reason=$2 WHERE call_id=$1',[callId,'private provider text'])).rejects.toThrow();
  await db.exec(await readFile(new URL('../../../../packages/agents/migrations/0013_masana_call_outcomes.sql',import.meta.url),'utf8'));
 });
});
