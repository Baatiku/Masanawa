import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {validateOfficialDossierPacket,admitOfficialDossier} from './official_dossier_admission.js';
import {parseOfficialDossierCommand} from './official_dossier_command.js';
const packet=()=>({tenantId:createCanonicalId('tenant'),characterId:createCanonicalId('character'),characterVersionId:createCanonicalId('character-version'),
 officialName:'Example Official',office:'Governor',countryCode:'NG',identitySourceUrl:'https://grokipedia.com/page/Example_Official',
 reviewExpiresAt:new Date(Date.now()+7*86400000).toISOString(),evidence:['grokipedia'].map(kind=>({kind,
  sourceUrl:'https://grokipedia.com/page/Example_Official',
  title:'Reviewed source',content:'Documented public fact',sourceDate:'2020-01-01',validUntil:new Date(Date.now()+6*86400000).toISOString(),licenseBasis:'Reviewed usage permission'}))});
it('previews by default, requires an identified operator for apply and rejects ambiguous arguments',()=>{
 expect(parseOfficialDossierCommand(['packet.json'])).toEqual({file:'packet.json',apply:false});
 expect(parseOfficialDossierCommand(['packet.json','--reviewer','operator','--apply'])).toEqual({file:'packet.json',apply:true,reviewer:'operator'});
 for(const args of [[],['packet.json','--apply'],['packet.json','--apply','--apply','--reviewer','operator'],['packet.json','--reviewer','--apply'],['packet.json','--reviewer','operator','--unknown']])
  expect(()=>parseOfficialDossierCommand(args)).toThrow();
});
it('accepts a single Grokipedia biography and rejects stale, alternate-source and wrongly attributed packets before any database access',()=>{
 const good=packet();expect(validateOfficialDossierPacket(good).evidence).toHaveLength(1);
 for(const bad of [{...good,countryCode:'US'},{...good,reviewExpiresAt:'2020-01-01'},
  {...good,evidence:[]},{...good,evidence:[{...good.evidence[0],sourceUrl:'https://grokipedia.com.evil.test/page/name'},good.evidence[1]]},
  {...good,evidence:good.evidence.map(e=>({...e,licenseBasis:''}))},
  {...good,evidence:good.evidence.map(e=>({...e,sourceDate:'2026-02-30'}))},
  {...good,evidence:[{...good.evidence[0],kind:'official_record',sourceUrl:'https://example.gov.ng/record'}]},
  {...good,identitySourceUrl:'https://example.gov.ng/official'}])expect(()=>validateOfficialDossierPacket(bad)).toThrow();
});
it('atomically admits only exact new official identities, preserves withdrawn evidence and immutable review receipts',async()=>{
 const db=new PGlite();try{
 const p=packet();await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA masana;
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text,active_character_version_id text,PRIMARY KEY(tenant_id,character_id));
 CREATE TABLE identity.character_versions(tenant_id text,character_id text,character_version_id text,state text,constitution jsonb);
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text);`);
 for(const name of ['0011_public_official_dossiers.sql','0012_public_official_review_receipts.sql','0013_grokipedia_only_review_scope.sql'])await db.exec(await readFile(new URL('../../../packages/masana/migrations/'+name,import.meta.url),'utf8'));
 await db.query(`INSERT INTO identity.characters VALUES($1,$2,'active',$3)`,[p.tenantId,p.characterId,p.characterVersionId]);
 await db.query(`INSERT INTO identity.character_versions VALUES($1,$2,$3,'published',$4::jsonb)`,[p.tenantId,p.characterId,p.characterVersionId,JSON.stringify({publicOfficial:{officialName:p.officialName,countryCode:'NG'}})]);
 await db.query(`INSERT INTO identity.character_ownership VALUES($1,$2,'platform')`,[p.tenantId,p.characterId]);
 await db.query(`INSERT INTO masana.character_revisions VALUES($1,$2,'approved')`,[p.tenantId,p.characterId]);
 const pg={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 await db.exec(await readFile(new URL('../../../packages/feed/migrations/0001_feed.sql',import.meta.url),'utf8'));
 for(const name of ['0017_official_social_sources.sql','0018_official_social_review_history.sql','0022_official_social_reconciliation.sql'])await db.exec(await readFile(new URL('../../../packages/feed/migrations/'+name,import.meta.url),'utf8'));
 const source={platform:'x',accountId:'123',handle:'example',rightsBasis:'Reviewed original account usage',reviewExpiresAt:p.reviewExpiresAt};
 const first=await admitOfficialDossier(pg as never,p,'reviewer');expect(first.evidenceCount).toBe(1);expect(first.packetSha256).toHaveLength(64);
 expect(await admitOfficialDossier(pg as never,p,'reviewer')).toEqual(first);
 await admitOfficialDossier(pg as never,{...p,office:'Updated dated office'},'reviewer');
 await expect(admitOfficialDossier(pg as never,p,'reviewer')).rejects.toThrow('superseded');
 expect((await db.query(`SELECT state,count(*)::int AS n FROM masana.public_official_evidence GROUP BY state ORDER BY state`)).rows).toEqual([{state:'approved',n:1},{state:'withdrawn',n:1}]);
 await expect(db.exec(`UPDATE masana.public_official_review_receipts SET evidence_count=3`)).rejects.toThrow('immutable');
 await expect(admitOfficialDossier(pg as never,{...p,characterVersionId:createCanonicalId('character-version')},'reviewer')).rejects.toThrow('canonical_admission');
 await admitOfficialDossier(pg as never,{...p,socialSource:source},'reviewer');
 await admitOfficialDossier(pg as never,{...p,socialSource:{...source,platform:'facebook',accountId:'456'}},'reviewer');
 expect((await db.query(`SELECT platform,state FROM feed.official_social_sources ORDER BY platform`)).rows).toEqual([{platform:'facebook',state:'approved'},{platform:'x',state:'suspended'}]);
 await db.exec(`UPDATE feed.official_social_sources SET character_id='another-official' WHERE platform='x'`);
 await expect(admitOfficialDossier(pg as never,{...p,socialSource:{...source,rightsBasis:'New reviewed permission'}},'reviewer')).rejects.toThrow('identity_reassignment');
 expect((await db.query(`SELECT state FROM feed.official_social_sources WHERE platform='facebook'`)).rows).toEqual([{state:'approved'}]);
 await db.query(`INSERT INTO identity.character_versions VALUES($1,$2,$3,'published','{"biography":"Old fictional professional"}')`,[p.tenantId,p.characterId,createCanonicalId('character-version')]);
 await expect(admitOfficialDossier(pg as never,p,'reviewer')).rejects.toThrow('canonical_admission');
 expect((await db.query('SELECT count(*)::int AS n FROM masana.public_official_review_receipts')).rows).toEqual([{n:4}]);
 }finally{await db.close();}
},30000);
