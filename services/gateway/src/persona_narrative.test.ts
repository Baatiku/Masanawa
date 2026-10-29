import {describe, expect, it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {createPublishedPersonaReader} from './persona_narrative.js';
describe('published persona identity for all conversation media', () => {
 it('reads the exact active published biography and refuses drafts, old versions and foreign scope', async () => {
  const db=new PGlite();
  try {
   await db.exec(`CREATE SCHEMA identity;
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
});
