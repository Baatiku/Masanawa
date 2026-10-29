import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {expect,it} from 'vitest';
import {createOfficialKnowledgeReader} from './public_official_knowledge.js';
import {officialPersonaInstructions} from '@masanawa/agents';
it('scopes reviewed public facts to active exact versions and excludes expired/withdrawn/foreign evidence',async()=>{
 const db=new PGlite();try{
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA masana;
 CREATE TABLE identity.characters(tenant_id text,character_id text,active_character_version_id text,state text,PRIMARY KEY(tenant_id,character_id));
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 INSERT INTO identity.characters VALUES('t','official','v1','active');
 INSERT INTO identity.character_ownership VALUES('t','official','platform');`);
 await db.exec(await readFile(new URL('../../../packages/masana/migrations/0011_public_official_dossiers.sql',import.meta.url),'utf8'));
 await db.exec(`INSERT INTO masana.public_official_dossiers VALUES('t','official','v1','Example Official','Governor','NG',
 'https://example.gov.ng/governor','reviewer',now(),now()+interval '7 days','approved');
 INSERT INTO masana.public_official_evidence(tenant_id,character_id,source_url,source_kind,title,content,content_sha256,source_date,valid_until,state,license_basis,reviewed_by) VALUES
 ('t','official','https://grokipedia.com/page/example','grokipedia','Biography','Reviewed biography','${'a'.repeat(64)}','2026-10-01',now()+interval '7 days','approved','Reviewed rights basis','reviewer'),
 ('t','official','https://example.gov.ng/record','official_record','Official record','Dated official public record','${'b'.repeat(64)}','2026-10-01',now()+interval '7 days','approved','Public record permission','reviewer'),
 ('t','official','https://example.gov.ng/expired','speech','Expired speech','STALE','${'c'.repeat(64)}','2026-10-01',now()-interval '1 day','approved','Public record permission','reviewer');`);
 const reader=createOfficialKnowledgeReader(db as never);
 const result=await reader.read('t','official','v1');expect(result?.evidence).toHaveLength(2);
 expect(JSON.stringify(result)).not.toContain('STALE');expect(await reader.read('foreign','official','v1')).toBeNull();
 await expect(reader.read('t','official','old')).rejects.toThrow('review_required');
 const prompt=officialPersonaInstructions(result!).join('\n');expect(prompt).toContain('AI simulation');expect(prompt).toContain('Do not invent');
 expect((await reader.directory('t',['official'])).get('official')).toMatchObject({verification:'source_reviewed',representation:'ai_simulation'});
 await db.exec(`INSERT INTO masana.public_official_evidence(tenant_id,character_id,source_url,source_kind,title,content,content_sha256,source_date,valid_until,state,license_basis,reviewed_by)
  SELECT 't','official','https://example.gov.ng/speech/'||i,'speech','Recent speech','School buildings and community programmes','${'d'.repeat(64)}','2026-10-01',now()+interval '7 days','approved','Reviewed permission','reviewer' FROM generate_series(1,8) AS i;
  INSERT INTO masana.public_official_evidence(tenant_id,character_id,source_url,source_kind,title,content,content_sha256,source_date,valid_until,state,license_basis,reviewed_by)
  VALUES('t','official','https://example.gov.ng/subsidy','speech','Old subsidy statement',repeat('Historical preamble. ',140)||'Fuel subsidy policy statement from the historical record','${'e'.repeat(64)}','2012-01-01',now()+interval '7 days','approved','Reviewed permission','reviewer');`);
 expect((await reader.read('t','official','v1'))!.evidence.some(e=>e.title==='Old subsidy statement')).toBe(false);
 const relevant=await reader.read('t','official','v1','What did they say about fuel subsidy?');
 expect(relevant!.evidence.some(e=>e.title==='Old subsidy statement'&&e.content.includes('Fuel subsidy policy'))).toBe(true);
 expect(relevant!.evidence.every(e=>Buffer.byteLength(e.content,'utf8')<=1000)).toBe(true);
 expect(Buffer.byteLength(JSON.stringify(relevant!.evidence),'utf8')).toBeLessThan(14100);
 expect(relevant!.evidence.some(e=>e.kind==='grokipedia')).toBe(true);
 expect(relevant!.evidence.some(e=>e.kind==='official_record')).toBe(true);
 await db.exec(`UPDATE masana.public_official_dossiers SET state='suspended'`);
 await expect(reader.read('t','official','v1')).rejects.toThrow('review_required');
 expect((await reader.directory('t',['official'])).size).toBe(0);
 expect((await reader.simulations('t',['official'])).has('official')).toBe(true);
 }finally{await db.close();}
},30000);
