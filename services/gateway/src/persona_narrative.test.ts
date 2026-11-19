import {describe, expect, it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {createPublishedPersonaReader} from './persona_narrative.js';
describe('published persona identity for all conversation media', () => {
 it('reads the exact active published biography and refuses drafts, old versions and foreign scope', async () => {
  const db=new PGlite();
  try {
   await db.exec(`CREATE SCHEMA agents;
    CREATE TABLE agents.admin_persona_configs(tenant_id text,character_id text,state text,main_prompt text,tone text,biography text,context text,research_enabled boolean,revision bigint);
    CREATE SCHEMA identity;
    CREATE TABLE identity.characters(tenant_id text,character_id text,active_character_version_id text,state text);
    CREATE TABLE identity.character_versions(tenant_id text,character_id text,character_version_id text,state text,constitution jsonb);
    INSERT INTO identity.characters VALUES('tenant-a','character-a','version-a','active');
    INSERT INTO identity.character_versions VALUES
    ('tenant-a','character-a','version-a','published','{"biography":"Grew up by the river; loves music and cooking.","personality":["wry","patient"],"languages":["en","ha"]}'),
    ('tenant-a','character-a','version-draft','draft','{"biography":"PRIVATE DRAFT"}'),
    ('tenant-a','character-a','version-old','published','{"biography":"OLD"}');`);
   const reader=createPublishedPersonaReader(db as any);
   const scope={tenantId:'tenant-a',characterId:'character-a',characterVersionId:'version-a'} as any;
   expect(await reader.readPublished(scope)).toEqual({biography:'Grew up by the river; loves music and cooking.',personality:['wry','patient'],languages:['en','ha']});
   for(const override of [{tenantId:'tenant-b'},{characterId:'character-b'},{characterVersionId:'version-draft'},{characterVersionId:'version-old'}])
    expect(await reader.readPublished({...scope,...override})).toBeNull();
   await db.exec(`UPDATE identity.character_versions SET constitution='{"biography":"Public record","publicOfficial":{"officialName":"Example Official","countryCode":"NG"}}' WHERE character_version_id='version-a'`);
   await expect(reader.readPublished(scope)).rejects.toThrow('official_dossier_review_required');
   await db.exec(`UPDATE identity.characters SET state='disabled'`);
   expect(await reader.readPublished(scope)).toBeNull();
  } finally {await db.close();}
 }, 30000);
 it('resolves only a constitution-bound civic agency and never an arbitrary agency label',async()=>{
  const db=new PGlite();try{
   await db.exec(`CREATE SCHEMA agents;
    CREATE TABLE agents.admin_persona_configs(tenant_id text,character_id text,state text,main_prompt text,tone text,biography text,context text,research_enabled boolean,revision bigint);
    CREATE SCHEMA identity;
    CREATE TABLE identity.characters(tenant_id text,character_id text,active_character_version_id text,state text);
    CREATE TABLE identity.character_versions(tenant_id text,character_id text,character_version_id text,state text,constitution jsonb);
    INSERT INTO identity.characters VALUES('tenant-a','agency-a','version-a','active');
    INSERT INTO identity.character_versions VALUES('tenant-a','agency-a','version-a','published',
     '{"biography":"Independent guide to identity enrolment.","disclosurePolicy":{"representation":"independent_civic_ai_guide","civicAgencyId":"nimc"}}');`);
   const queries:string[]=[];
   const evidence=[{id:'reviewed_nimc',title:'NIMC Act',sourceUrl:'https://nimc.gov.ng/',sourceDate:'2026-11-17',sourceDateKind:'review' as const,content:'National identity administration.'}];
   const agencyReader={read:async(id:string,query:string)=>{expect(id).toBe('nimc');queries.push(query);return evidence;}};
   const reader=createPublishedPersonaReader(db as any,undefined,agencyReader as any),scope={tenantId:'tenant-a',characterId:'agency-a',characterVersionId:'version-a'} as any;
   const actual=await reader.readPublished(scope);
   expect(actual?.civicAgency).toMatchObject({id:'nimc',short:'NIMC',name:'National Identity Management Commission',sourceUrl:'https://nimc.gov.ng/'});
   expect(actual?.civicAgency?.evidence).toEqual(evidence);
   expect((await reader.readPublished({...scope,query:'agency history'}))?.civicAgency?.evidence).toEqual(evidence);
   expect(queries).toEqual(['','agency history']);
   await db.exec(`UPDATE identity.character_versions SET constitution=jsonb_set(constitution,'{disclosurePolicy,representation}','"unauthorized_official"')`);
   expect((await reader.readPublished(scope))?.civicAgency).toBeUndefined();
   expect(queries).toEqual(['','agency history']); // no retrieval for a forged role
  }finally{await db.close();}
 },30000);
});
