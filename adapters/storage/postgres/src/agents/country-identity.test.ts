import {createAgentDirectoryService} from '../../../../../services/gateway/src/agent_directory.js';
import {afterAll,beforeAll,it,expect} from 'vitest';
import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {createCanonicalId} from '@masanawa/contracts';
import {normalizeAgentPresentation} from '../../../../../packages/agents/src/configuration.js';
import {createPostgresAgentPresentationRepository} from './configuration.js';
const db=new PGlite(),tenantId=createCanonicalId('tenant'),characterId=createCanonicalId('character');
const base={schemaVersion:1 as const,tenantId,characterId,characterVersionId:createCanonicalId('character-version'),displayName:'Amina',roleLabel:'Medicine',about:'Education',greeting:null,visibleInUserApp:true,sortOrder:0,revision:1};
const pool={query:(s:string,a:unknown[])=>db.query(s,a),async connect(){return {query:(s:string,a:unknown[])=>db.query(s,a),release(){}};}} as any;
const repo=createPostgresAgentPresentationRepository(pool);
beforeAll(async()=>{await db.exec(`CREATE SCHEMA agents;CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,character_version_id text,schema_version smallint DEFAULT 1,display_name text,role_label text,about text,greeting text,visible_in_user_app boolean,sort_order integer,revision bigint,PRIMARY KEY(tenant_id,character_id));`);await db.exec(await readFile(new URL('../../../../../packages/agents/migrations/0012_masana_country_identity.sql',import.meta.url),'utf8'));});
afterAll(async()=>db.close());
it('normalizes explicit paired metadata and leaves legacy presentations compatible',()=>{
 expect(normalizeAgentPresentation(base)).not.toHaveProperty('countryCode');
 expect(normalizeAgentPresentation({...base,countryCode:' ng ',countryName:' Nigeria '})).toMatchObject({countryCode:'NG',countryName:'Nigeria'});
 for(const v of [{countryCode:'NG'}, {countryName:'Nigeria'}, {countryCode:'NGA',countryName:'Nigeria'}])expect(()=>normalizeAgentPresentation({...base,...v})).toThrow();
});
it('persists country, preserves it when older admin writes omit it, and supports explicit clearing',async()=>{
 const first=await repo.put({presentation:{...base,countryCode:'IN',countryName:'India'},expectedRevision:null});expect(first.countryCode).toBe('IN');
 const updated=await repo.put({presentation:{...base,displayName:'Dr Amina'},expectedRevision:1});expect(updated.countryCode).toBe('IN');expect(updated.revision).toBe(2);
 const cleared=await repo.put({presentation:{...base,countryCode:null,countryName:null},expectedRevision:2});expect(cleared.countryCode??null).toBeNull();
 expect(await repo.readForCharacter({tenantId:createCanonicalId('tenant'),characterId})).toBeNull();
});
it('enforces paired fields in actual PostgreSQL, including NULL-code non-NULL-name',async()=>{
 await expect(db.query('UPDATE agents.agent_presentations SET country_code=NULL,country_name=$1',['Nigeria'])).rejects.toThrow();
 await expect(db.query('UPDATE agents.agent_presentations SET country_code=$1,country_name=NULL',['NG'])).rejects.toThrow();
});

it('projects authored country metadata after directory authorization',async()=>{
 const directory=createAgentDirectoryService({presentations:{async listVisible(){return [{...base,countryCode:'NG',countryName:'Nigeria'}];}} as any,
  authorizer:{async authorize(){return {tenantId,userId:createCanonicalId('user')};}}});
 expect((await directory.list({authorizationHeader:'Bearer session'}))[0]).toMatchObject({countryCode:'NG',countryName:'Nigeria'});
});
